# Verus Architecture and the Transfer Analysis

This folder records what the Verus verifier actually is — pipeline, intermediate representations,
verification-condition generation, feature surface — and which parts transfer to a Lean 4 backend
(Vermilion) versus which parts exist only to please an SMT solver.

All Verus file paths in this folder are relative to the Verus repository root
(a local checkout of upstream `verus-lang/verus`). The survey was
done at commit `c569645bd37b0` (2026-07-12). Verus ships its own accurate overview in
`source/CODE.md`; these chapters go deeper where Vermilion needs it.

## Chapters

| Chapter | Focus |
|---|---|
| [`01-pipeline-and-crates.md`](01-pipeline-and-crates.md) | The compilation pipeline, crate inventory with sizes, and the two-pass (ghost/exec) rustc orchestration. |
| [`02-vc-generation.md`](02-vc-generation.md) | VIR-AST, VIR-SST, AIR; how requires/ensures/loops/recursion become SMT queries; error localization. |
| [`03-reuse-boundary.md`](03-reuse-boundary.md) | The keep/replace line: Vermilion's insertion point at SST, with effort estimates. |
| [`04-features-dropped.md`](04-features-dropped.md) | Verus machinery made redundant by a Lean backend (triggers, fuel, poly boxing, EPR, profiler, Singular) and what replaces each. |
| [`05-soundness-path.md`](05-soundness-path.md) | Verus's trust story today, VerusBelt's semantic anchor, and the staged path to foundational guarantees via Loom and Iris-Lean. |
| [`06-spec-language-compat.md`](06-spec-language-compat.md) | Backwards compatibility with the Verus spec language: feasibility of a close shallow embedding, construct by construct. |

## Headline conclusions

1. **Verus is two tools stapled together**: a backend-independent front/middle end (rustc
   integration, VIR, mode checking, erasure — roughly 60–65% of the ~95k lines across
   `rust_verify` + `vir` + `air`) and an SMT-shaped back end (AIR, poly boxing, triggers, fuel,
   Z3 orchestration — the remaining 35–40%). The seam between them is real and clean.
2. **Vermilion's insertion point is VIR-SST** (`source/vir/src/sst.rs`): function-level bundles
   (`FunctionSst`) of pure expressions and statements with resolved triggers, normalized loops, and
   explicit assert/assume structure. Replacing `sst_to_air*` with an `sst_to_lean` emitter keeps
   Verus's entire language surface, mode system, and diagnostics span machinery.
3. **A large fraction of Verus's SMT-specific complexity simply disappears in Lean** — trigger
   inference, fuel-guarded definition unfolding, the `Poly` universe, prover process management —
   but each deletion imposes a replacement obligation (chapter 04's table) that the implementation
   plan must cost.
4. **The soundness story is staged, not blocking**: Verus is non-foundational today (its VC
   generator and Z3 are trusted); VerusBelt proves the *type-system semantics* sound in Iris/Rocq
   but leaves the VC translation and solvers trusted. Vermilion attacks the solver leg immediately
   (Lean theorems, optionally kernel-checked via lean-smt reconstruction) and makes the translation
   leg auditable; chapter 05 charts the path to closing it via Loom/Iris-Lean.
