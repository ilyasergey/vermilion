# Case studies

Real Verus benchmarks and externally sourced Rust bodies annotated with Verus
contracts, driven through Vermilion (Lean is the only verifier), one folder per
study. Each has a `run.sh` that regenerates `generated/` and judges it;
`generated/` is machine output (untracked), `proofs/` holds the user-editable
twin with any interactive proofs.

Every new verification effort registers its `proofs/` tree as one named Lake
library: `./scripts/register_proof_lib.py register <CaseName> <proofs-dir>`
(idempotent; module roots inside the tree are then auto-discovered). The
suite's `register_proof_lib.py scan` phase fails loudly on any unregistered
proofs tree.

This table is the authoritative registry of acquired case studies: **Status**
states what Verus and Vermilion verify today, and **Needs** names the feature
work required for a partial or blocked study. The ordered future acquisition
ladder is linked immediately below the table; the repository-wide feature
ledger is [docs/reports/progress.md](../docs/reports/progress.md).

| Study | Source | Status | Needs |
|---|---|---|---|
| [binary-search](binary-search/) | Verus A0 example (`vectors.rs`) | **Verified** — 14 automatic + 1 interactive (existential-witness invariant) | — |
| [vec-uninterp](vec-uninterp/) | Verus A0 example (`vectors.rs`) | **Verified** (F1) — 1 interactive (push preserves an opaque predicate) | — |
| [vec-reverse](vec-reverse/) | Verus A0 example (`vectors.rs`) | **Verified** (F2+F3) — 15 automatic + 5 interactive (swap permutation) | — |
| [vec-pop-uninterp](vec-pop-uninterp/) | Verus A0 example (`vectors.rs`) | **Verified** (F1+F4) — pop preserves an opaque predicate over the tail | — |
| [merge-sort](merge-sort/) | Verus `mergesort.rs` (verbatim) + a specs-only variant | **Verified** (S1) — verbatim 43 automatic + 17 interactive, specs-only 31 + 9; `test.sh` runs the verified sort | — |
| [primes](primes/) | Verus summer-school `chapter-2-{1,2}.rs` | **Verified** — spec-level `is_prime` + a trial-division `test_prime` (multi-file); 23 automatic + 1 interactive | — (no fragment growth) |
| [sorting](sorting/) | Verus `examples/multiset.rs` (verbatim) | **Verified** — `sort_by`/`sorted_by`, multiset equivalence; 12 automatic + 4 interactive | — |
| [imo-1988-6](imo-1988-6/) | Verus `examples/imo_1988_6.rs` (verbatim) | **Verified** — 66 automatic + 1 interactive | isolated nonlinear queries + named-result branch typing landed |
| [power-of-2](power-of-2/) | Verus `examples/power_of_2.rs` (verbatim) | **Verified** — 40 automatic + 17 interactive | isolated nonlinear queries + exact VIR clipping landed |
| [entry-api](entry-api/) | Verus `examples/entry_api.rs` (verbatim) | **Acquired / blocked** — Verus 3/3; expected fail-closed Vermilion probe | generic opaque spec applications; std Entry views; returned `&mut` prophecy |
| [statics](statics/) | Verus `examples/statics.rs` (verbatim) | **Acquired / out of sequential gate** — Verus 9/9; expected fail-closed probe | globals/initialization, then ghost memory + atomic protocols |
| [percolator](percolator/) | `aeyakovenko/percolator` @ `143e68c` (Apache-2.0) | **Partially verified verbatim** — 28 unchanged production function bodies, 97 Lean obligations: policy/Boolean/`Result` gates, codecs, bitmap reads, saturating multiply, U256 construction/readback/bitwise basics | whole `wide_math.rs` additionally hits Verus visibility/core-API boundaries; Vermilion gaps: generic `spec_from` for `?`, std `min/max`, indexed array mutation, `BitNot`, polymorphic `Inhabited`, per-function isolation |
| [dalek-lite](dalek-lite/) | `Beneficial-AI-Foundation/dalek-lite` @ `de9ebf015` (BSD-3-Clause; the CryptoProver benchmark crate, ~105k LOC in-source Verus) | **Acquired 2026-07-20; DL8 field-cone acquisition in progress** — DL1–DL7 landed (per-function lowering isolation, `choose`, `calc!` macro-span colocation fix, Bits bridge, `assume_specification` breadth, non-isolated loops, vstd-drift assessment = zero drift). DL8: the 9-module field cone lowers + emits whole-file (416/454 functions, ~5,215 clause-level VCs; the from_bytes OOM fixed at root via linear `natclip`/`sclip` IR forms). Phase-2 interactive fill under way; committed Layer Set A twins build with every VC either kernel-proved or a marked interactive `sorry`. Scoreboard: [docs/reports/dalek-lite-layer-a-scoreboard.md](../docs/reports/dalek-lite-layer-a-scoreboard.md) | DL agenda in [dalek-lite/PLAN.md](dalek-lite/PLAN.md): ~~DL1–DL7~~ → **DL8 field cone (VC fill)** → DL9 module ladder → DL10 trusted-floor discharge → DL11 residual nonlinear |
| [curve25519](aeneas/curve25519/) | Aeneas corpus `curve25519.rs` (verbatim curve25519-dalek) | **Verified** — 38 obligations: 9 automatic + 29 interactive; spec bridge proves the dalek/Aeneas `asNat` theorem (same spec, `ring`) | — (first Aeneas-plan crypto acquisition) |
| [sha3.rs](aeneas/sha3/) | `AeneasVerif/sha3.rs` @ `cb411d54ee0b` | **Partially verified unchanged execution** — complete Cargo project and every upstream `src/` file tracked as pristine and annotated copies; source guard erases 78 typed regions; unchanged permutation, endian byte operations, and `StateArray::xor` verify as 169 Lean obligations in 22 proof-twin units with no `sorry`; pinned Verus `0bb5732ae` reports 47 verified, 0 errors; immutable/mutable range-copy infrastructure has 176/176 parity coverage | Prove the unchanged `copy_to` consumer, absorb/squeeze, six public functions, and the exact Aeneas-spec bridge; all other production bodies are explicitly external |
| [recursion](recursion/) | Verus guide `recursion.rs` | **Investigation target** (not gated) — pedagogical file with intentional failures; clean core lowers | `decreases_to!`, `via`/`#[via_fn]` (lowering) |

Alongside the acquired studies, [aeneas/](aeneas/) is a research folder:
a landscape assessment of the Aeneas toolchain's case-study corpus and
a plan ([aeneas/PLAN.md](aeneas/PLAN.md)) to subsume Aeneas as a tool
for verified crypto — verifying curve25519, Keccak/SHA-3, and the
SymCRust ML-KEM scalar core against the same Lean specifications, with
contracts in Verus. Its [probe suite](aeneas/probes/) (verbatim bodies,
contracts only added; `probes/run.sh`) already verifies **SymCrypt's
`mont_mul` and `mod_reduce`** (12 obligations, 6 automatic +
6 interactive) with a kernel-checked
[spec bridge](aeneas/probes/proofs/symcrust_mont_mul_specbridge.lean)
to SymCRust's own `mont_reduce.spec`; measured gaps are in
[aeneas/gap-matrix.md](aeneas/gap-matrix.md).

The gap analysis and the plan to close these gaps is in
[docs/reports/sequential-case-studies.md](../docs/reports/sequential-case-studies.md);
the staged ladder of everything we intend to verify next — Verus-corpus
studies and external projects — is
[docs/reports/target-projects.md](../docs/reports/target-projects.md).

```console
./case-studies/binary-search/run.sh   # verified: 14 automatic + 1 interactive
./case-studies/vec-uninterp/run.sh    # verified (F1): opaque predicate + twin proof
./case-studies/vec-reverse/run.sh     # verified (F2+F3): 15 auto + 5 interactive twin proofs
./case-studies/vec-pop-uninterp/run.sh # verified (F1+F4): Vec::pop + uninterpreted predicate
./case-studies/merge-sort/run.sh       # specs-only merge sort
./case-studies/merge-sort/run_verbatim.sh # upstream merge sort with scripting
./case-studies/primes/run.sh           # spec + executable primality
./case-studies/sorting/run.sh          # sort_by / multiset study
./case-studies/imo-1988-6/run.sh       # Vieta jumping, isolated nonlinear queries
./case-studies/power-of-2/run.sh       # shifts/pow2, exact clipping
./case-studies/entry-api/explore.sh    # expected generic-opaque/Entry boundary
./case-studies/statics/explore.sh      # expected static/global boundary
./case-studies/percolator/run.sh       # 97 Lean-verified production/evidence obligations
./case-studies/dalek-lite/probes/run.sh     # green dalek-lite probes (11 obligations)
./case-studies/dalek-lite/probes/explore.sh # measured dalek-lite lowering boundaries
./case-studies/percolator/verify_verus.sh # full Verus check of green + blocker slices
./case-studies/percolator/explore.sh   # four expected lowering boundaries
```
