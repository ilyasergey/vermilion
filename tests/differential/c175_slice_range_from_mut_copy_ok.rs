// expect: pass
use vstd::prelude::*;

verus! {

fn slice_range_from_mut_copy_ok(dst: &mut [u8], src: &[u8])
    requires
        old(dst)@.len() == 5,
        src@.len() == 2,
    ensures
        final(dst)@ == old(dst)@.subrange(0, 3) + src@,
{
    dst[3..].copy_from_slice(src);
}

} // verus!
