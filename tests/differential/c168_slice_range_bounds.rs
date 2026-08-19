// expect: fail
use vstd::prelude::*;

verus! {

fn slice_range_bounds(src: &[u8])
    requires src@.len() == 2,
{
    let _ = &src[1..3];
}

} // verus!
