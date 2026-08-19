// expect: pass
// DL8: extensional equality (`=~=`, and spec `==`) at fixed-size array
// types — the Seq model of `[u64; 5]` is extensional, so
// `ext_eq_is_plain_eq` recurses into Primitive(Array) element types and
// the comparison lowers as plain `=`. Refused before the DL8 fragment
// fix; this case guards ACCEPTANCE and verdict parity (mirrors
// dalek-lite's `a.limbs =~= b.limbs`, add_lemmas.rs). The stronger
// elementwise ⇒ whole direction is a known ladder gap
// (docs/issues/seq-extensionality-rung.md): Verus closes it by the
// `=~=` axiom, the Lean side by an interactive `Vermilion.Seq.ext`
// twin proof.
use vstd::prelude::*;

verus! {

pub struct Fe {
    pub limbs: [u64; 5],
}

pub proof fn array_ext_eq_of_eq(a: Fe, b: Fe)
    requires
        a.limbs == b.limbs,
    ensures
        a.limbs =~= b.limbs,
{
}

} // verus!
