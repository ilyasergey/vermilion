// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn changes_but_claims_unchanged(x: &mut u32)
    requires *old(x) < 100,
    ensures *final(x) == *old(x), // body changes x
{
    *x = *x + 1;
}
}
