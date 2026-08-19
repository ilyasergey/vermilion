// expect: pass
// Multiset::add resolves through the vstd mirror registry (vstdapply):
// congruence over the registry-resolved application.
use vstd::prelude::*;
use vstd::multiset::Multiset;
verus! {
proof fn ms_add_congr(a: Multiset<u64>, b: Multiset<u64>, c: Multiset<u64>)
    requires a == b,
    ensures a.add(c) == b.add(c),
{
}
}
