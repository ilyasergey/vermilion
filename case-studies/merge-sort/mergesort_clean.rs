// Merge sort, specs only: the same algorithm and contracts as the verbatim
// Verus original (mergesort.rs), with ALL inline proof scripting removed —
// no proof{} blocks, no per-push lemma invocations, no broadcast machinery,
// no =~= extensionality nudges. What remains is the specification (ensures,
// invariants, decreases) and the algorithm; the proof weight belongs to the
// Lean side (prelude lemmas — to_multiset is Mathlib's Multiset.ofList,
// where distribution over append is a library fact — plus interactive twin
// proofs where automation falls short). This is the interactive-proofs-first
// policy demonstrated: compare line-for-line with mergesort.rs.
//
// Still valid Verus syntax (the front end elaborates it under --no-verify;
// Verus's own SMT pass would need the dropped scripting — that asymmetry is
// the point). VERIFIED end to end (stage S1): 40 obligations — 31 by the
// vrml automation, 9 interactively in proofs/mergesort_clean.lean, whose
// user-owned section holds the extracted helper lemmas. ./test.sh compiles
// and RUNS this verified code against a concrete input.
use vstd::prelude::*;

verus! {

pub open spec fn is_sorted(v: &Vec<u64>) -> bool {
    forall|i: int, j: int| 0 <= i < j < v.len() ==> #[trigger] v[i] <= #[trigger] v[j]
}

fn extend_from_idx(r: &mut Vec<u64>, v: &Vec<u64>, start: usize)
    requires
        start < v.len(),
    ensures
        final(r)@ == old(r)@ + v@.subrange(start as int, v.len() as int),
{
    for i in start..v.len()
        invariant
            r@ == old(r)@ + v@.subrange(start as int, i as int),
    {
        r.push(v[i]);
    }
}

fn merge(v1: &Vec<u64>, v2: &Vec<u64>) -> (r: Vec<u64>)
    requires
        is_sorted(v1),
        is_sorted(v2),
    ensures
        r@.to_multiset() == (v1@ + v2@).to_multiset(),
        is_sorted(&r),
{
    let mut r: Vec<u64> = Vec::new();
    let mut i1: usize = 0;
    let mut i2: usize = 0;

    while i1 < v1.len() && i2 < v2.len()
        invariant
            0 <= i1 <= v1.len(),
            0 <= i2 <= v2.len(),
            is_sorted(v1),
            is_sorted(v2),
            forall|i: int| i1 < v1.len() ==> 0 <= i < r.len() ==> r[i] <= v1[i1 as int],
            forall|i: int| i2 < v2.len() ==> 0 <= i < r.len() ==> r[i] <= v2[i2 as int],
            r@.to_multiset() == (v1@.subrange(0 as int, i1 as int) + v2@.subrange(
                0 as int,
                i2 as int,
            )).to_multiset(),
            is_sorted(&r),
        decreases v1.len() + v2.len() - i1 - i2,
    {
        if v1[i1] < v2[i2] {
            r.push(v1[i1]);
            i1 += 1;
        } else {
            r.push(v2[i2]);
            i2 += 1;
        }
    }

    if i1 < v1.len() {
        extend_from_idx(&mut r, v1, i1);
    } else if i2 < v2.len() {
        extend_from_idx(&mut r, v2, i2);
    }
    r
}

fn merge_sort(v: &Vec<u64>) -> (r: Vec<u64>)
    ensures
        r@.to_multiset() == (*v)@.to_multiset(),
        is_sorted(&r),
    decreases v.len(),
{
    let n = v.len();
    let mut v1 = v.clone();
    if (n <= 1) {
        v1
    } else {
        let mut v2 = v1.split_off(n / 2);
        let r1 = merge_sort(&mut v1);
        let r2 = merge_sort(&mut v2);
        merge(&r1, &r2)
    }
}

} // verus!
