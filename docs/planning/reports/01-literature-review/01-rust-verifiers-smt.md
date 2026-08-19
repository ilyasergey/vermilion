# Chapter 1: Auto-Active and SMT-Family Rust Verifiers

The intrinsic culture: specs live in (or next to) the Rust source, the developer stays in Rust,
and proof obligations go to automated solvers. For each tool: specification language, how
Rust/ownership is modeled, the VC pipeline, backend, unsafe/concurrency treatment, TCB, maturity,
and what Vermilion takes from it.

## 1.1 Verus [lattuada2023verus, lattuada2024verus-sosp]

- **Spec language:** Rust-syntax ghost code inside `verus!{}` — `spec`/`proof`/`exec` function
  modes, `requires`/`ensures`, quantifiers with triggers, `decreases`, broadcast lemmas; vstd as
  the spec standard library. The OOPSLA'23 paper contributes the mode system and **linear ghost
  types**: `Ghost<T>`/`Tracked<T>` permissions checked by Rust's own borrow checker (on
  ghost-erased MIR), so proofs about pointers/interior mutability/concurrency ride the linearity
  Rust already has instead of a heap logic in SMT.
- **Rust modeling:** none needed for safe code — Verus piggybacks on rustc for types and
  borrows; AXM (aliasing XOR mutability) makes VCs functional. Unsafe idioms are recovered
  through permission tokens (`PointsTo`, cells, invariants) whose soundness is now underwritten
  by VerusBelt (ch. 3).
- **Pipeline/backend:** HIR→VIR→SST→AIR→Z3 (one query per function; see
  [`../02-verus-architecture/`](../02-verus-architecture/) for the full anatomy). Encoding
  discipline is the differentiator: spec functions as first-class SMT functions, fuel-bounded
  unfolding, conservative one-best-trigger selection, per-module context pruning, isolated
  nonlinear/bitvector/Singular sub-queries, per-module opt-in EPR mode (SOSP'24). Result:
  verification 3–61× faster than the state of the art on their suite (singly linked list 0.66 s
  vs Dafny 3.83 s, Prusti 18.8 s; doubly linked 1.15 s vs Creusot 30.8 s, Prusti inexpressible).
- **Concurrency:** VerusSync tokenized state machines (IronSync's sharded state-machine
  methodology [hance2023ironsync] ported from Linear Dafny; definitive treatment in Hance's
  thesis [hance2024thesis]); atomics with ghost coupling; invariants with namespace masks.
- **TCB:** specs, the whole VC translation, Z3/cvc5/Singular, rustc.
- **Ecosystem robustness work:** Mariposa quantified SMT *instability* (semantically irrelevant
  query mutations flipping verdicts) across 17k queries [zhou2023mariposa]; context pruning
  [zhou2024pruning] and automated instability debugging [zhou2025cazamariposas] mitigate it;
  ProofPlumber/proof actions [cho2024proofactions] tool the failure-debugging loop; tunable
  broadcast scoping [bai2025tunable] tunes the automation/stability tradeoff. **Read as a body of
  evidence: the SMT monoculture's pain points are systemic enough to sustain a research
  subfield — they are Vermilion's demand curve.**
- **For Vermilion:** everything — it is the substrate. The specific imports: keep the encoding
  discipline (functional VCs, pruning-like premise control), replace its solver-management
  stratum (ch. 4 of the architecture report), inherit its test suite as the oracle.

## 1.2 Prusti [astrauskas2019prusti, astrauskas2022prusti-project]

- **Spec language:** attribute macros (`#[requires]`, `#[ensures]`, pledges for reborrows) over
  Rust expressions.
- **Modeling/pipeline:** MIR → Viper (implicit dynamic frames / separation-logic-flavored IVL);
  the "core proof" of memory safety is synthesized *automatically from borrow information*, and
  user specs refine it to functional correctness. Backends: Viper's VC generator (via Boogie) or
  symbolic execution (Silicon), then Z3.
- **Unsafe/concurrency:** safe Rust only; no concurrency.
- **TCB:** rustc-to-Viper encoding, Viper, Z3.
- **Maturity:** ETH tool with sustained engineering (NFM'22 experience paper); notably slower on
  data-structure benchmarks (Verus SOSP'24 table) and stuck at safe Rust.
- **For Vermilion:** the core-proof idea (deriving memory-safety scaffolding from borrow info) is
  what Verus gets by *construction* via AXM; Prusti's pledges prefigure prophecy-style `&mut`
  specs. Mostly a comparison point — and a warning about IVL-stack latency.

## 1.3 Creusot [denis2022creusot, denis2023iterators, denis2023thesis]

- **Spec language:** Pearlite — a total, first-order spec language in Rust attribute macros;
  `#[requires]/#[ensures]/#[invariant]`, logic functions, `pearlite!{}` quotations.
- **Modeling:** the RustHorn insight (ch. 1.7) industrialized: a mutable borrow is (current
  value, **prophecy** of its final value — the `^` operator); ownership makes the heap vanish
  from VCs. Soundness of this encoding is RustHornBelt's theorem (ch. 2.6).
- **Pipeline/backend:** MIR → WhyML (now the Coma IVL); Why3 generates VCs for SMT portfolios
  (Z3, CVC5, Alt-Ergo). Higher-order closures/iterators get first-order specs via a
  defunctionalization discipline (TACAS'23).
- **Unsafe/concurrency:** safe Rust only (Gillian-Rust is the unsafe-side companion, ch. 2.4);
  no concurrency.
- **Maturity:** the strongest academic user base after Verus; CreuSAT (verified CDCL SAT solver)
  is its flagship case study and our corpus item B1; Denis's thesis includes a Coq proof of the
  obligation generation for a core calculus.
- **For Vermilion:** the prophecy treatment converges with Verus's new `MutRef` — VerusBelt and
  Creusot hit the *same* ghost-code time-travel paradox independently, and both stratify;
  Vermilion inherits the resolution through Verus. Creusot is also the natural head-to-head
  competitor on sequential safe Rust: same intrinsic style, different backend philosophy
  (multi-prover IVL vs foundational Lean).

## 1.4 Flux [lehmann2023flux, lehmann2025generic]

- **Spec language:** refinement (liquid) types — `i32{v: 0 <= v}` — as a rustc plugin; loop
  invariants inferred by liquid-type fixpoint inference.
- **Modeling:** indexes mutable locations, exploits ownership for strong updates; metatheory
  stated over Stacked Borrows. POPL'25 adds refinement-generic trait specs.
- **Backend:** liquid-fixpoint → SMT (decidable fragments only, by design).
- **TCB:** the type checker, rustc, SMT.
- **For Vermilion:** a different UX point (types, not contracts) with much lower annotation
  burden but a capped property language. Its inference is a reminder that Vermilion's ladder can
  eventually *infer* simple invariants (Verus already does for `for`-loops). Not a competitor
  for full functional correctness.

## 1.5 Kani [vanhattum2022kani, delmas2026kani]

- **Model:** MIR → Goto-C → CBMC bit-precise **bounded** model checking (SAT); contracts, loop
  invariants and stubbing added over time; harness-driven.
- **Scale datapoint:** production CI at AWS — 16,000+ harnesses per code change in the
  verify-rust-std campaign [cook2026stdlib]; s2n-quic and Firecracker case studies.
- **TCB:** MIR→Goto translation, CBMC, SAT solver; and boundedness itself.
- **For Vermilion:** not a rival (bounded, absence-of-UB focus) but a *coexistence model* —
  Kani's harness corpus is a ready-made target set where Vermilion can upgrade bounded claims to
  unbounded theorems (corpus B2/B3), and its CI-adoption pattern ("verify the 2% at the
  boundary") is the adoption pattern Vermilion should support.

## 1.6 VeriFast for Rust [foroushaani2022verifast-rust]

- **Model:** separation-logic contracts in comments; modular *symbolic execution* (not VC
  generation) at MIR level; targets **unsafe** Rust's UB-freedom specifically. Preprint-only as a
  paper, but an active tool (one of four in the verify-rust-std CI); KU Leuven follow-ups tackle
  pointer-aliasing-model compliance and even Rc under a weak-memory model.
- **TCB:** VeriFast's engine + SMT backends.
- **For Vermilion:** the annotate-unsafe-code workflow is what Verus replaces with tracked
  permissions; VeriFast's presence in verify-rust-std makes it a direct comparison on those
  contracts. Its symbolic-execution architecture (vs. VC generation) is the same design fork
  Gillian-Rust takes — worth understanding, not adopting.

## 1.7 RustHorn [matsushita2021rusthorn]

- **Model:** safe Rust → constrained Horn clauses, "clearing away pointers and heaps by
  leveraging ownership"; the origin of the prophecy encoding of `&mut` (current value ×
  prophesied final value). Paper-proven for a core calculus (COR); solved by Spacer/HoIce.
- **For Vermilion:** historically decisive — the theoretical seed of Creusot, RustHornBelt, and
  ultimately Verus's `MutRef`. The CHC route itself (fully automatic, invariant inference
  included) remains interesting as a possible *discharger rung* for loop-invariant-free goals,
  far future.

## 1.8 Cross-tool comparison

| | Verus | Prusti | Creusot | Flux | Kani | VeriFast-R |
|---|---|---|---|---|---|---|
| Authoring | intrinsic, modes | intrinsic, attrs | intrinsic, attrs | types | harnesses | comments |
| Unsafe code | ghost permissions | ✗ | ✗ (Gillian hybrid) | ✗ | ✓ (bounded) | ✓ |
| Concurrency | VerusSync tokens | ✗ | ✗ | ✗ | limited | some (weak-memory research) |
| Unbounded proofs | ✓ | ✓ | ✓ | ✓ (fragment) | ✗ | ✓ |
| Interactive fallback | ✗ (assert-by only) | ✗ | ✗ (Why3 ITP export, unused in practice) | ✗ | ✗ | ✗ |
| Spec expressiveness | FOL + vstd | FOL | Pearlite (FO, total) | refinements | Rust exprs | SL |
| Backend TCB | Z3+cvc5+Singular+translation | Viper+Z3+translation | Why3+portfolio+translation | SMT+inference | CBMC+SAT | engine+SMT |
| Speed (linked-list benchmark) | **0.66 s** | 18.8 s | 1.88 s (partial) | n/a | n/a | n/a |

The empty column every tool shares — **interactive fallback** — plus the shared trusted-pipeline
row, is precisely Vermilion's opening. The comparison also fixes expectations: Vermilion must not
regress the first three rows (Verus's unique strengths) while filling the gap.
