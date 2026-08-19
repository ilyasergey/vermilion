// expect: fail @ 17
// DL4 (#35): the same indexed bit-vector query with a wrong conclusion
// must fail in BOTH verifiers at the assert's span (the bridge can only
// close true goals; a byte <= 127 shifted right by 7 is 0, not 1).
use vstd::prelude::*;

verus! {

pub fn wrong_high_bit(bytes: &[u8; 32]) -> (result: bool)
    requires
        bytes[31] <= 127,
    ensures
        result,
{
    let ghost high_byte: u8 = bytes[31];
    proof {
        assert(high_byte >> 7 == 1) by (bit_vector)
            requires
                high_byte <= 127,
        ;
    }
    true
}

} // verus!
