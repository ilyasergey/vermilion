// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn bad_negate(x: i32) -> (r: i32)
    ensures r == 0 - x, // i32::MIN negation overflows
{
    0 - x
}
}
