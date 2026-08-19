# m3-mutref — `&mut` parameters (sequential, prophecy-resolved)

Run `./run.sh`. `mutrefs.rs` verifies functions that mutate through
`&mut u32` parameters, on both sides of the contract: the callee proves
`ensures *final(x) == *old(x) + 1`, and the caller's asserts see the
written-back value through the callee's contract.

**How Verus phrases it.** The pinned Verus models `&mut T` with a
*prophecy* encoding: a mutable reference value carries a **current** and a
**future** projection (`mut_ref_current` / `mut_ref_future`); `*old(x)` is
the current projection of the reference at entry, `*final(x)` is the
future — the referent's value at the moment the borrow expires, known
"in advance". In the SST this shows up as:

- `*x = e` assigns through `mut_ref_current(x)`;
- `assume has_resolved(x)` marks where the borrow expires — from that
  point the future equals the current value;
- a call `incr(&mut y)` is a **two-phase borrow**: a fresh reference
  temporary is defined (`assume mut_ref_current(tmp) == y`), the
  written-back value flows into `y = mut_ref_future(tmp)` — emitted
  *before* the call, prophecy-style — and the call's contract constrains
  that future.

**How Vermilion lowers it (no IR growth, no new Lean machinery).** The
lowering resolves the prophecy at translation time, sound for the
sequential, non-aliased fragment Verus's borrow checking guarantees:

- the substitution environment tracks the **current** referent value, so
  `mut_ref_current` is the identity and `*old(x)` on the enclosing
  function's own parameter is the entry binder;
- `has_resolved(x)` **snapshots** the current value as `x`'s future; a
  later `*final(x)` (in a body assert or a postcondition) means exactly
  that snapshot — so `ensures *final(x) == *old(x)` with a body that
  changes `x` is unprovable (see the differential guard
  `c74_mutref_conflation`);
- at a call, each `&mut` argument's future becomes a **fresh universally
  quantified symbol** (`y_post`-style `fresh` binder) constrained only by
  the callee's `ensures` — a callee that promises nothing havocs the
  referent (`c77_mutref_havoc_caller`);
- reference-typed temporaries Verus copies around the two-phase borrow are
  tracked as **aliases** of the root borrow;
- anything outside this discipline — `final` outside a resolved borrow,
  call contract, or postcondition; a `&mut` argument that is not a plain
  variable — **fails closed**.

The generated obligations are ordinary integer goals; all 11 close
automatically here.

## generated/ vs proofs/

- `generated/mutrefs/` (one unit module per function) is overwritten on
  every run — never edit it.
- `proofs/mutrefs/` is yours; `vrml_sync` keeps proved obligations and
  flags stale ones when the Rust changes.
