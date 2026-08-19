use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// A counting loop: the invariant carries both the bound and the running
/// relationship; the postcondition follows from the exit facts
/// (invariant + negated condition).
#[verifier::exec_allows_no_decreases_clause]
fn count_to(n: u32) -> (c: u32)
    requires
        n < 1000,
    ensures
        n == c,
{
    let mut c: u32 = 0;
    while c < n
        invariant
            c <= n,
    {
        c = c + 1;
    }
    c
}

/// Sum 0 + 1 + ... + (n-1) against its closed form. The invariant
/// preservation goals are **nonlinear**, beyond today's automation ladder:
/// the machine attempt in `generated/` fails, `vrml_sync` leaves `sorry`
/// in the twin, and the committed `proofs/looping.lean` carries the manual
/// proofs (`linear_combination` / `nlinarith`) — the intended workflow for
/// obligations automation cannot reach.
#[verifier::exec_allows_no_decreases_clause]
fn sum_below(n: u32) -> (s: u32)
    requires
        n <= 100,
    ensures
        2 * s == n * (n - 1),
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant
            i <= n,
            n <= 100,
            2 * s == i * (i - 1),
            s <= 10000,
    {
        s = s + i;
        i = i + 1;
    }
    s
}

/// A two-variable loop with a linear accumulator invariant and an explicit
/// termination measure: `decreases n - i` yields a back-edge obligation
/// that the measure strictly decreases.
fn triple(n: u32) -> (s: u32)
    requires
        n <= 1000,
    ensures
        s == 3 * n,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant
            i <= n,
            n <= 1000,
            s == 3 * i,
        decreases n - i,
    {
        s = s + 3;
        i = i + 1;
    }
    s
}

} // verus!
