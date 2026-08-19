// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn bad_sub(a: u32, b: u32) -> (r: u32)
    ensures r == a - b, // underflows when b > a
{
    a - b
}
}
