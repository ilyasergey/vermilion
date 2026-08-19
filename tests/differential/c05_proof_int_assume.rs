// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn f(x: int, d: int)
    requires d > 0,
{
    assume(x >= 10);
    assert(x + d > 10);
}
}
