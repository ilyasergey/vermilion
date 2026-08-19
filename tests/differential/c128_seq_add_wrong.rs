// expect: fail
// Soundness guard: the right element is t[j], not s[j].
use vstd::prelude::*;
verus! {
proof fn concat(s: Seq<u64>, t: Seq<u64>, j: int)
    requires 0 <= j < t.len(), j < s.len(),
    ensures (s + t)[s.len() + j] == s[j], // it is t[j]
{
}
}
