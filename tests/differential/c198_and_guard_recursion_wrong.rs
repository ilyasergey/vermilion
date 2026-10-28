// expect: fail
// Wrong direction of c197: the &&-guarded recursive definition must keep its
// meaning (a conjunction), so an arbitrary sequence is not all digits.
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

pub proof fn and_guard_recursion_wrong(s: Seq<char>)
    ensures
        digits_from(s, 0),
{
}

} // verus!
