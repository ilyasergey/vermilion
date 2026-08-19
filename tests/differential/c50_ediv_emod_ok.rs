// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn div_props(x: int)
    requires 0 <= x,
    ensures
        x % 2 == 0 || x % 2 == 1,
        (x / 2) * 2 + x % 2 == x,
{
}
}
