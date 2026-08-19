# Project Corpus

This folder names the Rust projects that Vermilion must eventually support, and uses them to drive
feature prioritization: a Verus feature earns implementation effort when it unlocks a corpus tier,
not before. Data was collected on 2026-07-12 (repo clones + `cloc`, published papers, and the
official Verus projects registry); line counts and build commands are branch-sensitive and should
be rechecked before running an experiment.

## Chapters

| Chapter | Focus |
|---|---|
| [`01-selection-criteria.md`](01-selection-criteria.md) | How projects were chosen; the tier system; measurement method. |
| [`02-corpus-table.md`](02-corpus-table.md) | The full summary table and the recommended 15-project progression, easy → hard. |
| [`03-tier-a-verus-projects.md`](03-tier-a-verus-projects.md) | Projects already verified with Verus — Vermilion's parity targets. |
| [`04-tier-b-other-verifiers.md`](04-tier-b-other-verifiers.md) | Projects verified with Creusot/Kani/hax/Aeneas — comparison and re-verification targets. |
| [`05-tier-c-future-targets.md`](05-tier-c-future-targets.md) | Unverified modern Rust crates that stress specific features. |
| [`06-feature-matrix.md`](06-feature-matrix.md) | Project × feature matrix, mapped to plan stages. |

## Headline conclusions

1. **The corpus starts at home**: Verus's own `vstd` (37.7k LoC) and examples (~18.3k LoC across
   ~75 files) are corpus item #0 — nothing downstream verifies without them, and the examples
   double as an ordered feature-conformance suite.
2. **Tier A is unusually rich**: at least 15 real systems are already verified with Verus (IronKV,
   node replication, mimalloc-port allocator, page tables, CapybaraKV/PoWER, Anvil, VeriSMo,
   vostd, CortenMM, Atmosphere, Verdict, Vest, OwlC, rlsf, verus-tla). Vermilion's success metric
   is re-verifying these, cheapest first.
3. **A difficulty inversion works in our favor**: Verus leans on Z3's e-matching and linear
   arithmetic; Lean's strengths are inverted (verified bit-blasting via `bv_decide`,
   mathlib-powered nonlinear arithmetic, structural induction). Bit-vector/arithmetic-heavy
   projects (page table, allocators, crypto) land *earlier* for Vermilion than their Verus
   difficulty suggests; quantifier-saturated refinement proofs (IronKV, Anvil's TLA embedding)
   land *later* and are the automation risk to burn down first.
4. **Two demos with outsized payoff**: Cedar (AWS's authorization engine — the Lean model already
   exists; Vermilion can replace millions of differential tests with a refinement proof) and
   crypto field arithmetic (curve25519-dalek/ML-KEM — where mathlib is an unfair advantage over
   SMT).
