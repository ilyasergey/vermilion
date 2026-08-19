// expect: pass
use vstd::prelude::*;
use std::ops::{Index, IndexMut};

verus! {

type Lane = u64;

#[derive(Clone, Copy)]
struct StateArray([Lane; 25]);

impl View for StateArray {
    type V = Seq<Lane>;
    closed spec fn view(&self) -> Self::V { self.0@ }
}

impl Index<(usize, usize)> for StateArray {
    type Output = Lane;

    fn index(&self, (x, y): (usize, usize)) -> (out: &Self::Output)
        ensures
            *out == self@[(5 * y + x) as int],
    {
        &self.0[5 * y + x]
    }
}

impl vstd::std_specs::core::IndexSpecImpl<(usize, usize)> for StateArray {
    open spec fn index_req(&self, index: &(usize, usize)) -> bool {
        index.0 < 5 && index.1 < 5
    }
}

impl IndexMut<(usize, usize)> for StateArray {
    fn index_mut(&mut self, (x, y): (usize, usize)) -> (out: &mut Self::Output)
        ensures
            *out == old(self)@[(5 * y + x) as int],
            final(self)@ == old(self)@.update(
                (5 * y + x) as int,
                *final(out),
            ),
    {
        &mut self.0[5 * y + x]
    }
}

const IOTA_RC: [u64; 2] = [1, 0x8082];

fn iota(ir: usize, a: StateArray) -> (result: StateArray)
    requires
        ir < 2,
    ensures
        result@ == a@.update(0, a@[0] ^ IOTA_RC[ir as int]),
{
    let mut res = a;
    res[(0, 0)] = a[(0, 0)] ^ IOTA_RC[ir];
    return res;
}

} // verus!
