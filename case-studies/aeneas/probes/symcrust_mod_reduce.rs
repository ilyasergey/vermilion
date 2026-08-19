// Probe: SymCRust's branchless modular reduction — wrapping arithmetic
// used for constant-time masking (`wrapping_sub`, shift-derived mask,
// `wrapping_add`), plus `debug_assert!` inside a verified body.
//
// Executable body extracted verbatim from microsoft/SymCrypt branch
// feature/verifiedcrypto, SymCRust/src/mlkem/ntt.rs (MIT). The const
// is the same file's; Verus result binder and contract are the only
// changes around the body.

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

} // verus!
