// Probe: bit-packing bools into u64 lanes from sha3.rs. Exercises:
// iterator `for` loops (`chunks_exact`, `iter().enumerate()`) — the
// non-range-`for` boundary — plus `Vec::with_capacity`, `u64::from` on
// bool, and shift-by-loop-index.
//
// Executable body extracted verbatim from AeneasVerif/sha3.rs
// src/lib.rs. Verus contracts are the only changes around the body.

use vstd::prelude::*;

verus! {

pub fn compress_u64(a: &[bool]) -> Vec<u64> {
    let width = 64;
    let mut res = Vec::with_capacity(a.len() / width);
    for lane_bits in a.chunks_exact(width) {
        let mut lane: u64 = 0;
        for (i, bit) in lane_bits.iter().enumerate() {
            lane = lane | (u64::from(*bit) << i);
        }
        res.push(lane);
    }
    return res;
}

} // verus!
