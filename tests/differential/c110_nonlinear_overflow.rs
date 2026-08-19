// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn square(side: u32) -> (a: u32)
    requires side < 100000, // too weak: side*side can exceed u32
    ensures a as int == side * side,
{
    side * side
}
}
