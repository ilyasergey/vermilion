# Subsuming Aeneas artefacts — execution plan

*Companion to [README.md](README.md), the detailed
[corpus notes](corpus-notes.md), and the measured
[gap matrix](gap-matrix.md). Current checkpoint: 2026-07-20.*

## Goal and success criterion

Vermilion should reproduce the Lean-backed Aeneas crypto results against the
same mathematical specifications, with Lean as the only checker and no added
axioms. The three targets are:

1. curve25519-dalek limb multiplication;
2. the standalone [AeneasVerif/sha3.rs](https://github.com/AeneasVerif/sha3.rs)
   scalar SHA-3/SHAKE library; and
3. the SymCRust ML-KEM scalar core.

Targets 2 and 3 are distinct: the active SHA3 case study is the standalone
**AeneasVerif/sha3.rs** repository, not Microsoft SymCrypt/SymCRust SHA-3.
Their sources, proof claims, and evidence must never be conflated.

For the next target, “same artefact” means that the executable Rust remains
unchanged. We may add Verus contracts, loop invariants, decreases clauses,
spec/ghost definitions, and proof annotations to the files. A port to a
plain-array implementation, or any change to an executable expression, type,
control-flow edge, or public API, does not satisfy this gate.

Subsumption is reached when all three targets are kernel-checked against the
same external specifications, the source and specification revisions are
pinned, the axiom audit is clean, and the proof/automation cost is reported
against the upstream Aeneas proof.

## Current status

| Target or prerequisite | Status on 2026-07-20 |
|---|---|
| T1 curve25519 | **Complete.** The unchanged dalek `mul_internal` body generates 38 obligations. A clean generated run can close all 38 with `scalar_saturate`; the tracked fast twins retain 9 ladder proofs and 29 explicit proofs. A zero-axiom `ring` bridge proves the Aeneas `asNat` theorem. |
| SymCrypt arithmetic beachhead | `mod_reduce` and `mont_mul` without the one front-end-inexpressible assertion are verified. The Montgomery bridge identifies the Vermilion result with `Symcrust.mont_reduce.spec`. |
| Array repeat and indexed writes | **Landed.** `[v; N]`, local indexed array assignments, and indexed assignments through `&mut [T; N]` lower. |
| Unsigned wrapping arithmetic and saturation | **Landed.** The vstd wrapping mirror and `scalar_saturate` rung are in the Lean library. General `shr`/mask bridge lemmas remain open in issue #35. |
| `debug_assert!` accommodation | **Landed** in the pinned Verus fork for statically checkable assertions. |
| Tuple-pattern function parameters | **Landed** in fork commit `1fc6a46d156165be82c1ab3377c25f8a0925929f` (building on `35f326826…`). Verus lowering and executable erasure introduce entry destructuring for flat/nested/wildcard/mutable patterns, including contracts. Verus function regressions pass 11/11. |
| Custom tuple-keyed `IndexMut` and returned `&mut` | **Landed** in the same fork pin plus Vermilion's returned-reference propagation. Differential c150/c151 give positive/negative parity; c150 verifies all 11 Lean obligations and c151 is rejected at the same assertion as Verus. At that milestone the corpus was 150/150 with 72/72 failure-span agreement. |
| Tuple-destructuring assignment | **Landed** in fork commit `7734d271ad796ba134200fd2fa8ac1e706200342`. Verus translates rustc's evaluate-once synthetic tuple declaration plus ordinary component assignments, preserving simultaneous swap semantics and erasure. Native positive/negative tests and c156/c157 pin that milestone; exact rotation below has since cleared its next boundary. |
| Exact unsigned `rotate_left` | **Landed** in fork history and retained by current fork `0bb5732ae6afa6eabf3843e34bc554223b67be8f`; Vermilion mirrors it through `Vermilion.Vstd.Rotate`. Each unsigned width reduces the shift modulo its bit width and handles the zero case without an invalid full-width shift. Verus native tests plus c158/c159 cover variable, zero, width, oversized, and wrong-result cases. |
| Native u64 little-endian conversion | **Landed** in ancestor fork commit `c329046d2…` and retained by `0bb5732ae…`: exact vstd contracts for native `to_le_bytes`/`from_le_bytes`, plus assume-spec const-array-length normalization. `Vermilion.Vstd.Bytes` supplies the matching definitions and c160/c161 pin positive/negative parity. |
| Canonical while setup and projected-write havoc | **Landed in Vermilion.** Pure setup statements before Verus's boolean loop branch are evaluated, borrow resolutions are placed at loop exit, and writes such as `buf[i] = ...` havoc the correctly typed root object. c162/c163 exercise the actual slice-length mutation shape. |
| Checked assertions in while-condition setup | **Landed in Vermilion.** Overflow and other setup assertions are proved from type facts plus invariants before the condition is assumed; short-circuit-arm assertions retain reachability guards, and established checks become exit facts. This composes existing `Assert`/`Branch`/`Loop` forms without a new IR or VCGen rule. c170–c172 pin success, matching failure span, and short-circuit behavior. |
| Immutable executable slice ranges | **Landed.** The current fork retains the missing `RangeFrom<usize>` slice-index specification. Vermilion recognizes only the concrete core `Range`/`RangeFrom` delegated contracts, reconstructs their inherited bounds requirements, and returns the exact `Seq::subrange` view. c164–c169 pin correct range/suffix values, wrong results, and both out-of-bounds failures; that landing checkpoint was 168/168 with 82/82 failure-span agreement. |
| Mutable slice ranges and `copy_from_slice` | **Landed.** Fork `0bb5732ae…` specifies mutable `usize`/`Range`/`RangeFrom` indexing, including initial subview and exact final-owner reconstruction. Vermilion normalizes only the matching core `SliceIndex::Output`, lowers the delegated `index_mut` contract through existing prophecy futures, restores inherited bounds, and composes the ordinary `copy_from_slice` length/final-state contract. c173–c177 prove both range forms and reject a wrong writeback, out-of-bounds range, and unequal copy lengths; that landing checkpoint was 176/176 with 86/86 span agreement. No IR or VCGen rule was added. |
| Transparent dereference setup and immutable array ranges | **Landed in Vermilion.** The reserved `Deref::deref` and array-to-slice model calls may fold a model-transparent result equality; only the exact array-to-slice coercion may select that equality among multiple postconditions. Exact immutable array `Range`/`RangeFrom` indexing then delegates to the existing slice view. c178–c181 pin both correct results and matching wrong-result spans. Mutable array ranges remain fail-closed. The corpus is 180/180 with 88/88 span agreement. |
| Concrete associated-output normalization | **Landed** in Vermilion: a unique monomorphic associated-type impl equation resolves `Self::Output` before binder lowering; generic/ambiguous projections remain fail-closed. c152 verifies 11/11 obligations, c153 fails at line 39 in both verifiers, and the generic refusal is suite-pinned. |
| Per-function Lean emission and editor roots | **Landed and default** on 2026-07-19: one unit module per function plus one shared `Specs.lean`. All registered proof libraries discover new stems automatically. Generated stems anywhere in the repository are activated through an on-demand Lake overlay; the regression opens `keccak_iota/impl__6_index.lean` and resolves its sibling `generated.keccak_iota.Specs`. |
| T2 `sha3.rs` | **Unchanged execution verified through `StateArray::copy_to`.** [`sha3/`](sha3/) tracks separate pristine and annotation-working copies of the exact Cargo metadata and full `src/` tree. The guard erases 86 typed regions while enforcing exact inventory and executable-token identity. Default/dereference support, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to` verify as 198/198 Lean obligations in 25 proof-twin units with no `sorry`; pinned Verus reports 52 verified, 0 errors. Absorb, squeeze, sponge, six public functions, and the exact external bridge remain open, so public same-spec parity is 0/6. The corpus is 180/180 with 88/88 span agreement. See [`sha3/PARITY_SCOPE.md`](sha3/PARITY_SCOPE.md). |

The current `sha3.rs` claim is intentionally bounded at unchanged Keccak-p,
`xor`, and `copy_to`. The remaining absorb/squeeze/sponge bodies, public functions,
and exact `Sha3.Spec` bridge are explicitly outside this milestone until their
own contracts and proofs land. The evidence ledger is
[`sha3/PROGRESS.md`](sha3/PROGRESS.md).

## The exact T2 artefact

The upstream audit used `AeneasVerif/sha3.rs` at commit
`cb411d54ee0b22f88b64c79963691ff63f3ad5b4` (tree
`821339a40a2603d98947123a6f20e8e7f81b8ac7`). The repository is a Cargo
package named `shars`, uses edition 2024, and pins Rust
`nightly-2025-07-08`.

The initial verification scope mirrors what upstream proves:

- `src/algos.rs`: 561 lines containing the `[u64; 25]` `StateArray`,
  θ/ρ/π/χ/ι, Keccak-p[1600], absorb/squeeze, SHA3-224/256/384/512, and
  SHAKE128/256;
- `lean/Shars/Verification/`: 4,016 lines, culminating in the six top-level
  SHA3/SHAKE correctness theorems in `Sponge.lean`; and
- the external FIPS 202 model pinned by upstream as `ayhon/sha3.lean` at
  `1a649d5`, with Aeneas Lean support pinned at `ad86950` and Lean 4.19.0.

The whole upstream tree is nevertheless the acquired payload. `src/lib.rs`,
`src/simple.rs`, tests, toolchain files, and the newly added `src/neon.rs` stay
unchanged. The first correctness claim is explicitly the scalar `algos`
surface: upstream has no corresponding proof for `neon.rs`, so verifying that
module is neither required for parity nor silently included in the claim.

### T2 proof-scope discipline

The parity scope is the executable dependency closure of the six pinned
Aeneas public theorems `algos.sha3_224.spec`, `algos.sha3_256.spec`,
`algos.sha3_384.spec`, `algos.sha3_512.spec`, `algos.shake128.spec`, and
`algos.shake256.spec` in `Shars/Verification/Sponge.lean`. This includes the
named Aeneas intermediate theorems for `StateArray` byte operations,
θ/ρ/π/χ/ι, Keccak-p, absorb, squeeze, and sponge, as well as small executable
bodies which the Aeneas proofs deliberately unfold instead of naming (for
example `Default::default`, `Deref::deref`, and `sponge_absorb`). Vermilion may
give such an unfolded body a local contract to reproduce that proof
decomposition, but it must not report it as a broader upstream result.

The parity runner must maintain an auditable theorem-to-Rust allowlist from
the exact pinned Aeneas verification sources and reject accidental scope
growth. It must not attempt or claim correctness for `src/lib.rs`,
`src/simple.rs`, `src/neon.rs`, the Rust test module, or any other function
outside that dependency closure. Those files remain present and source-guarded
because the complete upstream `src/` tree is the acquired artefact; any later
verification of them is a separately labelled stretch result after parity.

The audited revision contains no detectable license file and no `license`
field in `Cargo.toml`. The two requested local source copies are therefore
tracked as an explicitly provenance-unresolved research snapshot; their
presence must not be read as assigning a licence. Upstream clarification is
still required before a release or redistribution claim can be made.

## What “unmodified” requires

The future `case-studies/aeneas/sha3/` case study must enforce all of these:

1. A pristine `upstream/` snapshot (or fetched checkout) records the pinned Git
   tree, commit, tree hash, and selected blob hashes.
2. The verification copy may add the ordinary Verus surface needed by the
   proof: `verus!`, `requires`, `ensures`, invariants, decreases clauses,
   spec/ghost functions, proof blocks, and verification-only imports.
3. The harness checks the verification copy against the pristine source and
   allows only those annotation additions. Executable expressions, types,
   control flow, constants, visibility, module structure, and the public API
   must stay unchanged.
4. `run.sh` separately reports the upstream Rust baseline, upstream Aeneas Lean
   baseline, Vermilion lowering coverage, Vermilion proof verdict, bridge
   verdict, and axiom audit. Partial coverage is never labelled “library
   verified.”

## Features required for unchanged `sha3.rs`

Ordered by dependency, not by estimated implementation effort:

| Priority | Feature | Why the library needs it | Current state / acceptance test |
|---|---|---|---|
| P0 | Annotation-only acquisition harness | Copy the pinned scalar file and add ordinary Verus contracts, invariants, decreases, ghost/spec definitions, and named result binders while keeping every executable Rust construct unchanged. | **Landed:** `vrml_source_guard` checks exact upstream Rust inventory, byte-identical Cargo metadata/non-Rust sources, typed/non-nested annotation regions (including verification-only `View`/`IndexSpecImpl` impls and public Verus spec declarations), and identical Rust token streams after erasure. Only colocated `verification/src/generated/` and `verification/src/proofs/` Lean artefact trees are excluded. Ten unit guards include erased ghost-statement acceptance and reject executable `let` bindings, executable edits, missing/extra files, malformed regions, and executable methods/functions hidden by spec markers. |
| P0 | Custom `Index`/`IndexMut` after tuple-pattern support | `StateArray` indexes with `(usize, usize)`; writes in every Keccak step call the custom `IndexMut` impl. | **Landed:** the fork supplies the static trait contract and custom mutable indexing; Vermilion propagates the returned-reference future back to the caller. c150/c151 pin both verdicts. The unchanged probes now get past this boundary. |
| P0 | Associated-type projection normalization | The unchanged impl signatures return `&Self::Output` / `&mut Self::Output`. | **Landed:** a unique monomorphic impl equation normalizes the projection to `Lane`; c152/c153 give positive/negative parity and an abstract generic projection remains an explicit lowering refusal. |
| P0 | Private-state/index/permutation contracts | The state wrapper and tuple-keyed references must expose exact logical state updates without changing their executable bodies. | **Landed through `copy_to`:** a closed `View`, `IndexSpecImpl`, clone/default, named-result index, and transparent `Deref`/`DerefMut` contracts support unchanged θ/ρ/π/χ/ι, `round`, `keccak_p`, and byte copying. c154/c155 retain the first positive/wrong-poststate guards; c178/c179 pin dereference-view loop setup. |
| P0 | Tuple-destructuring assignment | `rho` updates `(x, y)` simultaneously from the old pair. | **Landed in the Verus fork:** rustc's existing assignment desugaring now lowers and erases; native compile/positive/negative tests plus Vermilion c156/c157 pin simultaneous and nested tuple semantics. No Vermilion IR or VCGen change was needed. |
| P1 | Exact bit-operation models, especially `u64::rotate_left` | θ and ρ rotate 64-bit lanes by one and by table-driven `u32` offsets. | **Core model landed:** pinned Verus and `Vermilion.Vstd.Rotate` agree on exact modulo-width rotation for every unsigned width; c158/c159 test zero, width, oversized and wrong-result cases. Add only the SHA-3-specific rotation/state bridge lemmas required by the round proofs. Current scalar χ uses `x ^ u64::MAX`, not Rust unary `!`, so issue #21 is useful generally but is not a blocker for this revision. |
| P1 | Little-endian byte conversion | `xor_byte_at`, `xor_lane`, and `copy_to` use `to_le_bytes`/`from_le_bytes`. | **Landed for the in-scope consumers:** current fork `0bb5732ae…` retains the native u64 conversions and Vermilion mirrors them in `Vermilion.Vstd.Bytes`; c160/c161 test both directions. Unchanged `xor_byte_at`, `xor_lane`, and `copy_to` are proved. Representation lemmas for the final external bridge remain. |
| P1 | Executable slice/array ranges and `copy_from_slice` | Absorb/squeeze use `&bs[a..b]`, `&bs[a..]`, `&mut z[a..b]`, and partial final blocks. | **Landed for every shape reached through `copy_to`:** c164–c169 pin immutable slice views/bounds; fork `0bb5732ae…` plus Vermilion's prophecy/call machinery give exact mutable slice subviews, owner writeback, bounds, and final-copy contracts; c173–c177 pin those. c180/c181 add exact immutable array suffix delegation. Attempt unchanged absorb next and add a model only if it exposes a new in-scope shape. |
| P1 | Remaining control-flow/item shapes | The file has nested local helper functions, nested `while`, short-circuit guards, and an unconditional `loop` exited by `return`; tuple assignment has landed. | **Nested helper plus checked `while` condition landed for `xor`:** c170–c172 pin pre-condition safety checks and short-circuit guarding. Probe the remaining unconditional squeeze-loop/return shape and attach its invariants/decreases. |
| P1 | External FIPS 202 package and representation bridge | The final theorem must mention the same `Sha3.Spec` definitions as upstream, not a look-alike spec. | Build a checked module whose direct dependencies include generated `algos.Specs` and pinned `Sha3.Spec`. Prove representation and public-result equivalences directly between those imported definitions; never restate either side in a third bridge spec. Regenerate `algos.Specs` before each bridge build, pin/hash the external sources, and audit the exported theorems for zero added axioms. |
| P1 | SHA-3-specific Lean library | Proofs repeatedly need lane/byte extensionality, array-update simplification, encode-index bounds, rotation facts, and absorb/squeeze list algebra. | Port general lemmas, not upstream proof scripts wholesale; use `simp`/`grind`/`bv_decide`/`omega` with interactive twins for the residual structure. |
| P2 | Compact obligation contexts and named results | A 561-line stateful file will amplify curve25519's duplicated-context and inlined-update problems. | [Issue #39](../../docs/issues/share-obligation-contexts-and-name-result-values.md); use the top-level sponge theorem as the scale test. |
| P2 | Project harness, cache, and coverage report | The case has multiple source modules, external Lake packages, and enough functions for partial progress to matter. | One `run.sh`, per-function disposition JSON, twin checking, upstream pin audit, and timing/LOC/automation report. |

The disposition report is scope-aware: every function is classified as an
upstream public theorem root, a named upstream intermediate theorem, an
upstream-unfolded support body, or out of parity scope. “Out of scope” is the
required result for theorem-less source outside the pinned Aeneas dependency
closure, not a verification failure.

The existing `ChunksExact`/`Enumerate` issue #38 applies to `src/lib.rs`'s
bit-conversion helpers, not to the upstream-proved `src/algos.rs` path. It is a
full-crate breadth requirement after the scalar correctness gate, not a reason
to rewrite `algos.rs`.

Per-function lowering isolation is likewise not a T2 prerequisite. It was
initially proposed to prevent unsupported `neon.rs` or test/helper functions
from blocking the scalar result. That concern disappears when Vermilion follows
upstream's own extraction boundary: `extract.sh algos` compiles
`src/algos.rs` directly as a library. The standalone case study can verify the
annotated scalar file with the same boundary. Isolation remains useful for
future whole-Cargo-crate coverage, but no T2 gate depends on it.

## Specification-sharing design

The first implementation should use an equivalence bridge, as curve25519 and
the SymCrypt probe already do:

1. added Verus contracts describe each unchanged implementation step;
2. Vermilion emits their mathematical content into the generated, tracked
   `verification/src/proofs/algos/Specs.lean` unit;
3. an ordinary tracked Lean bridge module explicitly writes
   `import algos.Specs` and `import Sha3.Spec` (plus proof-only supporting
   imports), so it consumes the exact current Verus-derived definitions and
   the exact pinned external definitions;
4. kernel-checked commuting lemmas identify lane arrays, byte streams,
   Keccak steps, sponge state, and finally the six public outputs; and
5. the SHA3 runner regenerates and checks all implementation VCs before it
   builds this bridge. A stale or hand-written substitute for `algos.Specs`
   is not an admissible input.

The bridge may define representation maps between Vermilion `Seq Int` values
and `Sha3.Spec` bit vectors, but it must not define a third Keccak, sponge, or
public hash specification. Its theorems must mention imported names on both
sides. The minimum staged theorem surface is lane/byte little-endian encoding,
fixed 25-lane state encoding, θ/ρ/π/χ/ι, `algos.keccak_p_loop_spec` versus
`Spec.Keccak.P 6 24`, absorb/squeeze/sponge versus `Spec.sponge`, and every
imported `algos.sha3_*_spec`/`algos.shake*_spec` versus the matching
`Spec.SHA3_*`/`Spec.SHAKE*` result.

Executable vectors are drift tests, not substitutes for universal bridge
theorems. Spec definitions and bridges add no axioms; the harness must run
`#print axioms` (or the repository's equivalent audit) on the final public
theorems.

Direct external-spec anchoring can follow later. The first acquisition does
not depend on it.

## Staged next steps

### S0 — acquire reproducibly

- obtain and record an upstream license or permission;
- create `case-studies/aeneas/sha3/` with a pin/integrity manifest, the
  annotation-only Rust verification copy, proof directories, a README, and one
  `run.sh`;
- run the unchanged upstream Cargo tests and upstream Lean build at their
  pinned toolchains; and
- record source, generated-definition, verification, and trusted-axiom
  baselines.

**Gate:** a byte-integrity check and both upstream baselines are reproducible.

**Status:** separate pristine and verification copies of the exact Cargo
metadata and complete Rust `src/` tree, pin/tree/blob integrity checking, and
fetch/baseline scripts landed on 2026-07-19. The upstream checkout and both
local copies pass 31 tests with 1 ignored test, and the clean upstream Lean
build completes successfully. The technical S0 reproducibility baseline is
closed. Licence/redistribution provenance remains unresolved and is called out
in `sha3/SOURCE.md`; live baseline results are recorded in
[`sha3/README.md`](sha3/README.md).

### S1 — annotate without changing execution

Create the annotated copy of `src/algos.rs` using normal Verus syntax. Start
with the state type and `iota`, then add contracts and loop invariants as each
subsequent function enters the proof. Every added block is placed in a typed
`vermilion:annotation-begin/end` region; the landed source guard compares the
erased Rust token stream and complete file inventory against the pinned
pristine source.

**Gate:** `iota` produces span-mapped Vermilion obligations and the harness
confirms that its executable Rust body is identical to upstream.

**Status:** complete for the first slice. The guard checks 7/7 Rust files and
3/3 metadata files. At the first-slice milestone it erased 38 regions and the
actual unchanged `iota` body verified as 12/12 obligations. The current
permutation/`xor`/`copy_to` milestone erases 86 regions and verifies 198/198
obligations across 25 proof twins with no `sorry`; pinned Verus reports 52
verified and 0 errors. c154/c155 retain the first private-state verdict guards. Uncovered
production bodies remain explicitly external.

### S2 — cross the state-wrapper boundary

Tuple parameters, custom tuple-keyed indexing, returned-reference propagation,
`Self::Output` normalization, state/index/default contracts, tuple assignment,
and exact unsigned rotation have landed. The unchanged θ/ρ/π/χ/ι bodies,
`round`, and 24-round `keccak_p` loop now verify. The subsequent immutable-
range milestone extended the corpus through c169; unchanged `StateArray::xor`
and checked condition setup extended it through c172; mutable range/copy
support extended it through c177. Transparent dereference-view setup and
immutable array ranges now extend the full corpus through c181 to 180/180
verdict parity and 88/88 failure-span agreement.

**Gate status:** the unchanged implementation is proved against its recursive
Vermilion model. Equivalence to upstream `Sha3.Spec.Keccak` remains part of the
exact external bridge gate; do not conflate the two claims.

### S3 — verify byte/state plumbing

Exact little-endian conversions, `xor_byte_at`, `xor_lane`, unchanged
`StateArray::xor`, and unchanged `StateArray::copy_to` are complete. Exact
immutable slice/array `Range` and `RangeFrom` views are available; mutable
slice owner writeback and `copy_from_slice` contracts are parity-pinned. Next
verify initial/final absorb and the squeeze loop, including all panic-freedom
bounds.

**Gate:** unchanged absorb and squeeze refine the upstream intermediate
specifications.

### S4 — close the public API

Compose the sponge theorem and prove SHA3-224/256/384/512 and SHAKE128/256
against the exact pinned FIPS 202 definitions. Run the upstream vectors through
both executable implementations and audit the final theorem axioms.

**Gate:** all six unchanged scalar entry points are green against the same
specification, with zero added axioms.

### S5 — measure and continue

Publish coverage, source/proof LOC, automatic/interactive split, checking time,
and unsupported functions. Only then resume the ML-KEM ladder: Montgomery and
Barrett library support, NTT/INTT, codecs/compression, bounded sampling, and
top-level KEM operations.

## Role of Aeneas as a backend

[Issue #40](../../docs/issues/aeneas-as-certified-solver-backend.md) remains a
useful parallel experiment. Importing the upstream Aeneas definition and proof
can validate type/model bridges and may later discharge functions outside
Vermilion's native fragment. It is not, by itself, a native subsumption result:
the T2 scorecard must distinguish “reproved by Vermilion” from “consumed an
upstream Aeneas theorem.” Both routes are kernel-checked, but they answer
different questions.

## Non-goals for T2

- rewriting `StateArray`, replacing tuple indexing, or porting to a different
  SHA-3 implementation;
- claiming the new NEON module is verified when upstream does not prove it;
- importing hardware-intrinsic axioms;
- proving side-channel or constant-time security; and
- treating test vectors as functional correctness proofs.

## Final scorecard

For each of T1, T2, and the T3 scalar core, report: exact source revision,
unchanged-source integrity, exact spec revision, verified public surface,
unsupported surface, added axioms, automatic vs interactive obligations,
twin-proof LOC, total check time, and upstream proof LOC. “Subsume” means same
artefact, same spec, zero added axioms, and a complete and reproducible verdict;
lower proof effort is a measured result, not assumed in advance.
