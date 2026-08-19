// expect: pass
use vstd::prelude::*;
verus! {
fn closure_chain() {
    let add_one = |x: u32| -> (r: u32)
        requires x < 100,
        ensures r == x + 1,
    {
        x + 1
    };
    let y = add_one(4);
    assert(y == 5);
}
}
