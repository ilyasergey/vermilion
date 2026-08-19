// expect: fail
// Soundness guard: split_off's tail is NOT the prefix subrange.
use vstd::prelude::*;
verus! {
fn split(v: &mut Vec<u64>) -> (r: Vec<u64>)
    requires old(v).len() >= 2,
    ensures r@ == old(v)@.subrange(0, 1), // it is subrange(1, len)
{
    v.split_off(1)
}
}
