// SPDX-License-Identifier: Apache-2.0
//
// Executable body extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  The Verus result binder and
// contract are the only changes around the body.

use vstd::prelude::*;

verus! {

pub const V16_MAX_PORTFOLIO_ASSETS_N: usize = 16;
pub const V16_ACTIVE_BITMAP_WORDS: usize = (V16_MAX_PORTFOLIO_ASSETS_N + 63) / 64;
pub type V16ActiveBitmap = [u64; V16_ACTIVE_BITMAP_WORDS];

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

fn active_bitmap_clear(bitmap: &mut V16ActiveBitmap, leg_slot_index: usize) -> (result: V16Result<()>)
    requires
        leg_slot_index < V16_MAX_PORTFOLIO_ASSETS_N,
    ensures
        result == Ok(()),
        final(bitmap)[0] == old(bitmap)[0] & !(1u64 << leg_slot_index),
{
    if leg_slot_index >= V16_MAX_PORTFOLIO_ASSETS_N {
        return Err(V16Error::InvalidConfig);
    }
    let word = leg_slot_index / 64;
    let bit = leg_slot_index % 64;
    bitmap[word] &= !(1u64 << bit);
    Ok(())
}

} // verus!
