# AeneasVerif sha3.rs: unchanged `copy_to` milestone

This milestone belongs to the standalone `AeneasVerif/sha3.rs` case study. It
is **not** derived from Microsoft SymCrypt or SymCRust SHA-3.

The executable body of `StateArray::copy_to` now verifies without changing an
upstream Rust token. Its Verus-only annotations define the exact recursive
lane-to-little-endian-byte result, establish the loop prefix relation, and
handle the final partial lane. The existing mutable-slice prophecy and
`copy_from_slice` contracts remain the implementation model.

Two narrowly scoped Vermilion lowering additions were required. The reserved
`Deref::deref` and array-to-slice models may now fold a model-transparent
result equality; only the exact array-to-slice coercion may select it among
multiple postconditions. This lets `Deref::deref` expose the state view in a
checked loop condition. Immutable exact `Range`/`RangeFrom` indexing on an
array delegates through the corresponding slice contract and uses the existing
`Seq.subrange` model. Mutable array ranges remain fail-closed. c178–c181 pin
both successful shapes and wrong-result failures.

The source guard also accepts erased Verus ghost statements (`let ghost` and
`assert(...)`) while continuing to reject executable `let` bindings hidden in
an annotation region. Its dedicated binary tests pass 10/10.

Evidence at the checkpoint:

- pinned Verus: 52 verified, 0 errors;
- Vermilion: 198/198 obligations, 25 proof twins, 0 `sorry`;
- source preservation: 7 Rust files, 3 metadata files, 86 annotation regions;
- differential oracle: 180/180 verdict parity and 88/88 failure-span
  agreement (median 16.33x, still a non-blocking performance-target miss).
- the complete six-phase suite passes all tracked runners, deterministic
  emission, incrementality/fail-closed/evidence checks, all proof libraries,
  and fresh sibling-`Specs` editor discovery.

The Aeneas public-result parity count remains 0/6. Remaining work is absorb,
squeeze, sponge, the six public SHA3/SHAKE bodies, and a zero-added-axiom Lean
bridge importing the freshly generated `algos.Specs` and exact pinned
`Sha3.Spec` directly. Full scope is recorded in
`case-studies/aeneas/sha3/PARITY_SCOPE.md`.
