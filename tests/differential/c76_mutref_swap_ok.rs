// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn swap(a: &mut u32, b: &mut u32)
    ensures *final(a) == *old(b), *final(b) == *old(a),
{
    let tmp: u32 = *a;
    *a = *b;
    *b = tmp;
}
fn caller() {
    let mut a: u32 = 1;
    let mut b: u32 = 2;
    swap(&mut a, &mut b);
    assert(a == 2 && b == 1);
}
}
