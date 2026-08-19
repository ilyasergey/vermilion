// SPDX-License-Identifier: Apache-2.0
//
// Executable body extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders and
// contracts are the only changes around the body.  Verus verifies this file;
// Vermilion currently refuses the generic `spec_from` reached by `?`.

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

fn apply_backing_provider_earnings_withdraw(
    vault: u128,
    bucket_earnings: u128,
    amount: u128,
) -> (result: V16Result<(u128, u128)>)
    ensures
        match result {
            Ok((v, e)) => v == vault - amount && e == bucket_earnings - amount,
            Err(_) => true,
        },
{
    if amount == 0 {
        return Ok((vault, bucket_earnings));
    }
    if bucket_earnings < amount {
        return Err(V16Error::CounterUnderflow);
    }
    let next_vault = vault
        .checked_sub(amount)
        .ok_or(V16Error::CounterUnderflow)?;
    Ok((next_vault, bucket_earnings - amount))
}

} // verus!
