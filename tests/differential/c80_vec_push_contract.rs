// expect: pass
use vstd::prelude::*;
verus! {
fn push_one(v: &mut Vec<u32>)
    ensures final(v)@ == old(v)@.push(7u32),
{
    v.push(7);
}
fn caller() {
    let mut v: Vec<u32> = Vec::new();
    push_one(&mut v);
    assert(v@.len() == 1 && v@.index(0) == 7);
}
}
