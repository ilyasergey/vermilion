# SHA3 parity progress ledger

**Status (2026-09-23):** SHA-3 work is paused while dalek-lite is active.
Counts and verifier revisions below are recorded checkpoint evidence, not a
fresh run. See the [status hub](../README.md) for the active plan and current
toolchain. Acquisition-source pins remain unchanged.

This file records reproducible milestone evidence for the unchanged scalar
`AeneasVerif/sha3.rs` acquisition. The normative scope and completion gates
are in [PARITY_SCOPE.md](PARITY_SCOPE.md) and [../PLAN.md](../PLAN.md); source
identities are in [SOURCE.md](SOURCE.md). This standalone project is an
**AeneasVerif** artefact, not Microsoft SymCrypt/SymCRust SHA-3.

## 2026-07-20 — unchanged `StateArray::copy_to`

The executable `copy_to` body now refines an exact recursive specification
that serializes each state lane to little-endian bytes and handles the final
partial lane. The contract, loop invariants/decreases, and ghost assertions
are erased by the source guard; no upstream executable Rust token changed.

Pinned Verus reports **52 verified, 0 errors**. Vermilion kernel-checks
**198/198 obligations** across **25 proof twins** with no `sorry`. The guard
preserves all **7 Rust files** and **3 metadata files** after erasing **86
typed annotation regions**.

The required lowering changes are independently tested. The reserved
`Deref::deref` and array-to-slice models may fold a model-transparent result
equality; only the exact array-to-slice coercion may select it among multiple
postconditions. This establishes the dereference view used by the copy loop.
Exact immutable array `Range`/`RangeFrom` indexing delegates through the
existing slice contract and `Seq.subrange` model; mutable array ranges remain
fail-closed. c178–c181 cover both successful forms and reject incorrect
results. The complete differential corpus is **180/180 verdict parity** with
**88/88 failure-span agreement**; median slowdown is **16.33×**, an
informational performance-target miss rather than a verification failure.

This closes an in-scope Aeneas intermediate theorem, not the six public
results. Public same-spec parity remains **0/6**. Remaining work is the pinned
Aeneas dependency closure for absorb, squeeze, sponge, and the six public
SHA3/SHAKE bodies, followed by the direct zero-added-axiom bridge importing
fresh `algos.Specs` and exact pinned `Sha3.Spec`. See
[PARITY_SCOPE.md](PARITY_SCOPE.md) for the explicit in/out-of-scope inventory.

## 2026-07-20 — remove diagnostic-only `recommends` clauses

All 15 `recommends` clauses were removed from the SHA3 verification source.
The pinned Verus guide defines these clauses as lightweight diagnostics rather
than logical preconditions: callers are under no obligation to establish them,
and ordinary verification checks them only while diagnosing another failure
(unless `spec(checked)` explicitly requests checking). None of the SHA3
functions used `spec(checked)`.

The clauses had accumulated while the recursive sequence specifications were
introduced one helper at a time. They repeated fixed state lengths and loop
index domains already established by the executable contracts and invariants,
but they did not contribute assumptions to the specification functions. The
generated Lean definitions before and after removal are identical except for
their Rust source-location comments. No replacement axiom, requirement, or
suppressed check was added.

Focused validation is unchanged: pinned Verus reports **47 verified, 0
errors**; Vermilion checks **169/169** obligations across **22** twins with no
`sorry`; and the guard preserves all **7** Rust files and **3** metadata files
after erasing **78** typed regions. New specifications, beginning with
`copy_to`, should remain total and avoid `recommends` unless a diagnostic
domain materially improves the interface.

The unrestricted six-phase suite also passes all **48** runners,
deterministic emission, incrementality/fail-closed/evidence/editor-root gates,
and the complete **176/176** differential corpus with **86/86** failure-span
agreement. Its median slowdown was **15.92×**, still a performance-target miss
rather than a verification failure. A first sandboxed attempt reached phase 4
before `/dev/stderr` rejected the suite's diagnostic `tee`; the permitted
filesystem rerun is the recorded complete result.

## 2026-07-20 — mutable slice ranges and copy contracts

### Verus contract surface

Fork commit `0bb5732ae6afa6eabf3843e34bc554223b67be8f` is pushed to
`ilyasergey/verus:dev` and is the new Vermilion pin. It adds the vstd contract
surface needed by the unchanged `StateArray::copy_to` body:

- `ExSliceIndex::index_mut` inherits the concrete index requirement;
- mutable `usize` indexing returns the old element and writes its future value
  back to the exact owner slot;
- mutable `Range<usize>` indexing returns the old subrange and reconstructs the
  final owner as old prefix + returned-slice future + old suffix;
- mutable `RangeFrom<usize>` does the same without a suffix; and
- generic slice `IndexMut` delegates to those exact concrete contracts.

The pre-existing `copy_from_slice` specification already requires equal
lengths and equates the destination future with the source view. No extra
copy axiom or special-purpose SHA3 contract was necessary. Verus native tests
exercise both successful owner reconstructions, out-of-bounds indexing, and
unequal copy lengths. Release vstd rebuilds at **1,972 verified, 0 errors**;
the slice test binary passes **25/25**; and the complete release
`rust_verify_test` run passes, including all **19/19** Cargo integration tests.
The first sandboxed Cargo run was DNS-blocked; its network-enabled rerun is the
recorded clean result.

### Vermilion lowering and trust boundary

The exact core `SliceIndex::Output` projection for `Range`/`RangeFrom` over a
slice is normalized to that slice type because the external core trait emits
no monomorphic associated-type equation in SST. All other unresolved
projections remain fail-closed. The existing delegated range-contract handler
now recognizes `SliceIndex::index_mut`, obtains the owner and returned-slice
futures from the existing prophecy registry, and emits the exact initial view
plus final-owner reconstruction with the existing `SeqAdd` IR operation. The
call path also restores the inherited range bounds for `IndexMut`, just as it
already did for immutable `Index`.

`copy_from_slice` then flows through the ordinary call-contract rule: its
length requirement becomes a call obligation and its final-destination fact
constrains the returned sub-slice future. This milestone adds no neutral-IR
constructor, Lean VC-generation rule, axiom, or trusted copy primitive.

The setup script was tightened at the same boundary. It now records the exact
commit used to build `rust_verify` and forces a rebuild when the pin changes;
the old marker-only cache check could move the checkout while accidentally
reusing an older binary. Its export-marker test now searches the binary
directly, avoiding the `strings | grep -q`/`pipefail` SIGPIPE false failure.
The resulting binary reports version `0bb5732`.

### Differential and whole-suite evidence

Five dedicated Verus/Vermilion parity cases cover the delivered behavior:

| Case | Expected result |
|---|---|
| c173 | mutable `dst[1..3]` copy reconstructs prefix + `src` + suffix |
| c174 | a wrong final owner reconstruction is rejected at the postcondition |
| c175 | mutable `dst[3..]` copy reconstructs prefix + `src` |
| c176 | an out-of-bounds mutable range and its unequal copy are both rejected |
| c177 | a `RangeFrom` copy with unequal lengths is rejected |

The complete differential corpus is **176/176 verdict parity** with
**86/86 failure-span agreement**. The measured median slowdown is **15.44×**,
still a performance-gate miss rather than a verification failure. The full
six-phase suite passes all 48 registered runners, SHA3 source preservation,
deterministic emission, incrementality and fail-closed checks, all proof
libraries, and fresh sibling-`Specs` editor roots.

### Effect on the SHA3 result and next step

At this earlier infrastructure checkpoint, the claimed SHA3 implementation
surface remains **47 verified / 0 errors** in Verus and **169/169** Lean
obligations across **22** proof twins with no `sorry`. All 7 Rust files and 3
metadata files still pass the guard after erasing 78 annotation regions. The
language/runtime blocker for `copy_to` was closed. The next stage was to add
only an annotation contract, loop invariants/decreases, a lane-to-little-
endian-byte sequence model, and proofs around the unchanged `copy_to` body.
After that, the plan proceeds to absorb/squeeze and the six public scalar
entry points.

## 2026-07-20 — unchanged `StateArray::xor`

### Verified implementation surface

The executable body of `StateArray::xor` is now part of the checked SHA3
surface. Its annotation-only contract states that XORing the prefix `other`
produces the recursive logical update `xor_spec_from(old(self)@, other@, 0)`.
The loop and its nested unchanged helper carry the prefix relation, bounds,
and decreasing suffix needed to prove that contract. No executable Rust token,
type, branch, call, or public signature changed.

Together with the preceding permutation and endian milestones, the scalar
result at that milestone was:

- pinned Verus: **47 verified, 0 errors**;
- Vermilion: **169/169 Lean obligations** across **22 proof-twin units**, with
  no `sorry` (24 newly automatic and 145 discharged by tracked twins on the
  latest clean SHA3 run); and
- source preservation: all 7 upstream Rust files, all 3 metadata files, and
  executable-token identity after erasing **78 typed annotation regions**.

That was still a partial scalar result. `copy_to`, absorb/squeeze, `sponge`, the
six public SHA3/SHAKE functions, and the exact pinned `Sha3.Spec` bridge remain
open. Mutable sub-slice write-back and the precise `copy_from_slice` contract
later landed; the current `copy_to` result is recorded at the top of this
ledger.

### Loop-condition safety support

Verus evaluates checked arithmetic used by a `while` condition before it can
decide whether the condition is true. Its SST therefore puts overflow
assertions (and matching assumptions) in the condition setup. Vermilion now
retains those assertions and proves them from type facts and loop invariants
at an arbitrary loop head, before branching on the condition. Assertions in a
short-circuited arm are guarded by that arm's reachability condition. Once the
head checks are proved, they are valid exit facts for the final condition
evaluation.

This is a Rust-lowering composition of the existing `Assert`, `Branch`, and
`Loop` forms. It adds no textual-IR constructor, Lean VC-generation rule,
axiom, or trusted arithmetic shortcut. c170 checks the successful checked-
arithmetic loop, c171 pins an insufficient-bound failure to the same Rust span
as Verus, and c172 checks short-circuit guarding. The complete differential
corpus is now **176/176 verdict parity** with **86/86 failure-span agreement**
after c173–c177; the measured median slowdown is 15.44×, a performance miss rather than a
verification failure. The six-phase suite passes all 48 registered runners,
deterministic emission, incrementality/fail-closed checks, all proof libraries,
and fresh editor roots.

## 2026-07-20 — immutable executable slice ranges

### Capability delivered

The first executable-subslice boundary is now implemented without changing the
SHA3 source. Vermilion recognizes only the concrete core
`SliceIndex::index` contracts for `Range<usize>` and `RangeFrom<usize>` and
lowers their results to the existing `Seq::subrange` model:

- `&src[start..end]` requires `start <= end && end <= src.len()` and returns
  exactly `src@.subrange(start, end)`; and
- `&src[start..]` requires `start <= src.len()` and returns exactly
  `src@.subrange(start, src.len())`.

This is deliberately narrow. Other delegated `FnDef` closure contracts still
fail closed, and mutable range indexing is not inferred from the immutable
case. During implementation, differential testing exposed that Verus's SST
delegates the range result contract but does not carry the inherited `Index`
trait precondition into that closure. Vermilion therefore reconstructs the
exact bounds requirement together with the result contract. Omitting that
requirement would have made out-of-bounds range operations spuriously
verifiable.

The pinned Verus fork is now
`32259d40b05103fbeab45142dd51c3557f6426c8`. It adds the missing vstd
`RangeFrom<usize>` slice-index specification and positive/negative native
regressions. `Range<usize>` was already specified upstream. The full Verus
`rust_verify_test` suite passes, including 23/23 slice tests, and the rebuilt
release vstd reports 1,972 verified, 0 errors.

### Differential and whole-suite evidence

Six dedicated cases pin both values and safety conditions:

| Case | Expected result |
|---|---|
| c164 | `&src[1..3]` has exactly the expected two-element view |
| c165 | a wrong `Range` view assertion fails at the same Rust span |
| c166 | `&src[1..]` has exactly the expected suffix view |
| c167 | a wrong `RangeFrom` view assertion fails at the same Rust span |
| c168 | an out-of-bounds `Range` call is rejected |
| c169 | an out-of-bounds `RangeFrom` call is rejected |

The complete six-phase Vermilion suite passes all 48 runners, SHA3 source
preservation, deterministic emission, incrementality and fail-closed checks,
all proof libraries, and fresh editor roots. The differential corpus is now
168/168 verdict parity with Verus and 82/82 failure-span agreement. Its median
slowdown is 17.52× across 168 timed cases; this remains a performance miss
against the historical target, not a verification or soundness failure.

### Effect on the SHA3 result

This capability milestone does not expand the claimed SHA3 proof surface by
itself. The unchanged working copy still checks as 43 verified, 0 errors in
Verus and 142/142 Lean obligations across 20 twins with no `sorry`, covering
Keccak-p through `xor_lane`. `xor` remains explicitly external until its
annotation-only contract, loop invariant, and proof are committed. The next
stage is therefore to verify unchanged `StateArray::xor` using the landed
immutable range semantics. Mutable range prophecy/write-back and a precise
`copy_from_slice` contract are then required for `copy_to` and sponge output.

## 2026-07-20 — unchanged Keccak-p and first byte/state layer

### Verified implementation surface

The annotated working copy retains the upstream executable Rust and now proves:

- private `StateArray` view, clone/default, tuple-keyed `Index`/`IndexMut`;
- θ, ρ, π, χ, ι, `round`, and the 24-round `keccak_p` loop;
- exact u64 little-endian encode/decode behavior used by `xor_byte_at`; and
- unchanged `xor_byte_at` and `xor_lane` state updates.

The following functions are still explicitly `external_body`: `Deref`,
`DerefMut`, `xor`, `copy_to`, absorb-initial/final, absorb, squeeze, sponge,
SHA3-224/256/384/512, and SHAKE128/256. Consequently this checkpoint is an
implementation milestone, not the upstream six-theorem parity result.

### Source-preservation evidence

`./scripts/test_aeneas_sha3_sources.sh` and the SHA3 runner report:

- all 7 upstream Rust source files remain present;
- erasing 76 typed annotation regions restores the pristine executable token
  streams;
- 0 non-Rust source files and all 3 metadata files are byte-identical; and
- the pristine project remains tied to SHA3 commit
  `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`.

### Verification evidence

- Pinned Verus fork: `c329046d2af46bbc68db94acae3e22b2ef4e6df4`.
- Annotated `algos.rs`: 43 verified, 0 errors in Verus.
- Vermilion SHA3 runner: 142/142 Lean obligations, 20 proof-twin units,
  0 `sorry`; the latest clean run classified 11 as newly automatic and 131 as
  discharged by tracked interactive twins.
- Full Verus `rust_verify_test`: pass; rebuilt vstd: 1,972 verified, 0 errors.
- Full six-phase Vermilion suite: pass across 48 runners, deterministic
  emission, incrementality/fail-closed/evidence checks, all registered twin
  libraries, and editor root integration.
- Differential corpus: 162/162 verdict parity and 78/78 failure-span
  agreement. New c160–c163 pairs cover native u64 endian conversion and
  canonical slice-length `while` conditions, including negative assertions.

The differential harness measured a 17.25× median slowdown versus Verus over
162 timed cases. This exceeds the historical M2 performance target but is not
a soundness or parity failure; performance work remains independent of the
SHA3 correctness gate.

### Infrastructure delivered for this slice

The Verus fork gives native `u64::to_le_bytes`/`from_le_bytes` exact vstd
contracts and normalizes unevaluated const array lengths before assume-spec
signature comparison. Vermilion provides the matching stable byte registry
and Lean definitions. Lowering now recognizes the canonical Verus
while-condition setup even when pure setup statements precede its boolean
branch, moves borrow-resolution effects to loop exit, and havocs the root
object (with its root type) for projected writes such as `buf[i] = ...`.

The source guard accepts public Verus spec declarations in typed annotation
regions while still rejecting executable functions disguised as specs. The
build-all and differential editor tests confirm that a newly created proof or
generated directory importing its sibling `Specs.lean` is Lake/VS Code
resolvable without a per-directory lakefile edit.

### Parity stages (updated after the later `copy_to` milestone)

1. Unchanged `StateArray::xor` is complete.
2. **Implementation complete through `copy_to`:** immutable/mutable executable
   `Range`/`RangeFrom` views, prophecy writeback, inherited bounds, and
   `copy_from_slice` length/final-state contracts are pinned by c164–c181, and
   unchanged `copy_to` is proved within the 198-obligation result.
3. Verify absorb-initial/final, absorb, the unconditional squeeze loop, and
   `sponge`, including all bounds and termination obligations.
4. Verify the six public functions matching upstream
   `algos.sha3_224.spec`, `sha3_256.spec`, `sha3_384.spec`, `sha3_512.spec`,
   `shake128.spec`, and `shake256.spec`.
5. Build an audited compatibility bridge to pinned `sha3.lean`
   `1a649d5bb6da9272815831a0667c4b62ad388dc1`. It must import the freshly
   generated `algos.Specs` and exact `Sha3.Spec` modules, then prove the
   representation, Keccak, sponge, and six public equivalences directly
   between those imported names. No third restatement counts; audit the final
   theorems for zero added axioms and build the bridge after VC generation.

Only after step 5 is the scalar result equivalent in scope to upstream Aeneas.
Full-crate breadth (`lib.rs`, `simple.rs`, tests, and the upstream-unproved
NEON module) is a stretch goal after that parity milestone.
