# 2026-07-12 — per-function incremental fingerprints

Generated manifests now carry a `functions` section with two fingerprints per
verified function:

- `semantic_fingerprint` hashes the canonical (span-free) obligation
  statements plus construct descriptions. Because callee contracts are
  substituted into caller obligations, the dependency-DAG invalidation from
  `plans/incremental-computation.md` falls out of the statements themselves:
  a callee **contract** edit changes every caller's semantic fingerprint,
  while a callee **body-only** edit stays local to the callee.
- `location_fingerprint` hashes only the Rust spans, so pure source movement
  can refresh diagnostics without touching statements or proofs; the
  per-obligation `statement_hash` (the proof-staleness key) is unchanged by
  movement.

`scripts/test_incrementality.sh` enforces the edit matrix end to end with
real Verus runs on a two-function caller/callee crate:

- **A** whitespace-only edit → module and manifest byte-stable (`unchanged`);
- **B** inserting a comment line → all statement hashes and semantic
  fingerprints identical, all location fingerprints moved;
- **C** callee body-only edit (strengthened assert) → only the callee's
  semantic fingerprint changes; caller statement hashes stable;
- **D** callee contract edit (added ensures conjunct) → caller and callee
  semantic fingerprints both change.

Out of M1 scope, per plan: per-function generated-module splitting and the
discharge-result cache (M2 watch-mode latency work). Existing example
manifests were regenerated with the new section; generated Lean is untouched.

Verification:

```console
./scripts/test_incrementality.sh
./scripts/run_m1_pipeline.sh
```
