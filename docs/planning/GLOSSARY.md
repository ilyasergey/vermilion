# Glossary

Shared terminology for the Vermilion planning reports. Locked decisions D1–D11 are in
[`README.md`](README.md); engineering decisions E1–E5 in
[`reports/04-implementation-plan/README.md`](reports/04-implementation-plan/README.md).

## The project

- **Vermilion** — the port of Verus that emits Lean 4 theorems instead of SMT queries. One "l".
- **Base camp** — the first meaningful milestone (M2): the sequential fragment verifying a large
  fraction of Verus's own examples. See
  [`reports/04-implementation-plan/01-base-camp.md`](reports/04-implementation-plan/01-base-camp.md).
- **M0–M7** — the milestone gates; see
  [`reports/04-implementation-plan/03-validation-milestones.md`](reports/04-implementation-plan/03-validation-milestones.md).
- **`sst_to_lean`** — the new emitter (Rust crate) turning VIR-SST function bundles into Lean
  theorem statements with span metadata.
- **Obligation** — one emitted Lean theorem (an ensures clause, a call precondition, an overflow
  check, a loop-invariant preservation, a decreases check…). Named deterministically
  `<crate>.<module>.<fn>.<kind>_<AssertId>`.
- **Discharger / ladder** — an untrusted async prover attempt attached to an obligation; the
  ordered ladder is `grind` → lean-smt (cvc5/Z3) → specialty tactics (`bv_decide`, `nlinarith`,
  `ring`, `decide`) → interactive override.
- **`@[vermilion]` override** — a user-written Lean theorem, statement-checked against a
  generated obligation, acting as a priority discharger (Veil's `@[veil]` pattern).
- **Companion files** — per Rust file: a regenerated `generated/*.lean` (obligations; read-only)
  and a committed `proofs/*.lean` (user proofs). See the dual-view IDE design
  ([`reports/04-implementation-plan/06-ide-experience.md`](reports/04-implementation-plan/06-ide-experience.md)).
- **`verus2vermilion`** — the deterministic annotation translator from Verus's spec language to
  the Vermilion dialect (drops SMT-era scripting; exec code byte-identical).
- **Trust mode / reconstruction mode** — per-run choice: accept solver `unsat` verdicts
  (Verus-like TCB, fast) vs. lean-smt rebuilding kernel-checked proofs (3–5× cost).
- **Axiom ledger / performance ledger** — append-only per-milestone records of trusted
  axioms/sorries and wall-clock vs Verus.
- **Differential harness** — the runner comparing Vermilion and Verus verdicts/errors/timing over
  Verus's tests, examples, and corpus projects
  ([`reports/04-implementation-plan/05-testing-harness.md`](reports/04-implementation-plan/05-testing-harness.md)).

## Verus internals (as used in the reports)

- **Verus** — the SMT-based Rust verifier (`verus-lang/verus`); specs and proofs written in Rust
  via the `verus!{}` macro.
- **Modes** — `spec` (mathematical, erased), `proof` (ghost, linearity-checked, erased), `exec`
  (compiled); the lattice `Exec ≤ Proof ≤ Spec`.
- **VIR** — Verus Intermediate Representation: the mode-annotated AST built from rustc's HIR.
- **VIR-SST** — the statement/expression-split form of VIR (pure expressions, effectful
  statements, resolved triggers, normalized loops). **Vermilion's insertion point.**
- **AIR** — Assertion IR: Verus's tiny assert/assume/havoc language lowered to SMT-LIB.
  Replaced entirely by the Lean backend.
- **vstd** — Verus's standard library of specs and verified data structures (52k lines; the
  mathematical core becomes proved Lean theorems under the same names).
- **`Ghost<T>` / `Tracked<T>`** — ghost data wrappers; tracked values obey Rust linearity and
  carry permissions.
- **`PointsTo` / `PCell` / `PPtr`** — permission types justifying raw-pointer and
  interior-mutability reasoning.
- **VerusSync / tokenized state machines** — Verus's sharded-state-machine concurrency framework
  (`tokenized_state_machine!`), IronSync's methodology as ghost token types.
- **Broadcast lemma** — a quantified lemma auto-instantiated as ambient context
  (`broadcast proof fn` / `broadcast use`); maps to scoped lemma sets in Vermilion.
- **Triggers** — syntactic patterns steering Z3's e-matching quantifier instantiation; dropped as
  a user discipline in Vermilion (accepted, ignored, optionally forwarded as hints).
- **Fuel / opaque / reveal** — Verus's SMT mechanism bounding recursive-definition unfolding;
  becomes ordinary Lean unfolding control.
- **Poly boxing** — VIR pass encoding polymorphism into a single SMT `Poly` sort; deleted
  (Lean has universes).
- **`by(bit_vector)` / `by(nonlinear_arith)` / `by(integer_ring)` / `by(compute)`** — Verus's
  specialty sub-provers (BV reinterpretation, isolated Z3-NL, Singular, symbolic evaluation);
  mapped to `bv_decide` / `nlinarith` / `ring` / `decide`-`native_decide`.
- **EPR mode** — Verus's per-module decidable-fragment automation (SOSP'24); not ported —
  superseded by the Veil refinement bridge (D8).
- **AXM** — aliasing XOR mutability, Rust's ownership discipline; the reason Verus VCs (and
  Vermilion obligations) are heap-free for safe code.
- **Prophecy / `MutRef`** — Verus's new first-class `&mut` encoding (current value + prophesied
  final value); Stage 6 in Vermilion, with VerusBelt's stratification as the reference.
- **Erasure** — token-level removal of all ghost code before compilation; unchanged by the port.

## Ecosystem

- **Veil** — verse-lab's foundational verifier for transition systems/distributed protocols in
  Lean 4; source of the **VC manager** (claims, DAG, async dischargers, alternative encodings)
  and the SMT tactic stack Vermilion reuses.
- **Loom** — the framework Veil/Velvet are built on: provably sound WP-based VC generators
  derived from monadic semantics (monad-transformer algebras). Candidate substrate for
  Vermilion's certified-VC-generator track.
- **Velvet** — the Dafny-style auto-active verifier for Lean-native imperative programs built on
  Loom; nearest Lean-side relative, no aliased heap.
- **The embedding thesis** — Pîrlea's claim that verifiers should be built inside proof
  assistants (multi-modality, one kernel, shrinkable TCB); Vermilion instantiates it for Rust.
- **iris-lean** — the Lean 4 port of the Iris separation logic (~60k lines, adequacy proven, no
  total WP yet); enters with the soundness program, not base camp.
- **VerusBelt** — PLDI'26 Iris/Rocq soundness proof for Verus's proof-oriented types; the
  semantic anchor of Vermilion's trust story and the named list of what stays trusted.
- **Aeneas / Charon** — extrinsic Rust→pure-functions translation (Lean backend); design foil,
  cross-validation oracle, tactic source.
- **Creusot / Pearlite** — prophecy-based Rust verifier over Why3; the head-to-head sequential
  competitor (CreuSAT gate).
- **lean-smt / lean-auto / Duper / `bv_decide` / `grind`** — the Lean automation parts list
  (ladder rungs); lean-smt's reconstruction is the solver-out-of-TCB lever.
- **Corpus tiers A/B/C** — Verus-verified projects / other-verifier projects / unverified
  targets; see [`reports/03-project-corpus/`](reports/03-project-corpus/).
