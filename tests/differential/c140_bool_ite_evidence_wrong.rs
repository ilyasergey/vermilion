// expect: fail @ 6
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn bad_encode_bool(value: bool) -> (result: u8)
    ensures value ==> result == 2u8,
{
    if value { 1 } else { 0 }
}
}
