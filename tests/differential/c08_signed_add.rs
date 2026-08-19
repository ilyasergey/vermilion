// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: i32) -> (y: i32)
    requires x < 100, x > -100,
    ensures y == x + 1,
{
    let y = x + 1;
    y
}
}
