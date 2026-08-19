// expect: pass
// Seq::subrange: length and element indexing in range.
use vstd::prelude::*;
verus! {
proof fn sub(s: Seq<u64>)
    requires s.len() >= 5,
    ensures
        s.subrange(1, 4).len() == 3,
        s.subrange(1, 4)[0] == s[1],
        s.subrange(1, 4)[2] == s[3],
{
}
}
