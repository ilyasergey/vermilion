// expect: fail @ 8
use vstd::prelude::*;
verus! {
fn read_two<const N: usize>(a: [u32; N]) -> (r: u32)
    requires N > 1,
    ensures r == a[1],
{
    a[2] // out of bounds when N == 2; requires only gives N > 1
}
}
