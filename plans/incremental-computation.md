# Incremental computation for VC generation

Incrementality is required for the M2 watch-mode latency gate and should shape
M1 interfaces before the pipeline scales.

## Goal

After a Rust code or annotation edit, regenerate and re-check only functions
whose SST semantics or dependency context changed. Preserve generated files,
Lean artifacts, and interactive proofs for unaffected functions.

## Proposed keys and caches

1. Compute a canonical, span-insensitive fingerprint for each pre-poly
   `FunctionSst`. Maintain a separate source-location fingerprint so line-only
   movement refreshes diagnostics without invalidating theorem statements.
2. Hash every normalized `FunctionView` and every emitted
   `<obligation>_statement`. The existing `statementHash` becomes the proof
   staleness key.
3. Store a function dependency DAG from Verus's SCC/call graph. A callee
   contract change invalidates callers; a body-only change with an unchanged
   contract invalidates only that function's VCs.
4. Use content-addressed module emission. The current `emit_module` already
   preserves mtimes on identical output; extend it to one generated module per
   source function or stable function group.
5. Cache discharge results by statement hash, tactic/solver version, trust
   mode, imported-summary hashes, and relevant prelude/toolchain pins.

## Edit invalidation policy

| Change | Required work |
|---|---|
| whitespace/comment only | refresh nothing unless spans moved |
| source moved, same SST | update metadata/diagnostics only |
| proof annotation only | re-check companion theorem only |
| assertion/body change, same public contract | regenerate that function and its VCs |
| requires/ensures change | regenerate function and transitive callers |
| type/trait/prelude convention change | invalidate affected type/definition dependents |
| Verus/Lean/solver pin change | milestone-wide cache namespace change |

## Implementation phases

- **I0 (present):** deterministic names/hashes and no-op-preserving atomic file
  writes.
- **I1 (M1):** per-function canonical fingerprints, manifest, DAG serialization,
  and tests showing one unchanged sibling module keeps its mtime.
- **I2 (M2):** persistent watch daemon, change classification, transitive DAG
  invalidation, and long-lived Lean server integration.
- **I3 (M2 hardening):** parallel discharge cache, cancellation, cache schema
  versioning, corruption recovery, and performance ledger integration.

## Tests

Golden tests will edit whitespace, a local assertion, a callee postcondition,
and an interactive proof independently. Each test asserts the exact regenerated
module set, stale-proof set, and Lean re-check set. The performance ledger will
record cold build, warm no-op, one-function body edit, and contract-change
latencies.
