# Performance ledger

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md).

Entries are append-only. Cold dependency compilation is separated from warm
edit-loop measurements.

| Date | Milestone | Scenario | Wall time | Notes |
|---|---|---|---:|---|
| 2026-07-12 | M1a | First Lean/Veil dependency build | several minutes | One-time source build; manager-only dependency split remains future work |
| 2026-07-12 | M1a | Warm full `run_m1_pipeline.sh` (historical; absorbed into `run_suite.sh`) | 25.4 s | Verus verify, 5 Rust tests, two no-op emissions, generated/default/SMT/interactive Lean checks |

Future entries will include cold build, warm no-op, one-function body edit,
contract edit with caller invalidation, and interactive-proof-only edit as
specified in `plans/incremental-computation.md`.
