# Vermilion progress ledger

Milestone-by-milestone status. Linked from the top-level `README.md`; the
staged plan for what is next is [target-projects.md](target-projects.md),
and the case-study status table is [case-studies/README.md](../../case-studies/README.md).

**Current checkpoint (2026-07-20):** language and automation slices through
M4 plus the F/V saturation work are implemented; the differential corpus is
180/180 with 88/88 failure-span agreement. The standalone
**AeneasVerif/sha3.rs** acquisition—not SymCrypt/SymCRust SHA-3—preserves all
seven Rust files and three metadata files, and erasing 86 annotation regions
restores pristine executable tokens. Unchanged default/dereference support,
θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and
`copy_to` now verify as 198/198 Lean obligations across 25 proof-twin units
with no `sorry`; pinned Verus reports 52 verified, 0 errors. Fork
`0bb5732ae6afa6eabf3843e34bc554223b67be8f`
retains the tuple/index/assignment/rotation/endian work and now specifies exact
mutable `usize`/`Range`/`RangeFrom` indexing, including returned-subview and
final-owner relations. It passes the full upstream `rust_verify_test` suite,
including 19/19 Cargo integration tests; its slice regression binary is 25/25
and vstd rebuilds at 1,972 verified, 0 errors. Vermilion mirrors the endian functions, generalizes canonical
while-condition setup, proves setup assertions before assuming the condition,
guards short-circuited checks, and correctly havocs root objects for projected
loop writes. It lowers exact immutable and mutable `Range`/`RangeFrom` views,
restores inherited bounds omitted from delegated SST closures, reconstructs
the final owning slice from a mutable view's future, and composes the ordinary
`copy_from_slice` contract; c160–c181 pin these additions, transparent
dereference-view setup, and immutable array suffix ranges. Proof/generated roots remain
automatically Lake/editor-resolvable and the build-all twin gate passes.
Absorb, squeeze, sponge, six public SHA3/SHAKE functions, and the exact pinned
`Sha3.Spec` bridge remain explicitly open. Public same-spec parity is 0/6.
The first GitHub corpus acquisition
is complete: `case-studies/percolator` pins commit `143e68c`, preserves and
Verus-checks 33 distinct production bodies, and now verifies the supported
28-function subset through 97 logical-or-evidence Lean obligations. This now
includes `wide_math.rs`'s saturating multiply and nine U256
representation/bitwise methods; the complete module's Verus
visibility/core-API boundary is recorded. Missing Lean class dictionaries are
first-class interactive evidence obligations
(issue #25; c139/c140); five copied bodies still pin the remaining clean tool
gaps in `docs/issues/`. The next pinned-Verus progression is acquired: IMO
1988 #6 and power-of-2 verify end to end; Entry API and statics remain
reproducible, issue-linked fail-closed probes. Large-project coverage
percentages remain unmeasured.

| Milestone | Status | Result |
|---|---|---|
| Repository bootstrap | Complete | Architecture, pins, local plans, logs, and ledgers |
| M0 infrastructure | Complete; full automation study deferred | Prelude probes, 20 obligations, isolated runner |
| M1a simple source slice | Complete | Verus source → pre-poly SST → three Lean VCs → automatic, reconstructed-SMT, and interactive proofs |
| M1 direct SST adapter | Complete | Patched pinned Verus exports finalized VIR; `vermilion_direct` reruns the pinned middle end and lowers real `FunctionSst` values; facade equivalence and byte-stable output asserted |
| M1 widened fragment | Complete | Bools, int/nat, machine widths, casts, assumes, calls with contracts, early returns; six functions and eleven auto-discharged VCs in `examples/m1-widening` |
| M1 span-mapped diagnostics | Complete | Colocated obligation manifests; `vrml_check` runs Lean and reports failures as rustc/Verus-style JSON at the exact Rust span (`examples/m1-diagnostics`) |
| M1 incremental fingerprints | Complete | Span-insensitive semantic + location fingerprints per function; whitespace/move/body/contract edit matrix enforced by `scripts/test_incrementality.sh` |
| M1 differential measurement | Complete | 12/12 verdict parity and 4/4 failure-span agreement between Verus and the Lean backend on the straight-line corpus (`scripts/run_differential.py`) — above the 95% gate |
| Formal M1 straight-line gate | Complete | See the [tutorial](docs/TUTORIAL.md) for the end-to-end experience |
| M2 Lean-side IR architecture | Complete | Rust serializes a versioned textual IR ([docs/ir.md](docs/ir.md)); the Lean library `Vermilion.Ir` lexes/parses it idiomatically and owns VC generation, emission, and manifests; VCs are theorems with one assumption per line |
| M2 branches | Complete | `if`/`else` with guarded SSA joins, early returns in arms, spec-level `ite` (`Vermilion.iteP`); `examples/m2-branches` |
| M2 loops + invariants | Complete | Verus-style loop isolation: entry/preserve obligations, havoc symbols, exit facts; the nonlinear `sum_below` bound carries a hand-written twin proof (`examples/m2-loops`, `--manual-proofs`) |
| M2 break/continue | Complete | Verus's isolated-loop discharge at early exits: a `break` re-checks the at-exit invariants (`invariant` + loop `ensures`), a `continue` the at-entry invariants plus the measure; break-capable loops carry no negated condition (`examples/m2-break`) |
| M2 recursion | Complete | `decreases` measures checked at recursive call sites (`examples/m2-recursion`) |
| M2 discharger ladder + watch mode | Complete (cache pending) | `vrml` reports its winning rung (`trace.vrml.ladder`); `scripts/vrml_watch.sh` re-judges only hash-changed obligations — **a one-function edit loop measures ~3.6s**, meeting the <5s M2 gate |
| M2 collections | Complete | vstd `Seq`/`Set`/`Map`/`Multiset` in spec positions on the `Vermilion.*` prelude conventions (a Lean `List`, a `Finset`, a finite-dom map, a Mathlib `Multiset`) with `@[simp]` automation (`examples/m2-collections`) |
| M2 spec functions | Complete | User `spec fn`s emitted as real Lean definitions (recursive ones with `termination_by` from the Verus-checked decreases), applications never inlined, no definition axioms, no fuel; `#[verifier::opaque]`/`reveal`/`reveal_with_fuel` narrow per-obligation visibility with Verus-verdict coherence; machine attempts unfold recursion by bounded rewriting (`examples/m2-specfns`) |
| M2 ill-typed guarantee | Complete | Structural front-end detection (exit 3 + `.vermilion/<stem>-run.json`); suite-enforced: nothing generated or judged for ill-typed programs, rustc errors at their exact spans (`scripts/test_ill_typed.sh`) |
| Lean typeclass evidence closure | Complete | Generic structured class targets become marker-delimited `@[vrml_evidence]` local instances in the persistent twin; unresolved dictionaries are span-mapped failures and block success even when dependent VCs pass contingently. Rust `bool` → Lean `Prop` / `Decidable` is the first producer ([lifecycle test](../../scripts/test_typeclass_evidence.sh), [c139](../../tests/differential/c139_bool_ite_evidence_ok.rs)/[c140](../../tests/differential/c140_bool_ite_evidence_wrong.rs)) |
| M2 editor support | Complete for the current fragment | VS Code extension 0.9.7 (`./scripts/install_vscode_extension.sh`): verify on open/save/⌘⇧R, per-function gutter verdicts and progress zigzags, failures + interactively-discharged goals link into the proofs twin, bidirectional Rust/Lean navigation (including synthetic impl namespaces and bodyless impl spec methods), type errors gate verification, dependency-level lowering refusals highlight the matching `use` target and link to the exact dependency span, fast `.lean` opens via the caching lake shim |
| M3 quantifiers | Complete (lowering; witness automation open) | `forall`/`exists` as genuine Lean quantifiers, range guards folded, triggers preserved in IR/obligation metadata but not consumed by Lean; ∀-instantiation automatic via grind, witness/index-split goals proven interactively in the twin (`examples/m3-quantifiers`, `--manual-proofs`) |
| M3 datatypes | Complete (including type parameters) | Structs/enums/tuples as real Lean inductives (kernel-given injectivity/disjointness/exhaustiveness, zero axioms); generic datatypes become parameterized inductives; constructors, accessors, variant predicates, `match` via desugared branch trees; field range facts (`examples/m3-datatypes`, `examples/m3-generics`) |
| M3 generics | Complete (unbounded params) | Type parameters on functions, datatypes, and spec fns; parameterized inductives; obligations verified once, generically, over `(T : Type) [Inhabited T]` (`examples/m3-generics`) |
| M3 exec `Vec<T>` | Complete | Modeled as its `Seq` view — `v@`, `v@.len()`, `v@.index(i)`, `v[i]` (`examples/m3-vec`); mutation via the `&mut` contracts: `Vec::new`/`push`/exec `len`, extensional `Seq` equality as plain `=`, `spec_vec_len` ≡ view length (`examples/m3-vec-mut`) |
| M3 `&mut` parameters and static returned references | Complete (sequential) | Verus's prophecy encoding resolved at lowering time: `*old(x)`/`*final(x)` contracts, writes through references, caller write-back, two-phase borrows, and custom `IndexMut` returning `&mut` — no IR growth, no axioms; negative soundness guards in the corpus (`examples/m3-mutref`, c150/c151) |
| M3 systematic type facts | Complete | The recursive `typ_invariant` analogue at every value-introduction site: scalar ranges, quantified element/key facts for containers, generic-instantiated datatype field facts |
| M3 traits | Complete (static dispatch + generic bounds) | Trait spec fns resolve to concrete impls; inherited contracts are checked at callers/impl bodies; generic trait bounds use universally quantified dictionary symbols (`examples/m3-traits`, `examples/m3-trait-bounds`). Dynamic dispatch fails closed |
| M3 spec/exec closures | Complete | `spec_fn(T…) -> U` as the Lean arrow, spec closures as `fun`; exec closure bodies are checked in a scope and call contracts prove requires/assume ensures — no defunctionalization or axioms (`examples/m3-closures`, `examples/m3-exec-closures`) |
| Soundness audit + trust doc | Complete (2026-07-13) | Fail-open `UnaryOpr` catch-all removed; ext-equality checked through datatype fields; `assert … by` blocks made check-and-discard (`(scope …)` + the `(SCOPE)` rule in [docs/vcgen.md](docs/vcgen.md)) — each fix pinned by a differential guard; assumptions enumerated in [docs/trust.md](docs/trust.md) |
| M3 exec closures | Complete | `ClosureInner` in a check-and-discard scope; `ClosureReq`/`ClosureEns` as fresh function-typed binders constrained by the assumed contract fact; call-site requires proved (`examples/m3-exec-closures`) |
| M3 const generics | Complete | `const N: usize` as an `Int` value binder with arch-neutral `usize` bounds; literals substituted at instantiations; const-generic spec fns pass leading explicit `Int` args (`examples/m3-const-generics`) |
| M3 broadcast use | Complete (single lemmas + registered groups) | A proven lemma's quantified fact is assumed at the use point; registered vstd groups resolve through V4 to droppable Lean lemma hints (`examples/m3-broadcast`, c137/c138) |
| M3 generic trait bounds | Complete | Dictionary-style: trait spec fns at abstract `Self` as universally quantified symbols; inherited contracts at `Self = T` (`examples/m3-trait-bounds`) |
| M3 user View impls | Complete | `s@` through the impl's emitted spec fn; the identity shortcut gated to `Vec`/arrays/slices — a latent user-impl mistyping fixed (`examples/m3-user-view`) |
| M3 mutual spec-fn recursion | Complete | Lean `mutual` blocks; range-guarded totality over `Int`; fuel-coherent interleaved unfolding (`examples/m3-mutual-rec`) |
| M3 arrays & slices | Complete | `[T; N]`/`[T]` as `Seq` views (length pinned by a const-generic fact for arrays); literals, indexing, `Seq::new` in the prelude (`examples/m3-arrays`, `examples/m3-slices`) |
| M3 `&mut` through fields | Complete | Field writes as record updates over the unchanged prophecy machinery (`examples/m3-mut-fields`) |
| Soundness fixes (differential-caught) | Complete | `assert … by` scope leak (`(scope …)` + the `(SCOPE)` vcgen rule); fail-open operator catch-all removed; ext-equality through datatype fields; circular `by (bit_vector)` context-sharing pass replaced by isolated real-content queries |
| M4 Bits library | Complete | Bit ops as `Vermilion.Bits` over `BitVec` — proved conversions, ranges, identity set; nothing trusted (`examples/m4-bitvec`) |
| M4 nonlinear rung | Complete | `nlinarith` ladder rung (conjunction splitting) closes bounded-product overflow goals (`examples/m4-nonlinear`); truths stock Verus rejects verify here (`examples/m4-beyond-verus`) |
| M4 `by (compute)` | Complete | Evaluated by the shared middle's interpreter during our own rerun; false computations abort translation, fail-closed (`examples/m4-compute`) |
| M4 `by (bit_vector)` | Complete | Isolated-query discharge (the loop rule's scoping) with real content — the circular-assumption vacuous pass the differential caught is closed with an agreeing negative guard (c112) |
| M4 `by (nonlinear_arith)` query blocks | Complete | `AssertQuery{NonLinear}` lowers as an isolated query over type facts + explicit local content; c141 passes and c142 rejects circular use of the outer assumed conclusion; verbatim IMO/power studies green |
| Exact VIR machine clipping | Complete | `nat` saturation, unsigned modulo `2^w`, signed two's-complement interpretation retained with no new IR node; c144/c145 pin explicit wrapping `u32` multiplication; collection side-condition and recursive-ground normalization keep prior cases automatic |
| Named-result branch joins | Complete | named return destination typed before body lowering; c143 pins the guarded SSA join |
| M2 uninterpreted spec fns | Complete | `uninterp spec fn` emitted as a Lean `opaque` symbol (IR `specfn-opaque`), reasoned about by congruence, never unfolded; `examples/m2-uninterp`, case study `case-studies/vec-uninterp` (auto + interactive) |
| M3 `Vec::set` / `Seq::update` | Complete | `v.set(i,x)` via `Seq::update` (IR `sequpdate`; prelude `Seq.update` with length/updated/other-slot `@[simp]` lemmas); `examples/m3-vec-set`. `Vec::pop`/`Seq::subrange` subsequently landed in F4 |
| M2 range `for` loops | Complete | `for i in lo..hi` specialized from the canonical `VerusForLoopWrapper` desugaring: entry/exit instances at the peek values (inclusive guard — exit knowledge at `hi`), `lo ≤ i < hi` iterations, `hi−i` measure, shared-`arbitrary` empty-range soundness; everything non-canonical fails closed (docs/trust.md); `examples/m2-forloop`, case study vec-reverse |
| M3 `Vec::pop` / `Seq::subrange` | Complete | pop's `Option` contract + `Seq::subrange` `List`-slice with in-range `@[simp]` length/index lemmas; `vrml` gains a `simp (disch := omega)` rung for their arithmetic side conditions; `examples/m3-vec-pop`, case study `vec-pop-uninterp` (last `vectors.rs` fn) |
| M2 `Seq::add` (spec `+`) | Complete | concatenation as `List` append (IR `seqadd`); prelude `len_add`/`index_add_left`/`index_add_right` tagged `@[simp, grind =]` so the first ladder rung closes concatenation goals; per-rung heartbeat budgets keep one diverging rung from starving the ladder; `examples/m2-seqadd` |
| S1: merge sort verified | Complete | `Seq::to_multiset`; `Vec::clone`/`split_off`; functional-view substitution; pure `&&` conditions; `Vec` length facts; twin helper sections. Both the verbatim source (43 automatic + 17 interactive) and specs-only contrast (31 + 9) verify under Lean |
| V2: the vstd mirror | Complete | vstd spec fns beyond the structural core resolve BY NAME against shipped Lean libraries (`lean/Vermilion/Vstd/`, registry + `(vstdapply …)`, fail-closed on unmapped paths); the collection operation table migrated without changing generated statements or twin hashes |
| V3: vstd port + restructure | Complete | the collection models moved out of the prelude into one Lean module per vstd module (`Vstd/{Seq,SeqLib,Set,Map,Multiset}.lean`); ported `Seq::first`/`last`/`contains`/`drop_last`/`drop_first`/`remove`, `Multiset::remove` with proved lemma surface (`dropLast_add`, `toMultiset_contains`), all registered; corpus 135 cases |
| V4: `broadcast use` hints | Complete | `broadcast use G` of a vstd group lowers to `(broadcast …)`, resolved through the registry into ladder hints (droppable by construction — never trusted); c137/c138. Single-lemma `broadcast use` was already handled as an assumed fact |
| Verbatim merge sort verified | Complete | the upstream `examples/mergesort.rs` WITH all its inline SMT scripting preserved (minus the out-of-fragment `main`) — 60 obligations, 43 automatic + 17 interactive, no `smt` reliance (`case-studies/merge-sort/mergesort.rs`, `run_verbatim.sh`); the specs-only `mergesort_clean.rs` (31 + 9) is the interactive-proofs-first contrast |
| Differential corpus | 176 cases | 100% verdict parity and 86/86 failure-span agreement, Verus (SMT) as the oracle on every case; c160/c161 add native u64 endian conversion, c162/c163 add the canonical slice-length mutation loop, c164–c169 pin immutable range/suffix views plus bounds failures, c170–c172 pin checked condition setup plus short-circuit guarding, and c173–c177 pin mutable range copying, owner writeback, bounds, and copy lengths |
| S2+ case studies | Ongoing | verified corpus studies: `merge-sort` (verbatim + specs-only), `primes`, `sorting`, `imo-1988-6` (66 auto + 1 interactive), `power-of-2` (40 + 17); `entry-api`, `statics`, and `recursion` are documented investigation/expected-refusal targets — see [case-studies/README.md](../../case-studies/README.md) |
| S5 Percolator acquisition | First external-project stage + first gap complete | Pin `143e68c`; upstream `cargo test` 129/129 and fuzz-feature suite 158/158; all 33 selected bodies verify with Verus; 28 functions / 97 logical-or-evidence obligations verify with Lean (Boolean/Result gates, policy, codecs, bitmap reads, saturating multiply, U256 representation/bitwise basics); whole-`wide_math.rs` and remaining Vermilion boundaries are explicit |
| Inhabited-aware spec-fn emission | Complete | generic spec fns whose body indexes now emit `[Inhabited T]` on their type params (was ill-formed); surfaced by the `sorting` study |
| Standalone AeneasVerif SHA-3 through `copy_to` | Implementation milestone complete | Not SymCrypt/SymCRust; exact seven-file upstream Rust inventory; executable-token identity after erasing 86 typed regions; three byte-identical metadata files; default/dereference support, θ/ρ/π/χ/ι, `round`, `keccak_p`, `xor_byte_at`, `xor_lane`, `xor`, and `copy_to` verify as 198/198 obligations in 25 twins with no `sorry`; public parity remains 0/6 |
| Concrete associated-output normalization | Complete (monomorphic) | Unique exact impl equations normalize before IR emission; c152/c153 pin positive/negative parity; abstract generic projection remains a dedicated lowering refusal |
| Tuple-destructuring assignment | Complete for tuple patterns | Verus fork `7734d271a` admits rustc's evaluate-once synthetic declaration and component assignments; native compile/positive/negative tests and Vermilion c156/c157 pin simultaneous, nested, wildcard, and wrong-result behavior; no IR or VCGen change |
| Exact unsigned `rotate_left` | Complete | Current Verus fork `0bb5732ae` retains modulo-width behavior for every unsigned type; Vermilion's registry resolves those calls to `Vermilion.Vstd.Rotate`; c158/c159 pin zero, width, oversized, variable and wrong-result behavior |
| Native u64 endian conversions | Complete | Fork ancestor `c329046d2`, retained by `0bb5732ae`, specifies `to_le_bytes`/`from_le_bytes` and normalizes const array lengths for assume-spec matching; `Vermilion.Vstd.Bytes` mirrors them; c160/c161 give positive/negative parity |
| Canonical while setup + projected-write havoc | Complete | Pure setup prefixes are evaluated, false-arm borrow resolutions become loop-exit effects, and projected writes havoc a correctly typed root object; c162/c163 pin a mutating `while i < src.len()` |
| Checked assertions in while-condition setup | Complete | Setup assertions are proved from type facts and invariants before the condition becomes available; short-circuit-arm checks retain guards and established checks become exit facts. Existing `Assert`/`Branch`/`Loop` IR and VCGen rules suffice; c170–c172 pin positive, negative-span, and short-circuit cases. |
| Executable slice ranges and copying | Complete for scalar `Range`/`RangeFrom` shapes | Current fork `0bb5732ae` specifies immutable and mutable `usize`/`Range`/`RangeFrom` indexing. Vermilion recognizes only the exact core delegated contracts, normalizes their slice output, restores inherited bounds, relates the returned mutable view to its owner's prophecy, and composes ordinary `copy_from_slice`; c164–c169 and c173–c177 pin values, owner writeback, wrong results, bounds, and copy-length failures. |
| Generated/proof editor `Specs` roots | Complete | Proof roots are auto-discovered; generated stems anywhere use an on-demand Lake overlay. Exact keccak-iota `impl__6_index` and a fresh non-test generated root are integration-tested |

## 2026-07-20 — standalone AeneasVerif SHA3 `copy_to` milestone

- The unchanged executable `StateArray::copy_to` body now proves an exact
  recursive lane-to-little-endian-byte result, including its partial final
  lane. This is the standalone AeneasVerif project, not SymCrypt/SymCRust.
- Pinned Verus reports 52 verified, 0 errors; Vermilion kernel-checks 198/198
  obligations in 25 twins with no `sorry`; and the source guard restores all
  seven Rust files after erasing 86 annotation regions.
- Narrow lowering support folds model-transparent result equalities for the
  reserved `Deref::deref` and array-to-slice models; only the exact
  array-to-slice coercion may select one among multiple postconditions. Exact
  immutable array suffix ranges delegate to the slice model. c178–c181 pin
  positive and negative parity.
- The differential corpus is 180/180 with 88/88 failure-span agreement;
  median slowdown is 16.33×, a non-blocking performance-target miss.
- Public Aeneas parity remains 0/6. Absorb, squeeze, sponge, the six public
  bodies, the direct `algos.Specs`/`Sha3.Spec` bridge, and its axiom audit are
  still required.

## 2026-07-20 — mutable slice-range copying milestone

- Pushed Verus fork commit
  `0bb5732ae6afa6eabf3843e34bc554223b67be8f` to `origin/dev`. Its vstd
  contracts specify mutable `usize`, `Range<usize>`, and
  `RangeFrom<usize>` indexing: the returned reference initially denotes the
  old selected view, and its future reconstructs the final owning slice.
- Native positive and negative slice regressions pass 25/25. The rebuilt vstd
  reports 1,972 verified, 0 errors, and the complete upstream
  `rust_verify_test` suite passes, including all 19 Cargo integration tests.
- Vermilion normalizes only the matching concrete `SliceIndex::Output`,
  restores inherited `IndexMut` bounds, and lowers the delegated prophecy
  contract using existing calls, `Seq::subrange`, and sequence concatenation.
  The existing `copy_from_slice` contract then proves equal lengths and the
  copied final view. No new textual IR form, Lean VCGen rule, or axiom was
  added.
- c173–c177 cover bounded and suffix copies, reject wrong final-owner content,
  reject an out-of-bounds range, and reject unequal copy lengths. The corpus
  is 176/176 with 86/86 failure-span agreement; median slowdown is 15.44×.
- The Verus setup script now records the exact built pin and rebuilds after a
  pin change. Its export-marker check reads the binary without a pipe whose
  early exit could be misreported under `pipefail`.
- The unrestricted six-phase Vermilion suite passes all 48 runners, including
  deterministic emission, incremental/fail-closed/evidence checks, every
  proof library, the SHA3 source guard, and editor-root tests. The SHA3 claim
  itself deliberately remains 169/169 obligations in 22 twins, 47 Verus
  functions, seven pristine Rust files, and 78 erased annotation regions:
  this stage closes infrastructure and does not pretend `copy_to` is proved.
- Next, annotate and prove the unchanged `StateArray::copy_to` body against a
  lane-to-little-endian-byte sequence specification. Then continue through
  absorb/squeeze, `sponge`, the six public functions, and the exact pinned
  `Sha3.Spec` bridge.

## 2026-07-20 — unchanged SHA3 `StateArray::xor` milestone

- The unchanged `StateArray::xor` executable body now refines a closed
  recursive prefix-XOR specification. Its nested helper and loop are annotated
  only with contracts, invariants, and decreases clauses.
- Pinned Verus reports 47 verified, 0 errors. Vermilion kernel-checks 169/169
  obligations across 22 proof-twin units with no `sorry`; the latest clean SHA3
  run classified 24 as newly automatic and 145 as discharged interactively.
- Source preservation passes for all seven upstream Rust files after erasing
  78 typed annotation regions. All three metadata files and the complete
  upstream source inventory remain unchanged.
- Vermilion now accepts checked-arithmetic assertions in canonical `while`
  condition setup. It proves them from type facts plus invariants before
  branching on the condition, guards short-circuit-arm assertions, and carries
  established checks to the exit. This uses existing `Assert`, `Branch`, and
  `Loop` forms; there is no new IR constructor, VCGen rule, or axiom.
- c170–c172 cover the positive checked-arithmetic loop, a bounds failure at the
  same Rust span as Verus, and short-circuit safety. The complete corpus is
  171/171 with 83/83 failure-span agreement; median slowdown is 15.56×.
- The unrestricted six-phase suite passes all 48 runners, deterministic
  emission, incrementality/fail-closed/evidence checks, every proof library,
  the SHA3 source guard, and fresh editor roots.
- The next scalar parity boundary is mutable sub-slice prophecy/write-back and
  `copy_from_slice` for unchanged `copy_to`, followed by absorb/squeeze,
  `sponge`, the six public functions, and the exact zero-axiom `Sha3.Spec`
  bridge.

## 2026-07-20 — immutable executable slice-range milestone

- Pushed Verus fork commit
  `32259d40b05103fbeab45142dd51c3557f6426c8` to `origin/dev`. It adds the
  missing vstd `RangeFrom<usize>` slice-index contract and native
  positive/wrong-result/out-of-bounds regressions.
- The full upstream Verus `rust_verify_test` suite passes; its slice test file
  is 23/23 and the rebuilt release vstd reports 1,972 verified, 0 errors.
- Vermilion lowers exact immutable `Range` and `RangeFrom` indexing to
  `Seq::subrange`. It checks `start <= end <= len` or `start <= len` at the
  call, rather than trusting the SST's delegated result closure without the
  inherited trait requirement. Other delegated closure shapes fail closed.
- c164–c169 cover both valid views, wrong views, and both out-of-bounds calls.
  The full six-phase suite passes all 48 runners, 168/168 differential
  verdicts, and 82/82 failure spans. The median differential slowdown is
  17.52× over 168 cases, still outside the historical performance target but
  not a correctness failure.
- SHA3 source identity and the verified claim remain unchanged at seven Rust
  files, 76 erased annotation regions, 43 Verus functions, and 142/142 Lean
  obligations in 20 twins. This stage enables, but does not itself prove,
  unchanged `xor`. Mutable range write-back and `copy_from_slice` remain the
  following boundary for `copy_to`.

## 2026-07-20 — unchanged Keccak-p, endian plumbing, and xor-lane milestone

- Pushed Verus fork commit
  `c329046d2af46bbc68db94acae3e22b2ef4e6df4` to `origin/dev`. Native u64
  endian methods now have exact vstd specifications, and unevaluated const
  array lengths are normalized before assume-spec signature matching.
- The full upstream Verus `rust_verify_test` suite passed. The pinned release
  build reports vstd 1,972 verified, 0 errors; its dedicated positive and
  negative byte tests pass.
- Vermilion adds `Vermilion.Vstd.Bytes`, stable registry mappings, generalized
  canonical while-condition setup, and root-typed havoc for projected writes.
  Four dedicated differential cases cover endian round trips/wrong order and
  a mutating slice-length while loop/false assertion.
- The unchanged SHA3 working copy now verifies default, θ/ρ/π/χ/ι, `round`,
  `keccak_p`, `xor_byte_at`, and `xor_lane`: 142/142 Lean obligations in 20
  proof twins, 0 `sorry`; pinned Verus checks 43 functions, 0 errors.
- Source preservation passes for all seven Rust files after erasing 76 typed
  regions; all three metadata files remain byte-identical and the exact source
  inventory is retained.
- The complete six-phase suite passes all 48 runners, deterministic emission,
  incrementality/fail-closed/evidence checks, all registered twin libraries,
  162/162 verdict parity, and 78/78 failure-span agreement. The editor test
  also synthesizes a fresh sibling-`Specs` directory and proves it resolves
  without a new lakefile entry.
- This is not yet Aeneas parity. The residual critical path is unchanged
  `xor`/`copy_to`, executable slice ranges and `copy_from_slice`, absorb and
  squeeze, sponge, the six public entry points, and their exact zero-axiom
  bridge to pinned `Sha3.Spec`. Full source-module breadth is stretch work
  after that six-theorem boundary.

## 2026-07-19 — Aeneas SHA-3 acquisition and tuple-pattern milestone

- Acquired the complete pinned `AeneasVerif/sha3.rs` Cargo project at
  `cb411d54ee0b`, including every file under `src/`, as separate `upstream/`
  and `verification/` copies. Pin, tree, source-identity, and all three Cargo
  baselines pass (31 tests passed, 1 ignored in each project).
- Pinned Vermilion to Verus fork commit `35f3268264fc`. General tuple-pattern
  function parameters now lower through Rust-to-VIR and executable erasure;
  the Verus `functions` suite passes 11/11 and vstd passes 1972/0 in both
  debug and release configurations.
- Differential c148/c149 cover nested, wildcard, mutable, method, and failing
  tuple parameters. The full six-phase Vermilion suite passes: 47/47
  example/case-study runs, 148/148 verdict parity, and 71/71 failure-span
  agreement.
- Lake now owns editor-only module roots for transient differential generated
  modules and proof twins. A suite guard confirms that both forms resolve
  their `Specs` imports in `lake setup-file`, matching Lean editor behavior.
- At this tuple-only checkpoint the unchanged Keccak ι/ρ/χ probes stopped at
  custom tuple-keyed `IndexMut`. Tuple support required no Vermilion VCGen
  change; the following milestone records that gate's completion.

## 2026-07-19 — custom `IndexMut`, returned `&mut`, and impl navigation

- Pinned Vermilion to Verus fork commit `1fc6a46d1561`. Tuple bindings are
  available in contracts and custom static `IndexMut` uses the vstd
  `IndexSpecImpl` requirement; Verus `functions` passes 11/11 and vstd passes
  1972/0 in debug and release.
- Vermilion aliases a returned mutable reference to the callee borrow and maps
  its prophecy future to the caller's concrete indexed destination. Positive
  c150 verifies 11/11 obligations; negative c151 fails at the same assertion
  line in Verus and Lean.
- The complete six-phase suite passes: 47/47 example/case-study runs, byte
  determinism, incrementality/evidence/twin-library checks, 150/150
  differential verdict parity, and 72/72 failure-span agreement.
- VS Code navigation now resolves emitted impl namespaces such as
  `impl__2.index_mut` from the manifest and bodyless impl spec methods from
  their Specs marker. Multiline contract clauses map to their corresponding
  `ensures` VC rather than the function's first assertion. Three c150-specific
  extension tests pin these routes.
- The refreshed SHA-3 probes have advanced: `iota` now isolates associated
  `Index::Output` normalization in Vermilion, `rho` isolates Verus
  destructuring assignment, and `chi` reaches the allowed need for an added
  loop `decreases` annotation. The upstream Aeneas Lean build passed.

## 2026-07-19 — SHA-3 source-preservation gate

- Added `vrml_source_guard`, which requires the pristine and verification
  projects to contain exactly the same relative `src/` paths and byte-identical
  Cargo/toolchain metadata.
- Rust files are compared as normalized token streams after erasing only
  balanced, typed annotation regions; non-Rust source files remain byte-exact.
  The current SHA-3 baseline passes for 7/7 Rust files, 3/3 metadata files,
  and zero annotation regions.
- Six unit tests cover named-result erasure and reject executable token
  changes, executable content mislabeled as a contract, missing/extra source
  paths, and malformed/nested regions. The guard is part of the complete suite, while `check_sources.sh`
  separately retains the pinned Git commit/tree/blob check for `upstream/`.
- This is infrastructure, not a SHA-3 verification result. At this checkpoint,
  `Index::Output` normalization and the first state/ι annotations remained.

## 2026-07-19 — concrete associated-output normalization

- The direct lowering now retains the post-simplify crate's associated-type
  impl equations and replaces a projection only when one exact monomorphic
  equation matches. Generic, unresolved, or ambiguous projections fail closed;
  there is no new textual IR node, Lean VCGen rule, or assumed type axiom.
- Differential c152 verifies all 11 obligations with
  `&Self::Output`/`&mut Self::Output`; c153 fails at line 39 in both Verus and
  Lean. The focused corpus is 152/152 with 73/73 failure-span agreement.
- `tests/lowering_refusals/associated_projection_generic.rs` is accepted by
  Verus and deliberately rejected by Vermilion at lowering, pinning the
  generic boundary.
- The unchanged `keccak_iota` probe now reaches Lean and emits 12 obligations;
  10 are unproved because the annotation-light probe lacks the state/index
  contracts. Those annotations, not another projection feature, are next.
- The complete six-phase suite passes all 47 end-to-end runners, 152/152
  differential verdicts, 73/73 failure spans, and the Lake/editor import
guard. Differential cache hits now require their generated editor artifacts,
so a clean generated tree is materialized instead of replayed incompletely.

## 2026-07-19 — first unchanged SHA-3 state/`iota` slice

- Added 38 typed annotation regions directly to the working
  `verification/src/algos.rs` while leaving the pristine copy untouched.
  Erasure preserves all seven upstream Rust files token-for-token and all
  three metadata files byte-for-byte.
- The annotations define a closed view of the private state, the
  `IndexSpecImpl` requirement, exact immutable/mutable index reference
  contracts, and the unchanged `iota` poststate. Pinned Verus reports 9
  verified and 0 errors.
- The SHA-3 runner verifies all 12 Lean obligations across four colocated
  proof-twin units with no `sorry`, then reruns the source guard. All other
  production bodies are explicitly external, so no whole-library claim is
  made.
- The source grammar admits only verification-only `View` or
  `IndexSpecImpl` spec impls and excludes only `src/generated/` and
  `src/proofs/` Lean artefacts from source inventory. Eight focused unit tests
  pin those restrictions.
- Differential c154/c155 pin the private-state update in both directions,
  bringing the corpus to 154/154 verdict parity and 74/74 failure-span
  agreement. The complete suite now includes 48 end-to-end runners.
- Next: add tuple-destructuring assignment to the Verus fork for unchanged
  `rho`, then add exact `u64::rotate_left` semantics.

## 2026-07-19 — tuple-destructuring assignment

- Verus fork commit `7734d271ad796ba134200fd2fa8ac1e706200342`
  translates rustc's assignment desugaring: the RHS is evaluated once into
  synthetic tuple bindings, followed by ordinary component assignments. This
  preserves simultaneous swap behavior and executable erasure.
- Native Verus tests cover compilation/erasure, flat swap, nested tuple and
  wildcard assignment, plus a wrong-result rejection. The complete `basic`
  binary passes 62 with 1 ignored, `functions` passes 11/11, and debug/release
  vstd each verify 1,972/0.
- Vermilion required no lowering, IR, or Lean VCGen change. Differential
  c156/c157 pass both verdicts and agree on negative line 10, bringing the
  corpus to 156/156 verdict parity and 75/75 failure-span agreement.
- The unchanged `keccak_rho` probe now crosses `(x, y) = …` and fails precisely
  at unsupported `u64::rotate_left`. Exact width-64, variable-count rotation
  semantics are the next stage.

## 2026-07-19 — automatic editor roots for new proof twins

- Removed the hand-maintained `DifferentialProofs` root list that stopped at
  c151 and caused each later proof module to be reported as `_unknown` by
  `lake setup-file`.
- All 50 named proof libraries now use one shared exact first-level-root
  discovery function. The named targets remain because they establish unique
  module ownership and are part of the example/case-study runner interface.
- The editor Lake shim compares an exact snapshot of every root below every
  `proofs/` directory rather than relying on racy mtimes. Any module with a
  sibling `Specs.lean` receives the cold dependency build it needs, and the
  stdin module header is part of the setup-cache identity.
- The regression primes Lake, creates new generated and ordinary-example
  roots with distinct `Specs.lean` modules, runs the file worker's actual
  `--no-build --no-cache` protocol, changes the stdin header, and proves clean
  reconfiguration after root removal. The old c148/c150/c156 cases are no
  longer special-cased by this integration test.
- Focused c150/c156 setups, targeted ordinary/SHA-3/Percolator library builds,
  and the full suite pass. The full result remains 48/48 runners, 156/156
  verdict parity, 75/75 failure-span agreement, and 12/12 SHA-3 obligations;
  median differential slowdown was 17.52x.

## 2026-07-19 — exact unsigned rotation and general generated editor roots

- Verus fork `a33ad15348aa7153de18a48a246b145bf4e2f483` adds exact
  per-width `rotate_left` specifications with native compile/erasure,
  positive, and negative tests; basic, functions, and debug/release vstd pass.
- Vermilion resolves the canonical vstd paths to
  `Vermilion.Vstd.Rotate.u*_rotate_left`. c158 verifies shifts 0/4/63/64/129;
  c159 rejects the wrong result at the same line as Verus. The corpus is
  158/158 with 76/76 failure-span agreement.
- The unchanged `rho` probe lowers to 23 obligations; 9 remaining
  index/bounds/precondition goals define the next annotation/proof stage.
- The editor shim activates requested generated stems through one disposable
  overlay instead of assigning the namespace to `tests/differential`.
  `keccak_iota/impl__6_index.lean` and a fresh generated root outside tests
  both resolve their sibling `Specs` imports in the real file-worker protocol.
- The full six-phase suite passes 48/48 runners, 158/158 verdicts, 76/76
  failure spans, and 12/12 current SHA-3 obligations. Median differential
  slowdown was 19.28x.

## 2026-07-19 — unchanged SHA-3 `rho` verified

- Added only typed spec/contract/loop/result annotations to the verification
  copy. A recursive remaining-loop model captures the exact table lookup,
  rotate, update, coordinate transition, and termination behavior.
- Pinned Verus reports 12 verified and 0 errors for `algos.rs`.
- Vermilion verifies 29/29 total SHA-3 obligations in five function twins with
  no `sorry`; the new `rho` unit is 13 automatic + 4 interactive.
- Source preservation passes for all seven Rust files after erasing 42 typed
  regions, and for all three byte-identical metadata files.
- `lake build CaseAeneasSha3` and the case-study runner pass. This stage needed
  no lowering, IR, VCGen, or Verus-fork change.
- Next: π and χ, then θ. The local recursive contract still needs its later
  representation/refinement bridge to the exact pinned Aeneas/FIPS model.

## 2026-07-17 — crypto push (Aeneas subsumption stages 1–3)

- Fragment: array-repeat literals (`[v; N]` → `Vermilion.Seq.fill` via the
  mirror registry, const-generic length as leading Int arg; c146/c147) and
  indexed array assignment destinations (local and `&mut [T; N]`; #22
  closed), with a per-path prophecy re-snapshot fix (early-return
  `has_resolved` no longer shadows the live path). Parity 146/146, 70/70.
- vstd mirror: unsigned `wrapping_{add,sub,mul}` as registry-resolved
  `(x op y) % 2^w` models (`Vermilion.Vstd.Wrapping`); twins simplified.
- Verus pin moved to our fork (`ilyasergey/verus` branch `dev`): VIR export
  hook (env var now `VERUS_VIR_EXPORT`; patch overlay retired) +
  `debug_assert!`-as-static-assert (vstd 1972/0 under it).
- Case studies: [curve25519](../../case-studies/curve25519/) verified (38
  obligations, 9 auto + 29 interactive; ring spec-bridge to the
  dalek/Aeneas `asNat` theorem — plan gate C0); SymCrypt `mont_mul`/
  `mod_reduce` verified in the aeneas probe suite with a kernel-checked
  bridge to `Symcrust.mont_reduce.spec`; percolator `active_bitmap_set`
  10/11 (#18 pins the last obligation).
- Trait-impl contract idiom confirmed (requires-only-inherited;
  impl `ensures` + `IndexSpecImpl` hook) — the believed blocker dissolved.
