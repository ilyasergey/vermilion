// expect: fail @ 12
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn stuck(n: u64) -> (r: u64)
    ensures r == 0,
    decreases n,
{
    if n == 0 {
        0
    } else {
        stuck(n)
    }
}
}
