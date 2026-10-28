// expect: pass
// char clipping (Vermilion.charClip): the result is always a Unicode scalar,
// and a scalar input is unchanged. These are exactly Verus's two prelude
// axioms for char_clip.
use vstd::prelude::*;

verus! {

pub proof fn char_clip_ok(x: int)
    ensures
        ((x as char) as int) <= 0x10FFFF,
        0 <= x <= 0xD7FF ==> ((x as char) as int) == x,
        0xE000 <= x <= 0x10FFFF ==> ((x as char) as int) == x,
{
}

} // verus!
