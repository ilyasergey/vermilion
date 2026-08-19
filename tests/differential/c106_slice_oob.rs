// expect: fail @ 7
use vstd::prelude::*;
verus! {
fn second_of_slice(s: &[u32]) -> (r: u32)
    requires s@.len() > 1,
{
    s[2] // out of bounds when len == 2
}
}
