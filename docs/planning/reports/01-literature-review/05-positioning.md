# Chapter 5: Positioning — Why Vermilion, and How It Differs from Aeneas, Velvet, and Loom

The argument the project must be able to make on demand — to a reviewer, a funder, or a
contributor. Three parts: the claim, the pairwise comparisons, and the objections we must
preempt.

## 5.1 The claim

**Vermilion is the first verifier that is simultaneously Rust-native and proof-assistant-native.**
It keeps everything that makes Verus the systems-verification tool of record — intrinsic
authoring in Rust, the mode system, ghost/linear permissions for unsafe idioms, VerusSync
concurrency, sub-function-level automation, a 15-project verified ecosystem — and replaces the
one stratum that caps it: obligations become Lean theorems instead of Z3 queries. That single
change buys, at once:

1. **An escape hatch that is not an afterthought** — failed automation leaves an ordinary Lean
   goal, provable by a human or an AI agent, kernel-checked, and registered back to the exact
   Rust span (the thesis's "law": every verifier grows a bug-ridden half-ITP; Vermilion starts
   with a whole one).
2. **Specs beyond SMT** — mathlib-grade mathematics in ensures clauses (field arithmetic over
   `ZMod p`, real analysis, temporal properties), where Verus hits the FOL wall.
3. **A shrinkable TCB** — lean-smt reconstruction takes solvers out of the trust story per run;
   `bv_decide`/`ring` are proof-producing from day one; the VC translation becomes auditable
   Lean statements with a published certification ladder behind it (VerusBelt names exactly
   these two legs as Verus's open trust debt).
4. **Multi-modality on one spec** — SMT automation, interactive proof, Veil model
   checking/BMC via the refinement bridge, and (on decidable spec fragments) property testing —
   the embedding thesis, instantiated for Rust.
5. **Freedom from trigger programming** — the single most user-hostile Verus discipline becomes
   an implementation detail of the discharger ladder (with the honest caveat that M0/M3 must
   demonstrate the replacement automation, and instability research [zhou2023mariposa] shows
   what we're escaping is real).

## 5.2 Versus Aeneas

Same prover, opposite architecture. Aeneas is **extrinsic**: safe Rust is translated to pure
functions; specs and proofs live *in Lean, about the translation*. Vermilion is **intrinsic**:
specs live in the Rust source (Verus's spec language), obligations are generated per function,
and Lean is where obligations are *discharged*, not where programs are re-stated.
Consequences:

- **Scope**: Aeneas excludes interior mutability, unsafe, concurrency — i.e., the systems corpus
  (allocators, VeriSMo, NR) is out of reach by design. Vermilion inherits Verus's ghost-
  permission treatment of exactly those.
- **Workflow**: Aeneas users maintain a second, translated codebase of lemmas; Vermilion users
  annotate Rust and drop to Lean only on automation failure.
- **Automation**: Aeneas has tactics but no auto-active loop; Vermilion's default path is
  push-button.
- **Where Aeneas wins**: purity — the translated program is a genuine mathematical object with a
  soundness theorem for the borrow abstraction (ICFP'24), and no SMT-shaped VC machinery at all.
  That's why Vermilion plans to *use* it (cross-validation oracle; tactic reuse) rather than
  argue with it.
- The thesis's critique of "Lean as one backend" (seamlessness lost) applies to Aeneas and is
  answered by Vermilion's §5.4-objection-2 story, not by pretending the frontend is in Lean.

## 5.3 Versus Velvet (and Loom)

Same platform philosophy, opposite starting language. Velvet is a Dafny-class verifier for
**Lean-native imperative programs**: its language is defined by its monadic embedding, it has no
aliased heap ("doubly-linked lists with aliasing are outside its present scope"), no rustc, no
existing codebases. Vermilion verifies **real Rust** — the language with the industrial user
base, the borrow checker, and 15 already-verified systems. Loom is one level up: a framework for
*deriving* verifiers from monadic semantics — infrastructure, not a Rust tool.

- What Vermilion takes from them: the manager pattern, `grind`→SMT dispatch, `@[solverHint]`,
  goal-hygiene doctrine, the two-layer proof pattern, the honest 3.67× number.
- What Vermilion adds that they cannot: rustc's type/borrow checking as the mode foundation
  (Velvet has no ownership), Verus's spec/proof/exec discipline over a real compiler, and the
  ghost-permission story for unsafe/concurrent code.
- The relationship is symbiotic, not competitive: Vermilion is arguably *the* test of the
  embedding thesis on a language whose memory model diverges from Lean's — the open question both
  the thesis and the Dafny'26 paper explicitly pose. If a Loom-style state/permission monad for
  Verus's core proves out (soundness path, option b), Vermilion becomes Loom's largest
  instantiation; if it doesn't, Vermilion's trusted-emitter architecture still stands, and the
  finding is a research result about the limits of shallow embeddings.

## 5.4 Versus RefinedRust

The strongest *foundational* competitor — and the mirror image of Vermilion's strategy. Both aim
at the same end state (Rust verification whose results are proof-assistant-checked); they start
from opposite ends of the assurance/usability spectrum.

- **Trust, today**: RefinedRust wins outright at base camp. Every RefinedRust run produces an
  actual Coq proof over Radium, its own Rust-like operational semantics — TCB = Coq kernel +
  Radium's fidelity + the rustc frontend translation. Vermilion at base camp trusts
  `sst_to_lean` and the prelude's residual axioms, and only *optionally* kernel-checks solver
  output. Vermilion's honest claim is a *monotonically shrinking* trust base on a published
  ladder (auditable statements → validated translation → certified generator, with Iris-Lean
  models slotting behind named interfaces); RefinedRust's is maximal assurance now.
- **Automation and performance**: the price RefinedRust pays. Its automation is Lithium-style
  proof search *inside Coq* — no SMT-class arithmetic/quantifier automation, and the thesis's
  blunt assessment of this lineage ("too slow to actually use," said of VST/RefinedC/RefinedRust)
  names the cliff. Vermilion keeps Verus's auto-active loop: obligations hit `grind`/lean-smt
  first, and the SOSP'24-grade encoding discipline that makes them fast is preserved upstream of
  the backend. When automation fails, a RefinedRust user faces raw Lithium goals; a Vermilion
  user faces a beautified Lean statement designed for mathlib and agents.
- **Scope**: RefinedRust handles selected unsafe code (its semantic depth is real) but has no
  user-facing concurrency story; Vermilion inherits VerusSync, atomics, and invariants — the
  whole Tier-A systems corpus. Conversely, Radium gives RefinedRust a *semantics it owns*, which
  Vermilion won't have until the foundational track matures.
- **Ecosystem**: RefinedRust must build its corpus from scratch, annotation style included;
  Vermilion is test-suite-compatible with Verus by construction (the entire-suite coverage goal)
  and inherits 15 verified systems as parity targets.
- **Convergence**: if both projects succeed, they meet — RefinedRust growing automation and
  scope, Vermilion growing foundations. The differentiating bet is sequencing: Vermilion holds
  that adoption-grade automation must come first and assurance must be *retrofittable by design*
  (named interfaces, metadata, the certification ladder), because the RefinedC lineage shows
  foundations-first struggles to escape the usability cliff.

## 5.5 Objections to preempt

1. **"Lean automation won't match Z3 e-matching at scale."** The honest risk (R1). Answers:
   M0 measures it before commitment; lean-smt drives Z3 itself; Verus's already-selected triggers
   ride along as instantiation hints; and the fallback (trusted-solver rung) degrades to exactly
   Verus's status quo — never below it.
2. **"An external Rust frontend breaks the 'all UI is Lean UI' doctrine."** Deliberate: Rust
   authorship must stay in cargo/rustc-land (that's what intrinsic means). The *proof* experience
   is fully Lean-owned — manager, InfoView, tactics — and the dual-view IDE (plan ch. 6) is the
   designed seam. Vermilion instantiates the embedding thesis for the verification half of the
   experience; claiming more would be false.
3. **"You'll be 5× slower and nobody will use it."** Quantified prior art says 3–10× with
   adoption anyway (Velvet, Veil), *if* the value adds are real; performance is milestone-gated
   from M2 with named mitigations; and trust-mode/reconstruction split keeps the edit loop fast.
4. **"Verus already works — why fork the backend?"** Because its own ecosystem says otherwise:
   an instability research subfield (Mariposa line), a proof-debugging tool line (ProofPlumber),
   trigger-tuning papers, and VerusBelt's explicit trust-debt list are all symptoms of the same
   stratum. Vermilion doesn't fork Verus — it gives Verus's front end a second, foundational
   backend, test-suite-compatible by construction (the entire-suite coverage goal).
5. **"Why not wait for iris-lean/foundations to mature and do it right?"** §5.4's answer:
   RefinedRust shows what foundations-first costs in usability today. Vermilion's architecture
   makes foundations *attachable* (named interfaces, metadata, certification ladder) without
   making users wait — parity first, then shrink the trust base monotonically.

## 5.6 One-sentence version

*Vermilion gives Rust's best systems verifier a proof assistant where its solver used to be —
keeping Verus's authoring model, automation discipline, and test suite, while adding the escape
hatch, spec expressiveness, and shrinking TCB that only a Lean backend can provide.*
