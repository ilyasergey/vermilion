# Sequential case studies: current coverage and blockers

Updated: **2026-07-20**. This report expands the compact
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
| [Percolator](../../case-studies/percolator/) | **Partially verified verbatim** | 28 unchanged production functions / 97 logical-or-evidence Lean obligations: policy and risk gates, codecs, bitmap reads, scalar saturation, and U256 construction/readback/bitwise basics | Generic spec applications used by `?`; std `Ord::min`/`max`; indexed fixed-array mutation; `BitNot`; polymorphic `Inhabited` ambiguity; per-function isolation. Whole `wide_math.rs` also hits upstream Verus visibility and unsupported core-API boundaries |
| [Entry API](../../case-studies/entry-api/) | **Acquired / blocked** | Verbatim pinned source verifies 3/3 with Verus; Vermilion keeps an expected fail-closed probe | Generic opaque spec applications; std `HashMap::Entry` views/contracts; returned-`&mut` prophecy relations |
| [statics](../../case-studies/statics/) | **Acquired / outside the sequential gate** | Verbatim pinned source verifies 9/9 with Verus; Vermilion keeps an expected fail-closed probe | Globals and initialization semantics, followed by ghost memory and atomic protocols (M5/M6) |
| [recursion](../../case-studies/recursion/) | **Investigation target, not a green gate** | The clean recursive core lowers; the upstream tutorial deliberately includes negative examples | `decreases_to!`; `via`/`#[via_fn]`; separation of intentional failures from a runnable positive subset |
| Aeneas-derived crypto targets | **Curve25519 verified; standalone AeneasVerif SHA-3 verified through `copy_to`** | Curve25519 has 38 checked obligations and the same-spec bridge. The separate standalone AeneasVerif `sha3.rs` target—not SymCrypt/SymCRust—is tracked as pristine and annotated copies; the source guard erases 86 regions, and unchanged default/dereference support, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to` verify as 198 Lean obligations in 25 twins. c164–c181 guard exact ranges, owner writeback, copying, checked loops, dereference views, and array suffixes. | Prove absorb/squeeze, sponge, six public functions, and the exact Aeneas SHA-3 spec bridge; public parity is 0/6. Broader source coverage and the separate modular-arithmetic library for ML-KEM follow |

“Verified” means the named driver verifies end to end with Lean as the only
verifier. “Partially verified” counts only the named green subset and leaves
every copied-but-blocked body visible. “Blocked” means the upstream/Verus
baseline exists but Vermilion deliberately refuses a required construct.
“Research only” contributes nothing to coverage.

## Current checkpoint

- The differential corpus is **180/180 verdict parity** with Verus and
  **88/88 failure-span agreement**. The full suite has 48 green or
  intentionally rejected example/case-study runners.
- The original `vectors.rs` saturation goal is complete for every selected
  default-isolation function: opaque spec functions, `Vec::set`, range
  `for`, `Vec::pop`, condition-side mutable-reference resolution, and
  `Seq::add` have all landed.
- Merge sort, sorting, primes, IMO 1988 #6, and power-of-2 are green. The
  next useful evidence comes from mixed real modules rather than another
  unconditional syntax sweep.
- Percolator is the first external-project acquisition: all 33 selected
  bodies pass the pinned Verus baseline after contracts are added; 28 bodies
  currently pass through Vermilion.
- Entry API and statics are honest expected-refusal probes, not partially
  verified claims. VS Code 0.9.7 highlights Entry API's importing `use`
  target and links to the precise unsupported vstd span.

## Active blockers by driver

### Mixed real projects and Percolator

The immediate tooling prerequisite is
[per-function lowering isolation](../issues/per-function-lowering-isolation.md):
one unsupported function must not hide supported siblings, but every refused
function must still produce a source-mapped disposition. This is required
before coverage percentages over large modules are meaningful.

The remaining clean Percolator slices are independently pinned:

| Feature | Current driver | Tracking issue | Result when landed |
|---|---|---|---|
| Generic opaque spec applications with explicit type arguments | `withdrawal_question_mark.rs`; also Entry API's first prerequisite | [`spec_from` / `?`](../issues/lower-generic-spec-functions-used-by-question-mark.md) | Verbatim withdrawal body reaches Lean; Entry API advances to its std-specific layer |
| Static `Ord::min`/`max` default-body contracts | `liquidation_fee_minmax.rs` | [`min`/`max` contracts](../issues/support-std-ord-min-max-default-body-contracts.md) | Verbatim liquidation-fee calculation reaches Lean |
| Indexed mutation through `&mut [T; N]` | `active_bitmap_set.rs` | [fixed-array indexed mutation](../issues/support-indexed-mutation-of-fixed-size-arrays.md) | Bitmap set verifies; bitmap clear advances to `BitNot` |
| Width-correct unary machine-integer `BitNot` | `active_bitmap_clear.rs` | [`BitNot`](../issues/support-bitnot.md) | Bitmap clear verifies once indexed mutation is also present |
| Concrete typing before class synthesis | `bounded_arithmetic.rs` | [standalone twin elaboration](../issues/generated-twins-must-elaborate-without-hidden-typeclass-context.md) | Polymorphic `Option`/`Result` branches no longer leave `Inhabited ?m` stuck |

The whole `wide_math.rs` boundary is separate from those Vermilion gaps.
Upstream Verus first rejects private-field/public-constant visibility and,
under a diagnostic visibility adaptation, encounters unsupported
`overflowing_*`, `leading_zeros`, `unsigned_abs`, and formatted panic/assert
core APIs. The verified claim therefore remains the ten selected
`wide_math.rs` functions, not the complete module.

### Standard `HashMap::entry`

The [Entry API issue](../issues/support-hashmap-entry-api.md) fixes the order:

1. land generic opaque spec applications (the shared prerequisite above);
2. model the relevant std Entry views and contracts in the vstd mirror;
3. relate returned `&mut` final values back to the owning Entry and map;
4. add positive and negative guards, then replace `explore.sh` with a green
   `run.sh` gate.

The current refusal at the imported polymorphic `view` is deliberate. Entry
mutation must not be approximated by an unconstrained fresh map.

### Statics and atomics

The [statics/atomics semantics issue](../issues/give-statics-and-atomics-a-lean-semantics.md)
starts with global initialization and `StaticVar`. The complete `Lazy<T>`
study then requires ghost memory, atomic ghost protocols, and state-machine
reasoning. It belongs to M5/M6 and is not evidence against sequential M3/M4
coverage.

### Recursion tutorial

The upstream file mixes useful positive recursion examples with deliberate
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

The [execution plan](../../plans/execution-plan.md) is authoritative. Its
current order is:

1. continue unchanged SHA-3: absorb/squeeze, sponge and
   six public functions, then the exact pinned external-spec bridge;
2. S2 `bst_map.rs`: recursive `Box` datatypes, `Option::take`, `returns`,
   sequential `&mut` returns, and `Map::union_prefer_right`;
3. S3 choice/search: `choose`, boxed recursive enums with `decreases self`,
   and legacy variant accessors;
4. the independent Percolator, Entry API, and recursion gaps listed above;
5. external sequential modules: Vest, pmemlog/verified-storage, Verdict,
   IronKV marshalling, verified-nrkernel page tables, then Verus-Bench.

Foundational VC generation, proof evolution, Lean start-up latency, and the
remaining editor/experimentation work are parallel workstreams in that plan;
they do not change the support classifications in this report.

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
