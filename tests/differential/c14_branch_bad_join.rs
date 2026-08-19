// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn min_wrong(a: u32, b: u32) -> (m: u32)
    ensures
        m >= a,
{
    if a <= b {
        a
    } else {
        b
    }
}
}
