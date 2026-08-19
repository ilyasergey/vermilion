# m4-beyond-verus — true, automatic here; rejected by stock Verus

Run `./run.sh`: **all 4 obligations verify fully automatically** (the
`nlinarith` ladder rung; every proof kernel-checked). Run the same file
under stock Verus and it **fails** with "possible arithmetic overflow"
on both functions.

## Why

Verus's default prover deliberately disables nonlinear arithmetic in
Z3 (for solver-stability reasons). Bounded-product facts like

```
side < 100  ⟹  side · side < 2⁶⁴
```

are true and easy, but Verus only accepts them after the user
hand-writes `assert(...) by (nonlinear_arith)` hint blocks around each
product bound — manual prover scripting inside the program text.

Vermilion's Lean-native discharge has no such throttle: Mathlib's
`nlinarith` finds the proof and **the Lean kernel checks the
certificate** — nothing trusted, no hints, no scripting. This is a
structural benefit of the Lean backend, the mirror image of the
trigger-starvation divergence (both are places where Verus's SMT
*discipline*, not the mathematics, rejects a truth).

## Where this is recorded

- The verdict-agreement corpus can't hold a case whose correct verdicts
  *differ*, so this example is the durable pin for the divergence
  (alongside [docs/ir.md](../../docs/ir.md)'s divergence list and
  [docs/trust.md](../../docs/trust.md)).
- The negative direction stays corpus-guarded: c110 (a genuinely false
  overflow claim) fails in **both** verifiers at the same span.

## generated/ vs proofs/

- `generated/beyondverus/` (one unit module per function) is overwritten
  on every run.
- `proofs/beyondverus/` is yours; `vrml_sync` reconciles it.
