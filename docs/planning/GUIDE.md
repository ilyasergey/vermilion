# Reader Guide

This repository is meant to be executable as a plan: a human or AI agent should be able to read
it, pick a milestone, and know what to build, verify, or research next.

> **Implementation handoff (2026-07-12).** This guide is now hosted inside the
> Vermilion implementation repository. The planning chapters below remain the
> architectural baseline; current execution status and the next concrete tasks
> are recorded here and in [`../../plans/execution-plan.md`](../../plans/execution-plan.md).

## Current implementation progress

Completed and committed:

- repository/toolchain bootstrap with Lean 4.28.0, Verus `c569645bd37b0`, and
  Veil `8872eb7b462a` pins;
- M0 **infrastructure**: draft prelude, seven convention probes, 20 calibration
  obligations, and an isolated tactic-matrix runner;
- neutral `FunctionView`/`Obligation` IR, deterministic theorem naming,
  statement hashes, source metadata, and no-op-preserving atomic emission;
- M1a real source slice:
  [`../../examples/m1-pipeline/simple.rs`](../../examples/m1-pipeline/simple.rs)
  was verified through the pinned front end and pre-poly SST translation.
  See [the pipeline example](../../examples/m1-pipeline/README.md) for current
  commands that generate the statements and editable proof twins;
- captured Verus SST and the implemented mapping documented in
  [`../pipeline/`](../pipeline/);
- ported local execution plan and incremental-computation workstream under
  [`../../plans/`](../../plans/).

The green end-to-end command is:

```console
./scripts/run_m1_pipeline.sh
```

It reports one Verus function verified, five Rust tests passing, identical
output on repeated Lean emission, and a successful `lake build M1Pipeline`.
The reusable library also passes `lake build`.

The root `lakefile.lean` loads cvc5 through `moreGlobalServerArgs`, which is
required for editor elaboration of reconstructed `smt` proofs. On a fresh
checkout, run `lake build` once and then restart the Lean server so the native
plugin exists and the new server arguments take effect.

Important status precision:

- formal M0 is **not complete**: the exhaustive solve-rate matrix and R1
  go/no-go report remain deferred;
- M1a is complete, but formal M1 is **not complete**: its differential parity
  and Rust-span diagnostic gates have not been measured.

## Next agent: prioritized tasks

Work on formal M1 in this order:

1. **Replace the textual SST handoff.** Done (2026-07-12): the pinned checkout
   carries `verus-patches/0001-vermilion-vir-export.patch`, and
   `crates/vermilion_direct` reruns the pinned `vir` middle end in process to
   lower real `vir::sst::FunctionSst` values. Verus types stay inside the
   facade boundary (`sst_facade` + `vermilion_direct`).
2. **Preserve the existing golden slice.** Done (2026-07-12):
   `generated/simple.lean` is byte-stable across the switch, and
   `scripts/run_m1_pipeline.sh` asserts direct-vs-textual `FunctionView`
   equivalence plus `unchanged` re-emission.
3. **Add per-function incrementality.** Done (2026-07-12): manifests carry
   span-insensitive semantic and location fingerprints;
   `scripts/test_incrementality.sh` enforces the whitespace/move/body/contract
   edit matrix. Per-function module splitting and the discharge cache are M2.
4. **Widen the straight-line fragment.** Done (2026-07-12) for M1:
   bools-as-`Prop`, `int`/`nat`, machine widths, casts, assumes,
   calls/contracts with fresh result symbols, SSA lets (including spec-level
   `Let`), and early returns (`examples/m1-widening`). Unknown nodes still
   fail explicitly; `If`/loops are M2.
5. **Connect diagnostics and CLI.** Done (2026-07-12): `vrml_check` +
   colocated manifests; `examples/m1-diagnostics` maps a deliberately failing
   assertion to its exact source range, branded `error[vermilion]`.
6. **Start differential measurement.** Done (2026-07-12) at M1 scope:
   `tests/differential/` + `scripts/run_differential.py`, 12/12 verdict
   parity and 4/4 failure-span agreement (gate ≥95%). Extend toward tagged
   `rust_verify_test` extraction as the M2 fragment grows.
7. **Return to the M0 matrix when automation design is being tuned.** Do not
   block statement generation or diagnostics on broad automation experiments.

For each task, update `logs/`, the axiom/performance ledgers, the README
milestone table, and the local execution plan; commit each coherent green slice.

## Known limitations and cautions

- Generated example files belong beside their Rust sources under
  `examples/<name>/generated/<source-stem>.lean`, not in `lean/Vermilion/`.
- Companion proofs must name the exact generated `..._statement : Prop`; the
  `@[vermilion]` tag is discovery metadata, never a trusted bypass.
- The pinned lean-smt tactic is cvc5-oriented; Z3 proof reconstruction is not
  currently wired through the same tactic path.
- Upstream lean-smt reports one inherited `sorry` in bit-vector reconstruction;
  Vermilion source itself currently has zero `axiom`/`sorry` declarations.
- Pulling the full Veil dependency graph has a substantial cold-build cost;
  preserve the plan to split or upstream a manager-only library surface.

## Fastest path

1. [`README.md`](README.md) — the thesis and locked decisions D1–D11.
2. [`ROADMAP.md`](ROADMAP.md) — stages 0–7, gates, and the coverage ladder.
3. [`reports/02-verus-architecture/03-reuse-boundary.md`](reports/02-verus-architecture/03-reuse-boundary.md)
   — what we keep from Verus, what we replace, what is genuinely new, and in which order.
4. [`reports/04-implementation-plan/01-base-camp.md`](reports/04-implementation-plan/01-base-camp.md)
   — the first build target and its gate.
5. [`reports/04-implementation-plan/08-next-agent-guidelines.md`](reports/04-implementation-plan/08-next-agent-guidelines.md)
   — before creating the implementation repo.

## If you are implementing

Read, in order: the next-agent guidelines (above), then
[`02-architecture.md`](reports/04-implementation-plan/02-architecture.md) (component map, Veil
manager instantiation, emitter contract),
[`05-testing-harness.md`](reports/04-implementation-plan/05-testing-harness.md) (how every claim
gets measured), and [`06-ide-experience.md`](reports/04-implementation-plan/06-ide-experience.md)
(the companion-file workflow you must not break). Work milestone-first: every stage in the
roadmap has a fragment, gate projects, and a measurable gate. **Do not start with the full type
translation or the ghost-state layer** — base camp is sequential, and milestone M0 (a
hand-translated calibration set) comes before any emitter code.

Key invariants to preserve while building:

- exec Rust code is never modified; annotations may differ only via `verus2vermilion` (D5);
- obligation statements are discharger-independent, beautified at emission, and carry
  span/`AssertId` metadata (D2, D11);
- every spec-semantics convention lands in `Vermilion/Prelude` as a named definition plus a probe
  test ([`reports/02-verus-architecture/06-spec-language-compat.md`](reports/02-verus-architecture/06-spec-language-compat.md));
- the axiom and performance ledgers only move in the right direction
  ([`reports/04-implementation-plan/03-validation-milestones.md`](reports/04-implementation-plan/03-validation-milestones.md)).

## If you are doing literature work

Start with the positioning chapter —
[`reports/01-literature-review/05-positioning.md`](reports/01-literature-review/05-positioning.md)
— then read backward: Rust verifiers (ch. 1–2), semantics (ch. 3), verifiers-in-proof-assistants
(ch. 4). The bibliography workflow: edit fragments in [`literature/bib/`](literature/bib/),
regenerate with `scripts/merge-bib.sh`. Verification caveats (and a list of known-nonexistent
papers not to re-add) are in [`literature/README.md`](literature/README.md).

## If you are expanding the corpus

Criteria and method: [`reports/03-project-corpus/01-selection-criteria.md`](reports/03-project-corpus/01-selection-criteria.md).
A new project must add a feature axis, a differential baseline, or external visibility — and must
come with repo URL, measured LoC, build/verify commands, Verus-feature needs (add a matrix
column), and the milestone gate it should block.

## If you are evaluating the idea

Read [`reports/01-literature-review/05-positioning.md`](reports/01-literature-review/05-positioning.md)
(the claim and its objections), then
[`reports/04-implementation-plan/04-risk-register.md`](reports/04-implementation-plan/04-risk-register.md)
(how it fails), then
[`reports/02-verus-architecture/05-soundness-path.md`](reports/02-verus-architecture/05-soundness-path.md)
(what "foundational" honestly means here and when).

## What counts as done for base camp

From [`reports/04-implementation-plan/01-base-camp.md`](reports/04-implementation-plan/01-base-camp.md),
all four measured by the harness:

- ≥ 60 of Verus's own example files verify through the Lean backend;
- ≥ 90% verdict parity with Verus on the base-camp fragment of the oracle test suite;
- Vest verifies end-to-end; IronKV's marshalling module verifies;
- median per-function slowdown ≤ 10× vs Verus, and < 5 s incremental edit-loop latency —
  with the `@[vermilion]` interactive override demonstrated on at least one real goal.

That is deliberately much smaller than "Verus on Lean", and it is the point: the terminal goal
(100% test-suite coverage, ROADMAP) is reached by widening a verifier that already works, not by
building everything before anything runs.
