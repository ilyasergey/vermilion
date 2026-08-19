// expect: fail
// Soundness guard: pushing changes the multiset.
use vstd::prelude::*;
verus! {
proof fn tm_push(s: Seq<u64>, x: u64)
    ensures s.push(x).to_multiset() == s.to_multiset(), // one element bigger
{
}
}
