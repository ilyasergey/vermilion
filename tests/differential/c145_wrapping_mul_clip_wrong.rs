// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
proof fn explicit_u32_mul_does_not_stay_unbounded()
{
    assert(mul(2u32, 0x8000_0000u32) != 0u32) by (bit_vector);
}
}
