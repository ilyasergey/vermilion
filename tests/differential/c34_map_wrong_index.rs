// expect: fail
use vstd::prelude::*;
verus! {
proof fn map_wrong(m: Map<int, int>, k1: int, k2: int, v: int)
    ensures
        m.insert(k1, v)[k2] == v, // wrong when k2 != k1
{
}
}
