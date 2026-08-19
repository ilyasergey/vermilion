// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn incr(x: &mut u32)
    requires *old(x) < 100,
    ensures *final(x) == *old(x) + 1,
{
    *x = *x + 1;
}
fn caller() {
    let mut y: u32 = 10;
    incr(&mut y);
    assert(y == 11);
    incr(&mut y);
    assert(y == 12);
}
}
