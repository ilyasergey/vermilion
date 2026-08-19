// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Pair<A, B> { pub first: A, pub second: B }
fn bad_swap<A>(p: Pair<A, A>) -> (q: Pair<A, A>)
    ensures q.first == p.first, // false: first is set to p.second
{
    Pair { first: p.second, second: p.first }
}
}
