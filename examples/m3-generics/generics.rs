use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

/// A generic pair struct — emitted as a parameterized Lean `inductive`;
/// field accessors and the type parameters flow through.
pub struct Pair<A, B> {
    pub first: A,
    pub second: B,
}

/// A generic spec function: identity. Type parameters become implicit
/// Lean binders so applications infer them.
spec fn id_spec<T>(x: T) -> T {
    x
}

/// A generic function whose postcondition mentions the type parameter and
/// the generic spec fn — verified once, generically (the parameter is an
/// abstract, inhabited Lean type).
fn swap<A, B>(p: Pair<A, B>) -> (q: Pair<B, A>)
    ensures
        q.first == p.second,
        q.second == p.first,
{
    Pair { first: p.second, second: p.first }
}

proof fn id_is_id<T>(x: T)
    ensures
        id_spec(x) == x,
{
}

} // verus!
