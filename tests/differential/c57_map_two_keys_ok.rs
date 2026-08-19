// expect: pass
use vstd::prelude::*;
verus! {
proof fn two_keys(m: Map<int, int>, k1: int, k2: int, v1: int, v2: int)
    requires k1 != k2,
    ensures
        m.insert(k1, v1).insert(k2, v2)[k1] == v1,
        m.insert(k1, v1).insert(k2, v2)[k2] == v2,
{
}
}
