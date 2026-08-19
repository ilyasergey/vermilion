# Aeneas corpus — detailed inventory notes

*Supporting material for [README.md](README.md) and [PLAN.md](PLAN.md);
for Vermilion-side progress see the plan's current-status table and the
[gap matrix](gap-matrix.md). First-hand observations combine a shallow clone
of `AeneasVerif/aeneas` (master, 2026-07-17), a direct audit of standalone
`AeneasVerif/sha3.rs` at `cb411d54…` (2026-07-19), and the published record;
sources at the end.*

Repo layout: Rust inputs in `tests/src/` (~90 files + crate dirs
`avl/`, `bst/`, `tutorial/`; ≈8.7k LOC), generated Lean in `tests/lean/`
(≈21.7k LOC incl. hand proofs). Most tests are Lean-only now
(`//@ [!lean] skip` headers); Coq/F\*/HOL4 outputs are a small legacy
subset. Aeneas also runs as a standalone borrow checker in CI
(`*.borrow-check.out` negative tests, per the ICFP'24 symbolic-semantics
work).

## 1. Flagship studies with hand-written Lean proofs

| Study | Paths | What / size | Rust features | What is proved |
|---|---|---|---|---|
| **HashMap** | `tests/src/hashmap.rs` → `tests/lean/Hashmap/{Types,Funs,Properties}.lean` | chaining hash map, insert/get/get_mut/remove/clear, load-factor resize; 359 LOC Rust → 432 LOC generated, **1,086 LOC proof** | generic `HashMap<T>`; `Box`ed assoc-list enum; `Vec` of buckets; loops + match; `&mut` cursor walking a list; `Option<&T>`/`Option<&mut T>` returns; `std::mem::replace`; overflow-guarded `usize` arithmetic | functional correctness vs a model map (`insert_*_spec`, `move_elements_spec`, resize preserves lookups); invariant: hash-consistent slots, distinct keys, exact entry count. ICFP'22 flagship ("first verified hash table in Rust"; 4 person-days in F\*, later redone in Lean/HOL4 — Lean was the one-step proof that made it their reference backend, per Son Ho's thesis §14.4.1) |
| **AVL** | `tests/src/avl/` → `tests/lean/Avl/{Types,Funs,Properties,OrderSpec,ScalarOrder}.lean` | insert with balance factors + 4 rotations; 469 LOC Rust, **1,040 LOC proof** | user `trait Ord`; `Option<Box<Node<T>>>`; `box_patterns`; `mem::replace` rotations; `i8` balance factors; deep `&mut` through fields | BST + AVL balance invariants preserved; find correct vs set model; Mathlib `LinearOrder` bridge (`OrderSpec.lean`) |
| **BST/TreeSet** | `tests/src/bst/` → `tests/lean/Bst/` | find/insert with loop cursor; 174 LOC | reborrowed `&mut` cursor (`current = &mut node.right`) | no in-repo proofs (they live in upstream `RaitoBezarius/avl-verification`) |
| **Bε-tree** | removed 2025-10-24 ("Remove the betree tests"); HOL4 output remains | KV store with message buffers, node split/flush, disk I/O; 1,083 LOC | deep recursion (pre-loop-support), `Box` list-maps, closures-as-enum (`UpsertFunState`), opaque external I/O via state monad | ICFP'22 reports verification "ongoing"; never reported finished. Historical |
| **curve25519** | `tests/src/curve25519.rs` → `tests/lean/Curve25519/` | dalek `Scalar52::mul_internal`, 5×u64-limb schoolbook mul; 34 LOC, 41 LOC proof | `[u64;5]`/`[u128;9]`, `u128` arithmetic, widening casts, `impl Index<usize>` | `wideAsNat r = asNat a * asNat b` given limbs < 2^62, via `step`/`grind`/`ring_nf`. Reproduced in Vermilion under [curve25519/](curve25519/): 38 obligations, all automatable, plus a zero-axiom same-spec bridge. |
| **Tutorial** | `tests/src/tutorial/` → `tests/lean/Tutorial/` | teaching corpus: borrow demos, `CList` ops, even/odd mutual recursion, `Counter` trait, **bignum** (`add_no_overflow`, `add_with_carry`, growing `add`); 261 LOC Rust, ~1.4k LOC Lean | `&mut` returns; `Box`ed recursive enums; `overflowing_add` carry chains; `Vec` index/resize/push; casts | `Solutions.lean`: nth/reverse specs, `add_with_carry_spec` (carry ≤ 1), etc. |
| **Demo/paper** | `tests/src/{demo,paper}.rs` → `tests/lean/Demo/` | ICFP'22 paper examples: `choose`, `ref_incr`, `list_nth_mut`, `sum`, …; ~210 LOC, 78 LOC proofs | `&mut` returned through generics; recursion | `mul2_add1` (with overflow side-condition), `list_nth_spec`, … |

## 2. Feature-directed tests (translation coverage, no hand proofs)

- **Loops:** `loops.rs` (588 LOC, ~30 fns: accumulators,
  `sum_array<const N>`, `list_nth_mut` loop returning `&mut`,
  simultaneous mutable traversals), nested/rec variants, regression
  files. Loop translation emits `_loop` companions (recursive or via a
  `loop` fixed-point combinator).
- **Borrows:** `no_nested_borrows.rs` (563 LOC, historical safe
  fragment); `nested-borrows.rs` (363 LOC, `&'a mut &'b mut u32`,
  borrow swaps under double refs — **positive** tests now, i.e. nested
  borrows in signatures landed post-thesis); `adt-borrows.rs` (borrows
  stored in structs/enums); `polonius_list.rs`; negative borrow-check
  suite.
- **Traits/generics:** `traits.rs` (343 LOC: provided methods,
  associated types/consts, supertraits, generic impls),
  `blanket_impl.rs`, `higher_ranked_trait_bounds.rs` (HRTBs work),
  `dyn.rs` (**`Box<dyn Trait>` and `impl Trait` returns translate**);
  `mutually-recursive-traits.rs` is an expected **error**.
- **Closures:** `closures.rs` — `Fn` + shared captures work;
  `FnMut` with mutable captures still TODO (charon#989).
- **Arrays/slices/iterators:** `arrays.rs` (379 LOC, 65 fns),
  `slices.rs`, `vec.rs`, `vec-iter.rs`, `chunks_exact.rs`,
  `iterators.rs`/`iter_adapters.rs` (351 LOC) — `for` over
  ranges/slices and iterator adapters supported via stdlib models.
- **Machine ints:** `scalars.rs` (`wrapping_*`), `overflowing-ops.rs`
  (all widths), `cast_signed.rs`, `bitwise.rs`. Overflow = `Result.fail`
  (checked semantics); wrapping/overflowing intrinsics modeled exactly.
- **Misc:** `static.rs` (statics + `&'static [u16]`, parts commented
  out), `string-chars.rs`, `drop.rs` (Drop semantics being pinned
  down), `joins.rs` (symbolic-join tests), ~15 `issue-*.rs`
  regressions.
- **Known-failure tests** (expected-error `.out` files):
  `raw_pointers.rs` ("does not yet support dereferencing raw
  pointers"), `higher_ranked_implied_bounds_*.rs`,
  `mutually-recursive-traits.rs`.

## 3. The crypto tier (the Lean-backed work PLAN.md targets)

### SymCRust (Microsoft SymCrypt, branch `feature/verifiedcrypto`)

- **Team/status:** Son Ho, Cédric Fournet, Antoine Delignat-Lavaud,
  Samuel Lee, Jason Fisher, Jessica Krynitsky (MSR blog, July 2026).
  No paper yet; ships in Windows Insider builds. Layout:
  `SymCRust/src/` (production crate), `SymCRust/lean/` with `Spec/`,
  `SpecTests/`, `Intrinsics/`, `Symcrust/Code/` (Aeneas-extracted,
  committed), `Symcrust/Properties/` (proofs); entry point
  `README-VERIFIEDCRYPTO.md`, scope ledger
  `Properties/MLKEM/VERIFIED.md`.
- **Verified (vs a Lean formalization of FIPS 203, CAVP-executed, all
  three parameter sets simultaneously):** keygen (Alg 19), encaps
  (Alg 20), deterministic encaps (Alg 17), decaps (Alg 21) incl.
  implicit rejection; key import/export in the 3 FIPS formats with
  validation-failure cases; NTT/INTT in-place Montgomery butterflies
  proved equal to the spec transform (R = 2^16 cancellation in
  `ZMod q`), **including SSE2/NEON/AVX2 SIMD bodies** against per-lane
  specs; SampleNTT/SampleCBD/ExpandMatrix; Compress/Decompress,
  ByteEncode/Decode, streaming bridges. **SHA-3/SHAKE verified too**
  (own FIPS 202 spec, `Spec/SHA3/`), not axiomatized.
- **Rust features in the verified code:** `&mut` in-place buffers;
  `[u16;128]` const tables; `const fn` + `const { assert!(…) }`;
  Montgomery bit-manipulation on `u32`; loops with nontrivial
  (sometimes asymmetric even/odd-slot) invariants; trait-based SIMD
  abstraction over `core::arch` with `#[cfg(target_arch)]`; limited
  `unsafe` (`Box::new_uninit`+`assume_init`, volatile wipes, CT
  helpers) — each axiomatized per-instance.
- **Trusted:** rustc + backends; Charon/Aeneas extraction; Lean kernel
  + `bv_decide`; 329 LOC intrinsic opcode axioms (with pure-Rust
  executable models differentially tested vs hardware; under
  `--features verify` the NTT proofs run against the models);
  `kyber_terminates` (almost-sure termination of rejection sampling —
  same gap as the EasyCrypt proof; cites Barbosa & Schwabe, "Kyber
  Terminates", 2023); opaque RNG (`RandomTape`-existential theorems);
  one `Lean.Loop.forIn` unfold axiom. Out of scope: side channels
  (Revizor, separately), performance, FIPS security, spec fidelity
  (mitigated by CAVP execution).
- **Numbers (cloc, their README):** ML-KEM 2,125 Rust / 308 spec /
  **37,989 proof** (≈18×); SHA-3 1,656 / 140 / 15,211 (≈9×);
  intrinsics models 1,748 Rust / 329 axioms / 5,177 proof; ~1.3k shared
  Lean infra; full `lake build` re-check ≈15 min. Next targets per the
  blog: AES-GCM, FrodoKEM, ML-DSA. Their README notes the discipline
  lets them "delegate proof work to agents without trusting the AI
  machinery."
- **Tactics/infrastructure visible in
  `aeneas/documentation/crypto-verification.md`:** 4-level pipeline
  (NIST spec ⟷ Lean spec ⟷ auxiliary spec ⟷ Aeneas translation);
  `Ntt.lean`, `MontReduction.lean`, `BarrettReduction.lean`,
  `CompressEncode.lean`; tactics `bv_tac`/`bvify`, `zmodify` (ZMod q),
  `scalar_tac +nonLin`, `agrind`, WP-style `step`/`let* ⟨…⟩ ←` with
  `⦃…⦄` postconditions; maintained `proof-time.md`.

### Standalone `sha3.rs` — exact next target

Audited repository: [AeneasVerif/sha3.rs](https://github.com/AeneasVerif/sha3.rs)
at commit `cb411d54ee0b22f88b64c79963691ff63f3ad5b4` (2025-09-15), tree
`821339a40a2603d98947123a6f20e8e7f81b8ac7`. This is a standalone Cargo
package named `shars`, edition 2024, with a pinned
`nightly-2025-07-08` toolchain. It has no root README; `lean/README.md`
documents the proof dependency graph.

The source tree at that revision is:

| File | LOC | Role in the case study |
|---|---:|---|
| `src/algos.rs` | 561 | Optimized scalar `[u64; 25]` implementation: byte/state helpers, θ/ρ/π/χ/ι, 24-round Keccak-p, sponge absorb/squeeze, four SHA3 and two SHAKE entry points. This is the implementation upstream proves. |
| `src/simple.rs` | 645 | Bit-level reference implementation and tests; useful executable oracle, not the optimized target theorem. |
| `src/lib.rs` | 123 | Public module declarations and bit/byte conversion helpers. Its `chunks_exact().enumerate()` helpers expose the iterator gap measured by Vermilion's probe. |
| `src/neon.rs` | 694 | Added by the audited head commit. Two-way NEON-style implementation written with pure-Rust lane models; no corresponding upstream Lean verification files were found. It stays in the unchanged payload but outside the initial parity claim. |
| `src/main.rs` | 43 | CLI harness; the bin stanza is commented out in `Cargo.toml`. |

Upstream extraction is intentionally file-scoped: `./extract.sh algos` runs
Charon/Aeneas on `src/algos.rs` and writes
`lean/Shars/Definitions/Algos.lean`. The Lean package pins:

- Aeneas Lean support from `https://github.com/ayhon/aeneas`, revision
  `ad86950`;
- the external FIPS 202 package from `https://github.com/ayhon/sha3.lean`,
  revision `1a649d5`; and
- Lean `v4.19.0`.

Lean inventory: 2,430 lines of generated definitions and 4,016 lines under
`lean/Shars/Verification/` (6,875 Lean lines total including auxiliary files).
The proof graph follows θ/ρ/π/χ/ι → `KeccakP` → absorb/squeeze → `Sponge`.
`Sponge.lean` proves the public `sha3_224`, `sha3_256`, `sha3_384`,
`sha3_512`, `shake128`, and `shake256` results against `Sha3.Spec`. A source
scan found no active `sorry` or declared axiom in this package (one `sorry` is
inside a comment); dependency axioms still need a final theorem-level audit.

Rust shapes the unchanged Vermilion study must preserve include:

- `StateArray([u64; 25])` with `Default`, `Deref`, `DerefMut`, and
  tuple-keyed custom `Index`/`IndexMut` implementations;
- tuple-pattern parameters and tuple assignment;
- nested local helper functions and nested `while` loops;
- fixed-width xor/and and table-driven `rotate_left`;
- little-endian `to_le_bytes`/`from_le_bytes` conversions;
- immutable and mutable slice ranges plus `copy_from_slice` (both exact
  `Range`/`RangeFrom` views, inherited bounds, mutable owner writeback, and
  copy length/final-state contracts have now landed); and
- an unconditional squeeze `loop` exited by `return`.

Current Vermilion status: tuple-pattern function parameters, custom
tuple-keyed mutable indexing, tuple-destructuring assignment, exact unsigned
rotation, and native u64 little-endian conversion are no longer blockers.
Pinned Verus commit `0bb5732ae…` contains the accumulated pattern/index work,
modulo-width `rotate_left`, exact endian contracts, assume-spec array-length
normalization, and exact immutable/mutable `usize`/`Range`/`RangeFrom`
slice-index specifications; Vermilion mirrors the stable rotation and byte
models.
The standalone SHA3 acquisition described below is
**AeneasVerif/sha3.rs**, not Microsoft SymCrypt/SymCRust SHA-3. The two
projects have different source identities and proof claims.

Vermilion resolves the returned-reference prophecy at the caller. A unique
monomorphic associated-output equation now normalizes
`Index::Output` to the concrete impl type, while an abstract generic projection
remains suite-pinned as a lowering refusal. The actual annotated working copy
now supplies a private-state view and exact index/reference contracts: the
unchanged `iota` body verifies as 12/12 Lean obligations, and c154/c155 bring
the first-slice corpus milestone to 154/154 verdict parity and 74/74
failure-span agreement. c156/c157 record the tuple-assignment milestone;
c158/c159 record the rotation milestone. The historical `rho` probe still
records its 23-obligation frontier, but the actual annotated working copy now
verifies unchanged `rho` against a recursive remaining-loop model: 17/17
obligations (13 automatic, 4 interactive). The working copy has since closed
default, θ/π/χ, `round`, and `keccak_p`, plus exact `xor_byte_at` and
`xor_lane`. c160–c163 cover native endian conversion and slice-length while
lowering. Vermilion now also maps exact immutable `Range`/`RangeFrom` calls to
`Seq::subrange` while proving their inherited bounds; c164–c169 cover right and
wrong views plus both out-of-bounds cases. Unchanged `StateArray::xor` now
verifies against its recursive prefix-XOR model. Its checked arithmetic also
required condition-setup assertions to be proved before the loop condition is
assumed; c170–c172 pin that behavior and short-circuit guarding. Vermilion now
also resolves the exact core `SliceIndex::Output` projection for range
sub-slices, reconstructs the final owner through the returned-reference
prophecy, and composes `copy_from_slice` without a new IR or VCGen rule.
c173–c177 cover both mutable range forms, wrong writeback, bounds, and unequal
lengths. c178–c181 add transparent dereference-view setup and exact immutable
array suffix ranges. The current corpus is 180/180 verdict parity with 88/88
failure-span agreement.

Current probes cover only the custom state/round boundary and the iterator
helpers. The standalone case is now acquired under [`sha3/`](sha3/) as two
complete Cargo projects: a pristine baseline and an annotated verification
copy. Ordinary Verus annotations live in the latter under the landed
`vrml_source_guard`: all upstream Rust `src/` paths must remain, Cargo metadata
stays byte-identical, and erasing the current 86 typed annotation regions must
leave the same Rust token stream as the pristine file. Colocated Lean output
and twins are allowed only under `verification/src/generated/` and
`verification/src/proofs/`. Negative tests cover spec-only impls,
named-result erasure, executable edits, missing/extra source files, and
malformed or mis-typed regions, as specified in
[PLAN.md](PLAN.md#what-unmodified-requires).

The current standalone checkpoint is 52 verified / 0 errors in pinned Verus
and 198/198 kernel-checked Vermilion obligations across 25 proof twins with no
`sorry`. This covers unchanged Keccak-p, `StateArray::xor`, and
`StateArray::copy_to`, but not absorb, squeeze, sponge, six public entry
points, or the exact `Sha3.Spec` bridge. Public same-spec parity is 0/6. The
detailed evidence, exact theorem scope, and ordered residual work are in
[`sha3/PROGRESS.md`](sha3/PROGRESS.md) and
[`sha3/PARITY_SCOPE.md`](sha3/PARITY_SCOPE.md).

The final bridge is now constrained at the module boundary: it must import the
current generated `algos.Specs` emitted from the Verus annotations and the
pinned external `Sha3.Spec` module, then prove their definitions equivalent
directly. Copying either side into another bridge specification would sever
the evidence chain and is not an accepted parity result.

**Acquisition caveat:** the audited tree contains no detectable `LICENSE`,
`COPYING`, or equivalent file and `Cargo.toml` has no `license` field. The two
requested local copies are tracked with this unresolved-provenance notice;
their presence does not assign a licence. Upstream clarification remains
necessary before a release or redistribution claim.

### Other adjacent work

- **sha3.lean** supplies the standalone FIPS 202 specification; this work is
  the precursor of the SymCrypt SHA-3 proof and was presented in the
  Fromherz/Ho/Protzenko Creach Labs talk.
- **jxl-proofs** (AeneasVerif) — properties of the JPEG XL Rust decoder
  (`libjxl/jxl-rs`); non-crypto systems code.
- **Third-party:** arXiv:2605.30106 uses Charon/Aeneas *and* hax to
  verify zk primitives (Plonky3 FRI folding, Mersenne31/KoalaBear
  fields; RISC Zero Merkle inclusion) with AI provers.
- **Distinctions:** libcrux's ML-KEM is **hax + F\***, not
  Aeneas/Lean (its C artifact for Mozilla NSS goes through Eurydice,
  which shares only the Charon front end). No libcrux-adjacent
  Lean/Aeneas work found.

## 4. Aeneas capability envelope (for the comparison)

- **README-declared limitations on safe Rust** (short list, 2026):
  control flow escaping nested loops (`return` from inner loops,
  `break`/`continue` to outer) — "technical, not fundamental";
  `unsafe` and concurrency deferred to future separation-logic work.
- Since the papers: loops (ICFP'24 joins + fixed-point), nested borrows
  in signatures, borrows in ADTs, traits, `Fn` closures, `Box<dyn>`
  have all landed (positive tests above). Charon-level unsupported:
  GATs, trait aliases, `async`, raw-pointer deref.
- External code: axiomatized as opaque functions with user-written
  Lean models (`FunsExternal_Template.lean` stubs).
- Backends: Lean is the reference (thesis §14.4.1: hashmap proof was
  one-step in Lean vs two-step in F\*/HOL4).
- Termination: extrinsic — partial functions via `Diverge`/fixed-point
  combinator (contrast: Verus/Vermilion are total by construction via
  `decreases`).

## 5. Published effort numbers (all found)

| Artifact | Rust LOC | Effort / proof | Source |
|---|---|---|---|
| Hash table (2022) | 201 | 4 person-days, F\* | arXiv:2206.07185 §6 |
| Hash table (thesis, Lean) | 222 | one-step `progress`+`scalar_tac` proof | thesis §14.4.1 |
| Betree | ~645 | translated only; verification never reported done | 2206.07185; 2404.02680 |
| Loop micro-suite | 22 tests / 300 LOC | borrow-checks < 1 s | arXiv:2404.02680 §6 |
| Hashmap+AVL+betree (loopy) | 1,068 total | borrow-check < 1 s | thesis §14.2.1 |
| ML-KEM / SHA-3 / intrinsics | see §3 | 37,989 / 15,211 / 5,177 proof LOC | README-VERIFIEDCRYPTO.md |
| Charon / Aeneas toolchain | 18k+9k Rust / 13.5k OCaml | ≈2 person-years (Charon) | arXiv:2410.18042 |

## Sources

Shallow clone of `AeneasVerif/aeneas` (master, 2026-07-17); direct clone and
source/proof/toolchain audit of `AeneasVerif/sha3.rs` at
`cb411d54ee0b22f88b64c79963691ff63f3ad5b4` (2026-07-19);
[README-VERIFIEDCRYPTO.md](https://github.com/microsoft/SymCrypt/blob/feature/verifiedcrypto/README-VERIFIEDCRYPTO.md)
and `Properties/MLKEM/VERIFIED.md` (fetched raw);
[MSR blog: Verifying Rust cryptography in SymCrypt](https://www.microsoft.com/en-us/research/blog/verifying-rust-cryptography-in-symcrypt-from-standards-to-code/);
[MSR blog: Rewriting SymCrypt in Rust](https://www.microsoft.com/en-us/research/blog/rewriting-symcrypt-in-rust-to-modernize-microsofts-cryptographic-library/);
[arXiv:2206.07185](https://arxiv.org/abs/2206.07185) (ICFP'22);
[arXiv:2404.02680](https://arxiv.org/abs/2404.02680) (ICFP'24);
[arXiv:2410.18042](https://arxiv.org/abs/2410.18042) (Charon, CAV'25);
[Son Ho's thesis](https://www.sonho.fr/papers/thesis-manuscript.pdf);
[Aeneas projects page](https://aeneasverif.github.io/projects/);
[sha3.rs](https://github.com/AeneasVerif/sha3.rs) /
[sha3.lean](https://github.com/AeneasVerif/sha3.lean);
[jxl-proofs](https://github.com/AeneasVerif/jxl-proofs);
[rust-libcrux](https://github.com/pq-code-package/rust-libcrux);
[Cryspen ML-KEM post](https://cryspen.com/post/ml-kem-implementation/);
[Creach Labs slides](https://www.creachlabs.fr/sites/default/files/public/media/document/2026-02/2026_01_fromherz.pdf);
[arXiv:2605.30106](https://arxiv.org/abs/2605.30106).
