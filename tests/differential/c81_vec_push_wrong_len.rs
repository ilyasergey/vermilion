// expect: fail @ 7
use vstd::prelude::*;
verus! {
fn push_claims_same_len(v: &mut Vec<u32>)
    requires old(v)@.len() < 100,
    ensures final(v)@.len() == old(v)@.len(), // push grows it
{
    v.push(7);
}
}
