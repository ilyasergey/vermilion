# Chapter 4: Verifiers Embedded in Proof Assistants

Per the planning priorities this chapter is deliberately compact, and its Lean half is anchored on
one document: **Pîrlea's thesis**. The rest is the minimum context needed to place Vermilion's
infrastructure choices.

## 4.1 The anchor: Pîrlea's thesis [pirlea2026thesis]

*Proof Assistant as Platform: Building the Next Generation of Verifiers* (PhD draft, NUS, June
2026). The **Lean Embedding Thesis**: embedding verifiers into proof assistants reduces cost,
improves UX, and expands scope — because only there is *multi-modality* (testing, model checking,
SMT automation, interactive proof, over a single spec) foundational rather than ad hoc.
Demonstrated via Veil [pirlea2025veil]. The parts Vermilion builds on directly:

- **The Manager** (ch. 3.5; "our central contribution" — the practical instantiation of Rushby's
  evidential tool bus): claims (propositions + span metadata) in a DAG; primary vs derived
  claims; **alternative encodings** of one claim tried when the primary's dischargers fail;
  dischargers as untrusted async meta-programs returning Proven(witness)/Disproven(cex)/Unknown,
  running in isolated environment snapshots; interactive proofs as priority dischargers
  (`@[veil]`). This is, verbatim, Vermilion's orchestration design (plan ch. 2).
- **Engineering doctrine** (also in the Dafny'26 lessons paper [pirlea2026lessons]): "all goals
  are Lean goals, all proofs are Lean proofs, all UI is Lean UI"; deep at the meta level, shallow
  at the object level; MVC for verifiers; regression-test your metaprograms; and the warning that
  performance engineering dominates (Veil >10× Ivy on easy goals; reconstruction 3–5×).
- **The two caveats Vermilion must answer** (see ch. 5): shallow embeddings may not survive
  languages whose memory model diverges from Lean's; and "Lean as one backend of an external
  verifier" (the thesis's Aeneas critique) sacrifices seamlessness.

## 4.2 Loom and Velvet [gladshtein2026loom, gladshtein2026velvet]

Loom (POPL'26): **derive provably sound VC generators** from monadic semantics via monad(-
transformer) algebras — WPs by typeclass resolution, partial/total × demonic/angelic, metatheory
in Lean, VCs kept `Cont`-shaped so they stay SMT-friendly (with a careful analysis of why other
Dijkstra-monad recipes generate SMT-hostile VCs). Velvet (CAV'26): the Dafny-style auto-active
verifier built on it — 27 VERINA benchmarks, 3.67× slower than Dafny, proofs 4.9× shorter where
manual work was needed, mathlib specs Dafny can't express; **but** no aliased heap, no global
mutable state, and lean-auto gaps (native `Array`) worked around by interface types. For
Vermilion: the `grind`-then-SMT dispatch, `@[solverHint]`, provenance-named hypotheses, the
two-layer proof pattern (SMT: impl ≡ pure model; mathlib: model ≡ math) — and Loom as the
candidate substrate for the certified-VC-generator track.

## 4.3 The IVL tradition, in one paragraph [barnett2005boogie, leino2010dafny, filliatre2013why3, swamy2016fstar, mueller2016viper]

Boogie defined the architecture (front ends → IVL → VC gen → prover) and the unstructured-WP
algorithm [barnett2005wp] Verus's AIR still uses; Dafny is its auto-active flagship; Why3 the
multi-prover variant (Creusot's backend); Viper the permission-native IVL (Prusti's backend); F*
the type-theory-with-SMT point whose Low*/HACL* line proved extraction-based verification ships
production crypto. Vermilion's one-line position in this tradition: **Lean itself is the IVL**
(the thesis's formulation), with the manager as the prover interface.

## 4.4 Validated VC generation [parthasarathy2021boogie, parthasarathy2024frontends, herms2012vcgen, nezamabadi2025dafnyvcg, pnueli1998tv]

The certification ladder for trusted verifier pipelines: Pnueli's translation validation → Herms
et al.'s Coq-certified VCGen → Parthasarathy's per-run Isabelle certificates for Boogie (CAV'21)
and for front-end translations into Boogie (PLDI'24) → a HOL4-verified Dafny VCG+compiler
(CPP'26). **This literature is Vermilion's roadmap for leg 2 of the trust story**
([`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)
§5.4): per-run validation of `sst_to_lean` is squarely Parthasarathy-shaped, with SST small
enough (408 lines of AST) to make the correspondence relation tractable.

## 4.5 Systems-verification neighbors (brief) [chajed2019perennial, chajed2021gojournal, sharma2023grove, pulte2023cn, erbsen2021lightbulb, sammler2022islaris, chargueraud2011cfml, seassau2025osiris]

Goose/Perennial/Grove: translate real Go into Iris/Coq and verify concurrent, crash-safe,
distributed systems — the strongest precedent for "real systems language + proof assistant + big
artifacts," and the shape Vermilion's Iris-Lean endgame resembles. CN (separation-logic
refinement types over real C, SMT-backed) and CFML/Osiris (characteristic formulae; OCaml in
Iris) mark alternative meaning-assignment strategies. Islaris and Bedrock2's lightbulb: what
end-to-end composition looks like when everything lives in one prover.

## 4.6 Lean automation, strictly as needed [demoura2021lean4, mohamed2025leansmt, qian2025leanauto, clune2024duper, boving2025bvdecide, limperg2023aesop, mathlib2020]

The discharger ladder's parts list, one line each: lean-smt (CAV'25) — Lean goals to cvc5 with
**kernel-checked proof reconstruction** (the TCB lever; note Veil runs a fork with async
model/result channels); Lean-auto (CAV'25) — the monomorphizing hammer translation (its `Array`
gap bit Velvet); Duper — proof-producing superposition (reconstruction backend); `bv_decide`
(OOPSLA'25) — verified bit-blasting with LRAT checking (the `by(bit_vector)` replacement);
Aesop — white-box proof search; `grind` — Lean-core SMT-style engine (congruence + e-matching +
theory solvers; reference-manual-only citation); mathlib — the spec library and the
`ring`/`omega`/`nlinarith` tactics replacing Singular/nonlinear escapes. LeanHammer's premise
selection (ICLR'26) becomes relevant when broadcast-lemma sets grow past hand curation.

## 4.7 What this chapter licenses Vermilion to claim

(1) The manager/dischargers architecture is *published, working practice* — not speculative
infrastructure; (2) auto-active-in-Lean has known, quantified overheads (3–10×) that the
community has accepted in exchange for foundations and multi-modality; (3) the certification
ladder from trusted to validated to verified VC generation has worked instances in three proof
assistants; (4) no one has run this playbook for a real systems language with Rust's memory
model — that novelty is Vermilion's, and its riskiest prerequisite (quantifier automation at
Verus scale) is measurable at M0 before commitment.
