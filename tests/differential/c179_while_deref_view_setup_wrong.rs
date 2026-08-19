// expect: fail
use std::ops::Deref;
use vstd::prelude::*;

verus! {

struct Bytes([u8; 4]);

impl View for Bytes {
    type V = Seq<u8>;

    closed spec fn view(&self) -> Seq<u8> {
        self.0@
    }
}

impl Deref for Bytes {
    type Target = [u8; 4];

    fn deref(&self) -> (out: &Self::Target)
        ensures out@ == self@,
    {
        &self.0
    }
}

fn count_bytes_wrong(bytes: &Bytes) -> (count: usize)
    ensures count == 3,
{
    let mut i = 0;
    while i < bytes.len()
        invariant i <= bytes@.len(), bytes@.len() == 4,
        decreases bytes@.len() - i,
    {
        i += 1;
    }
    i
}

} // verus!
