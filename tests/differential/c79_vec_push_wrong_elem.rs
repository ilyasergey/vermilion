// expect: fail @ 8
use vstd::prelude::*;
verus! {
fn build() {
    let mut v: Vec<u32> = Vec::new();
    v.push(1);
    v.push(2);
    assert(v@.index(1) == 1); // it is 2
}
}
