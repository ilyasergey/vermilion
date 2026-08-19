// expect: pass
// Vec::set overwrites a slot; reading it back yields the new value.
use vstd::prelude::*;
verus! {
fn set_at(v: &mut Vec<u64>, i: usize, x: u64)
    requires i < old(v).len(),
    ensures final(v)[i as int] == x, final(v).len() == old(v).len(),
{
    v.set(i, x);
}
}
