// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn nonlinear_query_cannot_assume_its_conclusion(x: int)
    ensures x * x == x,
{
    assert(x * x == x) by (nonlinear_arith);
}
}
