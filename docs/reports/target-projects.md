# Target projects and the feature-progression stages

Original scout: 2026-07-14 (63-example Verus-suite sweep + full Verus
example corpus + external-project survey). The acquisition stages below
retain that survey's rationale. Current ordering is set by the
[execution plan](../../plans/execution-plan.md): dalek-lite is active and
Aeneas SHA-3 is paused. Status was reconciled against the tree on 2026-09-23;
no new verification run accompanies this edit.
Driver: the user-set goal of saturating
Vermilion to feature parity as a Verus-compliant verifier for the
**sequential** fragment of Rust that Verus supports, measured on real
programs rather than feature checklists.

This document is the acquisition ladder: every case study and external
project we intend to run Vermilion on, grouped into stages ordered by
(value × tractability). Each stage names the fragment features it forces;
a stage is done when its driver programs verify end to end (interactive
twin proofs allowed and expected — see
`.claude/memory/interactive-proofs-first-class.md`). Landed drivers move to
[sequential-case-studies.md](sequential-case-studies.md) status tracking.

Scout headline (2026-07-14, before F7): of 63 Verus examples swept, 15
lowered end-to-end, 29 hit fragment gaps, 19 were front-end rejects
(non-sequential or out of scope). F7 (`Seq::add`) closed the
highest-value expression gap; the stages below sequence the rest.

**Feature progression:** S1 is **DONE**, and with it the V1--V4
vstd-mirror machinery: vstd spec fns resolve by name against
`lean/Vermilion/Vstd/` (`(vstdapply …)`, fail-closed on unmapped paths),
`broadcast use` of a registered group feeds ladder hints, and the
case-study-driven `Seq`/`Multiset`/`Set`/`Map` surface is ported. The next
stages (S2, S3,
S4 items) are therefore mostly UNBLOCKED on the collection side — what
remains for each is the non-collection feature it names (Box/returns/
`&mut`-returns for S2, recursive enums/accessors for S3). `multiset.rs` has since landed
as the verified `case-studies/sorting` study. The first GitHub acquisition is
also **DONE**: `case-studies/percolator` pins `143e68c`, has expanded its green runner to 31 unchanged
production function bodies / 118 logical-or-evidence declarations, and records
its clean tool gaps as issues. The next four pinned-Verus studies are now
acquired in increasing complexity: `imo_1988_6` and `power_of_2` are green;
`entry_api` and `statics` are documented expected-refusal probes. The landed
slice adds isolated nonlinear queries, exact VIR clipping, and named-result
branch typing; the two blocked studies drive explicit Entry-API and
statics/atomic-semantics issues.

## S1 — multisets and sorting — **DONE** *(driver: `case-studies/merge-sort`)*

Both merge-sort variants verify end to end: `mergesort.rs` (verbatim
upstream, all proof scripting preserved, 43 automatic + 17 interactive,
no `smt` reliance) and `mergesort_clean.rs` (specs-only, 31 + 9). The
features this stage forced all landed: `Seq::to_multiset` as a known op
over the Mathlib `Multiset` model, the `to_multiset_ensures` /
`Multiset::add` surface, `broadcast use` groups → ladder hints (V4),
`Vec::split_off`/`Vec::clone` contracts. Guards c127–c138.

The original remaining warm-up was `examples/multiset.rs`
— spec-level `sort_by`/`sorted_by`/`lemma_sorted_unique` over a
spec-closure comparator (`vstd::relations`). It is exactly the machinery
`mergesort.rs`'s omitted `main` needs.

**VERIFIED (2026-07-15) as `case-studies/sorting`.** 16 obligations, 12
automatic + 4 interactive (3 concrete permutation-multiset equalities by
`decide`, one 5-element `sorted_by` by `interval_cases`). The
`lemma_sort_by_ensures`/`lemma_sorted_unique` CALLS assume their vstd
contracts at their call sites; `sort_by` is modeled opaque and
`sorted_by` faithfully; no `choose` on our side. Landing it needed one
general LOWERING fix (user-authorized): **Inhabited-aware spec-fn
emission** — `Render.renderSpecFn` now emits `[Inhabited T]` on every
spec-fn type param, since a generic spec fn whose body indexes (e.g.
`vstd::relations::sorted_by` via `Seq.index`) was previously emitted
without it and failed to elaborate. Statement hashes are unchanged (they
reference applications, not def signatures). This supplies the
`sort_by`/`sorted_by` machinery used by merge sort's omitted executable
harness; that harness still has its own macro/allocation surface to assess.

## S2 — recursive heap datatypes  *(driver: `guide/bst_map.rs`)*

The Verus guide's `TreeMap<V>` (426 lines; `new/insert/delete/get/get_mut`
against a `Map<u64,V>` model) is the best medium realistic program in the
corpus. Forces:

1. **`Box` of recursive datatypes** (`Option<Box<Node<V>>>`) and
   `Option::take`;
2. **the `returns` postcondition clause**;
3. **`&mut` returns** (`get_mut: Option<&mut V>`) — the M3-tail carry-over;
4. `Map::union_prefer_right` (vstd Map surface growth).

Follow-ups in the same stage: `bst_map_generic.rs` (adds a user total-order
trait bound over generic keys), `bst_map_type_invariant.rs` (adds
`#[verifier::type_invariant]` — assess before scheduling). The
`doubly_linked` lowering stack overflow (recorded defect) belongs here too:
recursive-datatype plumbing must not recurse unboundedly.

## S3 — `choose` and spec-level search  *(driver: `summer_school/chapter-1-22.rs`)*

The summer-school binary-tree chapter (sorted-tree ⇒ sorted flattening,
`find_in_binary_tree`). Forces:

1. **Scalar `choose` has landed (DL2).** Reassess the driver against the
   supported binder/body shapes. Its conditional characterizing hypotheses
   are specified in [the VC policy](../vcgen.md);
2. boxed recursive enums with `decreases self` (overlaps S2);
3. legacy `#[is_variant]` accessors (`.is_Nil()`) — cheap syntactic
   surface.

Also unblocks the `guide/lib_examples.rs` tour (`Set::choose`,
`Set::filter`, `ISet`/`IMap` — take what falls out, don't chase the
infinite-collection parts).

## S4 — remaining gap-map singles (from the 63-example sweep)

Independent small slices, schedulable in any order alongside S1–S3:

- **`BitNot`** (the one missing bit op in the M4 `Bits` library);
- **`AssertQuery` nonlinear blocks — LANDED (2026-07-17).**
  `by (nonlinear_arith)` is an isolated query over type facts plus explicit
  local requirements/body, reusing `(LOOP)`; c141/c142 pin both directions.
- **statics — ACQUIRED / DEFERRED.** `case-studies/statics` is verbatim and
  Verus 9/9. Vermilion refuses `StaticVar` before the file's atomic counter;
  the full `Lazy<T>` requires globals/initialization, M5 ghost memory, and M6
  atomic ghost protocols, tracked as a foundations issue.
- **standard `HashMap::entry` — ACQUIRED / BLOCKED.** The verbatim
  `case-studies/entry-api` has a recorded Verus 3/3 baseline. Generic opaque
  applications have landed; Entry views and returned-`&mut` relations remain
  the planned progression. Rerun the probe to locate its current first refusal. The case README and aggregate issue
  preserve that ordered feature progression.
- in-fragment regression adoptions. **Landed (2026-07-14):**
  `case-studies/primes` — the summer-school primality development
  (`chapter-2-1` spec-level `is_prime` + `chapter-2-2` verified
  trial-division `test_prime`), a multi-file study needing NO fragment
  growth (number theory / `divides`, `while`+invariant, `assert forall …
  by`); 24 obligations, 23 automatic + 1 interactive. **Also landed 2026-07-17:**
  verbatim `case-studies/imo-1988-6` (67 obligations, 66 automatic + 1
  interactive) and `case-studies/power-of-2` (57, 40 + 17). Besides isolated
  nonlinear queries, power-of-2 forced exact VIR `Clip` semantics for
  explicit wrapping machine operations; named return destinations are now
  typed before branch joins. **Still blocked:** `bitmap.rs` (`BitNot`, plus a user macro and
  `#[verifier::exec_allows_no_decreases_clause]`),
  `guide/recursion.rs` (below), and the `tests/` clusters (`seqs.rs`,
  `loops.rs`, `mut_refs*.rs`, `adts*.rs`, `returns_postcondition.rs`).

  **Upstream recursion tutorial: historical investigation.** The former
  `case-studies/recursion` acquisition is excluded from supported coverage.
  A future positive driver must separate examples from intentional failures
  and assess custom decreases relations and supplied termination proofs.

## S5 — external projects (the endgame corpus)

Full multi-file Verus projects, surveyed 2026-07-14 (all URLs verified).
Ordered by extractability × sequential purity. These are the M3/M4
gate-project coverage measurements' successors and the M7/M8 substrate;
each entry names what it will force beyond S1–S4.

### Percolator production slices — **ACQUIRED / PARTIALLY VERIFIED**

`aeyakovenko/percolator` is pinned at `143e68c` under
`case-studies/percolator`. It is a dependency-free `no_std` risk engine with a
large Kani decomposition rather than an upstream Verus project, making it a
good test of adding Verus contracts without rewriting production Rust. Both
upstream runtime suites pass (129 default tests; 158 with `fuzz`). All 33
selected production bodies verify under the pinned Verus after contracts are
added in the recorded baseline. The original 28-function / 97-obligation
Vermilion subset covered:

- auto-crank observation classification and simple side policy;
- all persistent enum encode/decode functions;
- active-bitmap emptiness (bounded loop) and bit extraction (array read,
  shift, mask), plus Boolean and compound `Result` gates with explicit
  interactive `Decidable` evidence;
- `wide_math.rs`'s standalone saturating multiply and nine four-limb U256
  construction/readback/bitwise methods (method bodies unchanged; the local
  tuple field is public solely for Verus contract visibility).

The entire `wide_math.rs` file is not yet a sound verbatim claim. Before
Vermilion lowering, Verus rejects the upstream private-field/public-constant
combination, then (under a diagnostic public-field adaptation) unsupported
`overflowing_*`, `leading_zeros`, `unsigned_abs`, and formatted panic/assert
core APIs. The case README records the exact boundary and source links.

DL5 added withdrawal, bounded arithmetic, and bitmap set to the green runner,
which now covers 31 production bodies and 118 logical-or-evidence declarations.
The two remaining partial drivers exercise `Ord::min/max` and `BitNot`.
Per-function isolation, generic opaque applications, indexed fixed-array
mutation, and constructor typing have landed. See the
[case README](../../case-studies/percolator/README.md) for the runner split and
closed prerequisites.

### dalek-lite (the CryptoProver benchmark): partial field-cone acquisition

`Beneficial-AI-Foundation/dalek-lite` is pinned at `de9ebf015`. DL1–DL7 and
whole-crate artifact routing have landed. The acquired cone has 5,215
obligation declarations; eight explicit proof holes remain in four checked-in
units, alongside the recorded lowering refusals. The
[case status](../../case-studies/dalek-lite/README.md#current-verification-status)
and [DL agenda](../../case-studies/dalek-lite/PLAN.md) track proof completion,
higher layers, and discharge of the upstream trusted floor. Source
accommodations are explicit in the study's fidelity record.

**Tier 1 — extract self-contained sequential modules first:**

1. **Vest** (parser combinators; secure-foundations/vest, MIT, USENIX
   Sec'25) — verified binary parsers/serializers; purely sequential,
   composable combinator modules. Forces: deep generics + trait-heavy
   combinator types, `returns` clauses, byte-slice reasoning. Start with
   a single combinator (e.g. TLV from `vest-examples/`).
2. **pmemlog / verified-storage** (microsoft/verified-storage, MIT,
   OSDI'25 artifact) — persistent-memory append-only log; explicitly
   sequential. Forces: crash-consistency ghost state shape (sequential
   ghost, no concurrency), large-struct invariants, u64 arithmetic at
   scale. `multilog`/`capybaraKV` follow.
3. **Verdict ASN.1/X.509 parser** (secure-foundations/verdict,
   Apache/ISC/MIT) — `verdict-parser` is separable and builds on Vest.
4. **IronKV marshalling** (verus-lang/verified-ironkv, MIT) — the
   classic marshalling/serialization module named in the M3 gate;
   sequential host code despite the distributed setting.
5. **verified-nrkernel page table** (utaal/verified-nrkernel,
   Apache/MIT) — single-threaded page-table walker against an MMU model;
   the M4 gate's "page tables" line item.
6. **Verus-Bench** (microsoft/verus-proof-synthesis, MIT) — 150
   algorithm-level verified tasks: bulk material for the differential
   corpus and the suite-coverage scoreboard (35/60/75% gates). Related
   corpora: AlphaVerus, ExVerus, PSV, VeriContest.

**Tier 2 — sequential but larger/odder; after Tier 1:**

7. **vostd** (asterinas/vostd, MPL-2.0) — OSTD memory-management
   verification, explicitly sequential today; kernel-entangled, license
   needs care.
8. **rlsf-verified** (unsoundsystem/rlsf-verified, MIT, WIP) — TLSF
   allocator bitmaps; the M4 gate's "rlsf bitmaps" line item.
9. **Owl-generated protocol code** (secure-foundations/owl, BSD-3) —
   sequential Verus over Vest wire formats, but machine-generated.
10. **verified-graphs** (crates.io) — small sequential graph properties.
11. **VeriStruct modules** (arXiv 2510.25015) — 11 data-structure modules
    incl. a BST map; mine when the artifact is public.

**Tier 3 — out of sequential scope (recorded so we stop re-surveying):**
verus-mimalloc, verified-node-replication, CortenMM, Splinter
(verified-betrfs), Atmosphere/Astros, VeriSMo (hardware-coupled), Anvil
(sequential reconcile loops but the point is temporal/TLA proofs — M7).
CreuSAT has **no Verus port** (it is Creusot); drop it from the M3 gate
list in favor of Tier 1 above. `exec_spec` is a vstd feature, not a
project.

## Standing notes

- Every adoption follows the house pattern: one folder under
  `case-studies/`, verbatim sources, `run.sh` through
  `scripts/run_example.sh`; blocked studies run `--expect-unsupported`
  (they succeed *because* the adapter refuses, and fail loudly the moment
  the fragment catches up — the flag then comes off).
- Fragment growth stays same-slice: adapter + IR grammar + `docs/ir.md` +
  Lean parser + prelude + `docs/vcgen.md` (when VC shapes change) +
  example + differential cases together.
- Per-function lowering isolation (emit what lowers, report the rest) is
  the tooling item that makes partially-in-fragment projects legible; it
  graduates from nice-to-have to necessary at S5.
