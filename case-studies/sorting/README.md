# Sorting — spec-level `sort_by` / multiset equivalence

[`multiset.rs`](multiset.rs) is **verbatim** from the Verus repository
(`examples/multiset.rs`, MIT/Apache-2.0): worked examples of the
`vstd::multiset` / `vstd::seq_lib` sorting API. Three proof fns, verified
through Vermilion (Lean is the only verifier):

- `multiset_ext_eq` / `multiset_ext_eq2` — two sequences that are
  permutations of each other have equal multisets
  (`a.to_multiset() =~= b.to_multiset()`), via `broadcast use
  group_to_multiset_ensures`.
- `sorted_by_leq` — sorts `seq![3,1,5,2,4]` by `|x,y| x <= y`, invokes
  `lemma_sort_by_ensures` (sort produces a sorted permutation) and
  `lemma_sorted_unique` (two sorted sequences with the same multiset are
  equal), and concludes the result is `seq![1,2,3,4,5]`.

16 obligations — **12 automatic, 4 interactive** (three concrete
multiset-equality goals closed by `decide` after reducing the `push`
chains to lists; one concrete `sorted_by [1,2,3,4,5]` closed by
`interval_cases` over the five indices).

```console
./case-studies/sorting/run.sh
```

## What this study forced (Lean-library work, no VC-gen change)

- **`sort_by` / `sorted_by` / `group_to_multiset_ensures` in the vstd
  mirror** (`lean/Vermilion/Vstd/`): `sorted_by` is a plain predicate;
  `sort_by` is modeled **abstractly** (an `opaque` total function). vstd
  defines `sort_by` as a closed recursive merge sort but characterizes it
  only through `lemma_sort_by_ensures` and `lemma_sorted_unique`, both
  vstd-PROVED proof fns whose contracts we ASSUME at their call sites (the
  standard treatment of external verified lemmas — see docs/trust.md).
  We do not reprove them; notably vstd's own proof of `lemma_sorted_unique`
  uses Hilbert `choose`, which we deliberately do not model.

- **A latent lowering bug, fixed:** a generic spec fn whose body indexes
  (`vstd::relations::sorted_by` uses `Seq.index`) was emitted without an
  `[Inhabited T]` instance on its type parameter and failed to elaborate
  (`failed to synthesize Inhabited T`). `Render.renderSpecFn` now emits
  `[Inhabited T]` for every spec-fn type parameter (every model type is
  inhabited; statement hashes are unchanged since they reference
  applications, not the def signature).

This is the interactive-proofs-first policy in action: the automation
handles the bulk; the concrete finite facts (permutation multisets,
five-element sortedness) that the ladder does not close get short
interactive proofs, and the deep sorting lemmas come from vstd's verified
contracts rather than being re-proved here.
