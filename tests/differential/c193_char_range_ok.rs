// expect: pass
// A char literal lowers to its code point, and a directly bound char
// carries the Unicode-scalar range fact (both intervals). Verus proves both
// ensures from its char typing axiom.
use vstd::prelude::*;

verus! {

pub open spec fn is_digit(c: char) -> bool {
    '0' <= c && c <= '9'
}

pub proof fn char_range_ok(c: char)
    ensures
        is_digit('7'),
        !is_digit('a'),
        (c as int) <= 0x10FFFF,
        !(0xD800 <= (c as int) && (c as int) <= 0xDFFF),
{
}

} // verus!
