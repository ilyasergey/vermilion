// expect: pass
use vstd::prelude::*;

verus! {

fn to_le_bytes(x: u64) -> (bytes: [u8; 8])
    ensures bytes@ == vstd::bytes::spec_u64_to_le_bytes(x),
{
    x.to_le_bytes()
}

fn from_le_bytes(bytes: [u8; 8]) -> (x: u64)
    ensures x == vstd::bytes::spec_u64_from_le_bytes(bytes@),
{
    u64::from_le_bytes(bytes)
}

} // verus!
