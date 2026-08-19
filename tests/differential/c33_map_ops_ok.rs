// expect: pass
use vstd::prelude::*;
verus! {
proof fn map_ops(m: Map<int, int>, k: int, v: int)
    ensures
        m.insert(k, v)[k] == v,
        m.insert(k, v).contains_key(k),
        !Map::<int, int>::empty().contains_key(k),
{
}
}
