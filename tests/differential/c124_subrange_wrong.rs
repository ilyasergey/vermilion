// expect: fail
// Soundness guard: subrange(1,4)[0] is s[1], not s[0].
use vstd::prelude::*;
verus! {
proof fn sub(s: Seq<u64>)
    requires s.len() >= 5,
    ensures s.subrange(1, 4)[0] == s[0], // it is s[1]
{
}
}
