# 2026-07-14 — Verbatim merge sort verified (auto + interactive)

User-directed: verify the VERBATIM upstream Verus merge sort — all inline
proof scripting preserved — by a combination of automated and interactive
proofs. Done: `case-studies/merge-sort/mergesort.rs` (the upstream
`examples/mergesort.rs`, minus the out-of-fragment `main`) verifies end to
end — **60 obligations, 43 automatic, 17 interactive, zero `smt`
reliance** (the twin elaborates under the plain Lean kernel).

## Two generator fixes surfaced by the verbatim source

- **Keyword binders** (`leanSegment`): Rust lets `end`, `from`, `by`,
  `set`, … be identifiers; Lean does not. The upstream `end` parameter
  produced an ill-formed `(end : Int)` binder. `leanSegment` now suffixes
  reserved words (`end`→`end_`). (The user caught this: "end is a
  keyword.")
- **seq_lib routing** (adapter): the `type_name` match routed only
  `Seq::to_multiset` from `seq_lib` through the vstd-mirror registry;
  `drop_last`/`remove`/`contains`/`drop_first` fell to generic user
  spec-fn emission, which (a) duplicated the registry mirror and (b) was
  ILL-FORMED for `remove i`/`contains needle`, whose element type survives
  only in a monomorphized `Int` argument, leaving the emitted `{A : Type}`
  binder unconstrained ("don't know how to synthesize implicit argument
  A"). Now ALL `seq_lib` `Seq` methods route through the registry to
  `Vermilion.Seq.*`. (The user caught this: "generated Lean file is
  ill-formed.") This closed 10 of the initial 22 failing obligations
  outright (they now use the clean model + its `@[simp]`/`grind` lemmas).

## The 17 interactive proofs

Most are one-liners or mirror the clean twin: `lemma_subrange_push`/
`lemma_subrange_add` are direct prelude-lemma applications
(`subrange_push`, `subrange_add_subrange`); the four `merge` loop
invariants reuse the clean proofs (helper lemmas in the twin's
`-- vrml:user:begin/end` section) with shifted branch-assume indices; the
recursive `lemma_to_multiset_distributes_over_add` needed five short
asserts (empty-tail base case, `drop_last`/`remove` identity, the
`push (drop_last X) (last X) = X` step); the end-of-`merge`/`merge_sort`
multiset and `is_sorted` obligations reuse the clean ensures proofs. The
last `smt`-only obligation (`merge_sort`'s `v1@+v2@ == v@` split assert)
was also proved interactively (`subrange_add_subrange` + `subrange_all`),
removing all `smt` dependence.

## Consolidation + housekeeping

- Two mergesort files, both verified: `mergesort.rs` (verbatim,
  `run_verbatim.sh`) and `mergesort_clean.rs` (specs-only, `run.sh`). The
  throwaway `mergesort_verbatim.rs` probe was folded into `mergesort.rs`.
- `run_suite.sh` now globs `run_verbatim.sh` too (the verbatim case study
  is gated).
- Removed the obsolete "Formal M1 gate: ≥95% parity" line from the
  differential report (user-flagged as confusing/obsolete).

Corpus **137/137 verdict parity, 66/66 spans**; full suite green. Docs:
case-study README (two verified variants), README progress, plan
(V-series status), this log.
