// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn named_result_branch(selector: u32) -> (result: u32)
    ensures result == 1u32 || result == 2u32,
{
    if selector == 0 { 1 } else { 2 }
}
}
