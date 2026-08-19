// expect: pass
use vstd::prelude::*;
use vstd::multiset::Multiset;
verus! {
proof fn multiset_ops(m: Multiset<int>, x: int)
    ensures
        m.insert(x).count(x) == m.count(x) + 1,
        m.insert(x).len() == m.len() + 1,
        Multiset::<int>::empty().count(x) == 0,
{
}
}
