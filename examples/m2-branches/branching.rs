use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// A tail-position conditional: both arms assign the return slot, so the
/// postconditions are checked against the guarded SSA join.
fn max_u32(a: u32, b: u32) -> (m: u32)
    ensures
        m >= a,
        m >= b,
        m == a || m == b,
{
    if a >= b {
        a
    } else {
        b
    }
}

/// A mutable local reassigned in one arm only: the join sees the then-arm
/// value against the fall-through value.
fn clamp_increment(x: u32, cap: u32) -> (r: u32)
    requires
        x < 1000,
        cap < 1000,
    ensures
        r <= cap || r == x + 1,
{
    let mut r = x;
    if x < cap {
        r = x + 1;
    } else {
        r = cap;
    }
    r
}

/// Nested conditionals plus an early return inside a branch: the early
/// return's postcondition is checked on its own path, and the unreachable
/// continuation of that path sits behind a guarded `assume false`.
fn sign(x: i64) -> (s: i64)
    ensures
        x > 0 ==> s == 1,
        x < 0 ==> s == -1,
        x == 0 ==> s == 0,
{
    if x > 0 {
        return 1;
    }
    if x < 0 {
        -1
    } else {
        0
    }
}

/// A spec-level conditional (`ite`) in the contract, discharged through the
/// named `Vermilion.iteP` convention.
fn abs_small(x: i64) -> (a: i64)
    requires
        -100 <= x && x <= 100,
    ensures
        a == (if x >= 0 { x as int } else { -(x as int) }),
{
    if x >= 0 {
        x
    } else {
        -x
    }
}

} // verus!
