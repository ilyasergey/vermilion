// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn negate_bounded(x: i32) -> (r: i32)
    requires -1000 <= x, x <= 1000,
    ensures r == 0 - x,
{
    0 - x
}
}
