// expect: fail
use vstd::prelude::*;

verus! {

fn slice_range_wrong(src: &[u8])
    requires src@.len() >= 3,
{
    let part = &src[1..3];
    assert(part@ == src@.subrange(0, 2));
}

} // verus!
