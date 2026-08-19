// expect: pass
use vstd::prelude::*;
verus! {

fn nested_tuple_parameter((x, (mut y, _)): (u64, (u64, u64))) {
    assert(x == x);
    y = x;
    assert(y == x);
}

struct TupleMethod;

impl TupleMethod {
    fn second(&self, (_, y): (u64, u64)) {
        assert(y == y);
    }
}

fn caller() {
    nested_tuple_parameter((1, (2, 3)));
    TupleMethod.second((4, 5));
}

} // verus!
