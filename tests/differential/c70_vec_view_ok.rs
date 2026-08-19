// expect: pass
use vstd::prelude::*;
verus! {
fn first_le(v: &Vec<u32>, bound: u32) -> (r: bool)
    requires v@.len() > 0, v@.index(0) <= bound,
    ensures r == (v@.index(0) <= bound),
{
    v[0] <= bound
}
}
