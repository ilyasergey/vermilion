// expect: fail
// Soundness guard: adding a multiset is not the identity.
use vstd::prelude::*;
use vstd::multiset::Multiset;
verus! {
proof fn ms_add_id(a: Multiset<u64>, c: Multiset<u64>)
    ensures a.add(c) == a, // false unless c is empty
{
}
}
