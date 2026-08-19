// expect: pass
// DL4 (#35): an isolated `by (bit_vector)` query whose operand is a
// `Seq.index` application (a ghost-bound byte read out of an array)
// closes through the shr-as-division bridge — the contract forall over
// the 32-byte array is instantiated at the occurring index.
use vstd::prelude::*;

verus! {

pub fn high_bit_clear(bytes: &[u8; 32]) -> (result: bool)
    requires
        bytes[31] <= 127,
    ensures
        result,
{
    let ghost high_byte: u8 = bytes[31];
    proof {
        assert(high_byte >> 7 == 0) by (bit_vector)
            requires
                high_byte <= 127,
        ;
    }
    true
}

} // verus!
