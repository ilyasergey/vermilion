use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// Checked 64-bit arithmetic behind a contract; called by `double_small`.
fn clamp_add(a: u64, b: u64) -> (sum: u64)
    requires
        a < 1000,
        b < 1000,
    ensures
        sum == a + b,
{
    let sum = a + b;
    assert(sum < 2000);
    sum
}

/// Straight-line SSA lets, a widening cast, and a call with a contract.
fn double_small(x: u32) -> (doubled: u64)
    requires
        x < 50,
    ensures
        doubled == 2 * x,
{
    let wide = x as u64;
    let doubled = clamp_add(wide, wide);
    doubled
}

/// Booleans as propositions: conjunction, implication, and equality.
fn flags(p: bool, q: bool) -> (both: bool)
    ensures both == (p && q),
{
    let both = p && q;
    assert(both ==> p);
    both
}

/// Mathematical integers, an assumption, and Euclidean division.
proof fn scaled_bound(x: int, d: int)
    requires
        d > 0,
{
    assume(x / d <= x || x < 0);
    assert(x / d <= x || x < 0);
}

/// Natural numbers carry an implicit nonnegativity range.
proof fn nat_monotone(n: nat)
    ensures
        n + 1 > n,
{
}

/// An explicit `return` statement checks the postcondition at the return
/// site; the implicit function-end return then sits behind `assume false`.
fn passthrough(x: u32) -> (y: u32)
    ensures
        y == x,
{
    return x;
}

} // verus!
