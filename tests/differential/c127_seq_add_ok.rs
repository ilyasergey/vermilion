// expect: pass
// Seq::add (spec +): additive length and boundary-split indexing.
use vstd::prelude::*;
verus! {
proof fn concat(s: Seq<u64>, t: Seq<u64>, i: int, j: int)
    requires 0 <= i < s.len(), 0 <= j < t.len(),
    ensures
        (s + t).len() == s.len() + t.len(),
        (s + t)[i] == s[i],
        (s + t)[s.len() + j] == t[j],
{
}
}
