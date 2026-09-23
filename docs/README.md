# Vermilion documentation

[Back to the project README](../README.md)

## Getting started

- [Quick start](../README.md#quick-start): clone, build, and verify an example.
- [Tutorial](TUTORIAL.md): read obligations, write proofs, and regenerate them.
- [VS Code extension](../editor/vscode-vermilion/README.md): installation,
  verification commands, diagnostics, and Rust/Lean navigation.
- [Supported features and limitations](support.md): runnable feature examples
  and links to current boundaries.
- [Development guide](development.md): native dependencies, builds, test
  scopes, watch mode, and proof-library registration.

## Examples and current work

- [Case-study registry](../case-studies/README.md): verified subsets and blockers.
- [dalek-lite](../case-studies/dalek-lite/README.md) and
  [comparison scoreboard](reports/dalek-lite-layer-a-scoreboard.md): the active
  curve25519-dalek benchmark and its verification evidence.
- [Execution plan](../plans/execution-plan.md): upcoming work.
- [Issue tracker](issues/README.md): features and bugs, synced with GitHub.
- [Progress ledger](reports/progress.md): milestone history.
- [Sequential case-study gap report](reports/sequential-case-studies.md) and
  [target-project ladder](reports/target-projects.md): investigations and
  future acquisitions.
- [Aeneas comparison](../case-studies/aeneas/README.md) and
  [crypto execution plan](../case-studies/aeneas/PLAN.md): scope and remaining work.

## Architecture and proof semantics

- [Design](../DESIGN.md) and [pipeline](pipeline/README.md).
- [Trust boundary](trust.md): trusted components and assumptions.
- [Textual IR](ir.md): the Rust/Lean contract.
- [VC-generation policy](vcgen.md): normative obligation-generation rules,
  including [typeclass evidence](vcgen.md#typeclass-evidence-obligations).
- [Incrementality plan](../plans/incremental-computation.md): computation and
  proof reuse.
- [Verus SST guide](pipeline/verus-sst.md) and
  [captured SST example](pipeline/artifacts/simple-sst.vir).

## Engineering records

- [Session logs](../logs/README.md): decisions and reproduction steps.
- [Planning archive](planning/PORTING.md): research and architecture reports.
