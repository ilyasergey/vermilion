// expect: fail @ 7
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn wrong_increment(x: &mut u32)
    requires *old(x) < 100,
    ensures *final(x) == *old(x) + 2, // off by one
{
    *x = *x + 1;
}
}
