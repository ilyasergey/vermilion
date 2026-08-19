# m3-datatypes — structs, enums, tuples as real Lean inductives

Run `./run.sh`. `shapes.rs` exercises the first M3 slice:

- `Point` (struct) and `Shape` (enum) become genuine Lean `inductive`s in
  `generated/shapes/Specs.lean`, imported by the per-function unit
  modules — injectivity, disjointness, and
  exhaustiveness are kernel facts, never axioms;
- each variant gets an `@[simp]` predicate (`Shape.is_Circle`) and field
  accessors (`Shape.get_Circle_radius`); wrong-variant access returns
  `default`, mirroring Verus's underspecification — which also makes the
  one-level field range facts (`p.x` fits in u32) sound unguarded;
- `match` never reaches the IR: Verus desugars it into branch trees over
  variant tests and projections, which our existing branch machinery
  verifies;
- generic datatypes are supported as parameterized inductives (see
  `examples/m3-generics`); mutually recursive and const-generic datatype
  declarations still fail closed.

As in every example, `generated/` holds machine attempts and `proofs/` is
your editable twin.
