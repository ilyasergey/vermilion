// Probe: Keccak ρ (rho) from sha3.rs. Exercises: `rotate_left` with a
// variable rotation from a 5×5 const table, tuple destructuring
// assignment `(x, y) = (y, ...)`, and a while loop over the custom
// tuple-indexed state (loop invariants/decreases are the only additions
// inside the body — both are specs).
//
// Executable bodies extracted verbatim from AeneasVerif/sha3.rs
// src/algos.rs. Verus contracts/invariants are the only changes.

use vstd::prelude::*;
use std::ops::{Index, IndexMut};

verus! {

type Lane = u64;

#[derive(Clone, Copy)]
struct StateArray([Lane; 25]);

impl Index<(usize,usize)> for StateArray {
    type Output = Lane;

    fn index(&self, (x,y): (usize, usize)) -> &Self::Output {
        &self.0[5*y + x]
    }
}

impl IndexMut<(usize,usize)> for StateArray {
    fn index_mut(&mut self, (x,y): (usize,usize)) -> &mut Self::Output {
        &mut self.0[5*y + x]
    }
}

const RHO_OFFSETS: [[u32; 5]; 5] = [
     [0, 36, 3, 41, 18],
     [1, 44, 10, 45, 2],
     [62, 6, 43, 15, 61],
     [28, 55, 25, 21, 56],
     [27, 20, 39, 8, 14]
];

fn rho(a: StateArray) -> StateArray {
    let (mut x, mut y) = (1, 0);
    let mut res = a; // Since (0,0) is never touched.
    let mut t = 0u32;
    while t < 24
        invariant
            x < 5,
            y < 5,
            t <= 24,
        decreases 24 - t
    {
        res[(x,y)] = a[(x,y)].rotate_left(RHO_OFFSETS[x][y]);
        (x, y) = (y, (2*x + 3*y) % 5);
        t += 1;
    }
    return res;
}

} // verus!
