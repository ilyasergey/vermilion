// expect: fail @ 13
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn opaque_write(x: &mut u32) {
    *x = 0;
}
fn caller_havoc() {
    // The callee ensures nothing about final(x): the written-back value
    // is havocked, so this assert must fail in both verifiers.
    let mut y: u32 = 3;
    opaque_write(&mut y);
    assert(y == 3);
}
}
