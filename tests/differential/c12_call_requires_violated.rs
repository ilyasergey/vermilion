// expect: fail @ 15
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn inc(x: u32) -> (y: u32)
    requires x < 10,
    ensures y == x + 1,
{
    x + 1
}
fn g(a: u32) -> (b: u32)
    requires a < 100,
    ensures b == a + 1,
{
    let b = inc(a);
    b
}
}
