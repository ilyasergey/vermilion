# M1 widening example

[`widening.rs`](widening.rs) exercises the widened straight-line fragment
through the direct `FunctionSst` adapter:

- checked machine integers of several widths (`u32`, `u64`) with overflow VCs
  and a widening cast;
- **calls with contracts**: `double_small` calls `clamp_add`; the call site
  yields one `call_requires` obligation per callee precondition, and the call
  result becomes a fresh universally quantified symbol constrained only by the
  callee's `ensures` and its return-type range (`ensures_1_statement` in
  `generated/widening/double_small.lean` shows the shape);
- booleans lowered to `Prop` with `∧`, `→`, `↔`;
- mathematical `int`/`nat` in `proof fn`s (`nat` adds a `0 ≤ n` hypothesis);
- `assume` statements becoming named hypotheses;
- Euclidean division mapped to the named `Vermilion.ediv` convention;
- an explicit `return` whose postcondition VC is checked with the context at
  the return site (the unreachable tail sits behind `assume false`).

Run this example with:

```console
./examples/m1-widening/run.sh
```

The Verus front end elaborates the file (`--no-verify`), Vermilion recreates
`generated/widening/` — one unit module per function, machine output, never
committed — Lean judges all eleven obligations — each discharges with the
default `vrml` automation — and `vrml_sync` maintains the user-editable
`proofs/widening/` twins.

**Convention (same in every example):** `generated/` holds the machine's
proof *attempts* and is overwritten every run; `proofs/` is the twin where
*you* edit. The twins are byte-identical while automation succeeds and
nothing is edited; automation failures appear in the twin as `sorry` with a
warning; your hand-written proofs survive regeneration exactly as long as
their statement hashes are unchanged. Try it here: replace a `vrml` proof
body in `proofs/widening/flags.lean` with an explicit tactic proof (e.g.
`intro p q both; exact both.left` for `flags.assert_0`), rerun, and watch
`vrml_sync` report the twin `unchanged` while Lake kernel-checks your proof.
