// expect: pass
use vstd::prelude::*;

verus! {

fn tuple_destructuring_assignment_ok() {
    let mut x = 1u64;
    let mut y = 2u64;

    // Rust evaluates the RHS before updating either destination.
    (x, y) = (y, x);
    assert(x == 2);
    assert(y == 1);

    // Keep nested tuple/wildcard lowering pinned as well as the flat rho shape.
    ((x, _), y) = ((4, 99), 5);
    assert(x == 4);
    assert(y == 5);
}

} // verus!
