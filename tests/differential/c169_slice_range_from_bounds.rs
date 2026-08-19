// expect: fail
use vstd::prelude::*;

verus! {

fn slice_range_from_bounds(src: &[u8])
    requires src@.len() == 3,
{
    let _ = &src[4..];
}

} // verus!
