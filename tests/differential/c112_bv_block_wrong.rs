// expect: fail @ 5
use vstd::prelude::*;
verus! {
proof fn wrong(x: u32) {
    assert((x | 0) == 0) by (bit_vector); // it is x
}
}
