use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

fn increment(x: u32) -> (y: u32)
    requires x < 100,
    ensures y == x + 1,
{
    let y = x + 1;
    assert(y > 0);
    y
}

} // verus!
