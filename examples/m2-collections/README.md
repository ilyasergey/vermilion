# M2 collections example

[`sequences.rs`](sequences.rs) exercises vstd `Seq`, `Set`, `Map`, and
`Multiset` in spec positions — this example imports the real `vstd` (no
`--no-vstd`), and the pinned middle end prunes it down to what the specs
use:

- `Seq<int>` binders become `Vermilion.Seq Int` (a Lean `List`), with
  `len` / `push` / `index` / `empty` on the named `Vermilion.Seq.*`
  conventions;
- `Set<int>` becomes `Vermilion.Set Int` (a `Finset`): `insert`,
  `contains` (Verus inlines it through an `ISet` view the lowering
  collapses), `remove`, `len`, `empty`;
- `Map<int, int>` becomes `Vermilion.Map` (a finite key set plus a total
  lookup; off-domain indexing is unconstrained, as in Verus): `insert`,
  `[]`, `dom`, `contains_key`, `empty`;
- `Multiset<int>` becomes a Mathlib `Multiset`: `insert`, `count`, `len`,
  `empty`;
- `@[simp]` prelude lemmas (`len_push`, `contains_insert`,
  `index_insert_same`, `count_insert_same`, …) carry the automation;
- any other vstd operation fails closed with an explicit
  `unsupported vstd … operation` error.

Run this example with:

```console
./examples/m2-collections/run.sh
```

The Verus front end elaborates the file (`--no-verify`), the direct adapter
serializes the textual IR (`docs/ir.md`), `vrml_gen` (Lean) emits
`generated/sequences/` — one unit module per function, machine output,
never committed — Lean judges
every obligation, and `vrml_sync` maintains the user-editable
`proofs/sequences/` twins.
