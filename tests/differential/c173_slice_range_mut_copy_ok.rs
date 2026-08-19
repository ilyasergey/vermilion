// expect: pass
use vstd::prelude::*;

verus! {

fn slice_range_mut_copy_ok(dst: &mut [u8], src: &[u8])
    requires
        old(dst)@.len() == 5,
        src@.len() == 2,
    ensures
        final(dst)@ == old(dst)@.subrange(0, 1)
            + src@
            + old(dst)@.subrange(3, 5),
{
    dst[1..3].copy_from_slice(src);
}

} // verus!
