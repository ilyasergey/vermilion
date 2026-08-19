// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Pair<A, B> { pub first: A, pub second: B }
fn swap<A, B>(p: Pair<A, B>) -> (q: Pair<B, A>)
    ensures q.first == p.second, q.second == p.first,
{
    Pair { first: p.second, second: p.first }
}
}
