// Probe: ACCOMMODATED variant of symcrust_mont_mul.rs — byte-identical
// bodies except the `debug_assert!` statements are elided (the Verus
// front end rejects `debug_assert!`; see the gap matrix). Probes the
// Montgomery multiplication pipeline: mixed mul/mask/shift, `>>=`
// compound assignment, a bitwise `&` in a spec position, and the
// number-theoretic Montgomery side conditions in Lean.
//
// Source: microsoft/SymCrypt branch feature/verifiedcrypto,
// SymCRust/src/mlkem/ntt.rs (MIT).

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
    // In the comments below, we manipulate unbounded integers.
    // res = a - Q
    let res = a.wrapping_sub(Q); // -Q <= res < Q
    // If res < 0, then: Q & (res >> 16) = Q
    // Otherwise: Q & (res >> 16) = 0
    let res = res.wrapping_add(Q & (res >> 16));
    // 0 <= res < 2 * Q

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
    let mut res = a * b;
    let inv = (a * b_mont) & RMASK;
    res += inv * Q;
    res >>= RLOG2;

    mod_reduce(res)
}

} // verus!
