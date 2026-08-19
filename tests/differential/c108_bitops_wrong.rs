// expect: fail @ 5
use vstd::prelude::*;
verus! {
fn wrong_mask(x: u32, y: u32) -> (r: u32)
    ensures r == (x | y), // body computes AND
{
    x & y
}
}
