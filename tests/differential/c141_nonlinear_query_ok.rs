// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn nonlinear_product_nonnegative(x: int, y: int)
    requires x >= 0, y >= 0,
    ensures x * y >= 0,
{
    assert(x * y >= 0) by (nonlinear_arith)
        requires x >= 0, y >= 0,
    ;
}
}
