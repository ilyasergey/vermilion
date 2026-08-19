use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// A `loop` with a `break` and a loop `ensures`: the invariant and the
/// `ensures` clause are both checked at the break; after the loop only they
/// are known (there is no loop condition to negate).
#[verifier::exec_allows_no_decreases_clause]
fn count_up_to(n: u32) -> (c: u32)
    requires
        n <= 100,
    ensures
        c == n,
{
    let mut c: u32 = 0;
    loop
        invariant
            c <= n,
        ensures
            c == n,
    {
        if c == n {
            break;
        }
        c = c + 1;
    }
    c
}

/// A `while` loop left early through a `break`: the at-exit invariants must
/// hold at the break, and the continuation cannot assume the negated
/// condition.
fn find_divisor(n: u32) -> (d: u32)
    requires
        2 <= n,
        n <= 1000,
    ensures
        2 <= d,
        d <= n,
{
    let mut d: u32 = 2;
    while d < n
        invariant
            2 <= d,
            d <= n,
        decreases n - d,
    {
        if n % d == 0 {
            break;
        }
        d = d + 1;
    }
    d
}

/// `continue` re-checks the at-entry invariants and the termination
/// measure at the continue site; the skipped tail contributes nothing.
fn sum_evens(n: u32) -> (s: u32)
    requires
        n <= 100,
    ensures
        s <= 100 * 100,
{
    let mut s: u32 = 0;
    let mut i: u32 = 0;
    while i < n
        invariant
            i <= n,
            n <= 100,
            s <= 100 * i,
        decreases n - i,
    {
        i = i + 1;
        if i % 2 == 1 {
            continue;
        }
        s = s + i;
    }
    s
}

} // verus!
