// expect: pass
use vstd::prelude::*;
verus! {
fn masks(x: u32, y: u32) -> (r: u32)
    ensures r == (x & y),
{
    x & y
}
fn all_and(x: u32) -> (r: u32)
    ensures r == (x & 0),
{
    x & 0
}
}
