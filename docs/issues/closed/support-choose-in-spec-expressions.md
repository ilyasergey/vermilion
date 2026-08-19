---
title: Support choose in spec expressions
labels: [feature, vcgen]
state: closed
github: 45
---

Lower Verus `choose|x: T| P(x)` (the SST `Choose` binder) to a Lean-side
Hilbert choice: `Classical.choose` over the existence premise, with the
characterizing fact available as a ground hypothesis at each occurrence —
following the interactive-proofs policy (no witness automation, no trigger
machinery; witness goals go interactive in the twin).

Design anchor: the execution plan's S3 stage. Semantics note: Verus gives
`choose` the axiom-of-choice reading guarded by the existential; when the
existential is false the value is unconstrained — mirror exactly that
(an `epsilon`-style default), never a totalizing assumption.

Drivers, in order of arrival:
- `case-studies/dalek-lite/field_sqrt_choose.rs` — verbatim
  `field_sqrt`/`is_square` from dalek-lite (24 `choose` sites upstream;
  DL2 in `case-studies/dalek-lite/PLAN.md`);
- `case-studies/dalek-lite/isolation_driver.rs` — its refusal arm;
- the S3 summer-school driver (`chapter-1-22.rs`) stays the follow-up
  corpus case.

Ship with: IR growth + `docs/ir.md`, the Lean binder emission, `docs/vcgen.md`
if the obligation shape changes, positive/negative differential cases, and
the probe flips in `case-studies/dalek-lite/explore.sh`.

**RESOLVED 2026-07-20 (dalek-lite DL2).** Single-binder scalar `choose`
lowers: the adapter folds the binder's range guards in front of the
predicate (Verus's `typ_invariant ∧ cond`) and emits the new IR form
`(choose ((x TYPE)) (triggers …) PRED)`; the Lean side renders
`Vermilion.chooseSpec (fun x => PRED)` — Hilbert choice when satisfiable,
`default` otherwise, exactly Verus's skolem + `as_type` semantics — and the
generator's `withChooseFacts` post-pass injects the conditional
characterizing hypothesis per distinct occurrence (a ground instance of the
proved `Vermilion.chooseSpec_spec`; policy in docs/vcgen.md `(CHOOSE)`,
including the documented conditional-vs-unconditional `has_type` narrowing
and its `chooseSpec_guard` twin escape hatch). Multi-binder choose,
non-variable bodies, and non-scalar binder types remain fail-closed with
precise messages. The `noncomputable` marker now propagates through
spec-fn application (`classicalClosure` in Render — also fixes plain defs
over vstd `pow2`). Evidence: verbatim dalek-lite `field_sqrt` verifies
(probe 1/1 automatic), c182/c183 differential guards, and the S3
summer-school driver stays the follow-up corpus case.
