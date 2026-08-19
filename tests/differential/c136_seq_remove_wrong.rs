// expect: fail
// Soundness guard: remove shrinks the length, it is not the identity.
use vstd::prelude::*;
use vstd::seq_lib::*;
verus! {
proof fn rm_len(s: Seq<u64>, i: int)
    requires 0 <= i < s.len(),
    ensures s.remove(i).len() == s.len(), // it is len - 1
{
}
}
