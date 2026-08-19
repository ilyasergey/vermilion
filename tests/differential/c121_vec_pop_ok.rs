// expect: pass
// Vec::pop returns the old last element and shortens the view by one.
use vstd::prelude::*;
verus! {
fn pop_one(v: &mut Vec<u64>) -> (x: u64)
    requires old(v).len() > 0,
    ensures
        final(v).len() == old(v).len() - 1,
        x == old(v)[old(v).len() - 1],
{
    v.pop().unwrap()
}
}
