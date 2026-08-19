// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn inc(x: u32) -> (y: u32)
    requires x < 100,
    ensures y == x + 1,
{
    x + 1
}
fn g(a: u32) -> (b: u32)
    requires a < 50,
    ensures b == a + 2,
{
    let m = inc(a);
    let b = inc(m);
    b
}
}
