# Roadmap

Vermilion grows by validation gates, not by chasing full Verus at once. Each stage leaves behind:
a verifying fragment (measured by the differential harness against Verus's own tests and
examples), a performance ledger entry, and an axiom ledger entry. Gates are specified precisely in
[`reports/04-implementation-plan/03-validation-milestones.md`](reports/04-implementation-plan/03-validation-milestones.md);
this file is the map.

Engineering constants across all stages: Lean **4.28** pin (upgrades at stage boundaries only);
Veil's VC manager as the orchestration layer; Verus crates as pinned dependencies with the fork
point at VIR-SST; CLI/JSON compatibility with Verus throughout.

**Terminal target:** the **entire Verus test suite (~4,117 tests) covered** — every test passes
directly or after deterministic annotation translation (`verus2vermilion`; exec Rust code always
byte-identical), or carries a documented dropped-SMT-machinery disposition. Cumulative coverage
is the headline scoreboard number from Stage 2 onward: ≥35% at M2, ≥60% at M3, ≥75% at M4,
≥85% at M5, ≥95% at M6, **100% at M7**.

## Stage 0: Calibration (milestone M0)

**Goal:** measure the automation gap before committing to it.

- 20 hand-translated obligations over a draft prelude; discharger-ladder solve-rate matrix
  (grind / lean-smt+cvc5 / lean-smt+Z3 / omega / nlinarith × trust/reconstruction).
- **Gate:** published table; go/no-go on the quantifier-automation risk (R1).

## Stage 1: Sequential straight-line core (M1)

**Goal:** sound emitter for the simplest real fragment.

- Prelude v1 (spec-language conventions per
  [`reports/02-verus-architecture/06-spec-language-compat.md`](reports/02-verus-architecture/06-spec-language-compat.md)),
  type translation, `sst_to_lean` for requires/ensures/assert/assume/calls; `&mut` params +
  `old()`; `external_body`/`assume_specification`; span/AssertId metadata end to end.
- **Gate:** ≥95% verdict parity on the straight-line oracle-test fragment; Rust-span diagnostics.

## Stage 2: Base camp — loops, recursion, vstd math core (M2)

**Goal:** *a verifier sufficient for a large fraction of Verus's own examples* — the first
externally meaningful artifact.

- Loops+invariants (loop-isolation faithful), decreases/termination VCs, recursive spec
  functions (incl. `decrease_when` partiality), `Seq/Set/Map/Multiset` with vstd-compatible lemma
  names, opaque/reveal, manager + ladder + `@[vermilion]` override, watch daemon, harness in CI.
- **Gate:** ≥60 Verus example files verify; ≥90% verdict parity on the fragment; Vest end-to-end;
  IronKV marshalling; ≤10× median wall-clock; <5 s incremental edit loop.
- Detail: [`reports/04-implementation-plan/01-base-camp.md`](reports/04-implementation-plan/01-base-camp.md).

## Stage 2.5: Interactive UI and the experimentation kit (M2.5) — prioritized

**Goal:** immediately after base camp, a human (not just the harness) can experiment with
Vermilion on real examples. This stage is deliberately scheduled *before* further language
features: early hands-on use is how design errors in the workflow get caught cheaply.

- The full dual-view VSCode experience of
  [`reports/04-implementation-plan/06-ide-experience.md`](reports/04-implementation-plan/06-ide-experience.md):
  gutter status, span diagnostics, "prove interactively" stubs, staleness checking, jump-to-Lean
  and back, counterexample display (minimal version).
- **The experimentation kit**: a `getting-started` walkthrough (install toolchains, open the
  sample project, verify, break a proof, fix it interactively); a curated set of ~15 runnable
  examples graded from `assert(1+1==2)` to a small verified data structure, each with a short
  narrative; CLI-only instructions mirroring the IDE flow (`vermilion emit/verify/stubs`).
- **Gate:** a person who has used neither Verus nor Lean can, following only the kit, install
  Vermilion, verify an example, cause a failure, inspect the goal in the Lean buffer, and close
  it with a provided proof — in under an hour, on macOS and Linux.

## Stage 3: Traits, closures, broadcast — the sequential corpus (M3)

**Goal:** library-grade Rust.

- Trait specs + generics (typeclass/dictionary decision recorded), exec/spec closure contracts,
  const generics, broadcast-group UX, `View`/`DeepView`, std_specs expansion; IDE counterexample
  rendering + hover-translation.
- **`verus2vermilion` v1**: the deterministic annotation translator (drops triggers/rlimit/
  prover directives with a machine-readable report; exec code byte-identical) — from here on,
  suite coverage is measured over translated tests.
- **Gate projects:** full IronKV refinement; CreuSAT (with Creusot comparison write-up); Verdict;
  pmemlog; heapless-sequential; ≥85% of in-fragment examples.

## Stage 4: Specialty provers (M4)

**Goal:** replace Verus's escape-hatch provers with stronger Lean equivalents.

- `by(bit_vector)`→`bv_decide` bridge (Int↔BitVec transfer library); `by(nonlinear_arith)`→
  isolated `nlinarith`/lean-smt; `by(integer_ring)`→`ring`; `by(compute)`→`decide`/
  `native_decide`; vstd `arithmetic/`+`bits` re-proved.
- **Gate projects:** BLAKE3-portable; page-table (single-core); rlsf bitmaps; curve25519-dalek
  field arithmetic (the mathlib-differentiator write-up).

## Stage 5: Ghost memory (M5)

**Goal:** the `PointsTo` layer — raw pointers, cells, invariants.

- `PPtr`/`PCell`/`raw_ptr` permissions behind named abstract interfaces (axiomatized first —
  Verus's own trust level); `LocalInvariant`/`AtomicInvariant` + namespace masks.
- **Gate projects:** doubly-linked examples, `cells.rs`/`invariants.rs`, heapless spsc,
  page-table raw-memory layer; axiom ledger decreasing on vstd cell/pptr modules.

## Stage 6: Concurrency (M6)

**Goal:** VerusSync parity.

- Tokenized state machines, `atomic_ghost`, PCM/storage protocols, thread specs; general
  prophecy-based `MutRef` (VerusBelt's stratified model as reference).
- **Gate projects:** all 29 `state_machines` examples; verified-node-replication;
  verified-memory-allocator; stretch: VeriSMo. Soundness-readiness design review
  (swap-in point for Iris-Lean models, per
  [`reports/02-verus-architecture/05-soundness-path.md`](reports/02-verus-architecture/05-soundness-path.md)).

## Stage 7: Temporal logic, Veil interop, capstone (M7)

**Goal:** the capabilities Verus's ecosystem has that no single backend served well.

- verus-tla ported as a Lean temporal library; Anvil lemma framework; **Veil↔Vermilion
  refinement bridge** with the IronKV delegation-map demonstrator (the SOSP'24 EPR study, re-done
  foundationally — [`reports/04-implementation-plan/07-veil-interop.md`](reports/04-implementation-plan/07-veil-interop.md)).
- **Gate:** one Anvil controller end-to-end; the interop demonstrator with written comparison;
  **100% Verus-test-suite coverage** (pass, translated-pass, or documented disposition — no
  silent exclusions).

## Beyond the map (unscheduled research tracks)

- **Foundational track:** Loom-derived certified VC generator for the sequential core; Iris-Lean
  models behind the ghost interfaces; per-run translation validation. Kept unblocked by the
  named-interface and metadata disciplines; entered when parity pressure allows.
- **Frontier features:** async (`tokio::sync`-class), weak memory (crossbeam-class), floats.
- **Ecosystem:** cargo-vermilion, Cedar refinement demo (corpus B7), vstd dogfooding (verify vstd
  through Vermilion itself), agent-delegated proof workflows at scale.
