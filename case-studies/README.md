# Case studies

Real Verus benchmarks and externally sourced Rust bodies annotated with Verus
contracts, driven through Vermilion (Lean is the only verifier), one folder per
study. Supported studies use `run.sh`; blocked studies provide expected-refusal
`explore.sh` runners. These regenerate `generated/` and judge the result;
`generated/` is machine output (untracked), `proofs/` holds the user-editable
twin with any interactive proofs.

Every new verification effort registers its `proofs/` tree as one named Lake
library: `./scripts/register_proof_lib.py register <CaseName> <proofs-dir>`
(idempotent; module roots inside the tree are then auto-discovered). The
suite's `register_proof_lib.py scan` phase fails loudly on any unregistered
proofs tree.

This table is the authoritative registry of acquired case studies: **Status**
records each study's supported scope and dated verification evidence, and **Needs** names the feature
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
| [entry-api](entry-api/) | Verus `examples/entry_api.rs` (verbatim) | **Acquired / blocked** — Verus 3/3; expected fail-closed Vermilion probe | std Entry views; returned `&mut` prophecy |
| [statics](statics/) | Verus `examples/statics.rs` (verbatim) | **Acquired / out of sequential gate** — Verus 9/9; expected fail-closed probe | globals/initialization, then ghost memory + atomic protocols |
| [percolator](percolator/) | `aeyakovenko/percolator` @ `143e68c` | **Partially verified verbatim**: the green runner covers 31 production bodies, with 118 logical-or-evidence declarations; DL5 added withdrawal, bounded arithmetic, and bitmap set | std `min/max`, `BitNot`, and the separate whole-`wide_math.rs` Verus boundary |
| [dalek-lite](dalek-lite/) | `Beneficial-AI-Foundation/dalek-lite` @ `de9ebf015` | **Partial field-cone acquisition**: recorded 416/454 lowered functions and 5,215 VCs; eight explicit `sorry` bodies remain in four checked-in units. See [current status](dalek-lite/README.md#current-verification-status) | proof holes and declaration collisions, refused functions, higher layers, and trusted-floor discharge |
| [curve25519](aeneas/curve25519/) | Aeneas corpus `curve25519.rs` (verbatim curve25519-dalek) | **Verified** — 38 obligations: 9 automatic + 29 interactive; spec bridge proves the dalek/Aeneas `asNat` theorem (same spec, `ring`) | — (first Aeneas-plan crypto acquisition) |
| [sha3.rs](aeneas/sha3/) | `AeneasVerif/sha3.rs` @ `cb411d54ee0b` | **Partial; paused**: recorded verification through unchanged `copy_to`, 198 obligations in 25 twins, source guard covering 86 annotation regions | absorb/squeeze, sponge, six public functions, and the exact external-spec bridge; public parity remains 0/6 |
| Upstream recursion tutorial | Verus guide `recursion.rs` | **Historical investigation**; excluded from supported coverage | a positive driver separated from intentional failures, plus custom termination support |

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
./case-studies/percolator/run.sh       # supported production/evidence slices
./case-studies/dalek-lite/probes/run.sh     # supported dalek-lite probes
./case-studies/dalek-lite/probes/explore.sh # measured dalek-lite lowering boundaries
./case-studies/percolator/verify_verus.sh # full Verus check of green + blocker slices
./case-studies/percolator/explore.sh   # two partial drivers with expected refusals
```
