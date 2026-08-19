// Probe: ACCOMMODATED variant of symcrust_mod_reduce.rs — byte-identical
// body except the three `debug_assert!` statements are elided, because
// the Verus front end rejects `debug_assert!` outright ("panic is not
// supported"; recorded in the gap matrix as an upstream boundary). The
// verbatim file remains next to this one as the boundary record; this
// variant exists to probe what the REST of the body (wrapping_sub/add,
// shift-derived mask, bitwise &) exercises in Vermilion.
//
// Source: microsoft/SymCrypt branch feature/verifiedcrypto,
// SymCRust/src/mlkem/ntt.rs (MIT).

use vstd::prelude::*;

verus! {

pub const Q: u32 = 3329;

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

} // verus!
