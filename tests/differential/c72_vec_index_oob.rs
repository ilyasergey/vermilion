// expect: fail
use vstd::prelude::*;
verus! {
fn read_first(v: &Vec<u32>) -> (r: u32)
    ensures r == v@.index(0), // no requires v@.len() > 0: index precondition fails
{
    v[0]
}
}
