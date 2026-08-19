# Chapter 4: Risk Register

Ordered by expected damage. Each entry: symptom you'll actually observe, mitigation, and the
fallback if mitigation fails.

## R1 — Quantifier automation gap (the existential risk)

Verus's proofs lean on Z3's e-matching over ambient quantified axioms; Lean's ladder
(`grind`, lean-smt) may not instantiate equivalently, especially at IronKV/vstd scale.

- **Symptom:** M0 calibration solves < 70% of Z3-solved obligations; or M3's IronKV needs manual
  hints on a large share of previously-automatic lemmas.
- **Mitigation:** (i) M0 exists precisely to see this early; (ii) lean-smt drives Z3 as well as
  cvc5 — same solver as Verus, different translation; (iii) emit Verus's *selected triggers* as
  instantiation patterns through lean-smt (they're in SST — free information); (iv) scoped
  broadcast-lemma sets mirror Verus's context pruning (the FMCAD'24 result that pruning improves
  stability transfers to us); (v) upstream needs to the lean-smt/Veil team (same research group).
- **Fallback:** a trusted "Z3-oracle discharger" rung — semantically the Verus status quo (solver
  in TCB) but per-goal opt-in and clearly labeled. Parity preserved; foundational claims scoped
  to where reconstruction works. The project survives.

## R2 — Performance (the credibility risk)

All prior art says 3–10× slower than the SMT-native baseline (Velvet 3.67× vs Dafny; Veil >10×
vs Ivy on easy goals; reconstruction 3–5×). Verus users are accustomed to sub-second modules.

- **Symptom:** M2's 10× median budget misses; or IDE incremental latency > 5 s on Vest-sized
  files.
- **Mitigation:** obligations are per-function and embarrassingly parallel (manager already
  parallelizes); incremental emission keyed by SST hash; `grind`-first ladder so SMT only sees
  survivors; trust-mode default in the edit loop with reconstruction in CI; Lean-side goal
  statement caching (Veil's snapshot machinery). Budget explicit performance-engineering time in
  every stage (the Dafny'26 lessons paper: "expect to spend most of your time" here).
- **Fallback:** ship with honest numbers — the community has demonstrably accepted 3–10× for
  foundational+multi-modal (Velvet, Veil precedents); target the workflows where Vermilion wins
  regardless (interactive escape hatch, mathlib specs).

## R3 — Verus-as-dependency churn

Decision E3 consumes `vir`/`rust_verify` as git dependencies; Verus internals (SST included) are
not a stable API — the survey caught a same-day IR refactor (`BitshiftBehavior` moved that
morning).

- **Symptom:** pin bumps break `sst_to_lean` compilation or, worse, silently change SST shapes.
- **Mitigation:** pin a Verus commit per milestone; a thin `sst_facade` module is the *only* code
  touching `vir` types (one place to absorb refactors); the differential harness doubles as the
  semantic regression detector on every bump; engage Verus upstream early — they already run
  dual-CI patterns downstream (vostd) and may accept a backend-trait seam.
- **Fallback:** fork at a known-good commit and rebase deliberately; the front end evolves slowly
  compared to the backend surface we consume.

## R4 — Toolchain triangle (Lean 4.28 pin vs the ecosystem)

Veil+Loom+lean-smt-fork sit at 4.28 (decision E1); mathlib moves fast; iris-lean is at 4.31 with
the new module system.

- **Symptom:** a needed mathlib lemma or `grind` improvement exists only past 4.28; or the Veil
  fork lags a Lean release Vermilion needs.
- **Mitigation:** 4.28 is exactly Veil's pin, so the *hard* dependencies are consistent by
  construction today; upgrades only at milestone boundaries; iris-lean is not a dependency until
  the soundness program (by which time the setoid→type refactor should have settled).
- **Fallback:** vendor the specific mathlib lemmas needed (they're small); the manager and
  emitter code have no exotic toolchain requirements.

## R5 — vstd surface area

52k lines, 126 files, deeply interconnected; the port could swallow the schedule.

- **Mitigation:** port by *need* (feature matrix pressure), not completeness; `external_body`
  stubs are legitimate and tracked in the axiom ledger; lemma-name compatibility means files port
  independently; consider mechanically translating vstd's *proofs* through Vermilion itself once
  the fragment allows (vstd is Verus code — dogfooding milestone).

## R6 — Ghost-state semantics (Stages 5–6 design risk)

`PointsTo`/invariants/tokens need Lean models good enough to verify allocator-grade code, without
waiting for the full Iris-Lean program.

- **Mitigation:** at these stages the models may be *axiomatized interfaces* (exactly Verus's
  trust level — vstd axioms) behind the named-interface discipline; VerusBelt is the paper
  evidence sound models exist; the soundness program later replaces axioms with models without
  re-emitting.
- **Fallback:** stay axiomatic longer; parity is preserved (Verus never proves these either).

## R7 — Diagnostics regression

Verus's error UX (spans, expand-errors, counterexamples) is why people tolerate verification;
a port that says "goal failed: 400-line Lean term" loses users regardless of soundness.

- **Mitigation:** the JSON diagnostics contract is a *harness-tested* artifact from M1 (error
  spans compared against Verus's on the oracle suite); goal beautification at emission;
  counterexample rendering reuses Veil's model-display pipeline; the dual-view IDE
  ([`06-ide-experience.md`](06-ide-experience.md)) makes the Lean goal an asset (inspectable,
  provable) rather than a stack trace.

## R8 — Team/skill concentration

The project needs simultaneous depth in rustc-adjacent Rust, Lean metaprogramming, and
verification pragmatics.

- **Mitigation:** the architecture is deliberately two-sided with a narrow contract (generated
  Lean files + JSON results) so Rust-side and Lean-side work parallelize; Veil/Velvet team
  proximity covers the Lean-side unknowns; `08-next-agent-guidelines.md` keeps the ramp short.
  AI-agent-assisted proof/porting work is explicitly in scope (the `unveil`-style goal hygiene
  exists partly for this).
