// expect: fail
use vstd::prelude::*;

verus! {

fn u64_little_endian_wrong(x: u64) -> (bytes: [u8; 8])
    ensures bytes@ != vstd::bytes::spec_u64_to_le_bytes(x),
{
    x.to_le_bytes()
}

} // verus!
