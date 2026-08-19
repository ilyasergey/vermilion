use vstd::prelude::*;
verus! {
proof fn ground() {
    assert(7 * 11 * 13 == 1001) by (compute);
    assert((2int * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2) == 1024) by (compute_only);
}
fn main() {}
}
