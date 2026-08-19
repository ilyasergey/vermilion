// Range `for` loops: `for i in lo..hi` specializes to its integer
// while-loop equivalent (docs/trust.md): entry checks the invariants at the
// first peek value, iterations assume lo ≤ i < hi, the back edge re-checks
// at i+1 with the remaining count hi−i as the termination measure, and the
// exit instance sits at hi (vstd peek's INCLUSIVE guard) — which is what
// hands the continuation the classic i = hi knowledge.
use vstd::prelude::*;

verus! {

// The invariant references the loop variable; the exit instance at i = n
// discharges the postcondition.
fn count_up(n: usize) -> (c: usize)
    ensures
        c == n,
{
    let mut c: usize = 0;
    for i in 0..n
        invariant
            c == i,
    {
        c = c + 1;
    }
    c
}

// A write loop: quantified invariant over the filled prefix, Vec::set in
// the body, and `final(v)` connected through the loop-exit resolution.
fn fill(v: &mut Vec<u64>, x: u64)
    ensures
        final(v).len() == old(v).len(),
        forall|k: int| 0 <= k < old(v).len() ==> final(v)[k] == x,
{
    let n = v.len();
    for i in 0..n
        invariant
            n == v.len(),
            forall|k: int| 0 <= k < i ==> v[k] == x,
    {
        v.set(i, x);
    }
}

} // verus!
