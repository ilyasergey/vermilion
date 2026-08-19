---
title: Generated twins must elaborate without hidden typeclass context
labels: [bug, vcgen]
state: closed
github: 18
---

Percolator exposes two cases where `vrml_check` can judge an obligation after
injecting an interactive proof, but the standalone `proofs/` twin cannot even
elaborate the generated theorem statement:

1. an exec `bool` is represented by a Lean `Prop`, and an `if` join renders as
   `Vermilion.iteP p a b` without supplying `Decidable p`;
2. `checked_add`/`checked_sub` followed by `Option::ok_or` renders polymorphic
   `Option.None` / `Result` branches whose result type is not explicit enough,
   leaving an `Inhabited ?m` synthesis problem stuck.

Minimal drivers live in
`case-studies/percolator/encode_bool_decidable.rs`,
`result_gates.rs`, and `bounded_arithmetic.rs`. All verify with Verus. The
first two originally failed Lean elaboration on `Decidable value`; they are
now supported by the interactive evidence mechanism completed in #25. The
last still exposes the stuck `Inhabited` metavariable when its twin is checked
directly.

**Required invariant.** Every rendered theorem statement must be
self-elaborating under exactly the imports written at the top of the generated
module. `vrml_check` must not succeed only because its proof-injection path
adds context that the persistent twin does not have.

The proposition-decision half is fixed and guarded by c139/c140. The remaining
fix is to type-annotate polymorphic constructors/accessors at branch joins,
then add positive and negative differential guards for that manifestation and
run the driver with `--manual-proofs --lib CasePercolator` to prove the
standalone-twin path is fixed. Keep `docs/ir.md` and `docs/vcgen.md`
synchronized if the rendered term or VC shape changes.

The first item is now generalized by #25: missing Lean class dictionaries are
first-class, interactive evidence obligations rather than an `iteP`-specific
classical-rendering patch. This issue continues to track the shared
self-elaboration invariant and the distinct polymorphic `Inhabited ?m`
ambiguity, which must be assigned a concrete type before evidence generation
can apply.

**New instance (2026-07-17, now on the crypto critical path):** with
indexed `&mut [T; N]` destinations lowered (issue #22 closed),
percolator's `active_bitmap_set` reaches Lean with 11 obligations and
10 discharge, but `ensures_5_0` — literally `Ok(()) == Ok(())` — cannot
even elaborate: the rendered `core.result.Result.Ok vermilion.tuple_0.tuple_0`
leaves the `Result` error-type parameter an unassignable metavariable,
so the twin file breaks the Lake build outright (statement-level, no
tactic can pin it). Fix direction: `(ctor …)` must carry its datatype's
instantiated type arguments through the IR (serializer + parser +
renderer ascription, same-slice per docs/ir.md discipline). A proved
interactive twin for the sibling `ensures_5_1` is parked in the session
scratchpad pending this fix.

**Closed 2026-07-20 (dalek-lite DL5).** The remaining polymorphic
`Inhabited ?m` half is fixed at the prescribed seam: `(ctor …)` carries
its datatype's *underdetermined* type-parameter instantiations through
the IR — exactly the parameters the chosen variant's field types never
mention (computed at lowering, so every already-elaborating constructor
renders byte-identically and statement hashes stay put) — and the
renderer pins them as Lean named arguments (`Result.Ok (E := τ) …`,
`Option.None (V := τ)`). Every rendered statement now elaborates under
exactly its module's imports. Measured: `bounded_arithmetic.rs` fully
automatic; `active_bitmap_set.rs` 11/11 (the parked `ensures_5_1` twin
restored); both moved to percolator's run.sh, and
`withdrawal_question_mark.rs` joined them. Guard: c188 (`Ok(())`'s error
type). One measured hash-churn casualty
(`wide_math_saturating_mul.ensures_3_0`, `Option.None` gaining
`(V := Int)`) had its interactive twin proof re-applied unchanged.
