// expect: fail
use vstd::prelude::*;
verus! {

fn tuple_parameter_wrong((x, y): (u64, u64)) {
    assert(x == y); // FAILS: the tuple components are unconstrained
}

} // verus!
