# Chapter 3: Validation Milestones

Each stage of [`../../ROADMAP.md`](../../ROADMAP.md) ends in a gate that a harness can measure. No
gate, no stage. Corpus references are to [`../03-project-corpus/`](../03-project-corpus/).

## M0 — Calibration (end of base-camp Step 0)

- 20 hand-translated obligations; ladder solve-rate table (grind / lean-smt-cvc5 / lean-smt-Z3 /
  omega, × trust vs reconstruction) published in this repo.
- **Go/no-go signal**: if < 70% of obligations that Z3 solves in Verus are solved by *any* ladder
  rung, the automation risk escalates (see risk R1) before further investment.

## M1 — Emitter soundness on straight-line code

- All `rust_verify_test` tests in the straight-line fragment run with **verdict parity ≥ 95%**;
  every disparity triaged into: our bug / trigger-dependence / convention corner (§6.2 of the
  spec-compat chapter), with a written disposition.
- Every emitted obligation carries span + `AssertId`; a failing assert in a 3-function file
  renders as a Rust-span diagnostic indistinguishable in shape from Verus's.

## M2 — Base camp (the headline gate)

The four criteria of [`01-base-camp.md`](01-base-camp.md) §1.2, verbatim: ≥60 example files;
≥90% verdict parity on fragment oracle tests; Vest + IronKV-marshalling verified; ≤10× median
wall-clock with <5 s incremental loop. Additionally:

- `@[vermilion]` interactive override works end-to-end (one example proof in the repo where
  automation fails and a human/agent closes the goal in the dual view);
- CI runs the differential harness nightly with reconstruction mode on a sample.

## M2.5 — Interactive UI and the experimentation kit (prioritized after base camp)

Scheduled immediately after M2 and **before** M3 feature work (user decision, 2026-07-12): human
experimentation starts as early as possible.

- The dual-view VSCode experience per [`06-ide-experience.md`](06-ide-experience.md): gutter
  status, diagnostics, prove-interactively stubs, staleness contract, bidirectional navigation,
  minimal counterexample display.
- The **experimentation kit**: `getting-started.md` (install → verify → break → prove → green,
  with screenshots), ~15 graded runnable examples with narratives, and CLI-only instructions
  (`vermilion emit / verify / stubs --failing`) mirroring the IDE flow.
- **Gate (usability, human-tested):** a person new to both Verus and Lean completes the
  walkthrough — install, verify an example, cause a failure, inspect the goal in the Lean buffer,
  close it with a provided proof — in under an hour, on macOS and Linux, following only the kit.
  At least two outside-the-team testers; friction points filed as issues.

## M3 — Traits, closures, and the sequential corpus

- Trait specs, exec-closure contracts, const generics, full broadcast UX.
- **Gate projects**: full IronKV refinement; CreuSAT re-verification (with a written
  Creusot-vs-Vermilion comparison: annotation count, proof lines, wall-clock); Verdict;
  verified-storage `pmemlog`; heapless (sequential structures). Example-corpus coverage ≥ 85% of
  in-fragment files.
- Quantifier-automation report: instantiation-hint usage across IronKV — the empirical answer to
  "did we really not need triggers?"

## M4 — Specialty provers

- `by(bit_vector)` → `bv_decide` bridge with the Int↔BitVec transfer library;
  `by(nonlinear_arith)` → isolated `nlinarith`/lean-smt goals; `by(integer_ring)` → `ring`;
  `by(compute)` → `decide`/`native_decide`.
- **Gate projects**: BLAKE3-portable; verified-nrkernel page-table (single-core variant);
  rlsf bitmap module; curve25519-dalek field arithmetic (the mathlib-differentiator demo, written
  up); vstd's `arithmetic/` and `bits` lemma files re-proved rather than axiomatized.

## M5 — Ghost memory

- `PPtr`/`PCell`/`raw_ptr` `PointsTo` with a Lean model behind named interfaces;
  `LocalInvariant`/`AtomicInvariant` + mask obligations.
- **Gate projects**: Verus's `doubly_linked.rs` / `doubly_linked_xor.rs` / `cells.rs` /
  `invariants.rs` examples; heapless spsc; page-table raw-memory layer. vstd `cell`/`simple_pptr`
  modules verified against the model (axiom count strictly decreases; tracked in CI).

## M6 — Concurrency

- Tokenized state machines (the `state_machines_macros` output verifying), `atomic_ghost`,
  PCM/storage protocols, general prophecy-based `MutRef`.
- **Gate projects**: the 29 `examples/state_machines/` files; verified-node-replication;
  verified-memory-allocator; then VeriSMo as the stretch gate (custom tracked permissions).
- Soundness-readiness checkpoint: the named-interface discipline of
  [`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)
  §5.6 audited — could an Iris-Lean model be slotted behind `Vermilion.PointsTo` without touching
  emitted statements? (Design review, not proof.)

## M7 — Temporal / liveness and the capstone

- verus-tla ported to a Lean temporal library; Anvil's lemma framework verifying.
- **Gate project**: one Anvil controller end-to-end (ZooKeeper operator), plus the Veil-interop
  demonstrator from [`07-veil-interop.md`](07-veil-interop.md) (IronKV delegation map as Veil
  spec + Vermilion refinement — the SOSP'24 EPR case study, re-done our way).
- **Terminal coverage gate**: 100% of the Verus test suite covered — pass, translated-pass
  (`verus2vermilion`, exec code byte-identical), or documented dropped-machinery disposition.
  Coverage ladder along the way: ≥35% (M2), ≥60% (M3), ≥75% (M4), ≥85% (M5), ≥95% (M6).

## Cross-cutting, every milestone

- **No-regression invariant**: everything green at M(n−1) stays green, enforced nightly.
- **Performance ledger**: per-gate wall-clock table (Vermilion vs Verus, per project), appended —
  never overwritten — so the slowdown trend is visible.
- **Axiom ledger**: count of `axiom`/`sorry`/trusted `external_body` in the Lean package and in
  each gate project; must be monotonically non-increasing per fragment.
- **Upgrade checkpoints**: Lean-toolchain upgrades (from the 4.28 pin) happen only at milestone
  boundaries, as a scheduled task with the harness as the safety net.
