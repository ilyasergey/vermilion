# m3-arrays — fixed-size arrays `[T; N]`

Run `./run.sh`. `arrays.rs` verifies a function generic over an array
of const-generic length, and a caller with an array literal.

**How it lowers.** `[T; N]` is its `Seq<T>` view — like `Vec` — with the
length pinned by a type fact `a@.len() == N` at every
value-introduction site (`N` a const-generic binder or a literal).
Array indexing (spec `a[i]`, exec through the bounds-checked contract)
is `Seq.index`; the array's `View` is the identity; vstd's
const-generic array spec fns work through the const-generic spec-fn
support this slice added (const parameters become leading explicit
`Int` arguments — they are not Lean-inferrable from value arguments);
vstd's `Seq::new` comprehension gained a prelude model
(`Vermilion.Seq.new`) with `len_new`/`index_new` lemmas; array literals
are pushes onto empty.

All 5 obligations close automatically. Differential guards: c101/c102.

## generated/ vs proofs/

- `generated/arrays/` (one unit module per function) is overwritten on
  every run.
- `proofs/arrays/` is yours; `vrml_sync` reconciles it.
