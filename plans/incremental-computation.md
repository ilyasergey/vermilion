# Incremental computation for VC generation

This plan distinguishes implemented behavior from proposed cache and worker
extensions. For commands, see the [development guide](../docs/development.md).

## Implemented behavior

- Function manifests carry semantic and source-location fingerprints, and
  obligations carry span-independent statement hashes. Proof-twin blocks are
  reconciled against those hashes.
- Emission preserves files whose contents are unchanged. The default layout
  has one module per function, with shared specification/evidence modules;
  `--per-file` retains the single-module layout.
- [Watch mode](../crates/vermilion_backend/src/bin/vrml_watch.rs) reruns the
  front end and generator, compares obligation names/hashes with its previous
  manifest, and passes affected functions to `vrml_check --only`. Checking
  occurs at function granularity: all obligations in selected functions are
  rechecked. An iteration with no changed statement hashes skips this step.
- This is a persistent watcher process, not a persistent Lean worker. Lean
  checking still starts subprocesses. It does not implement the full
  dependency-aware invalidation design below.

## Existing caches and their boundaries

The checker contains an experimental verified-hash cache, disabled by default.
Setting `VERMILION_CHECK_CACHE` enables it. Its implementation keys entries by
statement hash and stamps the cache with the modification time of
`Vermilion/Obligations.olean`; it does not implement the comprehensive
source, imported-definition, toolchain, and proof-dependency key proposed
below. It is not the default watch-mode mechanism. See
[`vrml_check.rs`](../crates/vermilion_backend/src/bin/vrml_check.rs).

The [differential harness](../scripts/run_differential.py) has a separate
whole-case verdict cache. It checks source/environment keys and the presence
of generated editor artifacts before replaying stored results. A harness
cache hit does not mean that a new kernel check ran. This measurement cache
is distinct from persistent proof reuse in the interactive workflow.

## Remaining design

The goal is to regenerate and recheck only functions whose semantics or
dependency context changed, while preserving unaffected proofs and artifacts.
The remaining work includes:

1. Track dependencies on callee contracts, specification definitions, shared
   evidence, imported lemmas, and prelude conventions. An unchanged statement
   string alone is insufficient when its referenced definitions change.
2. Define a complete cache key covering those dependencies, proof/tactic
   configuration, toolchain and library versions, and source identity.
   Validate cache schema, corruption handling, and invalidation before
   enabling general verdict reuse by default.
3. Introduce persistent Lean workers to reuse loaded environments while
   preserving isolation between units and preventing stale declarations from
   affecting subsequent checks.
4. Add cancellation and scheduling for interactive edits, and ensure the
   editor distinguishes pending, stale, refused, and checked results.

## Required invalidation policy

These are requirements for the completed design, not a claim that the current
watcher implements every case:

- Source movement updates diagnostics without discarding a proof whose
  statement and dependencies remain unchanged.
- A body/assertion edit rechecks the affected function. A contract change also
  invalidates callers that consume that contract.
- A proof edit rechecks the edited twin even if its statement hash is unchanged.
- Changes to spec definitions, shared evidence, types, imports, or prelude
  conventions invalidate dependent proofs.
- Toolchain and verifier changes invalidate results whose trusted context or
  checking behavior may have changed.

## Evidence and acceptance

[`test_incrementality.sh`](../scripts/test_incrementality.sh) already exercises
whitespace, source movement, a callee-body edit, and a callee-contract edit at
the fingerprint/emission boundary.
[`test_emission_modes.sh`](../scripts/test_emission_modes.sh) checks consistency
between the two emission layouts. Neither establishes the complete cache and
persistent-worker design above.

Future tests must cover proof-only edits, imported-definition and shared-evidence
changes, toolchain invalidation, cache corruption, and cancellation. Record
which modules regenerate, which proofs become stale, and which checks actually
run. Measure cold, no-op, body-edit, and contract-edit latency separately.
Implementation order remains in the [execution plan](execution-plan.md).
