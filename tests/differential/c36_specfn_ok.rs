// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
spec fn triple(x: int) -> int {
    3 * x
}
fn triple_exec(x: u32) -> (r: u32)
    requires x <= 1000,
    ensures r == triple(x as int),
{
    3 * x
}
}
