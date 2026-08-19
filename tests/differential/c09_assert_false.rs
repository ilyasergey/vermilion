// expect: fail @ 10
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32) -> (y: u32)
    requires x < 100,
    ensures y > x,
{
    let y = x + 1;
    assert(y < 100);
    y
}
}
