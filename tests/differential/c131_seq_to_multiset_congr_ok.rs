// expect: pass
// Seq::to_multiset lowers as a known op; equal sequences, equal multisets.
use vstd::prelude::*;
verus! {
proof fn tm_congr(s: Seq<u64>, t: Seq<u64>)
    requires s == t,
    ensures s.to_multiset() == t.to_multiset(),
{
}
}
