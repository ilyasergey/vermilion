# 2026-07-12 — widened straight-line fragment

Widened the direct adapter's fragment and added `examples/m1-widening`
(six functions, eleven obligations, all discharged by default automation):

- **Types**: binders are typed from SST (`Int` for integer ranges, `Prop` for
  bools); unsupported binder types fail closed. `nat` parameters add a
  `0 ≤ n` hypothesis; machine widths use the existing range predicates.
- **Expressions**: `∧ ∨ → ¬ ↔ ≠`, bool constants as `True/False`, bool
  equality as `↔`, Euclidean div/mod as `Vermilion.ediv`/`emod`, widening
  casts (`Clip` stays identity under the paired overflow VC), `HasType`
  range coercions for `nat` as well.
- **Calls with contracts**: per-precondition `call_requires` obligations at
  the call-site span; the destination becomes a fresh universally quantified
  binder (collision-avoiding names) constrained by the callee's `ensures`
  (arguments substituted) plus its return-type range. Obligations after a
  call quantify over accumulated result binders; call-ensures hypotheses get
  per-callee ordinals to stay unambiguous.
- **Returns**: `Statement::Ensures` entries are emitted in body order, so a
  postcondition VC is checked with the context at its return site. This fixed
  a latent weakening bug where an early `return` followed by Verus's
  `assume false` would have handed the ensures obligation a `False`
  hypothesis. The `FunctionView.ensures` field is gone; both facades emit
  ensures clauses positionally, and the golden slice stayed byte-identical.
- **Automation**: the `vermilion` macro's range-unfolding `simp` step is now
  `try`-wrapped so range-free goals (pure propositional, `ediv`) reach
  `grind`/`omega`/`smt`.
- `proofs/widening.lean` adds interactive and reconstructed-SMT companion
  proofs (call-contract reasoning, propositional goals, 64-bit overflow).

Verification: `./scripts/run_m1_pipeline.sh` is green end to end — Verus
verifies both examples (1 + 6 functions), workspace tests pass, facade
equivalence holds on the golden slice, both generated modules re-emit as
`unchanged`, and `lake build M1Pipeline M1Widening` succeeds.

Ledger note: no new axioms or trusted assumptions; `Vermilion.ediv`/`emod`
were already named prelude conventions with probes.
