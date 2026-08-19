// expect: fail @ 6
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32) -> (y: u32)
    ensures y > x,
{
    return x;
}
}
