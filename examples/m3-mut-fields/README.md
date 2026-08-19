# m3-mut-fields — `&mut self` methods mutating fields

Run `./run.sh`. `mutfields.rs` verifies a `&mut self` method that writes
a struct field, and a caller reasoning about the written-back value.

**How it lowers.** A field write through a mutable reference
(`self.count = …`) is a **record update** in the substitution
environment: the destination path (`root variable + field projections,
outermost first`) rebuilds the root's value as a constructor whose
written field is the new value and every other field keeps its
projected value. Nested paths (`a.b.c = e`) rebuild recursively. The
prophecy machinery is unchanged — `old(self)` is the entry binder,
`final(self)` the resolved future, and the caller's write-back arrives
through the callee's contract exactly as for scalar `&mut`.

All 4 obligations close automatically. Differential guards: c103/c104.

## generated/ vs proofs/

- `generated/mutfields/` (one unit module per function) is overwritten
  on every run.
- `proofs/mutfields/` is yours; `vrml_sync` reconciles it.
