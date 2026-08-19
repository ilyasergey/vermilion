// Probe: Keccak χ (chi) from sha3.rs — the nonlinear step. Exercises:
// xor/and chains with `^ u64::MAX` in place of `!` (upstream avoided
// BitNot themselves), nested `fn` items inside a function body, and
// nested while loops over the tuple-indexed state.
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

fn chi(a: StateArray) -> StateArray {
    let mut res = a;
    let mut x = 0;
    while x < 5
        invariant
            x <= 5,
    {
        #[inline] fn inner(res: &mut StateArray, a: &StateArray, x: usize)
            requires
                x < 5,
        {
            let mut y = 0;
            while y < 5
                invariant
                    y <= 5,
                    x < 5,
            {
                let x1 = (x + 1) % 5;
                let x2 = (x + 2) % 5;
                res[(x,y)] = a[(x,y)] ^ ( (a[(x1,y)] ^ u64::MAX) & a[(x2,y)] );
                y += 1;
            }
        } inner(&mut res, &a, x);
        x += 1;
    }
    return res;
}

} // verus!
