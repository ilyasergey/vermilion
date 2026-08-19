# 2026-07-20 — DL1: per-function lowering isolation

## Planning inputs

- dalek-lite agenda DL1 (`case-studies/dalek-lite/PLAN.md`), issue #20
  (per-function lowering isolation), and the measured driver
  `case-studies/dalek-lite/probes/isolation_driver.rs` (whole-run abort on
  the first refusal, `report_unsupported` exiting the process).

## What landed

- **Adapter** (`crates/vermilion_direct/src/main.rs`, `lower.rs`): the
  lowering loop continues past refused functions. Each refusal prints its
  span-mapped `error[vermilion]` diagnostic (the old renderer, no longer
  `-> !`) and becomes a structured `RefusedView` (`lower::refused_view`:
  id via `function_id_of`, span parsed from the `@span` annotation with the
  function span as fallback, message flattened/truncated to one 200-char
  line). A file whose checked functions ALL refuse keeps the historical
  whole-run refusal (exit 1) so every `--expect-unsupported` consumer is
  unchanged.
- **IR** (`vermilion_backend::ir::write_ir`, `model::RefusedView`,
  `docs/ir.md`): new top-level form `(refused id span STRING)` after the
  functions; grammar documented in the same slice.
- **Lean** (`Ir/Ast.lean` `RefusedFunction`, `Ir/Decode.lean`
  `decodeRefused` + `Document.refused`, `Ir/Manifest.lean`,
  `VrmlGen.lean`): refusals decode into the document and render into the
  manifest as `"refused": [{function, message, rust_span}]` (omitted when
  empty, so refusal-free manifests are byte-identical to before). No Lean
  module is emitted for a refused function.
- **vrml_check** (`project::RefusedRecord` + reporting): dispositions are
  reported in every mode (main, `--twin-check`, `--twin-coverage-only`) as
  rustc-style diagnostics (`vermilion::function_refused`) at the offending
  span, and the exit code stays non-green while any refusal exists — an
  otherwise-green file reports "partially verified", never success.

## Soundness argument

A refused spec fn fails exactly the functions whose lowering references it:
`register_spec_fn` pushes into the registry only after the body lowered
(`body?` precedes the push), the `in_flight` stack is popped before the
error propagates, and per-function prophecy/alias state is cleared on entry
to every `function_view` — no half-lowered definition and no cross-function
leakage can reach a sibling's obligations. Fail-closed is preserved: nothing
is dropped silently, and partial files never exit 0.

## Guards and evidence

- `scripts/test_lowering_isolation.sh` (in `run_suite.sh` after the
  refusals test) over `tests/lowering_isolation/mixed_refusal.rs`:
  pinned Verus 2/2; Vermilion verifies the supported sibling's 2
  obligations, records the `choose` refusal at its span in the manifest,
  emits no unit for it, exits non-green, and the fully-refused path
  (`field_sqrt_choose.rs --expect-unsupported`) still holds.
- dalek-lite driver flipped: `probes/explore.sh` now asserts 3 verified
  obligations + 1 span-mapped refusal + non-green exit for
  `isolation_driver.rs`.
- Full `./scripts/run_suite.sh` after the change (see commit).

## Notes and follow-ups

- Issue #20 closed with the resolution note (moved to
  `docs/issues/closed/`).
- The execution plan's §0 DL ordering text is unchanged (dalek-lite PLAN.md
  is the per-slice status ledger); the §0 status update rides with the next
  plan-touching slice to avoid mixing with the parallel SHA-3 session's
  uncommitted plan hunks.
- Editor: refusal diagnostics reuse the rustc JSON stream the extension
  already renders; a per-function "refused" gutter state (vs the current
  whole-file fragment warning) is a possible polish item, not scheduled.

## Next executable task

DL2 — `choose` in spec expressions
(docs/issues/support-choose-in-spec-expressions.md): `Classical.choose`
over the Verus-checked guard, ground characterizing facts per occurrence,
`field_sqrt_choose.rs` and `isolation_driver.rs` flips, differential
positive/negative guards.
