// expect: fail @ 8
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn wrong_body() {
    let add_one = |x: u32| -> (r: u32)
        requires x < 100,
        ensures r == x + 1,
    {
        x + 2 // violates the closure ensures
    };
}
}
