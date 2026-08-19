// expect: fail
use vstd::prelude::*;

verus! {

fn tuple_destructuring_assignment_wrong() {
    let mut x = 1u64;
    let mut y = 2u64;
    (x, y) = (y, x);
    assert(x == 1);
}

} // verus!
