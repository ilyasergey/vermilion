// expect: fail
use vstd::prelude::*;
verus! {
proof fn set_wrong(s: Set<int>, x: int)
    ensures
        s.insert(x).len() == s.len() + 1, // wrong when x is already in s
{
}
}
