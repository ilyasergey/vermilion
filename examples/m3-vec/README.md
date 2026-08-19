# m3-vec — exec `Vec<T>` through its `Seq` view (read-only)

Run `./run.sh`. `vecs.rs` reasons about `Vec<u32>` values via their spec
view.

**How it's modeled.** Verus's `Vec<T, A>` (the external-spec'd
`alloc::vec::Vec`) has a `View` impl whose associated view type is
`Seq<T>`. Vermilion models a `Vec<T>` **as** that `Seq<T>`: the `Vec`
binder type lowers to `Vermilion.Seq …` (the allocator argument is
irrelevant to the spec), and `v@` / `v.view()` — which the `verus!` macro
desugars to the `View::view` call — lowers to the **identity** on the
already-`Seq` value. This mirrors the existing finite-`Set`→`ISet`
`to_iset` collapse. Consequences, all reusing the M2 Seq support:

- `v@.len()` → `Vermilion.Seq.len`; `v@.index(i)` / `v@[i]` →
  `Vermilion.Seq.index`;
- the exec index `v[i]` is a normal contract call (`vstd`'s `vec_index`):
  its `requires i < v@.len()` and `ensures *element == v@.index(i)` become
  Seq facts through the usual assert-requires / assume-ensures mechanism —
  so out-of-bounds indexing fails at the exact span (see the differential
  `c72_vec_index_oob`).

**What's in this slice:** read-only view reasoning — `v@`, `v@.len()`,
`v@.index(i)`, and exec `v[i]`. The later `examples/m3-vec-mut`,
`examples/m3-vec-set`, and `examples/m3-vec-pop` slices add `Vec::new`,
`push`, exec `len`, `set`, and `pop` through the `&mut` prophecy contracts;
this example remains the small read-only introduction.
