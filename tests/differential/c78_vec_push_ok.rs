// expect: pass
use vstd::prelude::*;
verus! {
fn build() {
    let mut v: Vec<u32> = Vec::new();
    v.push(1);
    v.push(2);
    assert(v@.len() == 2);
    assert(v@.index(0) == 1);
    let n = v.len();
    assert(n == 2);
}
}
