# 2026-07-19 — first unchanged SHA-3 state/`iota` slice

## Outcome

The first actual function slice from the pinned Aeneas `sha3.rs` working copy
is verified by both pinned Verus and Vermilion without modifying executable
Rust. This is a partial milestone, not a whole-library result.

`verification/src/algos.rs` now contains 38 typed annotation regions. They add
the `verus!` wrapper/import, a closed `View` for the private `StateArray`, an
`IndexSpecImpl` requirement, exact `Index`/`IndexMut` reference contracts, and
the exact update contract for the unchanged `iota` body. All other production
bodies are explicitly marked `external_body` until their staged proofs land.

Generated Lean and tracked proof twins are colocated with the Rust source:

- `verification/src/generated/algos/` — ignored machine output;
- `verification/src/proofs/algos/` — tracked editable twins.

The former duplicate top-level SHA-3 proof/output trees were moved to
recoverable temporary locations rather than deleted.

## Preservation guard

`vrml_source_guard` now recognizes verification-only `spec-impl` regions, but
only for a closed `View::view` definition or
`IndexSpecImpl::index_req`. Executable or ordinary methods fail closed. Source
inventory ignores only verification-side `src/generated/` and `src/proofs/`
Lean artefact directories; every upstream Rust file remains mandatory.

The focused guard reports:

- 7/7 Rust files preserve executable tokens after erasing 38 regions;
- 3/3 metadata files are byte-identical;
- 8/8 guard unit tests pass.

## Verification evidence

- Pinned Verus on the actual annotated file: 9 verified, 0 errors.
- SHA-3 Vermilion runner: 12/12 Lean obligations across four proof-twin units,
  0 `sorry`; proof twins kernel-check; source guard passes afterward.
- Differential c154/c155: positive private-state update and wrong-poststate
  negative, with 154/154 verdict parity and 74/74 failure-span agreement.
- Complete six-phase suite: 48/48 end-to-end runners, all twin libraries,
  byte-stable emission, incrementality/evidence/fail-closed checks, and the
  complete differential gate pass. Median differential slowdown was 19.62x;
  the existing 10x M2 performance target remains informational and unchanged.

## Current claim and next task

The verified claim covers the private-state model, derived clone obligations,
unchanged index implementations, and unchanged `iota`. It does not cover the
remaining Keccak steps, sponge, public SHA3/SHAKE APIs, or the external
`sha3.lean` bridge.

The next executable task is Rust-side tuple-destructuring assignment for the
unchanged `rho` statement `(x, y) = (y, (2 * x + 3 * y) % 5)`. That change
belongs in the Verus fork with native positive/negative parity tests, complete
Verus regression runs, documentation, commit, and fork push before Vermilion
continues to exact `u64::rotate_left` semantics.
