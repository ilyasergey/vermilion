# Merge sort — two verified variants

Fully verified merge sort on `Vec<u64>`: `merge_sort` returns a **sorted
permutation** of its input, the permutation stated as multiset equality
(`r@.to_multiset() == v@.to_multiset()`). Two sources, same algorithm and
contracts, both verified end to end:

- [`mergesort.rs`](mergesort.rs) — the **verbatim** Verus upstream
  (`examples/mergesort.rs`, MIT/Apache-2.0) WITH all its inline proof
  scripting preserved (`proof {}` blocks, `broadcast use`, per-site lemma
  calls, `=~=` extensionality asserts). 60 obligations — 43 closed by the
  `vrml` automation (the ladder + broadcast-use hints + assumed
  broadcast-lemma facts), 17 by interactive Lean proofs in the twin
  ([`proofs/mergesort/`](proofs/mergesort/), one unit module per
  function). No `smt` rung is
  relied on: the twin elaborates under the plain Lean kernel. Run:
  `./case-studies/merge-sort/run_verbatim.sh`. (The upstream `fn main`
  harness is omitted — its `vec!`/`seq!` macros pull in Box-allocation
  internals and `sorted_by` uses spec-closure comparators, both outside
  the sequential fragment.)
- [`mergesort_clean.rs`](mergesort_clean.rs) — the **specs-only** contrast:
  the same ensures/invariants/`decreases`, with every proof block deleted.
  40 obligations — 31 automatic, 9 interactive. This is the
  interactive-proofs-first demonstration: the SMT scaffolding the verbatim
  file carries is redundant for the Lean backend, because the proof weight
  lives in the prelude (`to_multiset` is Mathlib's `Multiset.ofList`, so
  "to_multiset distributes over append" is a library fact) and in the
  twin's helper lemmas. Run: `./case-studies/merge-sort/run.sh`.

Compare them line for line: the verbatim `merge` carries ~80 lines of
`proof {}` scaffolding (steering Z3's quantifier instantiation) that the
clean variant simply omits. Vermilion verifies both — the verbatim by
*consuming* that scripting (lemma calls become assumed facts, `broadcast
use` becomes ladder hints) and filling the rest interactively; the clean
by doing the whole proof in Lean where it is idiomatic.

```console
./case-studies/merge-sort/run_verbatim.sh  # verbatim: 43 automatic + 17 interactive
./case-studies/merge-sort/run.sh           # specs-only: 31 automatic + 9 interactive
./case-studies/merge-sort/test.sh          # compile & RUN the verified sort
```

`test.sh` compiles [`test_main.rs`](test_main.rs) (which includes a
verified source unchanged) with the pinned Verus toolchain under
`--no-verify` and executes it against a concrete input.

Both variants exercise the vstd surface ported in stages S1/V1–V4:
`Seq::to_multiset`/`subrange`/`add`/`drop_last`/`remove` and
`Multiset::add`/`remove` resolve by name through the vstd mirror
(`lean/Vermilion/Vstd/`); `broadcast use group_seq_properties` (in the
upstream `main`, and exercised by differential c137/c138) resolves to
ladder hints. Helper lemmas about this program's `is_sorted` predicate
live in the `-- vrml:user:begin/end` section at the end of each twin's
shared `Specs.lean` (e.g. `proofs/mergesort_clean/Specs.lean`). See docs/trust.md
§S1 and §`broadcast use` hints for the trust analysis.
