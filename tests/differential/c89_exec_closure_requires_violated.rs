// expect: fail @ 11
use vstd::prelude::*;
verus! {
fn bad_caller() {
    let add_one = |x: u32| -> (r: u32)
        requires x < 10,
        ensures r == x + 1,
    {
        x + 1
    };
    let y = add_one(50); // violates the closure requires
}
}
