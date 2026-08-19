// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn saturating_dec(x: u32) -> (y: u32)
    ensures
        y <= x,
        x > 0 ==> y == x - 1,
{
    if x == 0 {
        return 0;
    }
    x - 1
}
}
