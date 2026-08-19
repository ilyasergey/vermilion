# m3-slices — slices `&[T]`

Run `./run.sh`. `slices.rs` verifies indexing into a slice through its
`Seq` view.

**How it lowers.** `[T]` is its `Seq<T>` view like arrays and `Vec`,
but its length is unconstrained (a spec-level `s@.len()` value rather
than a const generic); the slice `View` is the identity, elements carry
their quantified type facts, and exec indexing goes through the
bounds-checked contract (c106 pins the out-of-bounds failure at its
span in both verifiers).

## generated/ vs proofs/

- `generated/slices/` (one unit module per function) is overwritten on
  every run.
- `proofs/slices/` is yours; `vrml_sync` reconciles it.
