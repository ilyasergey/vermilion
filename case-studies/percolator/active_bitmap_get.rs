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

pub fn active_bitmap_is_empty(bitmap: V16ActiveBitmap) -> (result: bool)
    ensures
        result == (bitmap[0] == 0),
{
    let mut i = 0;
    while i < V16_ACTIVE_BITMAP_WORDS
        invariant
            i <= V16_ACTIVE_BITMAP_WORDS,
            forall|j: int| 0 <= j < i ==> bitmap[j] == 0,
        decreases V16_ACTIVE_BITMAP_WORDS - i,
    {
        if bitmap[i] != 0 {
            return false;
        }
        i += 1;
    }
    true
}

pub fn active_bitmap_get(bitmap: V16ActiveBitmap, leg_slot_index: usize) -> (result: bool)
    ensures
        leg_slot_index >= V16_MAX_PORTFOLIO_ASSETS_N ==> !result,
        leg_slot_index < V16_MAX_PORTFOLIO_ASSETS_N ==> result == (
            ((bitmap[(leg_slot_index / 64) as int] >> (leg_slot_index % 64)) & 1) != 0
        ),
{
    if leg_slot_index >= V16_MAX_PORTFOLIO_ASSETS_N {
        return false;
    }
    let word = leg_slot_index / 64;
    let bit = leg_slot_index % 64;
    ((bitmap[word] >> bit) & 1) != 0
}

} // verus!
