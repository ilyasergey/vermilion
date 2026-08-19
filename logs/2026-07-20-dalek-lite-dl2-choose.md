# 2026-07-20 — DL2: `choose` in spec expressions (#45)

## Planning inputs

- dalek-lite agenda DL2, issue #45, execution plan S3 first item. Verus
  semantics read from the pinned source: `BndX::Choose(binders, trigs,
  cond)` inside `ExpX::Bind(bnd, body)` — `cond` is the predicate, `body`
  the returned expression — encoded in AIR as a guarded skolem
  (`typ_invariant ∧ cond`) wrapped in `as_type` (unsatisfiable choose is
  type-correct but unconstrained). `sst_to_air.rs:1522`.

## What landed

- **Adapter** (`lower.rs`): the `BndX::Choose` arm — exactly one binder,
  Bind body = that variable, Int-lowered scalar type (everything else
  fails closed with precise messages); range guards conjoin in front of
  the predicate; triggers preserved.
- **IR**: `(choose ((x TYPE)) (triggers …) PRED)` expression form
  (`docs/ir.md` in the same slice).
- **Lean model** (`Prelude.lean`): `Vermilion.chooseSpec` (Hilbert choice
  when satisfiable, `default` otherwise — the `as_type` mirror) with the
  proved `chooseSpec_spec` (conditional characterizing fact) and
  `chooseSpec_guard` (the twin escape hatch for unconditional guard
  facts). No axioms.
- **Generator** (`Vcgen.lean`): the `withChooseFacts` post-pass prepends
  one hypothesis per distinct choose occurrence —
  `(∃ x, p x) → (fun x => p x) (chooseSpec p)`, a ground instance of the
  proved theorem, consequent deliberately a beta-redex (simp beta exposes
  it; no substitution machinery needed). `docs/vcgen.md` gains the
  normative `(CHOOSE)` section, including the documented narrowing:
  Verus's *unconditional* `has_type` of a choose value is not injected;
  the twin recovers it via `chooseSpec_guard` (scalar guards contain the
  `default`, so both directions stay sound).
- **Render**: `classicalClosure` — the `noncomputable` marker now
  propagates through spec-fn application (a plain `def` calling an
  `opaque`/classical definition no longer emits uncompilable code; found
  via `p()`/`field_mul` over vstd `pow2`, a pre-existing latent gap).

## Evidence

- dalek-lite probe `field_sqrt_choose.rs` (verbatim upstream
  `field_sqrt`/`is_square`): **1/1 automatic**; `isolation_driver.rs` now
  fully green 4/4. Both moved from `explore.sh` to `run.sh`; the probe
  run gate kernel-checks 5/5 twins.
- Differential c182 (reflexive choose, pass/pass) and c183 (concrete
  value of an underspecified choose, fail/fail at the same span):
  corpus **182/182 verdict parity, 89/89 failure spans**.
- The DL1 isolation fixture swapped its refused construct from `choose`
  to `loop_isolation(false)` (`tests/lowering_isolation/`,
  `scripts/test_lowering_isolation.sh` green).
- Issue #45 closed with the resolution note.

## Notes

- The top-level README's dalek-lite row still names `choose` among the
  measured blockers; it shares the file with the parallel SHA-3 session's
  uncommitted hunks, so the row refresh rides with the next slice that
  touches the README cleanly. The registry row
  (`case-studies/README.md`) is updated.
- Deferred inside #45's scope, fail-closed with precise messages:
  multi-binder/tuple `choose`, non-variable Bind bodies, and non-scalar
  binder types (dalek-lite's `lizard`/`edwards` `Seq`/array-typed
  chooses arrive with DL9).

## Next executable task

DL3 — the `calc!` macro-span colocation defect (#44): resolve a
function's colocation root from the invocation span (macro backtrace
root), never the expansion span; `montgomery_inverse_calc.rs` flips from
the explore.sh known-defect arm to run.sh.
