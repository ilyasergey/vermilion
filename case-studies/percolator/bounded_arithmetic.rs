// SPDX-License-Identifier: Apache-2.0
//
// Executable bodies extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders and
// contracts are the only changes around those bodies.

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

fn adjust_u128(current: u128, old: u128, new: u128) -> (result: V16Result<u128>)
    ensures
        match result {
            Ok(value) => value + old == current + new,
            Err(V16Error::ArithmeticOverflow) => new >= old,
            Err(V16Error::CounterUnderflow) => new < old,
            Err(_) => false,
        },
{
    if new >= old {
        current
            .checked_add(new - old)
            .ok_or(V16Error::ArithmeticOverflow)
    } else {
        current
            .checked_sub(old - new)
            .ok_or(V16Error::CounterUnderflow)
    }
}

} // verus!
