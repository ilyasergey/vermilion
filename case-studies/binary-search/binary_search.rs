// Case study: binary search over a sorted Vec<u64> — the canonical
// verification benchmark (Verus A0-gate example rust_verify/tests/example.rs).
// Fully within the current sequential fragment: Vec via Seq view, a while
// loop with invariant + decreases, forall sortedness / exists witness, and
// the overflow-safe midpoint i1 + (i2 - i1) / 2.
use vstd::prelude::*;

verus! {

fn binary_search(v: &Vec<u64>, k: u64) -> (r: usize)
    requires
        forall|i: int, j: int| 0 <= i <= j < v.len() ==> v[i] <= v[j],
        exists|i: int| 0 <= i < v.len() && k == v[i],
    ensures
        r < v.len(),
        k == v[r as int],
{
    let mut i1: usize = 0;
    let mut i2: usize = v.len() - 1;
    while i1 != i2
        invariant
            i2 < v.len(),
            exists|i: int| i1 <= i <= i2 && k == v[i],
            forall|i: int, j: int| 0 <= i <= j < v.len() ==> v[i] <= v[j],
        decreases i2 - i1,
    {
        let ix = i1 + (i2 - i1) / 2;
        if v[ix] < k {
            i1 = ix + 1;
        } else {
            i2 = ix;
        }
    }
    i1
}

} // verus!
