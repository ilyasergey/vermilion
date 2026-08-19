// expect: fail
use vstd::prelude::*;

verus! {

fn array_range_from_wrong(input: [u8; 8]) {
    let part = &input[0..];
    assert(part@ == input@.subrange(0, 7));
}

} // verus!
