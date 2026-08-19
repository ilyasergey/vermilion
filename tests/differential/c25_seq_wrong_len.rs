// expect: fail @ 6
use vstd::prelude::*;
verus! {
proof fn push_wrong(s: Seq<int>, x: int)
    ensures
        s.push(x).len() == s.len(),
{
}
}
