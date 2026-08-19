# 2026-07-14 — V3: the vstd port + a vstd-mirroring library restructure

Two parts, one slice.

## (a) Library restructure — mirror the vstd module tree

The vstd collection models moved OUT of the monolithic `Prelude.lean`
into one Lean module per vstd module, under `lean/Vermilion/Vstd/`:

- `Vstd/Seq.lean` ↔ `vstd::seq` — `Vermilion.Seq` core (index/push/len/
  empty/new/update/subrange/add + lemmas).
- `Vstd/SeqLib.lean` ↔ `vstd::seq_lib` — the wider surface (first/last/
  drop_last/drop_first/remove/contains) + the `to_multiset` bridge.
- `Vstd/Set.lean` ↔ `vstd::set`, `Vstd/Map.lean` ↔ `vstd::map`,
  `Vstd/Multiset.lean` ↔ `vstd::multiset`.

Namespaces (`Vermilion.Seq`/`Set`/`Map`/`Multiset`) are UNCHANGED, so no
generated module, twin, or downstream import moved — only file location.
`Prelude.lean` now holds just the non-vstd primitives (`ediv`/`emod`,
`iteP`, the `Bits` library, range predicates) and re-exports the models
via imports, so `import Vermilion.Prelude` still brings everything.

Dropped `Prelude/Probes.lean` (user question): its `ediv`/`index`/range
smoke-tests duplicate coverage the differential corpus + suite provide,
and it dragged the full `Mathlib.Tactic` import into the default build
target. Kept `Vstd/Probes.lean` — it is the registry honesty guard (a
typo in a *hint* name fails open/silent otherwise), core to the design.

## (b) Ported surface

Model definitions (namespace `Vermilion.Seq`/`Multiset`, faithful to the
vstd bodies): `first`, `last` (`vstd::seq`); `contains`, `drop_last`,
`drop_first`, `remove` (`vstd::seq_lib`); `Multiset::remove`. Proved
mirror lemmas backing registry hints: `dropLast_add` (vstd
`drop_last_distributes_over_add`), `toMultiset_contains` (the membership
half of `to_multiset_ensures`), plus `len_dropLast`/`index_dropLast`/
`len_remove` folded into the `group_seq_properties` expansion. All
registered in `Vstd/Registry.lean`; the build-time probe confirms every
name resolves.

Deferred (documented in `Vstd/SeqLib.lean`; NOT required by the
merge-sort acceptance test since the corresponding vstd lemmas enter as
droppable hints in V4): the `remove` half of `to_multiset_ensures`
(needs the value-vs-index erase bridge), `sorted_by`/`lemma_sorted_unique`
(spec-closure comparators).

## Verification

Differential corpus **135/135 verdict parity, 65/65 span agreement**
(+c135 `drop_last` positive, c136 `remove` wrong-length negative); full
suite green; the restructure is behaviour-preserving (collection examples
and merge-sort re-run with no twin churn). Docs updated: DESIGN.md ("Where
to look" TCB item 4), README (V3 row), plan (V-series status).

Next: **V4** — the hint channel (`broadcast use` + proof-fn-call lemma
names → registry → ladder hints), with the verbatim `mergesort.rs` as the
acceptance test.
