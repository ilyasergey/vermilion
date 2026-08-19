// expect: pass
use vstd::prelude::*;
verus! {
fn first_of<const N: usize>(a: [u32; N]) -> (r: u32)
    requires N > 0, a[0] < 100,
    ensures r == a[0],
{
    a[0]
}
fn caller() {
    let arr: [u32; 3] = [7, 8, 9];
    let f = first_of(arr);
    assert(f == 7);
}
}
