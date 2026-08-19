// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn max(a: u32, b: u32) -> (m: u32)
    ensures m >= a, m >= b,
{
    if a >= b {
        a
    } else {
        b
    }
}
}
