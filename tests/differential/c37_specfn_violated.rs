// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn triple(x: int) -> int {
    3 * x
}
fn not_triple(x: u32) -> (r: u32)
    requires x <= 1000,
    ensures r == triple(x as int), // body returns 2x, not 3x
{
    2 * x
}
}
