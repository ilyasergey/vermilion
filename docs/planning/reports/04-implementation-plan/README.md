# Implementation Plan

This folder turns the architecture analysis
([`../02-verus-architecture/`](../02-verus-architecture/)) and the corpus
([`../03-project-corpus/`](../03-project-corpus/)) into a buildable, testable plan for Vermilion.
The stage sequence itself lives in [`../../ROADMAP.md`](../../ROADMAP.md); these chapters carry the
detail.

| Chapter | Focus |
|---|---|
| [`01-base-camp.md`](01-base-camp.md) | The fastest path to a verifier that passes a large fraction of Verus's own examples. |
| [`02-architecture.md`](02-architecture.md) | Vermilion's system design: the `sst_to_lean` emitter, the Lean package, Veil-manager reuse, discharger ladder, toolchain and dependency decisions. |
| [`03-validation-milestones.md`](03-validation-milestones.md) | Measurable gates per stage, with the corpus projects that certify them. |
| [`04-risk-register.md`](04-risk-register.md) | The ways this fails, their early symptoms, and mitigations. |
| [`05-testing-harness.md`](05-testing-harness.md) | The differential testing harness against Verus — oracle reuse, comparison modes, CI design. |
| [`06-ide-experience.md`](06-ide-experience.md) | The VSCode experience: Rust code in one buffer, live Lean proof obligations in another. |
| [`07-veil-interop.md`](07-veil-interop.md) | Connecting Vermilion to Veil for EPR-style protocol refinement (the SOSP'24 IronKV pattern). |
| [`08-next-agent-guidelines.md`](08-next-agent-guidelines.md) | Handoff: exactly what to do first when implementation starts. |

## Locked engineering decisions

| ID | Decision |
|---|---|
| E1 | Toolchain: **Lean 4.28** (Veil's pin) for the first cycle; upgrades are scheduled, not ad hoc. |
| E2 | **Veil's VC manager is the orchestration layer** — reused, not reimplemented; deviations require a recorded reason. |
| E3 | Verus's crates (`vir`, `rust_verify`, `air` where needed) are consumed **as dependencies** (git pin), not forked, for as long as the SST insertion point remains stable. |
| E4 | The IDE story is dual-view VSCode: Rust source + generated Lean obligations side by side; verification status renders on the Rust side, proofs happen on the Lean side. |
| E5 | EPR-style protocol reasoning is delegated to **Veil via a refinement bridge**, not reimplemented (no EPR checker in Vermilion). |

## The plan in one paragraph

Keep Verus's front/middle end unchanged and fork the pipeline at VIR-SST; write an `sst_to_lean`
emitter that turns each `FunctionSst` into a family of Lean theorem statements over a small
trusted prelude; drive them through Veil's verification manager with a discharger ladder
(`grind` → lean-smt → specialty tactics → interactive `@[vermilion]` override); keep Verus's CLI
and JSON diagnostics so the existing ~4,117-test suite and example corpus run unmodified as a
differential oracle; and surface everything in VSCode as a dual Rust/Lean view. Base camp is the
sequential ghost-free-heap fragment — enough for a large fraction of Verus's examples plus Vest
and IronKV — reached as fast as possible by stubbing everything else via `external_body`. After
base camp, stages follow the corpus's pressure gauge: traits/broadcast, specialty provers,
PointsTo/invariants, tokens/atomics, verus-tla — with the Veil/EPR bridge as a parallel track.
