// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn encode_bool(value: bool) -> (result: u8)
    ensures value ==> result == 1u8,
            !value ==> result == 0u8,
{
    if value { 1 } else { 0 }
}
}
