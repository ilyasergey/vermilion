// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
#[verifier::bit_vector]
proof fn explicit_u32_mul_wraps()
    ensures mul(2u32, 0x8000_0000u32) == 0u32,
{
}
}
