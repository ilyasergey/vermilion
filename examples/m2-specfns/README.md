# m2-specfns — user spec functions, no inlining, no fuel

Run `./run.sh`. Three spec functions (`double`, `is_even`, `max_int`) and
their consumers (`specfns.rs`) demonstrate the settled spec-function
design:

- each spec fn is emitted once in `generated/specfns/Specs.lean` — imported
  by the per-function unit modules that use it — as a real
  Lean definition (`@[simp] noncomputable def specfns.double …`) — its
  meaning is checked by Lean, never re-stated as an axiom, so the trusted
  base gains nothing;
- obligations keep applications readable as applications
  (`r = specfns.double x`), never inlining the body;
- the machine attempt's `vrml [specfns.double, …]` unfold list is the
  per-obligation visibility: the simp equation of a listed definition is
  the *ground defining equation* applied exactly at the application sites
  present — no quantified definition axiom, hence no fuel anywhere in the
  logic;
- `#[verifier::opaque]` and `reveal` narrow that list per program point:
  `boxed` is listed only in the obligation after `reveal(boxed)`
  (`opaque_needs_reveal`), so an un-`reveal`ed opaque definition fails
  exactly where Verus fails — visibility with Verus-verdict coherence,
  still without fuel;
- recursive spec fns (`sum_to`) become genuinely recursive Lean
  definitions — `termination_by` justified by the same `decreases` Verus
  checks — and machine attempts unfold them by *bounded rewriting*, as
  many rounds as `reveal_with_fuel` grants (a simp entry would loop);
- in your `proofs/` twin you may always `unfold` more than the machine
  did — the same escape hatch `reveal` gives Verus users.

As in every example, `generated/` holds the machine attempts (untracked,
overwritten each run) and `proofs/` is your editable twin: automatic
proof bodies match while automation succeeds (imports can differ), with
`sorry` where automation fails. A `sorry` placeholder
is reclaimed automatically once automation catches up; only blocks you
actually edited survive regeneration (while their statement hash matches).
