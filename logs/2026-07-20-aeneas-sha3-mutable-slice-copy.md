# Aeneas SHA-3 mutable slice-copy infrastructure

Date: 2026-07-20

## Objective and milestone boundary

The next unchanged `sha3.rs` body, `StateArray::copy_to`, uses mutable slice
ranges followed by `copy_from_slice`. Before annotating that consumer, this
stage established the exact generic Verus/Vermilion semantics in isolation.
It is intentionally an infrastructure milestone: the verified SHA3 body count
does not increase here.

The required behavior is:

1. `&mut dst[start..end]` or `&mut dst[start..]` initially views exactly the
   selected old owner range;
2. mutations through the returned reference are reflected in the final owner,
   while the untouched old prefix and suffix remain unchanged;
3. `copy_from_slice` requires equal lengths and makes the returned reference's
   final value equal the source view; and
4. out-of-bounds ranges and unequal copy lengths remain proof obligations at
   their Rust call sites.

## Verus fork stage

The Verus work was performed in an isolated clone and committed before moving
Vermilion's pin. Commit
`0bb5732ae6afa6eabf3843e34bc554223b67be8f` (`Specify mutable slice range
indexing`) was pushed to `ilyasergey/verus:dev`.

The fork changes:

- make `ExSliceIndex::index_mut` inherit the concrete index requirement;
- specify mutable `usize` indexing with exact initial element and final slot
  writeback;
- specify mutable `Range<usize>` indexing with an initial old subrange and
  final owner `old-prefix + final-view + old-suffix`;
- specify mutable `RangeFrom<usize>` with the analogous relation and no
  suffix; and
- delegate generic slice `IndexMut` to those concrete specifications.

The pre-existing vstd `copy_from_slice` contract was sufficient: it requires
equal lengths and equates the destination future with the source sequence. No
SHA3-specific trusted contract was added.

Native Verus regressions cover successful bounded and suffix writeback, wrong
contents, range bounds, and copy-length mismatch. Validation results:

- release vstd: **1,972 verified, 0 errors**;
- dedicated slice regression binary: **25/25 passed**; and
- complete `rust_verify_test`: **passed**, including **19/19** Cargo
  integration tests.

The first complete test attempt in the restricted sandbox reached the Cargo
integration phase and failed only because DNS access to the package index was
blocked. The permitted network rerun completed cleanly; no code or test change
was made to turn that environmental failure into the recorded pass.

## Vermilion lowering stage

Vermilion's pin in `scripts/setup_verus.sh` now names the exact fork commit.
The setup script also records `.vermilion-built-pin` and rebuilds
`rust_verify` when the requested pin changes. This closes a cache bug where a
checkout could move to a new commit while an older executable remained in
use. The export-hook check now searches the binary directly with `grep -a -q`;
the former `strings | grep -q` pipeline could report `strings`' expected
SIGPIPE as failure under `pipefail`. The checked binary reports Verus version
`0bb5732`.

The Rust SST adapter in `crates/vermilion_direct/src/lower.rs` now:

- normalizes `core::slice::index::SliceIndex::Output` to the slice type only
  for the resolved `Range`/`RangeFrom`-over-slice implementations;
- recognizes exact delegated `SliceIndex::index_mut` contracts in addition to
  immutable `index` contracts;
- locates the owner and returned-view futures through the existing mutable
  prophecy registry;
- emits the initial `Seq::subrange` equality and exact final-owner
  reconstruction with existing `SeqAdd`; and
- restores inherited `IndexMut` bounds when the delegated SST closure omits
  them, matching the established immutable handling.

The match deliberately remains narrow. Unresolved associated projections,
other function-item closure contracts, non-slice receivers, and unsupported
range forms still fail closed. `copy_from_slice` itself follows the ordinary
call-contract lowering path.

No neutral-IR constructor, Lean VC-generation rule, Lean axiom, or trusted
copy primitive was introduced. The proof composes existing call requirements,
post-call hypotheses, subranges, sequence concatenation, and mutable-reference
prophecies.

## Differential evidence

Five dedicated cases were added:

| Case | Expected behavior |
|---|---|
| `c173_slice_range_mut_copy_ok.rs` | bounded mutable range copies and reconstructs prefix/source/suffix |
| `c174_slice_range_mut_copy_wrong.rs` | wrong final owner contents are rejected |
| `c175_slice_range_from_mut_copy_ok.rs` | mutable suffix copies and reconstructs prefix/source |
| `c176_slice_range_mut_copy_bounds.rs` | out-of-bounds mutable range is rejected |
| `c177_slice_range_from_mut_copy_len.rs` | unequal suffix/source lengths are rejected |

The unrestricted `./scripts/run_suite.sh` result is:

- all **48/48** registered runners passed;
- differential verdict parity: **176/176**;
- failure-span agreement: **86/86**;
- measured median slowdown: **15.44×** (a performance-target miss, not a
  correctness failure);
- deterministic emission, incrementality, ill-typed/fail-closed/evidence
  checks, every proof library, source preservation, and fresh editor roots all
  passed.

The pinned cargo formatting tool proposes unrelated formatting changes in
pre-existing lowerer files, while the system Cargo version cannot parse the
fork's edition-2024 dependency. No bulk formatting rewrite was accepted; the
new code follows the pinned formatter's local preferred shape and the complete
compile/test suite is the validation gate.

## SHA3 status after this stage

Because no SHA3 implementation annotation was added, the honest verified
surface remains:

- pinned Verus: **47 verified, 0 errors**;
- Vermilion/Lean: **169/169 obligations** in **22 proof-twin units**, with no
  `sorry`;
- source guard: all **7** upstream Rust files and **3** metadata files present,
  with executable-token identity after erasing **78** typed annotation
  regions.

This closes the measured language/runtime blocker for `copy_to`; it does not
claim that `copy_to` itself is proved. The next independent stage is to add an
annotation-only contract and loop proof to its unchanged Rust body, using an
exact lane-to-little-endian-byte sequence specification. After that, proceed
through absorb/squeeze, `sponge`, the six public SHA3/SHAKE functions, and the
zero-axiom bridge to the pinned Aeneas `Sha3.Spec`. Whole-source breadth beyond
that scalar Aeneas-equivalent result remains the stretch goal.
