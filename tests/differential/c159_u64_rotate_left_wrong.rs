// expect: fail
use vstd::prelude::*;

verus! {

fn u64_rotate_left_wrong() {
    let result = 1u64.rotate_left(1);
    assert(result == 1);
}

} // verus!
