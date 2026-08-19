use vstd::prelude::*;

verus! {

/// An exec closure with a contract: the caller proves its `requires` at
/// each call and gets its `ensures` for the result.
fn closure_call() {
    let add_one = |x: u32| -> (r: u32)
        requires x < 100,
        ensures r == x + 1,
    {
        x + 1
    };
    let y = add_one(4);
    assert(y == 5);
    let z = add_one(y);
    assert(z == 6);
}

fn main() {}

}
