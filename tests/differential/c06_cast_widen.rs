// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(x: u32) -> (y: u64)
    ensures y == x,
{
    let y = x as u64;
    y
}
}
