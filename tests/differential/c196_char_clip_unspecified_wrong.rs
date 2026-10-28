// expect: fail
// Wrong direction of c195: clipping a non-scalar is underspecified in Verus
// (some scalar, unknown which). Vermilion's choice-based charClip must not
// let either verifier prove a particular value.
use vstd::prelude::*;

verus! {

pub proof fn char_clip_unspecified_wrong()
    ensures
        ((0xD800int as char) as int) == 0,
{
}

} // verus!
