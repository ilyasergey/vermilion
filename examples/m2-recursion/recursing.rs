use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// Structural recursion on an integer measure: each recursive call carries a
/// termination obligation `0 <= n - 1 < n` derived from `decreases n`.
fn countdown(n: u64) -> (r: u64)
    ensures r == 0,
    decreases n,
{
    if n == 0 {
        0
    } else {
        countdown(n - 1)
    } 
}

/// Recursion with a contract that does real work: doubling by repeated
/// increment. The recursive call's postcondition is instantiated at the
/// call site; the termination measure is the remaining count.
fn add_twice(k: u64) -> (r: u64)
    requires
        k <= 1000,
    ensures
        r == 2 * k,
    decreases k,
{
    if k == 0 {
        0
    } else {
        let rest = add_twice(k - 1);
        rest + 2
    }
}

} // verus!
