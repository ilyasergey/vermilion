// expect: fail
use vstd::prelude::*;
verus! {
fn first_le(v: &Vec<u32>, bound: u32) -> (r: bool)
    requires v@.len() > 0,
    ensures r == (v@.index(0) < bound), // exec returns <=, ensures claims <
{
    v[0] <= bound
}
}
