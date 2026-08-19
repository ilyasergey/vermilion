// expect: pass
// Vec::split_off: the vstd contract's subrange facts flow through.
use vstd::prelude::*;
verus! {
fn split(v: &mut Vec<u64>)
    requires old(v).len() >= 2,
    ensures
        final(v)@ == old(v)@.subrange(0, 1),
        final(v).len() == 1,
{
    let r = v.split_off(1);
    let _ = r;
}
}
