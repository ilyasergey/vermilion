# 2026-07-14 — S1: merge sort verified end to end (specs-only source)

The S1 stage of the target ladder (docs/reports/target-projects.md) landed
in one slice; `case-studies/merge-sort/mergesort_clean.rs` — merge sort
with sortedness + multiset-permutation ensures and ZERO inline proof
scripting — is **verified: 40 obligations, 31 by the `vrml` automation, 9
interactively** in the twin. `./case-studies/merge-sort/test.sh` compiles
the verified source (Verus `--compile --no-verify`) and runs it against a
concrete input, asserting the result.

Fragment work (same-slice: adapter + IR + docs/ir.md + Lean + guards):

- **`Seq::to_multiset` as a known op** (`(seqtomultiset …)`): it is a
  CLOSED vstd spec fn, previously refused as a generic uninterp fn; now
  modeled as `Multiset.ofList`, making vstd's `to_multiset_ensures`
  broadcast surface proved-library territory (`toMultiset_add/push/len`,
  `@[simp, grind =]`).
- **`Vec::clone`** (machine-int/bool elements): synthesized contract
  `result@ == vec@` — vstd's real spec routes through `cloned::<T>` and
  the higher-order `call_ensures` FnDef encoding, an SMT artifact we do
  not model; for these element types it collapses to equality. Fail
  closed otherwise. **`Vec::split_off`** worked via the generic contract
  path once the rest lowered.
- **Functional-view substitution**: requires-free calls with single
  ensures `result == e` (`Vec::len`) substitute `e` for the destination
  instead of a contracted fresh symbol — `v.len()` keeps its identity
  through loop isolation (this fixed an UNPROVABLE for-range obligation).
  Type-range facts of the result are kept as assumes.
- **Pure while-condition setups**: symbolic evaluation of temporary
  binds, functional calls, and short-circuit `if`s (merged as `ite`) —
  `while i1 < v1.len() && i2 < v2.len()` now lowers; anything impure in a
  condition still fails closed.
- **`Vec` view length bound**: Vec binders' type facts gain
  `urange 64 (len v@)` (Verus's Vec type invariant), making `i + 1`
  overflow checks provable inside isolated iterations.
- **Prelude**: `subrange_push`, `subrange_add_subrange`, `subrange_all`,
  `subrange_none`, `add_push`, `add_empty/empty_add`, the `Seq →
  Multiset` bridge, and concrete `Multiset.add_right_comm/add_left_comm`
  (the import slice has no `AddCommMonoid` instance).
- **User-owned twin sections**: `-- vrml:user:begin/end` regions survive
  reconciliation verbatim (vrml_sync), re-emitted after the machine
  header — the home for extracted helper lemmas (merge-sort ships five:
  `is_sorted_push/add/subrange`, `multiset_step_left/right`). Documented
  in TUTORIAL, the case-study README, and vrml_check's failure help.
- **Robustness found along the way**: vrml_check no longer caches
  obligations as verified when the module died on an unattributed error;
  generated doc comments escape `/-` in paths.

Verification: differential corpus **131/131 verdict parity, 63/63 span
agreement** (cold; +c129–c132 for split_off/to_multiset, positive and
negative); `./scripts/run_suite.sh` fully green. The lowering changes
(substitution + length facts) re-shaped some obligations: ten tracked twin
proofs across six studies were re-proven against the new statements (the
recorded staleness-diagnostics design TODO is the long-term answer).

Also planned this session (user-directed): **Verus proof annotations as
HINTS** — the extrinsic-proofs design (H1–H4) recorded in
plans/execution-plan.md; hints are droppable by construction (fail open),
never semantics. H2's vstd-lemma mapping is the path to verifying the
VERBATIM `mergesort.rs`.
