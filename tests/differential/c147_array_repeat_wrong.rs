// expect: fail
use vstd::prelude::*;
verus! {

// Negative guard: the constant-sequence mirror must not prove a wrong
// element value.
fn array_repeat_wrong_value() {
    let z = [7u64; 5];
    assert(z[2] == 8); // FAILS: every element is 7
}

} // verus!
