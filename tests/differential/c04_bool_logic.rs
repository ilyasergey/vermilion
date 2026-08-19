// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
fn f(p: bool, q: bool) -> (r: bool)
    requires p,
    ensures r == (p && q),
{
    let r = p && q;
    assert(r ==> q);
    r
}
}
