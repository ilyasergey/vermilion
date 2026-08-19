// expect: pass
// V4: `broadcast use group_seq_properties` resolves through the vstd mirror
// registry into ladder hints — the group's Seq facts close this with no
// per-site lemma calls.
use vstd::prelude::*;
use vstd::seq_lib::group_seq_properties;
verus! {
proof fn concat_len_via_group(s1: Seq<u64>, s2: Seq<u64>, t: Seq<u64>)
    ensures ((s1 + s2) + t).len() == s1.len() + s2.len() + t.len(),
{
    broadcast use group_seq_properties;
}
}
