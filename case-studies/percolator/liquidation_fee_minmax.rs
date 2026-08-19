// SPDX-License-Identifier: Apache-2.0
//
// Executable body extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders,
// specification helpers, and contracts are the only changes around the body.
// Verus verifies this file; Vermilion currently refuses the std Ord::max/min
// default-body contract reached by the final expression.

use vstd::prelude::*;

verus! {

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum V16Error {
    InvalidConfig,
    ArithmeticOverflow,
    ProvenanceMismatch,
    HiddenLeg,
    InvalidLeg,
    Stale,
    BStale,
    LockActive,
    NonProgress,
    RecoveryRequired,
    CounterOverflow,
    CounterUnderflow,
}

pub type V16Result<T> = core::result::Result<T, V16Error>;

spec fn max_u128(a: u128, b: u128) -> u128 {
    if a >= b { a } else { b }
}

spec fn min_u128(a: u128, b: u128) -> u128 {
    if a <= b { a } else { b }
}

fn liquidation_fee_from_raw_fee(
    raw_fee: u128,
    min_liquidation_abs: u128,
    liquidation_fee_cap: u128,
    closes_full_position: bool,
) -> (result: V16Result<u128>)
    ensures
        !closes_full_position && min_liquidation_abs != 0 && raw_fee < min_liquidation_abs
            ==> result == Err(V16Error::NonProgress),
        !(!closes_full_position && min_liquidation_abs != 0 && raw_fee < min_liquidation_abs)
            ==> result == Ok(min_u128(max_u128(raw_fee, min_liquidation_abs), liquidation_fee_cap)),
{
    if !closes_full_position && min_liquidation_abs != 0 && raw_fee < min_liquidation_abs {
        return Err(V16Error::NonProgress);
    }
    Ok(raw_fee.max(min_liquidation_abs).min(liquidation_fee_cap))
}

} // verus!
