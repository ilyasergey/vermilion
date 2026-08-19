use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// Deliberately wrong: for `x == 99` the incremented value is 100, so the
/// assertion below is not provable. Verus rejects this file, and Vermilion's
/// Lean check maps the failed obligation back to the same source range.
fn bump(x: u32) -> (y: u32)
    requires x < 100,
    ensures y > x,
{
    let y: u32 = x + 1;
    assert(y < 100); 
    y
} 

} // verus!
