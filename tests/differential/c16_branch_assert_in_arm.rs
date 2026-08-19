// expect: fail @ 10
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn arm_assert(x: u32) -> (y: u32)
    ensures y >= x,
{
    if x < 5 {
        // Wrong on this path: the guard says nothing about 10.
        assert(x >= 10);
        x + 1
    } else {
        x
    }
}
}
