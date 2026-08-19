// expect: fail
// Soundness guard: a broadcast group is only hints — it cannot prove a
// false length identity.
use vstd::prelude::*;
use vstd::seq_lib::group_seq_properties;
verus! {
proof fn concat_len_wrong(s1: Seq<u64>, s2: Seq<u64>)
    ensures (s1 + s2).len() == s1.len(), // drops s2.len()
{
    broadcast use group_seq_properties;
}
}
