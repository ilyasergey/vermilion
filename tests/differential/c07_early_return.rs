// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32) -> (y: u32)
    requires x < 10,
    ensures y >= x,
{
    return x;
}
}
