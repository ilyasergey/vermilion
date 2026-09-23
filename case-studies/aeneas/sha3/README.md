# sha3.rs — standalone Aeneas parity target

**Status (2026-09-23):** SHA-3 work is paused while dalek-lite is active.
Counts and verifier revisions below are recorded checkpoint evidence, not a
fresh run. See the [status hub](../README.md) for the active plan and current
toolchain. Acquisition-source pins remain unchanged.

This directory is the reproducible acquisition boundary for T2 of the
[Aeneas subsumption plan](../PLAN.md). It targets the scalar `src/algos.rs`
surface and the six SHA3/SHAKE correctness theorems proved upstream.
This is the standalone **AeneasVerif/sha3.rs** project, not Microsoft SymCrypt/SymCRust
SHA-3. The normative theorem boundary and live 0/6 parity
ledger are in [PARITY_SCOPE.md](PARITY_SCOPE.md).

## Recorded stage (paused)

S0 acquisition metadata and integrity checking are present. The complete
upstream source is stored twice with its original Cargo layout:

- [`upstream/`](upstream/) is the never-annotated pristine copy;
- [`verification/`](verification/) is the working copy to be annotated and
  verified by Vermilion.

Both copies currently contain the complete `src/` tree, `Cargo.toml`,
`Cargo.lock`, and `rust-toolchain`. `upstream/` remains byte-identical to the
pinned project. `verification/` may now contain typed annotation regions, but
`check_sources.sh` enforces exact file inventory/metadata and identical Rust
tokens after those regions are erased. The audited revision has no
detectable licence or Cargo `license` field, so these requested research copies
carry an explicit unresolved-provenance notice in [SOURCE.md](SOURCE.md).

The repository root excludes both nested packages from Vermilion's Cargo
workspace. This lets each exact upstream manifest remain unchanged and run as
its own standalone package.

The July checkpoint records verification of the unchanged scalar implementation through
`StateArray::copy_to`.
Annotations live directly in `verification/src/algos.rs`: the private-state
view and indexing contracts, `StateArray::default`, θ/ρ/π/χ/ι, `round`, and
the 24-round Keccak-p loop all have executable-token-preserving contracts and
proofs. The byte/state layer is also green: exact native u64 little-endian
conversions support unchanged `xor_byte_at` and `xor_lane`, and the unchanged
`xor` loop refines its recursive prefix-XOR specification, and `copy_to`
refines the exact recursive lane-to-little-endian-byte result including a
partial final lane. Pinned Verus checks the annotated file with **52 verified,
0 errors**; Vermilion kernel-checks **198/198 obligations across 25 proof-twin
units with no `sorry`**.

The annotation model contains no `recommends` clauses. The 15 diagnostic-only
domains that accumulated in the recursive sequence helpers were removed after
confirming that Verus does not treat them as caller obligations and Vermilion
does not use them as Lean assumptions. The resulting logical definitions and
verification counts are unchanged.

The source guard confirms that all seven upstream Rust files remain present
and that erasing 86 typed annotation regions restores the pristine executable
token streams. The supporting fork at that checkpoint was
`0bb5732ae6afa6eabf3843e34bc554223b67be8f`; it retains exact unsigned
rotation, native u64 endian contracts, and the assume-spec array-length
normalization required to attach those contracts to Rust's native methods,
and adds exact immutable/mutable `usize`/`Range`/`RangeFrom` slice-index
contracts including final-owner writeback.
Vermilion additionally models the byte conversions, canonical Verus
while-condition setup, checked-arithmetic assertions within that setup, and
correct root-object havoc for projected loop writes. Exact immutable
executable `Range` and `RangeFrom` views are lowered with their bounds
preconditions and pinned by c164–c169; c170–c172 pin checked condition setup
and short-circuit guarding. c173–c177 add mutable `Range`/`RangeFrom` subviews,
inherited bounds, exact final-owner reconstruction, and ordinary
`copy_from_slice` length/final-state composition. c178/c179 add transparent
`Deref` view setup for the unchanged copy loop; c180/c181 add exact immutable
array `RangeFrom` delegation and its negative parity case. The recorded July corpus result is
**180/180 with 88/88 failure-span agreement**. This remains deliberately
partial: absorb/squeeze, sponge, the six public entry points, and the exact
external `Sha3.Spec` bridge are still outside the verified claim. The final
same-spec parity count is therefore **0/6**. See
[PROGRESS.md](PROGRESS.md) for the dated evidence ledger.

## Adding annotations without changing execution

Place every inserted Verus-only block between full-line markers:

```rust
// vermilion:annotation-begin contract
    ensures result == old(value),
// vermilion:annotation-end
```

The accepted region kinds are `wrapper`, `import`, `contract`, `loop`,
`ghost`, `attribute`, `spec-impl`, `result-prefix`, and `result-suffix`; each
has a conservative content check. A `spec-impl` may contain only a `View`
definition or `IndexSpecImpl::index_req`, never an executable method. The
paired result regions add Verus's named-result parentheses/name around the
untouched upstream return type, then erase back to that type. Regions cannot
nest and must be nonempty and balanced. The checker erases them, parses the
remainder as a Rust token stream, and requires token-for-token equality with
the corresponding pristine file. This permits whitespace-only movement of an
upstream brace to insert a contract, but not an executable token change.
Cargo metadata and any non-Rust source remain byte-identical, and the relative
`src/` inventories must match exactly. Only verification-side
`src/generated/` and `src/proofs/` are excluded from that comparison: these
are colocated Lean output and editable twins, not Rust source.

Run the local guard without a fetched checkout:

```console
./scripts/test_aeneas_sha3_sources.sh
```

Run the current annotated slice through Vermilion and the same guard:

```console
./case-studies/aeneas/sha3/run.sh
```

Generated Lean is recreated under `verification/src/generated/algos/`; the
tracked proof twins stay beside it under `verification/src/proofs/algos/`.

`check_sources.sh` additionally checks the pristine role against the pinned
Git commit/tree/blobs. The Rust unit tests deliberately exercise executable
edits, missing and extra files, malformed/nested markers, and executable
content mislabeled as a contract.

## Reproduce the upstream baseline

```console
./case-studies/aeneas/sha3/fetch.sh
./case-studies/aeneas/sha3/check_sources.sh
./case-studies/aeneas/sha3/check_upstream.sh
```

`fetch.sh` clones the exact commit into ignored `_work/upstream`;
`check_pin.sh` verifies its commit, tree, selected blobs, and tracked-file
cleanliness; and `check_sources.sh` checks both tracked Rust/Cargo copies
against that pristine source. Set `AENEAS_SHA3_CHECKOUT` or pass a checkout
path directly to the checking scripts to reuse an existing checkout.

The two upstream baselines remain separate from Vermilion verification:

1. `cargo test --locked` runs with the repository's pinned Rust toolchain;
2. `lake build` checks the upstream Aeneas proofs against their pinned Aeneas,
   `sha3.lean`, and Lean revisions.

Pins and blob identities are recorded in [SOURCE.md](SOURCE.md).

## Baseline status (2026-07-20)

| Check | Result |
|---|---|
| Pin and source integrity | **Pass:** pinned commit/tree and 13 selected blobs; 10 pristine files match their blobs; 7/7 verification Rust files preserve executable tokens after erasing 86 typed regions; 3/3 metadata files are byte-identical. |
| Pinned upstream Cargo | **Pass:** 31 passed, 1 ignored, 0 failed. |
| Local pristine Cargo | **Pass:** 31 passed, 1 ignored, 0 failed. |
| Local verification Cargo | **Pass:** 31 passed, 1 ignored, 0 failed. |
| Root Vermilion Cargo workspace | **Pass** with both standalone packages excluded from the root workspace. |
| Tuple/index/state/bit/byte/slice regressions | **Pass:** c148–c181 cover tuple parameters and assignment, custom mutable indexing, concrete associated output, private-state mutation, exact variable-count rotation, native u64 little-endian conversion, checked slice loops, immutable/mutable slice ranges, transparent dereference views, and immutable array suffix ranges. Differential parity is 180/180 with 88/88 failure-span agreement. Abstract generic projections and non-exact delegated closure contracts remain suite-pinned as lowering refusals. |
| Annotated unchanged permutation + byte-copy layer | **Pass:** pinned Verus reports 52 verified, 0 errors; Vermilion verifies all 198 obligations across 25 proof-twin units with no `sorry`. Coverage includes `default`, dereference views, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to`. Remaining production bodies stay explicitly outside the present claim. |
| Proof/generated editor discovery | **Pass:** proof roots are discovered automatically, generated roots use the on-demand Lake overlay, and the suite builds all non-differential twin libraries. It also constructs fresh sibling-`Specs` roots, so new proof directories do not require a hand-edited Lake registration. |
| Verus fork regression | **Pass:** fork `0bb5732ae…` passes the full upstream `rust_verify_test` suite, including 19/19 Cargo integration tests; vstd rebuild is 1,972 verified, 0 errors and the slice binary is 25/25. Native positive/negative tests cover endian contracts and immutable/mutable range values, owner writeback, bounds, and copy-length failures. The setup cache records and rebuilds the exact pin. |
| Next parity frontier | Close absorb, squeeze, sponge, and the six public functions; finally build a zero-axiom bridge that imports freshly generated `algos.Specs` and pinned `Sha3.Spec` and proves their definitions equivalent directly. Current final parity is 0/6. |
| Pinned upstream Lean | **Pass:** the clean 6,822-target build completed, including `Shars.Verification.Sponge` and the top-level `Shars` package. |

The technical acquisition, source-preservation, permutation, endian,
immutable/mutable range-copy infrastructure, unchanged prefix-XOR, and
unchanged `copy_to` gates are complete. The next gate is absorb, followed by
squeeze, sponge, and the public wrappers; exact external
specification equivalence and provenance clarification remain separately open.
