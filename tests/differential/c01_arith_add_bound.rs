// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32) -> (y: u32)
    requires x < 1000,
    ensures y == x + 1,
{
    let y = x + 1;
    y
}
}
