// expect: pass
use vstd::prelude::*;
verus! {
proof fn push_grows(s: Seq<int>, x: int)
    ensures
        s.push(x).len() == s.len() + 1,
        s.push(x).index(s.len() as int) == x,
{
}
}
