// SPDX-License-Identifier: Apache-2.0
//
// Executable body extracted from aeyakovenko/percolator src/wide_math.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84. Verus result binders and
// contracts are the only changes around the body.

use vstd::prelude::*;

verus! {

/// Saturating multiply for warmup cap computation.
pub fn saturating_mul_u128_u64(a: u128, b: u64) -> (result: u128)
    ensures
        (a as int) * (b as int) <= u128::MAX as int ==>
            result as int == (a as int) * (b as int),
        (a as int) * (b as int) > u128::MAX as int ==>
            result == u128::MAX,
{
    if a == 0 || b == 0 {
        return 0;
    }
    let b128 = b as u128;
    a.checked_mul(b128).unwrap_or(u128::MAX)
}

} // verus!
