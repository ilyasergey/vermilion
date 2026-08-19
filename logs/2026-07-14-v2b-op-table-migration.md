# 2026-07-14 — V2 Phase B: the op table migrates onto the registry

Follow-up to Phase A (`cb2021e`, same day): the adapter's hard-coded vstd
op table shrank to the structural core, and everything else now EMITS
`(vstdapply …)`, resolved by the shipped registry.

- **What stayed first-class** (and why): `Seq::len`/`Seq::index` — the
  generator itself fabricates these in Vec type facts and loop machinery,
  so they cannot depend on a registry; the `empty` constructors — their
  rendering needs a type ascription the registry cannot supply; the
  `Set::to_iset` collapse — a rewrite, not a function; bitops (M4).
- **What migrated** (by DELETING arms — the catch-all does the rest):
  `Seq::{push, update, subrange, add, to_multiset, new}`,
  `Set::{insert, contains/spec_has, remove, len}` (plus the inlined
  `ISet::contains` route, now a registry line documenting the collapse),
  `Map::{insert, index/spec_index, dom, contains_key}`,
  `Multiset::{insert, count, len}`.
- **Byte-stability by construction**: the registry maps each path to the
  exact Lean name the structural forms rendered (`Vermilion.Seq.push`,
  `Vermilion.Set.contains`, …), with the same atomization — validated by
  re-running the collection-heavy examples and case studies: zero
  stale-twin warnings, no modified proof files, differential corpus
  **133/133 parity, 64/64 spans**, full suite green.
- The legacy structural productions remain PARSED (fabricated-fact sites,
  corpus stability) but are no longer the growth path — `docs/ir.md`
  marks them accordingly.

With this, "add a vstd spec fn" = one Lean registry line + the model
definition/lemmas it points at. The porting campaign proper (V3 — walk
`vstd::{seq_lib,multiset,set_lib,map_lib}`, translate statements in
place, prove interactively, register; then V4 hints with verbatim
`mergesort.rs` as the acceptance test) is queued next in
plans/execution-plan.md §V-series.
