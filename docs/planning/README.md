# Vermilion: Verus with a Lean Backend — Planning Workspace

> **Ported snapshot.** This material was imported into the implementation
> repository on 2026-07-12 from `verus-lean-planning`. Its architectural and
> research content is preserved; implementation status is tracked by
> [`PORTING.md`](PORTING.md), the repository [execution plan](../../plans/execution-plan.md),
> and the top-level [README](../../README.md).

This repository is the research-and-planning workspace for **Vermilion**: a port of the
[Verus](https://github.com/verus-lang/verus) deductive verifier for Rust in which verification
conditions become **Lean 4 theorems** — discharged automatically (grind / lean-smt / specialty
tactics) or interactively by humans and AI agents — instead of Z3 SMT queries. It is not the
implementation; its job is to make the first implementation tractable: understand the Verus
codebase, fix the port/don't-port boundary and its order, assemble the target corpus and
literature, and define staged, measurable validation gates.

## Headline recommendation

**Fork the Verus pipeline at VIR-SST.** Keep Verus's entire front/middle end (rustc integration,
mode system, ghost borrow checking, erasure — roughly 60–65% of the tool) as pinned dependencies,
and replace the SMT-specific back half (AIR, poly boxing, triggers, fuel, prover orchestration)
with: a new `sst_to_lean` emitter producing readable, span-annotated Lean theorem statements; a
Lean package whose prelude turns vstd's trusted axioms into proved lemmas under the same names;
and **Veil's verification manager** driving an automation ladder with an interactive
`@[vermilion]` escape hatch. Base camp — a verifier passing a large fraction of Verus's own
example suite — is reached by building only the sequential fragment first and measuring the
automation gap (milestone M0) *before* committing to the emitter.

Vermilion keeps Verus's authoring model and test suite (terminal goal: **the entire ~4,117-test
suite covered**, exec code byte-identical, annotations migrated by a deterministic translator)
while adding what only a Lean backend can: an escape hatch that is a real proof assistant,
mathlib-grade specifications, a shrinkable TCB, and — via Veil — multi-modal protocol reasoning.

## How to read this repository

Start with [`GUIDE.md`](GUIDE.md) if you are a human or agent picking this up cold.

| Path | What it contains |
|---|---|
| [`ROADMAP.md`](ROADMAP.md) | Stages 0–7 with gates, and the suite-coverage ladder to 100%. |
| [`GLOSSARY.md`](GLOSSARY.md) | Shared terminology and the locked decisions. |
| [`reports/01-literature-review/`](reports/01-literature-review/) | Rust verifiers in depth (Aeneas, Creusot, Prusti, VeriFast, Kani, Flux, RefinedRust…), Rust semantics, the embedding thesis, and Vermilion's positioning. |
| [`reports/02-verus-architecture/`](reports/02-verus-architecture/) | Verus internals (pipeline, VIR/SST/AIR, VC generation), the keep/replace/drop boundary, dropped SMT machinery, the soundness path, and spec-language compatibility. |
| [`reports/03-project-corpus/`](reports/03-project-corpus/) | The 29-project corpus (15-project recommended progression), feature matrix, tiers. |
| [`reports/04-implementation-plan/`](reports/04-implementation-plan/) | Base camp, system architecture, milestones, risks, the differential testing harness, the VSCode dual-view design, Veil interop, and the implementation handoff. |
| [`literature/`](literature/) | Verified master BibTeX (105 entries) + topic fragments. |
| [`scripts/merge-bib.sh`](scripts/merge-bib.sh) | Regenerates `literature/bibliography.bib`. |
| [`prompts/planning-task.md`](prompts/planning-task.md) | The originating request. |

## What is reused vs what is new

The one-screen version; the component-level verdicts, porting order, and effort split live in
[`reports/02-verus-architecture/03-reuse-boundary.md`](reports/02-verus-architecture/03-reuse-boundary.md).

| Reused from **Verus** (unchanged, as pinned deps — ~60–65% of the tool) | Reused from **Veil/ecosystem** (as libraries) | **New in Vermilion** |
|---|---|---|
| `verus!{}` surface syntax, `builtin`/`builtin_macros`/`verus_syn` | VC manager (claims DAG, async dischargers, `@[…]` override, results streaming) | `sst_to_lean` emitter (SST → Lean theorem statements + span/AssertId metadata) |
| rustc driving, HIR→VIR, type/trait resolution | lean-smt fork + cvc5/Z3 integration, SMT counterexample rendering | `Vermilion/Prelude`: spec-language semantics; vstd's ~176 axioms re-proved under the same names |
| mode checking, ghost borrow checking, erasure/compilation | Loom (WP metatheory, for the later certified-VC track) | Type translation + obligation shapes (`Vermilion/Types`, `Vermilion/Obligations`) |
| VIR→SST passes: recursion/SCC, prophecy resolution, loop normalization | mathlib + `grind`/`bv_decide`/`nlinarith`/`ring`/`omega` as ladder rungs | Discharger ladder tuned to Verus-shaped goals; diagnostics bridge (Lean results → Rust-span JSON) |
| the ~4,117-test suite + examples (as the differential oracle) | iris-lean (later, behind named ghost interfaces) | `verus2vermilion` deterministic annotation translator |
| vstd's Rust surface and proofs (as Verus source) | verus-analyzer + lean4 VSCode extensions | dual-view VSCode extension + watch daemon; Veil↔Vermilion refinement bridge |

**Dropped** (SMT-era machinery with named replacements — see
[`reports/02-verus-architecture/04-features-dropped.md`](reports/02-verus-architecture/04-features-dropped.md)):
AIR + SMT-LIB emission, poly boxing, fuel encoding, trigger inference, EPR mode, rlimit/spinoff/
profiler, Singular.

## Locked decisions

| ID | Decision |
|---|---|
| D1 | Vermilion reuses Verus's front/middle end unchanged (as pinned dependencies) and forks the pipeline at **VIR-SST**; the new backend is an `sst_to_lean` emitter plus a Lean package. |
| D2 | **Mixed deep/shallow embedding**: obligations are explicit, auditable Lean theorem statements (the deep, inspectable interface); spec expressions embed shallowly as ordinary Lean terms so mathlib and Lean automation apply directly. No deep embedding of Rust at base camp. |
| D3 | Orchestration is **Veil's VC manager**, reused as a library; dischargers are an ordered ladder (`grind` → lean-smt(cvc5/Z3) → `bv_decide`/`nlinarith`/`ring`/`decide` → interactive `@[vermilion]` override). |
| D4 | Toolchain: **Lean 4.28** (Veil's pin); upgrades only at milestone boundaries. |
| D5 | **Backwards compatibility**: exec Rust code is never touched; the Verus spec language embeds shallowly with maximal fidelity (named convention decisions in the prelude); annotations may be migrated by the deterministic `verus2vermilion` translator, which may drop SMT-era scripting. Terminal goal: the **entire Verus test suite covered**. |
| D6 | **Base camp** is the sequential ghost-free-heap fragment, targeting a large fraction of Verus's own examples as fast as possible; everything else is stubbed via `external_body`. |
| D7 | SMT-era machinery is dropped with named replacements: triggers → automation ladder (+hints), fuel → unfolding control, poly boxing → real polymorphism, Singular → `ring`, rlimit/spinoff/profiler → manager, `by(bit_vector)` → `bv_decide`. |
| D8 | EPR-style protocol reasoning is not ported; it is delegated to **Veil via a refinement bridge** (the SOSP'24 IronKV pattern, re-done foundationally). |
| D9 | Soundness is **staged, not blocking**: solvers leave the TCB per-run via lean-smt reconstruction; the VC translation is auditable now and certified later (Loom-derived generator / Iris-Lean models behind named interfaces / per-run validation). |
| D10 | Prioritization is **corpus-driven** and gates are measured by the **differential harness** over Verus's own tests, examples, and verified projects. |
| D11 | The IDE experience is **dual-view VSCode**: live verification status on the Rust side, ordinary Lean proving in companion files on the other, bound by stable names with staleness checking. |

## Current-as-of

Assembled on **2026-07-12**, against:

- **Verus** [`verus-lang/verus`](https://github.com/verus-lang/verus) at commit `c569645bd37b0`;
- **Veil 2.0** [`verse-lab/veil` @ `veil-2.0-preview`](https://github.com/verse-lab/veil/tree/veil-2.0-preview) (Lean 4.28);
- **iris-lean** [`leanprover-community/iris-lean`](https://github.com/leanprover-community/iris-lean) at `5a790ae` (Lean 4.31).

Line counts, toolchain pins, and project build commands are branch-sensitive; re-verify before
acting on them.
