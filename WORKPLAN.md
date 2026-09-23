# Vermilion workplan

The [execution plan](plans/execution-plan.md) is the authoritative work queue.
The [case-study registry](case-studies/README.md) records scope and blockers;
[progress](docs/reports/progress.md) records dated milestones.

## Architecture and current work

- Verus supplies the front and middle end through the fork pinned by
  [`scripts/setup_verus.sh`](scripts/setup_verus.sh).
- Rust lowers pre-poly VIR-SST into the [textual IR](docs/ir.md); Lean parses
  it, generates verification conditions, and emits readable theorem statements.
- [VC-generation policy](docs/vcgen.md) is normative. The current translator
  remains trusted; [foundational VC generation](docs/issues/formal-semantics-for-the-neutral-ir.md)
  is planned.
- [`lean-toolchain`](lean-toolchain) pins Lean 4.33.0; Mathlib and lean-smt are
  direct Lake dependencies. Veil and Loom are absent from the dependency tree.
- The active target is [dalek-lite](case-studies/dalek-lite/README.md).
  Its field-cone acquisition is partial; the current proof-hole inventory and
  remaining trusted assumptions are recorded in that study.
- Aeneas SHA-3 work remains paused. Its directory is user-owned and read-only.
- Ghost memory, concurrency, and temporal/liveness reasoning remain future
  milestones. Broad sequential support does not imply complete Verus coverage.

## Per-change definition of done

- Run the builds and tests relevant to the change and record their actual outcome.
- Keep semantics, [trust claims](docs/trust.md), and documentation aligned.
- Record any new axioms, proof holes, and trusted boundaries explicitly.
- Preserve executable-source provenance and editable proof twins.
- Record measurements and decisions in [session logs](logs/README.md), with
  curated results under `docs/reports/`.

See the [development guide](docs/development.md) for commands and the
[incrementality plan](plans/incremental-computation.md) for future proof reuse.
