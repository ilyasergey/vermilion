// expect: fail
use vstd::prelude::*;

verus! {

fn slice_range_from_wrong(src: &[u8])
    requires src@.len() >= 3,
{
    let part = &src[1..];
    assert(part@ == src@.subrange(0, src@.len() as int));
}

} // verus!
