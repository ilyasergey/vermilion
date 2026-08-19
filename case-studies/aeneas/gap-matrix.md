# Aeneas subsumption gap matrix

*Current checkpoint: 2026-07-20. The next gate is the unchanged standalone
`AeneasVerif/sha3.rs` scalar library, not a plain-array replacement.*

This is the standalone **AeneasVerif/sha3.rs** artefact, not Microsoft SymCrypt/SymCRust
SHA-3. SymCrypt remains a separate ML-KEM track.

## Landed and demonstrated

| Capability | Evidence |
|---|---|
| Array-repeat literals and fixed-array indexed destinations | `[v; N]` and local/`&mut` indexed writes landed on 2026-07-17; issues #37 and #22 are closed. |
| Custom `Index` contract idiom when annotations are in source | [curve25519](curve25519/) uses `IndexSpecImpl` for inherited `requires` and an impl-level `ensures`. |
| Wide bounded arithmetic | Curve25519's 38 obligations are all closable by `scalar_saturate`; the tracked twins keep a faster explicit proof path. |
| Unsigned `wrapping_add/sub/mul` | Mirrored in `Vermilion.Vstd.Wrapping`; SymCrypt twins use the models. |
| `debug_assert!` as a static proof assertion | Landed in the pinned Verus fork; issue #34 is closed. |
| Tuple-pattern parameters through Verus and Vermilion | Pinned fork commit `1fc6a46d1…` lowers general parameter patterns to synthetic formals plus entry destructuring, scopes contract bindings, and records erasure mappings. Verus's full `functions` binary passes 11/11. Differential c148/c149 cover the patterns. |
| Custom tuple-keyed `IndexMut` and returned `&mut` | The same fork pin implements the static trait/vstd contract; Vermilion propagates the callee result future to the caller's indexed destination. c150 verifies 11/11 obligations and c151 rejects the wrong value at Verus's line; that milestone had 150/150 parity and 72/72 failure-span agreement. |
| Concrete associated output | Vermilion normalizes a unique monomorphic impl equation such as `Index::Output = Lane` before binder lowering. c152 verifies 11/11, c153 rejects the wrong assertion at line 39, and an abstract generic projection remains fail-closed. |
| Private-state/index contracts and unchanged ι | The actual annotated `verification/src/algos.rs` adds only a closed `View`, `IndexSpecImpl`, index/reference contracts, and the `iota` contract. Vermilion verifies 12/12 obligations in four proof-twin units; c154/c155 bring the corpus to 154/154 with 74/74 failure-span agreement. |
| Tuple-destructuring assignment | Fork `7734d271a…` accepts rustc's evaluate-once assignment desugaring. Native Verus compile/positive/negative tests and Vermilion c156/c157 pin swap, nested tuple, wildcard, and wrong-result semantics; that milestone was 156/156 with 75/75 failure-span agreement and is superseded by the rotation row below. |
| Exact unsigned rotation | Retained by current fork `0bb5732ae…`; Vermilion mirrors every unsigned `rotate_left` at stable `Vermilion.Vstd.Rotate.u*_rotate_left` paths. c158/c159 pin exact modulo-width behavior. |
| Unchanged ρ loop contract and proof | A recursive remaining-loop spec exposes exactly one executable iteration at each unfold. The body verifies 17/17 obligations (13 automatic, 4 interactive); its historical ι+ρ checkpoint was 29/29 after erasing 42 regions and is superseded by the full permutation row below. |
| Unchanged Keccak-p and prefix XOR | Default, θ/ρ/π/χ/ι, `round`, the 24-round `keccak_p` loop, `xor_byte_at`, `xor_lane`, and `StateArray::xor` all verify against recursive implementation models. The project is 169/169 obligations in 22 twins with no `sorry`; pinned Verus reports 47/0. |
| Native u64 endian conversion and byte mutation | Fork ancestor `c329046d2…`, retained by `0bb5732ae…`, adds exact `to_le_bytes`/`from_le_bytes` contracts and const-array assume-spec matching; `Vermilion.Vstd.Bytes` mirrors them. c160/c161 pin parity, and unchanged `xor_byte_at`/`xor_lane` verify. |
| Canonical while setup and root-object havoc | Vermilion evaluates pure condition-setup prefixes, relocates false-arm borrow resolutions to loop exit, and havocs the correctly typed root for projected writes. c162/c163 cover a mutating `while i < src.len()` positive/negative pair. |
| Checked assertions in while-condition setup | Vermilion proves checked-arithmetic/user assertions from invariants before assuming the loop condition, guards assertions in short-circuited arms, and retains established checks as exit facts. c170–c172 pin success, a matching bounds failure, and short-circuit safety without a new IR/VCGen rule. |
| Immutable executable slice ranges | Current fork retains `RangeFrom<usize>` indexing in addition to upstream's `Range` contract. Vermilion recognizes only those exact delegated core contracts, adds the inherited bounds requirements, and returns the corresponding `Seq::subrange`. c164–c169 cover correct/wrong views and both out-of-bounds failures. |
| Mutable range writeback and `copy_from_slice` | Fork `0bb5732ae…` adds mutable `usize`/`Range`/`RangeFrom` vstd contracts: the returned subview equals the old range and the final owner is reconstructed from old prefix/suffix plus the returned-reference future. Vermilion normalizes only this exact core associated output, lowers the delegated contract through its existing prophecy machinery, restores bounds, and composes the ordinary copy length/final-state contract. c173–c177 pin two passes and three failures; that landing checkpoint was 176/176 with 86/86 failure-span agreement. |
| Same-spec Lean bridge | Curve25519 proves the Aeneas `asNat` statement; the SymCrypt probe proves equivalence with `Symcrust.mont_reduce.spec`. |
| Per-function Lean emission, checking, and editor roots | Landed as the default on 2026-07-19. Shared definitions are emitted once in `Specs.lean`; every registered proof library discovers new stems automatically. Generated roots anywhere in the repository are exposed one at a time through a disposable Lake overlay, and the exact keccak-iota `impl__6_index.lean`/sibling `Specs` case is regression-tested. Useful for proof/checking scale, but not a prerequisite for acquiring the file. |

## Required for unchanged `sha3.rs`

The audited target is commit `cb411d54ee0b22f88b64c79963691ff63f3ad5b4`.
The initial parity surface is an annotation-only copy of `src/algos.rs` (561
lines) and the six scalar SHA3/SHAKE theorems upstream proves. The executable
Rust remains unchanged; added Verus contracts, invariants, and ghost/spec code
are permitted. The new `src/neon.rs` is retained in the pinned upstream
baseline but is not part of the first correctness claim.

| Layer | Missing feature | First affected source shape | Disposition / gate |
|---|---|---|---|
| Acquisition | Upstream licence or explicit redistribution permission | The audited tree has no detectable licence file or Cargo licence field | The requested pristine and verification copies are tracked with an explicit unresolved-provenance notice, not an inferred licence. Obtain upstream clarification before making a release/redistribution claim. |
| Acquisition/harness | **Landed:** separate pristine/verification projects plus annotation erasure and source coverage | Contracts, named result binders, invariants, and verification-only spec impls/declarations may be added, while executable tokens and every upstream Rust path must stay identical | [`sha3/`](sha3/) checks the pinned commit/tree/blobs, exact upstream Rust inventory and metadata, typed annotation regions, and post-erasure Rust token identity. Only colocated Lean `src/generated/` and `src/proofs/` trees are exempted. Nine unit guards reject executable changes, missing/extra source paths, malformed nesting, and executable content disguised as specs. |
| Vermilion lowering | **Landed:** associated-type projection normalization | Unchanged `Index`/`IndexMut` signatures return `&Self::Output` / `&mut Self::Output` | The unique monomorphic impl equation resolves to `Lane` without an IR/VCGen change. c152/c153 pin parity; `tests/lowering_refusals/associated_projection_generic.rs` pins refusal when no unique concrete type exists. |
| Contracts | **Landed through `StateArray::copy_to`:** private-state view, clone/default, `Index`/`IndexMut`, dereference views, recursive step/loop models, byte-update, prefix-XOR, and lane-copy contracts | Keccak steps and byte copying | The unchanged permutation, `xor_lane`, `xor`, and `copy_to` are green. Absorb/squeeze/sponge and the six public contracts remain. |
| Lowering | **Tuple assignment, nested loop bodies, immutable/mutable slice ranges, immutable array ranges, copy contracts, transparent dereference views, and checked condition setup landed** | tuple assignment, nested θ/π/χ/xor helpers, copy loop and executable subslices | Fork `0bb5732ae…` plus Vermilion's canonical while/prophecy/call machinery clear the boundaries reached through unchanged `copy_to`. c178–c181 pin the newest general support. Attempt absorb next; the known prospective boundary is the squeeze unconditional `loop`/`return` shape. |
| Bits library | **Exact unsigned `rotate_left` landed;** external-spec bridge facts remain | θ rotates by 1; ρ indexes `RHO_OFFSETS : [[u32;5];5]` | Current fork, `Vermilion.Vstd.Rotate`, and c158/c159 pin exact behavior; θ/ρ implementation proofs are complete. Representation lemmas to `Sha3.Spec` remain. |
| Byte library | **Native u64 endian model landed** | `xor_byte_at`, `xor_lane`, `copy_to` | `Vermilion.Vstd.Bytes` and c160/c161 are green; all three unchanged consumers are proved. Retain representation lemmas needed by the bridge. |
| Slice/borrow model | **Exact scalar slice/array range and copy shapes landed through `copy_to`** | absorb chunks, rest suffix, output blocks | c164–c181 pin immutable/mutable slice views, immutable array suffixes, safety bounds, owner writeback, copy length, final contents, dereference setup, and wrong-result rejection. Add another model only if an unchanged absorb/squeeze body exposes a distinct shape. |
| Control flow | Unconditional `loop` with return and added invariant/decreases | `sponge_squeeze` | Preserve the existing break/return VC discipline and require a termination measure. |
| External Lean spec | Pinned `sha3.lean` dependency and direct imported-definition bridges | Lane array/bytes → upstream bitstring state and sponge | The checked bridge must import freshly generated `algos.Specs` and exact pinned `Sha3.Spec`, then prove lane/byte, Keccak, sponge, and six public equivalences between those imported names. A third restated spec is forbidden; run source-pin and axiom audits. |
| Automation/library | Rotation, lane/byte extensionality, update, encode-index, and sponge list algebra | θ/ρ/π/χ/ι and absorb/squeeze proofs | General Lean lemmas plus `simp`/`grind`/`bv_decide`/`omega`; residual interactive twins are first-class. |
| Scale | Shared contexts and named computed results | Large state-update telescopes in top-level sponge obligations | [Issue #39](../../docs/issues/share-obligation-contexts-and-name-result-values.md). |

Two previously advertised blockers are not blockers for this exact scalar
revision:

- fixed-array repeat/indexed assignment already landed; the remaining
  `IndexMut` problem is specifically the user-defined tuple-keyed wrapper; and
- current χ is `a ^ ((b ^ u64::MAX) & c)`, not Rust unary `!`. Unary BitNot
  issue #21 remains useful for other case studies but is not on the T2 critical
  path.

`ChunksExact`/`Enumerate` support
([issue #38](../../docs/issues/support-iterator-for-loops-via-ghost-iterator-contracts.md))
is needed for `src/lib.rs`'s bit-conversion helpers and full-crate breadth. It
is not used by upstream's proved `src/algos.rs`, so it follows the scalar gate.

## Historical probe verdicts

The [probe suite](probes/) copied isolated executable bodies and added in-source
Verus annotations—the same allowed modification discipline as the final study.
It measured the front-end boundary but does not constitute the complete pinned
scalar library.

| Probe family | Last established result | What it tells us now |
|---|---|---|
| dalek `m` | 2/2 automatic | Wide `u64 → u128` multiplication is routine. |
| full dalek multiply | Promoted to [curve25519](curve25519/) and verified (38 obligations) | The old probe is superseded by the acquired case study. |
| SymCrypt `mod_reduce` | Assertion-free body verified 1 automatic + 1 interactive; statically checked `debug_assert!` variant has a 5-obligation twin under the fork | Wrapping and branchless-mask reasoning is feasible; general mask/shift bridges remain issue #35. |
| SymCrypt `mont_mul` | Assertion-free body verified, 10 obligations; same-spec Montgomery bridge kernel-checks | ML-KEM modular arithmetic is demonstrated but not yet a library-scale NTT result. |
| Keccak ι | Historical probe remains annotation-light (12 emitted, 10 unproved); the actual working copy verifies 12/12 | Confirms the private-state view, `IndexSpecImpl`, immutable/mutable reference contracts, and exact unchanged state update are sufficient. This first slice is not a whole-library claim. |
| Keccak ρ | Historical probe emits 23 obligations with 9 intentionally open; the actual working copy verifies 17/17 | The annotation-only recursive remaining-loop contract matches the unchanged update/coordinate step. Four short twins handle table-row length and machine-clip normalization; no new lowering/VCGen feature was needed. |
| Keccak χ | Historical probe stops before its required annotation; the actual working copy verifies χ | The allowed loop contract/decreases annotation and tracked twins close the unchanged nested loop as part of the full permutation result. |
| `compress_u64` | Verus/vstd rejects `ChunksExact`/`Enumerate` | Confirms issue #38 for helper/full-crate breadth. |

## Ordered closure

1. clarify the upstream license and create the pinned, integrity-checked
   standalone case-study skeleton;
2. **complete:** enforce annotation erasure, executable-token identity, and
   exact source inventory against pristine upstream;
3. **complete:** add state-wrapper contracts and verify the unchanged `iota`
   body (12/12 obligations; c154/c155);
4. **complete:** tuple assignment, exact rotation, θ/ρ/π/χ/ι, `round`, and
   unchanged Keccak-p;
5. **complete through byte output:** native endian conversion, `xor_byte_at`,
   `xor_lane`, unchanged `xor`, immutable/mutable executable ranges,
   `copy_from_slice`, and unchanged `copy_to`; next verify absorb/squeeze;
6. bridge and prove SHA3-224/256/384/512 and SHAKE128/256 against the exact
   pinned FIPS 202 definitions; and
7. report integrity, coverage, axioms, automation, proof LOC, and time before
   resuming the ML-KEM NTT ladder.

Full gates and the meaning of “unmodified” are normative in
[PLAN.md](PLAN.md).
