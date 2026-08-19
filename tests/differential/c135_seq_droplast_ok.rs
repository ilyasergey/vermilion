// expect: pass
// Seq::drop_last resolves through the vstd mirror (V3); length shrinks by one.
use vstd::prelude::*;
use vstd::seq_lib::*;
verus! {
proof fn dl_len(s: Seq<u64>)
    requires s.len() > 0,
    ensures s.drop_last().len() == s.len() - 1,
{
}
}
