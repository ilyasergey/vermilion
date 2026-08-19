// expect: fail @ 13
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn shift<const N: usize>(x: u32) -> (r: u64)
    requires x < 100, N < 100,
    ensures r as int == x + N,
{
    (x as u64) + (N as u64)
}
fn caller() {
    let a = shift::<3>(10);
    assert(a == 14); // it is 13
}
}
