// expect: pass
use vstd::prelude::*;
verus! {
proof fn push_chain(s: Seq<int>, a: int, b: int)
    ensures
        s.push(a).push(b).len() == s.len() + 2,
        s.push(a).push(b).index(s.len() as int + 1) == b,
{
}
}
