// Probe: Keccak ι (iota) from sha3.rs — the simplest round function.
// Exercises: a custom wrapper struct over `[u64; 25]`, user
// `Index`/`IndexMut` impls over a *tuple* index (index_mut returns
// `&mut u64` — the returned-`&mut` boundary), `Deref`, an array-repeat
// initializer, a 24-entry u64 const table, and xor.
//
// Executable bodies extracted verbatim from AeneasVerif/sha3.rs
// src/algos.rs (the in-repo spec-comment blocks elided). Verus result
// binders and contracts are the only changes around the bodies.

use vstd::prelude::*;
use std::ops::{Deref, DerefMut, Index, IndexMut};

verus! {

type Lane = u64;

#[derive(Clone, Copy)]
struct StateArray([Lane; 25]);

impl Default for StateArray {
    fn default() -> Self { StateArray([0; 25]) }
}

impl Deref for StateArray {
    type Target = [Lane; 25];
    fn deref(&self) -> &Self::Target { &self.0 }
}
impl DerefMut for StateArray {
    fn deref_mut(&mut self) -> &mut Self::Target { &mut self.0 }
}

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

const IOTA_RC: [u64; 24] = [0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000, 0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009, 0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a, 0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003, 0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a, 0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008];

fn iota(ir: usize, a: StateArray) -> (res: StateArray)
    requires
        ir < 24,
    ensures
        res.0[0] == a.0[0] ^ IOTA_RC[ir as int],
        forall|k: int| 1 <= k < 25 ==> res.0[k] == a.0[k],
{
    let mut res = a;
    res[(0,0)] = a[(0,0)] ^ IOTA_RC[ir];
    return res;
}

} // verus!
