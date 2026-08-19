// expect: pass
use vstd::prelude::*;
verus! {
proof fn set_ops(s: Set<int>, x: int)
    ensures
        s.insert(x).contains(x),
        !s.remove(x).contains(x),
        Set::<int>::empty().len() == 0,
{
}
}
