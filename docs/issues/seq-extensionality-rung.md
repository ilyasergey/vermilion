---
title: Ladder rung for Seq extensionality (elementwise ⇒ whole equality)
labels: [enhancement]
state: open
github: 52
---

Verus's `=~=` axiom closes `a =~= b` from `a.len() == b.len()` and
`forall|i| ... a[i] == b[i]` for free; the Vermilion ladder has no rung
that applies the corresponding model fact, so such goals (dalek-lite:
`reduce_lemmas`' `spec_reduce(limbs) =~= limbs` conclusions,
`as_bytes_lemmas`' `seq_from32(bytes) =~= spec_fe51_as_bytes(fe)`) fall
to interactive twins.

The kernel-checked lemma exists since DL8: `Vermilion.Seq.ext`
(`Vstd/Seq.lean`) — equal `len` plus elementwise-equal `index` gives
`=`. Wanted: a rung (or a `vrml_side`-dischargeable `apply` step) that
tries `Seq.ext` on `Seq`-typed equality goals and feeds the elementwise
premise to the quantifier-instantiation machinery, plus the analogous
facts for `Set`/`Multiset`/array views. The differential guard to flip
when this lands: strengthen `c191_array_ext_eq_ok.rs` back to its
elementwise ⇒ whole form (see the case header).
