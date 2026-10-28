// expect: pass
// Recursive spec fns guarded by short-circuit &&: the guard must be in scope
// for Lean's termination check, including a guard that calls another spec
// fn, and recursion on a suffix subrange. Binders named after Lean fixity
// keywords (prefix, infix, postfix) must render as valid identifiers.
use vstd::prelude::*;

verus! {

pub open spec fn is_digit(c: char) -> bool {
    '0' <= c && c <= '9'
}

pub open spec fn digits_from(s: Seq<char>, i: int) -> bool
    decreases s.len() - i,
{
    i >= s.len() || (0 <= i && i < s.len() && is_digit(s[i]) && digits_from(s, i + 1))
}

pub open spec fn count(prefix: Seq<char>) -> int
    decreases prefix.len(),
{
    if prefix.len() == 0 { 0 } else { 1 + count(prefix.subrange(1, prefix.len() as int)) }
}

pub open spec fn join(infix: Seq<char>, postfix: Seq<char>) -> Seq<char> {
    infix + postfix
}

pub proof fn and_guard_recursion_ok(s: Seq<char>)
    requires
        s.len() == 0,
    ensures
        digits_from(s, 0),
        count(s) == 0,
        join(s, s).len() == 0,
{
}

} // verus!
