// expect: pass
use vstd::prelude::*;
verus! {
fn first_of_slice(s: &[u32]) -> (r: u32)
    requires s@.len() > 0, s@.index(0) < 100,
    ensures r == s@.index(0),
{
    s[0]
}
}
