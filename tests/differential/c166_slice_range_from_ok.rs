// expect: pass
use vstd::prelude::*;

verus! {

fn slice_range_from_ok(src: &[u8])
    requires src@.len() >= 3,
{
    let part = &src[1..];
    assert(part@ == src@.subrange(1, src@.len() as int));
}

} // verus!
