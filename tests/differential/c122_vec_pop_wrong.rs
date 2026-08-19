// expect: fail
// Soundness guard: pop shortens by one, not by two.
use vstd::prelude::*;
verus! {
fn pop_one(v: &mut Vec<u64>)
    requires old(v).len() > 0,
    ensures final(v).len() == old(v).len() - 2, // pop removes one
{
    let _ = v.pop();
}
}
