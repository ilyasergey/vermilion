# Sequential case studies: current coverage and blockers

Documentation reconciled: **2026-09-23**, against the checked-in sources and
dated receipts. No fresh suite run was performed. This report expands the compact
[case-study registry](../../case-studies/README.md) with the feature gaps that
explain every partial, blocked, or research-only result. The registry is the
authority for acquired-study status; the
[target-project ladder](target-projects.md) owns future acquisition order;
the [execution plan](../../plans/execution-plan.md) owns implementation order;
and the [progress ledger](progress.md) records features that have landed.

## Current coverage

| Case study | Status | Supported now | Blocking features / reason not fully supported |
|---|---|---|---|
| [binary-search](../../case-studies/binary-search/) | **Verified** | Binary search over a sorted `Vec`; 14 automatic + 1 interactive VC | — |
| [vec-uninterp](../../case-studies/vec-uninterp/) | **Verified** | `Vec::push` preserving an opaque predicate; 1 interactive VC | — |
| [vec-reverse](../../case-studies/vec-reverse/) | **Verified** | In-place reversal with a swap/permutation invariant; 15 automatic + 5 interactive VCs | — |
| [vec-pop-uninterp](../../case-studies/vec-pop-uninterp/) | **Verified** | `Vec::pop`/`Seq::subrange` preserving an opaque predicate | — |
| [merge-sort](../../case-studies/merge-sort/) | **Verified** | Verbatim upstream merge sort (43 automatic + 17 interactive) and specs-only variant (31 + 9) | — |
| [primes](../../case-studies/primes/) | **Verified** | Multi-file primality specification and trial-division implementation; 23 automatic + 1 interactive VC | — |
| [sorting](../../case-studies/sorting/) | **Verified** | `sort_by`/`sorted_by`, uniqueness, and multiset equivalence; 12 automatic + 4 interactive VCs | — |
| [imo-1988-6](../../case-studies/imo-1988-6/) | **Verified verbatim** | Vieta-jumping proof; 66 automatic + 1 interactive VC | —; isolated nonlinear queries and named-result joins have landed |
| [power-of-2](../../case-studies/power-of-2/) | **Verified verbatim** | Recursive `pow2`/shift development; 40 automatic + 17 interactive VCs | —; isolated nonlinear queries and exact VIR clipping have landed |
| [Percolator](../../case-studies/percolator/) | **Partially verified verbatim** | The green runner covers 31 production bodies and 118 logical-or-evidence declarations, including the DL5 withdrawal, bounded-arithmetic, and bitmap-set additions | std `Ord::min/max`, `BitNot`, and the separate whole-`wide_math.rs` Verus boundary |
| [Entry API](../../case-studies/entry-api/) | **Acquired / blocked** | Verbatim pinned source verifies 3/3 with Verus; Vermilion keeps an expected fail-closed probe | std `HashMap::Entry` views/contracts; returned-`&mut` prophecy relations |
| [statics](../../case-studies/statics/) | **Acquired / outside the sequential gate** | Verbatim pinned source verifies 9/9 with Verus; Vermilion keeps an expected fail-closed probe | Globals and initialization semantics, followed by ghost memory and atomic protocols (M5/M6) |
| Upstream recursion tutorial | **Historical investigation** | Excluded from supported coverage | A positive driver separated from intentional failures, then custom termination support |
| [dalek-lite](../../case-studies/dalek-lite/) | **Partial acquisition** | 5,215 emitted obligation declarations; eight explicit proof holes remain in four units | Proof completion, declaration collisions, recorded lowering refusals, higher layers, and trusted-floor discharge; see [current status](../../case-studies/dalek-lite/README.md#current-verification-status) |
| Aeneas-derived crypto targets | **Curve25519 verified; standalone AeneasVerif SHA-3 verified through `copy_to`** | Curve25519 has 38 checked obligations and the same-spec bridge. The separate standalone AeneasVerif `sha3.rs` target—not SymCrypt/SymCRust—is tracked as pristine and annotated copies; the source guard erases 86 regions, and unchanged default/dereference support, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to` verify as 198 Lean obligations in 25 twins. c164–c181 guard exact ranges, owner writeback, copying, checked loops, dereference views, and array suffixes. | Prove absorb/squeeze, sponge, six public functions, and the exact Aeneas SHA-3 spec bridge; public parity is 0/6. Broader source coverage and the separate modular-arithmetic library for ML-KEM follow |

“Verified” means the named driver verifies end to end with Lean as the only
verifier. “Partially verified” counts only the named green subset and leaves
every copied-but-blocked body visible. “Blocked” means the upstream/Verus
baseline exists but Vermilion deliberately refuses a required construct.
“Research only” contributes nothing to coverage.

## Current checkpoint

The checked-in differential corpus contains 191 Rust source fixtures. Earlier
180/180 verdict and 88/88 failure-span results are dated July measurements,
not a receipt for the current tree. Run the
[differential suite](../development.md#test-scopes) to obtain current results.

The active benchmark is dalek-lite. The Aeneas SHA-3 push remains paused.
Percolator's `run.sh` includes the three DL5 additions; its `explore.sh`
contains two partial drivers, for `Ord` contracts and `BitNot`.

## Active blockers by driver

### Mixed real projects and Percolator

[Per-function lowering isolation](../issues/closed/per-function-lowering-isolation.md)
has landed. Unsupported functions receive source-mapped dispositions while
supported siblings continue through the pipeline.

The remaining Percolator drivers are:

- `liquidation_fee_minmax.rs`: [std `Ord` contracts](../issues/support-std-ord-min-max-default-body-contracts.md).
- `active_bitmap_clear.rs`: [unary `BitNot`](../issues/support-bitnot.md).

The former prerequisites are complete:
[generic spec applications](../issues/closed/lower-generic-spec-functions-used-by-question-mark.md),
[indexed mutation](../issues/closed/support-indexed-mutation-of-fixed-size-arrays.md),
and [constructor typing](../issues/closed/generated-twins-must-elaborate-without-hidden-typeclass-context.md).

The whole `wide_math.rs` boundary is separate from those Vermilion gaps.
Upstream Verus first rejects private-field/public-constant visibility and,
under a diagnostic visibility adaptation, encounters unsupported
`overflowing_*`, `leading_zeros`, `unsigned_abs`, and formatted panic/assert
core APIs. The verified claim therefore remains the ten selected
`wide_math.rs` functions, not the complete module.

### Standard `HashMap::entry`

The [Entry API issue](../issues/support-hashmap-entry-api.md) fixes the order:

1. generic opaque spec applications have landed (DL5); reassess the probe
   to identify its current first refusal;
2. model the relevant std Entry views and contracts in the vstd mirror;
3. relate returned `&mut` final values back to the owning Entry and map;
4. add positive and negative guards, then replace `explore.sh` with a green
   `run.sh` gate.

The original generic-`view` refusal predates DL5. A new probe result is needed
to identify the current first diagnostic. Entry mutation must retain its
contracts relating the old and final map.

### Statics and atomics

The [statics/atomics semantics issue](../issues/give-statics-and-atomics-a-lean-semantics.md)
starts with global initialization and `StaticVar`. The complete `Lazy<T>`
study then requires ghost memory, atomic ghost protocols, and state-machine
reasoning. It belongs to M5/M6 and is not evidence against sequential M3/M4
coverage.

### Recursion tutorial

This is a historical investigation, excluded from supported coverage. The
upstream file mixes useful positive recursion examples with deliberate
failures (`test_triangle_fail`, `bogus`/`exploit_bogus`, and circular
reasoning). Its clean core—triangle variants, Ackermann monotonicity, and
mutual `is_even`/`is_odd`—already lowers. A future green driver must first
separate that positive subset, then add custom decreases relations
(`decreases_to!`) and user-supplied termination proofs (`via`/`#[via_fn]`).

### Aeneas-derived crypto research

Curve25519 is complete and the standalone SHA-3 project is an acquired,
runnable partial Vermilion case study. Its current claim covers the private
state model, complete unchanged scalar permutation, prefix-XOR loop, and
`copy_to`: 198/198 Lean obligations across 25 twins, while erasing 86 annotation regions
restores the pristine executable tokens. Pinned Verus reports 52 verified, 0
errors. No whole-library support percentage is reported until every pinned
source body has a verified, refused, or pending disposition and the exact
external-spec bridge is complete. Mutable executable range/subslice writeback
and copy behavior are now parity-tested; the next work is absorb/squeeze,
sponge, the six public functions, and the exact `Sha3.Spec` bridge. This is
standalone AeneasVerif SHA-3, not SymCrypt/SymCRust, and public parity remains
0/6.

## Ordered next work

Follow the [execution plan](../../plans/execution-plan.md). Its active target
is dalek-lite: resolve the current proof and lowering boundaries, then expand
to higher layers and discharge the upstream trusted floor. The SHA-3 work is
paused. The S2/S3 corpus drivers and remaining independent gaps stay in the
queue; scalar `choose` itself already landed in DL2.

Foundational VC generation, proof evolution, Lean startup latency, and editor
work have separate entries in that plan.

## Appendix: original `vectors.rs` saturation sweep

The 2026-07-14 sweep established the first sequential feature progression.
The table below gives its **current** disposition; the obsolete implementation
plans have been removed.

| Function | Current disposition | Remaining blocker |
|---|---|---|
| `binary_search` | **Verified** — 14 automatic + 1 interactive VC | — |
| `pusher` | Lowers end to end; used as a fragment probe rather than a separate gated study | — |
| `push_test` | **Verified** as `vec-uninterp` | —; opaque/uninterpreted spec functions landed |
| `pop_test` | **Verified** as `vec-pop-uninterp` | —; `Vec::pop`/`Seq::subrange` landed |
| `reverse` | **Verified** as `vec-reverse` — 15 automatic + 5 interactive VCs | —; `Seq::update` and range `for` landed |
| `binary_search_no_spinoff` | Deliberately refused | `#[verifier::loop_isolation(false)]` |
| `reverse_no_spinoff` | Deliberately refused | `#[verifier::loop_isolation(false)]` only; the former update/iterator blockers are landed |

The two `_no_spinoff` functions duplicate behavior already verified with
Verus's default isolated-loop discharge. Non-isolated loops preserve selected
outer facts across havoc and require a distinct sound rule; they remain a
low-priority corpus-demand item rather than being inferred from the isolated
case.

### Landed slices from the sweep

| Slice | Current result | Evidence |
|---|---|---|
| F1 opaque/uninterpreted spec functions | Lean `opaque` symbols with ordinary congruence; never unfolded | `examples/m2-uninterp`, c113/c114, `vec-uninterp` |
| F2 `Vec::set` / `Seq::update` | Functional `Seq.update` with length/same-slot/other-slot lemmas | `examples/m3-vec-set`, c115/c116, `vec-reverse` |
| F3 canonical range `for` | Specialized fail-closed lowering of `VerusForLoopWrapper<Range<_>>` | `examples/m2-forloop`, c117–c120, `vec-reverse` |
| F4 `Vec::pop` / `Seq::subrange` | Option contract plus proved slice length/index facts | `examples/m3-vec-pop`, c121–c124, `vec-pop-uninterp` |
| F5 loop-condition mutable-reference resolution | Condition setup split into the real condition and exit resolutions | c125/c126, `examples/m3-vec-set::zero_prefix` |
| F7 spec `Seq::add` | List append model with length/index lemmas and bounded ladder rungs | `examples/m2-seqadd`, c127/c128 |
| S4 nonlinear queries, clipping, named-result joins | Isolated nonlinear queries; exact VIR clipping; typed result destination before branch join | c141–c145, IMO 1988 #6, power-of-2 |

## Reproduction and reporting rules

```console
./scripts/run_suite.sh
./case-studies/binary-search/run.sh
./case-studies/vec-uninterp/run.sh
./case-studies/vec-reverse/run.sh
./case-studies/vec-pop-uninterp/run.sh
./case-studies/merge-sort/run_verbatim.sh
./case-studies/sorting/run.sh
./case-studies/primes/run.sh
./case-studies/imo-1988-6/run.sh
./case-studies/power-of-2/run.sh
./case-studies/percolator/run.sh
./case-studies/entry-api/explore.sh
./case-studies/statics/explore.sh
```

Every adoption records the upstream pin/license and distinguishes source or
annotation adaptations from executable-body identity. Fragment additions ship
as one slice: adapter, IR/Lean changes, documentation, positive and negative
guards, and the driving case study. Clean features and defects live under
`docs/issues/` and remain synchronized with GitHub. Unsupported semantics
always fail closed and stay source-mapped; interactive twin proofs are valid
first-class verification, not a lesser support status.
