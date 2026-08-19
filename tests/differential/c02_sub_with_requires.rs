// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32, y: u32) -> (d: u32)
    requires x <= y,
    ensures d == y - x,
{
    let d = y - x;
    d
}
}
