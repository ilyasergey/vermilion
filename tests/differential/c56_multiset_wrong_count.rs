// expect: fail
use vstd::prelude::*;
use vstd::multiset::Multiset;
verus! {
proof fn wrong_count(m: Multiset<int>, x: int)
    ensures m.insert(x).count(x) == m.count(x), // it is count + 1
{
}
}
