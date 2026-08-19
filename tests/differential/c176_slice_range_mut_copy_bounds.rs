// expect: fail
use vstd::prelude::*;

verus! {

fn slice_range_mut_copy_bounds(dst: &mut [u8], src: &[u8])
    requires
        old(dst)@.len() == 5,
        src@.len() == 2,
{
    dst[4..6].copy_from_slice(src);
}

} // verus!
