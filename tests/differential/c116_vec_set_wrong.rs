// expect: fail
// Soundness guard: set slot i to x, but claim a different value — must fail.
use vstd::prelude::*;
verus! {
fn set_wrong(v: &mut Vec<u64>, i: usize, x: u64)
    requires i < old(v).len(),
    ensures final(v)[i as int] == x + 1, // set wrote x, not x + 1
{
    v.set(i, x);
}
}
