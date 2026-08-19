// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn clamp100(x: u32) -> (r: u32)
    ensures r <= 100, x <= 100 ==> r == x,
{
    if x > 100 {
        return 100;
    }
    x
}
}
