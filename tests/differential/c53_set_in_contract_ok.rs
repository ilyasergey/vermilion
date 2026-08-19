// expect: pass
use vstd::prelude::*;
verus! {
proof fn set_flow(s: Set<int>, x: int, y: int)
    requires s.contains(x),
    ensures
        s.insert(y).contains(x),
        s.insert(y).contains(y),
{
}
}
