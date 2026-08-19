// Probe: SymCRust's Montgomery multiplication (R = 2^16) — the core
// scalar arithmetic under the ML-KEM NTT. Exercises: mixed mul/mask/
// shift bit manipulation, `>>=` compound assignment, a bitwise `&` in a
// *spec* position (the `b_mont` well-formedness precondition), and the
// number-theoretic side conditions Montgomery reduction rests on.
//
// Executable bodies extracted verbatim from microsoft/SymCrypt branch
// feature/verifiedcrypto, SymCRust/src/mlkem/ntt.rs (MIT). The consts
// are the same file's; Verus result binders and contracts are the only
// changes around the bodies.

use vstd::prelude::*;

verus! {

pub const Q: u32 = 3329;
const RLOG2: u32 = 16;
const RMASK: u32 = 0xffff;
const NEG_Q_INV_MOD_R: u32 = 3327;

#[inline(always)]
fn mod_reduce(a: u32) -> (result: u32)
    requires
        a < 2 * Q,
    ensures
        result == a as int % Q as int,
{
    debug_assert!(a < 2 * Q);

    // In the comments below, we manipulate unbounded integers.
    // res = a - Q
    let res = a.wrapping_sub(Q); // -Q <= res < Q
    debug_assert!(((res >> 16) == 0) || ((res >> 16) == 0xffff));
    // If res < 0, then: Q & (res >> 16) = Q
    // Otherwise: Q & (res >> 16) = 0
    let res = res.wrapping_add(Q & (res >> 16));
    // 0 <= res < 2 * Q
    debug_assert!(res < Q);

    res
}

#[inline(always)]
fn mont_mul(a: u32, b: u32, b_mont: u32) -> (result: u32)
    requires
        a < Q,
        b < Q,
        b_mont <= RMASK,
        b_mont == (b * NEG_Q_INV_MOD_R) % 0x10000,
    ensures
        result < Q,
        result as int * 65536 % Q as int == a as int * b as int % Q as int,
{
    debug_assert!(a < Q);
    debug_assert!(b < Q);
    debug_assert!(b_mont <= RMASK);
    debug_assert!(b_mont == ((b * NEG_Q_INV_MOD_R) & RMASK));

    let mut res = a * b;
    let inv = (a * b_mont) & RMASK;
    res += inv * Q;
    debug_assert!((res & RMASK) == 0);
    res >>= RLOG2;

    mod_reduce(res)
}

} // verus!
