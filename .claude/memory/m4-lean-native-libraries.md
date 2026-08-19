On 2026-07-13 the user set the M4 approach: "For M4, let's take a Lean
way and, instead of doing SMT-facing encoding, build a bunch of
libraries in Lean to support this kind of reasoning."

- M4 (specialty arithmetic: bit vectors, nonlinear/ring arithmetic,
  compute-style proofs) must be built as **Lean libraries and tactic
  integrations** — lemma libraries over the Vermilion prelude models,
  discharge rungs using Lean-native automation (`bv_decide`, `ring`,
  `polyrith`, `nlinarith`, `decide`/`norm_num`, Mathlib) — NOT as a
  mirror of Verus's SMT encodings (no AIR-style bit-blasting bridges, no
  encoding-level fuel/trigger machinery).
- The pattern: machine-int goals may move to `BitVec` views through
  proved conversion lemmas (a Vermilion library, kernel-checked), then
  close by `bv_decide`; nonlinear goals get a curated lemma set +
  `nlinarith`/`polyrith` rungs; nothing enters the TCB — libraries are
  ordinary proved Lean code, extending docs/trust.md's "not trusted"
  side.
- Updated the same day: the user gave the go-ahead through M4
  ("continue with the remaining parts of M3 and then do M4. Upon
  reaching the end of M4 stop.") — proceed M3 → M4 without further
  prompting, STOP at the end of M4.

**Why:** The project's differentiator is the Lean-native embedding;
copying SMT encodings would re-import their opacity and trust surface.

**How to apply:** When M4 opens, start from library design (what lemma
sets the differential corpus's failing goals need), extend the `vrml`
ladder with library-backed rungs, and keep verdict coherence measured
differentially as usual. Related: [[spec-fns-no-inlining-no-fuel]],
[[foundational-vcgen]], [[vermilion-conventions]].
