# Aeneas artefacts in Vermilion: status and reach assessment

**Status reconciliation (2026-09-23):** the SHA-3 verification effort is
paused; dalek-lite is the active target in the [project plan](../../plans/execution-plan.md).
Verification counts, timings, and fork revisions below describe recorded
checkpoints, chiefly 2026-07-20; they are not a fresh run on the current tree.
The current Vermilion verifier pin is selected by
[`setup_verus.sh`](../../scripts/setup_verus.sh); see [setup details](../../docs/development.md#build).
Acquisition-source pins remain unchanged. Remaining SHA-3 steps apply when
that effort resumes. This documentation update does not resume it.

*Research and case-study hub. Recorded checkpoint: 2026-07-20.*

**Project goal: subsume the Lean-backed Aeneas crypto artefacts** — verify
curve25519, standalone SHA-3/SHAKE, and the SymCRust ML-KEM scalar core
against the same external Lean specifications, with zero added axioms. The
paused SHA-3 target is to verify
[AeneasVerif/sha3.rs](https://github.com/AeneasVerif/sha3.rs) as a standalone
case study under this folder and keep its pinned upstream tree byte-for-byte
available as the comparison baseline. The verification files may add Verus
contracts, invariants, decreases clauses, and ghost/spec material, but every
executable Rust construct must remain unchanged. Replacing its `StateArray`
with a friendlier implementation is not an acceptable substitute.
This target is the standalone **AeneasVerif/sha3.rs** repository. It is not
Microsoft SymCrypt/SymCRust SHA-3; SymCrypt is a separate long-term ML-KEM
track with separate source and proof evidence.

The operative roadmap and feature summary are in **[PLAN.md](PLAN.md)**.
[corpus-notes.md](corpus-notes.md) records the upstream artefacts, and the
[gap matrix](gap-matrix.md) distinguishes landed infrastructure from blockers.
This folder already contains the verified [curve25519](curve25519/) study and
the historical [probe suite](probes/); it is not analysis-only.

**Recorded verification checkpoint:** curve25519 is complete (38 obligations and a same-spec
bridge), and the unchanged standalone AeneasVerif SHA3 scalar implementation
through `StateArray::copy_to` is verified. Default/dereference support,
θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and
`copy_to` contribute to 198/198 Lean obligations across 25 proof twins with no
`sorry`; pinned Verus reports 52 verified, 0 errors. The source guard erases
86 typed regions back to pristine Rust while requiring all
seven upstream Rust files. Fork `0bb5732ae…` retains exact rotation/endian
contracts and adds exact mutable `usize`/`Range`/`RangeFrom` slice-index
contracts; Vermilion mirrors the byte/rotation models, handles canonical
slice-length loops, and lowers immutable and mutable range views with safety
bounds and final-owner writeback. The ordinary `copy_from_slice` contract now
composes with that prophecy relation. Checked arithmetic in loop-condition
setup is proved before assuming the condition and short-circuit checks remain
guarded. Transparent dereference-view setup and immutable array suffix ranges
are now parity-tested. The recorded July regression result is 180/180 verdict parity and 88/88
failure-span agreement. Absorb/squeeze, sponge, the six public entry points,
and the exact `Sha3.Spec` bridge remain open, so public same-spec parity is
0/6;
[sha3/PROGRESS.md](sha3/PROGRESS.md) is the evidence ledger.
The parity gate requires that bridge to import freshly generated
`algos.Specs` and pinned `Sha3.Spec` directly and prove equivalence between
those names; a separately restated look-alike specification does not count.

[Aeneas](https://github.com/AeneasVerif/aeneas) (Son Ho, Jonathan
Protzenko, et al.; ICFP'22, ICFP'24, CAV'25) verifies safe Rust by
*functional translation*: the Charon front end elaborates a crate to the
LLBC IR, Aeneas's symbolic borrow-oriented semantics translates it to
pure Lean definitions (backward functions in place of prophecy
variables), and users prove **extrinsic** theorems about the translated
code in ordinary Lean, with hand-rolled tactics (`progress`,
`scalar_tac`, `bv_tac`). It is the closest published relative of
Vermilion — same host prover, same "Lean is the checker" trust story —
with an inverted spec discipline: Aeneas annotates nothing in the Rust
source and proves everything after translation; Vermilion consumes
auto-active Verus contracts and discharges span-mapped obligations with
the `vrml` ladder, falling back to interactive twins.

This study answers: **which Aeneas case studies (including their
verified crypto) could Vermilion take on today, which are within
declared feature work, and which are structurally out of reach — and
why.**

## 1. The Aeneas corpus in one view

Three tiers, from first-hand inspection of the repo (~8.7k LOC Rust in
`tests/src/`, ~21.7k LOC Lean in `tests/lean/`) and the published
record:

1. **Flagship data-structure studies** — the resizing chaining
   **hashmap** (359 LOC Rust, 1,086 LOC hand proof; "first verified
   hash table in Rust", ICFP'22), the **AVL tree** (469 LOC, 1,040 LOC
   proof, rotations + balance invariant), the **BST/TreeSet** (174 LOC,
   loop with a reborrowed `&mut` cursor), and the historical **Bε-tree**
   (1,083 LOC; translated and borrow-checked, functional verification
   never reported finished; removed from the live corpus 2025-10-24).
2. **Feature-directed tests** — ~90 files: loops (588-LOC `loops.rs`),
   nested borrows *in signatures* (now positive tests), borrows stored
   in ADTs, `Fn` closures, traits with associated types/consts and
   blanket impls, `Box<dyn Trait>`, iterators/`for` over slices,
   wrapping/overflowing machine arithmetic, statics, strings.
3. **Verified crypto** — the tier that matters most for comparison:
   - **SymCRust** (Microsoft SymCrypt, branch
     [`feature/verifiedcrypto`](https://github.com/microsoft/SymCrypt/tree/feature/verifiedcrypto)):
     **ML-KEM** (all of FIPS 203: keygen/encaps/decaps, NTT/INTT in
     Montgomery form, sampling, compression/serialization — 2,125 LOC
     Rust, 308 LOC spec, **37,989 LOC proof**) and **SHA-3/SHAKE**
     (1,656 LOC Rust, 15,211 LOC proof), verified in Lean against
     FIPS 203/202 specs executed on CAVP vectors, *including* the
     SSE2/NEON/AVX2 SIMD bodies against per-lane intrinsic axioms.
     Ships in Windows Insider builds.
   - **[sha3.rs](https://github.com/AeneasVerif/sha3.rs)** — the
     standalone Keccak precursor and the next Vermilion acquisition. At
     audited commit `cb411d54…`, its upstream-proved scalar target is the
     561-line `src/algos.rs`; 4,016 lines under
     `lean/Shars/Verification/` culminate in SHA3-224/256/384/512 and
     SHAKE128/256 theorems against `sha3.lean`. The newly added 694-line
     `src/neon.rs` has no corresponding upstream proof and is outside the
     first parity claim.
   - **curve25519-dalek `Scalar52::mul_internal`**
     (`tests/src/curve25519.rs`) — 5×`u64`-limb schoolbook
     multiplication over `u128` accumulators, proved
     `asNat r = asNat a * asNat b` in 41 lines.

   (libcrux's ML-KEM is **hax + F\***, not Aeneas — different toolchain,
   only the Charon front end is shared via Eurydice's Rust→C path.)

## 2. Structural comparison

| | Aeneas | Vermilion |
|---|---|---|
| Input | unannotated safe Rust | Rust inside `verus!` with Verus contracts; case-study executable bodies may stay unchanged while annotations are added |
| Spec style | extrinsic Lean theorems after translation | intrinsic auto-active (`requires`/`ensures`/invariants), obligations in Lean |
| Automation | manual proofs + custom tactics (`progress`, `scalar_tac`, `bv_tac`); ML-KEM ratio ≈ 18× proof:code | `vrml` ladder (`grind`→`omega`→…→`smt`) first, interactive twins as the escape hatch |
| Borrows | its differentiator: `&mut` returns, borrows in ADTs, nested borrows in signatures, reborrowed loop cursors | sequential prophecy `&mut` args resolved at lowering; returns/escaping borrows fail closed (the S2 saturation slice + the returned-`&mut` prophecy work named by [entry-api](../entry-api/)) |
| Termination | extrinsic `Diverge`/fixed-point combinator; partial functions fine | Verus `decreases`, `termination_by` in Lean; total by construction |
| Trust | Charon + Aeneas extraction + Lean kernel (mechanized-llbc under way) | Verus lowering + IR + vcgen + Lean kernel (foundational semantics = [issue #3](../../docs/issues/formal-semantics-for-the-neutral-ir.md)) |
| Out of scope (both) | `unsafe`, interior mutability, concurrency (separation-logic work pending) | `unsafe`; concurrency is *planned* (M6 tokenized state machines — a roadmap Aeneas does not have) |

Two consequences frame every verdict below. First, Vermilion currently uses
Verus as its Rust front end, so a rejected Rust shape must be added to the
pinned fork/vstd before Vermilion can lower it. This is now work we are willing
to do for the unchanged SHA-3 artefact; rewriting the target to stay inside the
old front-end fragment is not. Second, Aeneas's flagship suite was chosen to
exercise borrows, while its scalar crypto tier is mostly loop, array, byte, and
bit arithmetic that fits Vermilion's Lean-native proof strategy once the
source-association and library boundaries are crossed.

## 3. Verdicts

### 3.1 Verified or directly reusable today

| Aeneas artifact | Why it fits |
|---|---|
| `demo.rs`/`paper.rs` scalar examples (`mul2_add1`, `sum`, `i32_id`) | straight-line + loops + overflow side-conditions: M1/M2 material |
| Tutorial **bignum** (`zero`, `add_no_overflow`, `add_with_carry`, growing `add`) | `Vec` index/push, `overflowing_add` carry chains (exact VIR clipping, c144/c145), loop invariants; carry ≤ 1 invariant is `omega` fodder |
| `scalars.rs` / `overflowing-ops.rs` / `cast_signed.rs` | wrapping/overflowing intrinsics and casts are exactly the exact-clipping slice ([power-of-2](../power-of-2/)) |
| `loops.rs` accumulator/counter families, `sum_array<const N>` | range `for`, invariants, const generics all land (`m2-loops`, `m3-const-generics`) |
| `closures.rs` (`Fn`, shared captures) | `m3-closures`/`m3-exec-closures`; Aeneas's own `FnMut` captures are still TODO — parity here, advantage nobody |
| `traits.rs` core (generic impls, provided methods, supertraits) | static dispatch + inherited contracts (`m3-traits`, `m3-trait-bounds`); unique monomorphic associated outputs normalize (c152/c153), while generic projections and associated consts need further support |
| **curve25519 `Scalar52::mul_internal`** | **Verified in [curve25519/](curve25519/):** 38 obligations, all automatable by `scalar_saturate`; tracked fast twins retain 9 ladder + 29 explicit proofs; a zero-axiom `ring` bridge proves the same Aeneas `asNat` theorem |

Curve25519 was the beachhead and is now evidence, not a pending opportunity.
It forced array-repeat and indexed-destination support and motivated the
`scalar_saturate` rung. It also established the same-spec bridge pattern used
for `sha3.rs`: the executable body stays unchanged, the implementation theorem
is proved in Vermilion, and a separate Lean theorem connects that result to the
upstream mathematical abstraction.

### 3.2 Near reach — behind named, already-tracked feature work

| Aeneas artifact | Blocking gap (tracked where) |
|---|---|
| **unchanged-execution standalone AeneasVerif sha3.rs / Keccak (not SymCrypt)** | The complete local [sha3.rs project](sha3/)—Cargo metadata and every file under `src/`—is tracked as separate pristine and verification copies. `vrml_source_guard` enforces exact upstream inventory/metadata and executable Rust token identity after erasing 86 typed annotations; only colocated Lean artefacts are exempted. Unchanged default/dereference support, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to` verify as 198/198 Lean obligations across 25 proof-twin units with no `sorry`; pinned Verus reports 52 verified, 0 errors. c164–c181 cover exact slice/array ranges, prophecy writeback, copying, and dereference loop setup; the recorded July corpus result is 180/180 with 88/88 failure-span agreement. Remaining gates are absorb/squeeze, sponge, the six public functions, and a bridge importing generated `algos.Specs` plus pinned `Sha3.Spec` directly. Public same-spec parity is 0/6. See [sha3/PARITY_SCOPE.md](sha3/PARITY_SCOPE.md), [PLAN.md](PLAN.md#features-required-for-unchanged-sha3rs), and [sha3/PROGRESS.md](sha3/PROGRESS.md). |
| **Hashmap** (the ICFP'22 flagship) | recursive heap datatypes (`Box`ed list enums) + `Option<&mut T>` returns + `std::mem::replace` — exactly the S2 saturation slice ([target-projects.md](../../docs/reports/target-projects.md), "recursive heap datatypes / `Box` / `returns` / `&mut` returns") plus the returned-`&mut` prophecy already demanded by [entry-api](../entry-api/) |
| **AVL tree** | same S2 slice (`Option<Box<Node>>`, deep `&mut` through fields, `mem::replace` rotations); traits/`i8` parts already land |
| **BST/TreeSet** | the reborrowed loop cursor `current = &mut node.right` — data-escaping `&mut`, the hardest S2 corner |
| **Bε-tree** | S2 + opaque external I/O (fine today: uninterpreted fns with contracts); note Aeneas never finished verifying it either |
| `static.rs` | globals/atomics semantics ([#27](../../docs/issues/give-statics-and-atomics-a-lean-semantics.md), M5/M6) — mirrors our own [statics](../statics/) study |
| `iterators.rs`, `for` over slices, `chunks_exact` | non-range `for` fails closed; needs iterator models via the `(vstdapply …)` registry route |
| **SymCRust ML-KEM, scalar core** (NTT/Montgomery/Barrett, compress/encode) | long-term north star, not a milestone item: needs everything above plus #20 at 2k-LOC-crate scale, a ZMod-style modular-arithmetic lemma library (the M4 "Lean way", and Aeneas's `zmodify`/`bv_tac` show the shape), and a story for bridging Verus contracts to a FIPS-level Lean spec — our twins can *reference* a Lean spec, but the obligation statements come from Verus contracts, so the refinement tower (impl → contract → FIPS spec) needs design |

The S2 cluster deserves emphasis: **one planned slice unlocks the
entire Aeneas flagship suite** (hashmap, AVL, BST, betree, tutorial
`CList`). Acquiring the Aeneas hashmap post-S2 would be a direct
head-to-head — their 1,086-line hand proof vs our ladder + twins — and
the single most legible external benchmark of the automation thesis.

### 3.3 Out of reach — and why that is (mostly) fine

| Aeneas artifact | Why, and whether it matters |
|---|---|
| `nested-borrows.rs` (nested borrows in signatures) | **Verus-bounded**: Verus has no spec story for `&'a mut &'b mut u32`. This is Aeneas's research differentiator; chasing it would mean leaving Verus compatibility ([no-verus2vermilion](../../.claude/memory/no-verus2vermilion.md)). Accept the gap |
| `dyn.rs` (`Box<dyn Trait>`, `impl Trait` returns) | dynamic dispatch fails closed and Verus support is thin; Aeneas translates it. Real gap, low case-study value |
| `string-chars.rs` | no strings in the IR type grammar; `char` clip fails closed. Add only when a target project forces it |
| SymCRust **SIMD tier** (SSE2/NEON/AVX2 bodies over `core::arch`) | even Aeneas rests on 329 LOC of vendor-transcribed intrinsic axioms; importing that discipline contradicts our zero-axiom stance (`docs/trust.md`). The scalar path is the right ambition |
| SymCRust `unsafe` residue (`Box::new_uninit`, volatile wipes, CT helpers) | axiomatized per-instance even there; out of scope for sequential safe-Rust Vermilion |
| `SampleNTT` almost-sure termination | axiomatized by *everyone* (Aeneas, and the EasyCrypt ML-KEM proof; "Kyber Terminates", Barbosa & Schwabe 2023); Verus `decreases` cannot express probabilistic termination either |
| Aeneas-as-borrow-checker (`.borrow-check.out` negative suite) | different product: we inherit rustc/Verus's borrow checking and add nothing there |

### 3.4 What Aeneas cannot do that we already can

For balance — the reach comparison runs both ways: auto-active contract
automation with span-mapped failures (their proofs are all manual);
quantifiers with `grind` instantiation and broadcast lemma groups;
proving truths Verus's SMT rejects (`m4-beyond-verus`); a concurrency
roadmap (M6 tokenized state machines — Aeneas defers concurrency to
future separation-logic work); and differential verdict parity against
an existing SMT verifier as a continuous oracle, which Aeneas has no
analogue of. Aeneas's own ML-KEM README notes they use the
Lean-checking discipline to "delegate proof work to agents without
trusting the AI machinery" — the same thesis as
[issue #1](../../docs/issues/ai-assisted-interactive-proof-construction.md).

## 4. Acquisition ladder

1. **curve25519 `Scalar52::mul_internal` — complete.** First same-spec
   crypto acquisition; 38 obligations and a kernel-checked bridge.
2. **unchanged standalone `sha3.rs` — in progress.** The complete tree and two
   local copies are pinned and all upstream Rust/Lean baselines pass; clarify
   the unresolved upstream licence. Annotation erasure, the entire unchanged
   scalar permutation, exact rotation/endian support, the byte/state helpers,
   immutable/mutable range semantics, copy contracts, unchanged `xor`, and
   unchanged `copy_to` have landed. Verify absorb, squeeze, sponge, the six
   SHA3/SHAKE APIs, and finally their exact external-spec bridge. The exact
   gates are [PLAN.md S0–S4](PLAN.md#staged-next-steps).
3. **Tutorial bignum slice:** carry-chain loop invariants over `Vec`; useful
   breadth work but no longer ahead of SHA-3.
4. **Aeneas hashmap** (after S2 borrow support): the head-to-head automation
   benchmark; their proof effort is published (4 person-days, 1,086
   LOC), which makes the comparison quantitative.
5. **ML-KEM scalar NTT slice** (after the SHA-3 gate): adopt SymCRust's
   own staging — NTT + Montgomery reduction first — as the long-term
   crypto north star; requires the spec-bridging design noted above.

## 5. Sources

First-hand: shallow clone of `AeneasVerif/aeneas` (master,
2026-07-17) — `tests/src/`, `tests/lean/`, `README.md`,
`documentation/crypto-verification.md`; this repo's
[docs/ir.md](../../docs/ir.md), [docs/vcgen.md](../../docs/vcgen.md),
[docs/reports/progress.md](../../docs/reports/progress.md),
[docs/reports/target-projects.md](../../docs/reports/target-projects.md),
open issues in [docs/issues/](../../docs/issues/); and a direct audit of
`AeneasVerif/sha3.rs` at
`cb411d54ee0b22f88b64c79963691ff63f3ad5b4` on 2026-07-19, including its
Rust source, extracted definitions, verification tree, Lake pins, and CI.
That revision has no detectable license file or Cargo license field. The two
requested local copies are tracked with that provenance caveat rather than an
inferred licence; upstream clarification remains open. Published record:
Aeneas ICFP'22 ([arXiv:2206.07185](https://arxiv.org/abs/2206.07185));
sound borrow-checking ICFP'24
([arXiv:2404.02680](https://arxiv.org/abs/2404.02680)); Charon CAV'25
([arXiv:2410.18042](https://arxiv.org/abs/2410.18042)); Son Ho's PhD
thesis ([sonho.fr](https://www.sonho.fr/papers/thesis-manuscript.pdf));
MSR blog "[Verifying Rust cryptography in SymCrypt](https://www.microsoft.com/en-us/research/blog/verifying-rust-cryptography-in-symcrypt-from-standards-to-code/)";
[microsoft/SymCrypt `feature/verifiedcrypto`](https://github.com/microsoft/SymCrypt/tree/feature/verifiedcrypto)
(`README-VERIFIEDCRYPTO.md`, `Properties/MLKEM/VERIFIED.md`);
[rust-libcrux](https://github.com/pq-code-package/rust-libcrux) (the
hax/F\* distinction). Full per-artifact notes: [corpus-notes.md](corpus-notes.md).

## Could Aeneas be a *backend*, not just a benchmark?

The subsumption framing above is "reproduce Aeneas's results in
Vermilion." The inverse is worth a look: Aeneas emits kernel-checked
Lean, so for the borrow-heavy programs it handles and we fail closed on
(nested-signature borrows, `&mut` returns, reborrowed cursors), it
could act as a **certified discharge backend** for individual
functions — its proved functional spec consumed by a Vermilion caller
through a per-type model bridge, adding no axioms. Tracked as
[aeneas-as-certified-solver-backend](../../docs/issues/aeneas-as-certified-solver-backend.md).
