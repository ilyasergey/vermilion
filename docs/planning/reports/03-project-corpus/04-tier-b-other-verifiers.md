# Chapter 4: Tier B — Verified with Other Rust Verifiers

These projects were verified with Creusot, Kani, hax, or Aeneas. Their role in the corpus is
calibration (Vermilion vs. the field), spec reuse (formal specs already exist), and gap
demonstration (things bounded checkers verify boundedly, Vermilion can verify unboundedly).

## B1. CreuSAT — verified CDCL SAT solver (Creusot → Why3)

- **Repo:** https://github.com/sarsko/CreuSAT · **Size:** repo 8.2k LoC incl. inline Pearlite
  specs; main `CreuSAT` crate 3.2k; plus `Friday` (<200-line functional solver), `Robinson`
  (verified DPLL), `JigSAT` (unverified twin for benchmarking).
- **Verifies:** soundness of answers (SAT ⇒ the produced assignment satisfies the formula;
  UNSAT ⇒ unsatisfiability) for a watched-literals CDCL solver with realistic performance.
- **Features stressed:** index-based data structures (`Vec<Vec<usize>>`), loops with intricate
  invariants, `&mut` handled via Creusot's prophecy (`^`) operator; no unsafe.
- **Vermilion role:** the benchmark for invariant-dense sequential Rust; re-verifying it gives a
  direct Creusot/Why3-vs-Lean automation comparison, and its prophecy-flavored `&mut` specs
  exercise the same design decision Vermilion inherits from Verus's new `MutRef` machinery.
- **Difficulty:** early-middle.

## B2. verify-rust-std — the Rust standard library campaign

- **Repo:** https://github.com/model-checking/verify-rust-std — contracts and harnesses over
  `core`/`std`, with Kani, ESBMC, VeriFast, and Flux integrated in CI (the NFM 2026 paper
  "Verifying the Rust Standard Library" reports >16,000 harnesses verified per change).
- **Verifies (mostly bounded):** absence of UB in unsafe std internals — slice/str manipulation,
  `VecDeque`, `CStr`, pointer ops, atomics.
- **Vermilion role:** a curated catalog of exactly the unsafe idioms any Rust verifier must
  eventually swallow, with contracts already written. Differentiating demo: discharge selected
  contracts *unboundedly* in Lean where Kani's checks are bounded.
- **Difficulty:** middle-late, per-function; infrastructure-light.

## B3/B4. s2n-quic and Firecracker — Kani in production CI

- **Repos:** https://github.com/aws/s2n-quic (30+ Bolero harnesses with Kani on varint and
  packet-number codecs, interval sets, buffers) and
  https://github.com/firecracker-microvm/firecracker (rate limiter, `IovDeque`, parser guards).
- **Vermilion role:** protocol codecs with round-trip specs — Vest-shaped problems inside an async
  production codebase (the harnessed cores are sync and extractable); and the "verify the 2% that
  guards the security boundary" adoption pattern Vermilion must support cheaply (per-module
  opt-in, `external_body` everywhere else).
- **Difficulty:** middle (harnessed components only); Firecracker's KVM FFI surroundings push it
  middle-late.

## B5. libcrux ML-KEM — hax → F* verified post-quantum crypto

- **Repo:** https://github.com/cryspen/libcrux (`libcrux-ml-kem`)
- **Verifies:** panic-freedom, functional correctness vs. the ML-KEM spec, and secret independence
  (constant time) for portable and AVX2 paths; the effort surfaced the KyberSlash bug class.
- **Features:** const generics indexing algorithm variants, SIMD intrinsics (unsafe AVX2), traits.
- **Vermilion role:** ring/modular arithmetic (ℤ_q, NTT) is exactly where Lean+mathlib outshines
  SMT; an ML-KEM or field-arithmetic port is a headline result. Portable path: middle.

## B6. Aeneas case studies — the closest "Rust in Lean" datapoints

- **Repo:** https://github.com/AeneasVerif/aeneas (ICFP'22; borrow-checking soundness ICFP'24;
  Charon CAV'25). Case studies: a resizable hash map verified in Lean; the jxl-rs (JPEG-XL)
  bitstream reader (2026), where the reported pain was mundane integer lemmas and modeling
  external crates — *not* traits/generics/loops.
- **Vermilion role:** methodological comparison target (extrinsic functional translation vs.
  Vermilion's intrinsic VC generation) and reusable prior art: Aeneas's Lean tactic suite for
  monadic integer goals (`progress`, `scalar_tac`) addresses the same integer-side-condition
  swamp Vermilion's emitted goals will have. Re-verifying the Aeneas hashmap in Vermilion is an
  **early** exercise; also a candidate cross-validation oracle for the sequential fragment
  (see [`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)).

## B7. Cedar — Lean-modeled authorization engine, Rust production implementation

- **Repos:** https://github.com/cedar-policy/cedar (Rust engine),
  https://github.com/cedar-policy/cedar-spec (Lean model + proofs of validator soundness and
  sound slicing).
- **Today:** the Rust engine is linked to the Lean model only by millions of differential random
  tests (which found 4 design + 21 implementation bugs).
- **Vermilion role:** *the* killer-app demo — replace differential testing with a machine-checked
  refinement proof connecting the production Rust engine to the already-existing Lean model. AWS
  maintains both sides; no other Rust verifier can even state this theorem naturally, because for
  them the Lean model is foreign. Features: enums, traits, iterators, no unsafe.
- **Difficulty:** middle.

## B8. (Brief) AWS-LC / s2n-bignum precedent

https://github.com/aws/aws-lc-rs sits over AWS-LC, whose bignum/curve kernels are proved in HOL
Light (s2n-bignum) and portions via SAW ("Verified Cryptographic Code for Everybody", CAV 2021).
Precedent for "verified core under Rust bindings," not a porting target.
