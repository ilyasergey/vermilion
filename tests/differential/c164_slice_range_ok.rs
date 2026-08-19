// expect: pass
use vstd::prelude::*;

verus! {

fn slice_range_ok(src: &[u8])
    requires src@.len() >= 3,
{
    let part = &src[1..3];
    assert(part@ == src@.subrange(1, 3));
}

} // verus!
