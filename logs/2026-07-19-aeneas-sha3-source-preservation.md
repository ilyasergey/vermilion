# 2026-07-19 — Aeneas SHA-3 source-preservation gate

## Outcome

The two complete local `sha3.rs` projects now have a suite-enforced boundary:
annotations may be added directly to `verification/src/`, while the guard
checks that erasing them leaves the pristine executable Rust token stream and
that no upstream source path disappears.

- `vrml_source_guard` compares the exact relative `src/` inventory, rejects
  symlinks, and requires `Cargo.toml`, `Cargo.lock`, and `rust-toolchain` to
  remain byte-identical.
- Rust annotation additions use balanced, non-nested, typed full-line marker
  regions. The accepted roles are wrapper, import, contract, loop, ghost, and
  attribute, and paired named-result prefix/suffix additions around the
  untouched upstream return type. The erased verification file and pristine
  file must tokenize to exactly the same Rust tokens.
- Non-Rust files under `src/` remain byte-identical. `check_sources.sh`
  separately verifies the immutable `upstream/` files against the pinned Git
  commit/tree/blob identities.
- The complete SHA-3 baseline currently covers 7/7 Rust files and 3/3 metadata
  files with zero annotation regions. This is not a SHA-3 correctness claim.

## Focused verification

- `cargo test -p vermilion_backend --bin vrml_source_guard`: 6/6 passed.
- `./scripts/test_aeneas_sha3_sources.sh`: passed for the two tracked local
  projects.
- `./case-studies/aeneas/sha3/check_sources.sh`: pinned commit/tree/13 blobs
  passed; ten pristine files match the checkout; the verification source guard
  passed.
- Complete six-phase Vermilion suite: 47/47 example/case-study runs;
  determinism, incrementality, ill-typed rejection, evidence lifecycle, and all
  twin libraries passed; differential verdict parity is 150/150 and
  failure-span agreement is 72/72.

The unit coverage accepts contract and named-result erasure and rejects changed
executable tokens, executable content disguised as a contract region,
malformed/nested/unclosed regions, and missing or extra source files.

## Next gate

Normalize a statically resolved `Index::Output` projection to its concrete impl
type in Vermilion, with positive and unresolved/refusal differential tests.
Then introduce the first state-wrapper and `iota` annotations directly in the
verification copy under this guard.
