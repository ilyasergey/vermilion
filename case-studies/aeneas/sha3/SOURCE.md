# Pinned upstream source

The standalone SHA-3 case study targets
[`AeneasVerif/sha3.rs`](https://github.com/AeneasVerif/sha3.rs). This is
**not** the Microsoft SymCrypt/SymCRust SHA-3 codebase, which is a separate
project with separate probes and evidence. The pinned identity is:

- commit `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`;
- tree `821339a40a2603d98947123a6f20e8e7f81b8ac7`;
- Cargo package `shars`, edition 2024;
- Rust toolchain `nightly-2025-07-08`;
- Lean toolchain `v4.19.0`;
- Aeneas Lean dependency `ad86950`; and
- `sha3.lean` dependency `1a649d5`.

The integrity checker additionally fixes the blobs that define the executable
Rust surface, build metadata, and upstream extraction boundary:

| Path | Git blob |
|---|---|
| `Cargo.lock` | `f7a96b15202d79b53b242034aa793719ccfe55c6` |
| `Cargo.toml` | `f1c975387631f60aa93190ef198eee0476134731` |
| `extract.sh` | `a497634662dfddc3d8959b46e9577db476ac9e89` |
| `lean/lakefile.toml` | `58c2ee10a19d02e083e9d87fde0f45559ec23c9c` |
| `lean/lean-toolchain` | `fa64ce6f266b61b6849ff5f7957d939b74aae82e` |
| `rust-toolchain` | `9ecf1dd33870c72747fc6bfd1e5275baa0928a45` |
| `src/algos.rs` | `e376e9f4d552ded20b3fda2015d7e7e88a4aee25` |
| `src/lib.rs` | `10addfaf5b05e028a882db1b24a3c40eb2267931` |
| `src/main.rs` | `0e31687fa42881ef4a891bd27036bf18943ce10c` |
| `src/neon.rs` | `0b9c473971e10399c38bb49e9e941a3fcd6667ee` |
| `src/simple.rs` | `826db14cc0779116082aedb921890ef0728712fa` |
| `src/test/mod.rs` | `9908055db2ea1b82c699c17babeb2ee5c4a52552` |
| `src/test/simple.rs` | `bfe576b0fe3dec21c873aa8a12337e5ff47a2e7a` |

The audited revision contains no detectable licence file and no Cargo
`license` field. This unresolved provenance is recorded here rather than
silently assigning a licence. The complete upstream `src/` tree and its Cargo
metadata are tracked locally twice with their original layout: `upstream/` is
the immutable pristine baseline and `verification/` is the annotation target.
`fetch.sh` also places a transient checkout under ignored `_work/` to validate
the committed pristine baseline against the pinned Git objects.

`vrml_source_guard` does not change this upstream identity. It requires the
verification project to retain exactly the same upstream Rust `src/` paths and
byte-identical Cargo metadata; for each Rust file it erases only explicitly
typed, non-nested annotation regions and compares the remaining token stream
with `upstream/`. Verification-only spec impls are restricted to a closed
`View` definition or `IndexSpecImpl::index_req`, so executable methods cannot
hide in an erased region. Colocated Lean artefacts are permitted only under
`verification/src/generated/` and `verification/src/proofs/`; all upstream
source files remain mandatory. The pristine copy remains byte-checked against
the Git blobs.

The verification copy now contains 86 typed annotation regions in
`src/algos.rs`. Erasing them restores the pinned executable Rust token stream.
They provide the private-state/index/default models and contracts for
unchanged θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, and
`StateArray::xor` and `StateArray::copy_to`. Vermilion verifies all 198
obligations across 25 proof-twin units with no `sorry`, and pinned Verus
reports 52 verified, 0 errors. These contracts are
local implementation models; the bridge to the pinned external FIPS/Aeneas
specification remains a later gate. The pristine copy has not changed.
Absorb, squeeze, sponge, and all six public functions remain explicitly
external at this milestone, so public same-spec parity remains 0/6 and this is
not a whole-library correctness claim. The scope inventory is
[PARITY_SCOPE.md](PARITY_SCOPE.md).

At acquisition time, the pinned checkout and both local copies each passed 31
tests with 1 ignored test and no failures. The clean pinned Lean build also
completed successfully (6,822 targets), including
`Shars.Verification.Sponge` and the top-level `Shars` package.

Vermilion currently pins its Verus fork at
`0bb5732ae6afa6eabf3843e34bc554223b67be8f`. That fork commit is not part of
the upstream SHA-3 identity above; it records the local toolchain capabilities
for tuple-pattern contract/lowering/erasure support and custom tuple-keyed
mutable indexing plus tuple-destructuring assignment and exact unsigned
`rotate_left` specifications. It additionally specifies native u64
little-endian conversions and normalizes const array lengths for assume-spec
signature matching. The current pin also specifies immutable and mutable
`usize`/`Range<usize>`/`RangeFrom<usize>` slice indexing, including exact
returned subviews and final-owner writeback. Vermilion pairs those contracts
with exact views, inherited bounds, its existing returned-reference prophecy,
and the ordinary `copy_from_slice` length/final-state contract. c178–c181 add
transparent dereference-view setup and immutable array suffix-range
delegation. The resulting corpus is 180/180 verdict parity with 88/88
failure-span agreement. None of these toolchain changes alter either SHA3
source copy or the upstream SHA3 identity recorded above.
