// expect: fail
use vstd::prelude::*;
verus! {
proof fn wrong_last(s: Seq<int>, a: int, b: int)
    ensures
        s.push(a).push(b).index(s.len() as int + 1) == a, // it is b
{
}
}
