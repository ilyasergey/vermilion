use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

// Same-named functions in different modules of ONE file: `signed::max` and
// `unsigned::max`, each with its own same-named spec fn `is_max`. The
// per-function emission disambiguates by qualified name — unit modules
// `generated/namespaced/signed_max.lean` and
// `generated/namespaced/unsigned_max.lean`, with both `is_max` definitions
// (`namespaced.signed.is_max`, `namespaced.unsigned.is_max`) side by side
// in the shared `generated/namespaced/Specs.lean`.

mod signed {
    use verus_builtin::*;

    pub open spec fn is_max(m: int, a: int, b: int) -> bool {
        m >= a && m >= b && (m == a || m == b)
    }

    pub fn max(a: i32, b: i32) -> (m: i32)
        ensures
            is_max(m as int, a as int, b as int),
    {
        if a >= b {
            a
        } else {
            b
        }
    }
}

mod unsigned {
    use verus_builtin::*;

    pub open spec fn is_max(m: int, a: int, b: int) -> bool {
        m >= a && m >= b && (m == a || m == b)
    }

    pub fn max(a: u32, b: u32) -> (m: u32)
        ensures
            is_max(m as int, a as int, b as int),
    {
        if a >= b {
            a
        } else {
            b
        }
    }
}

} // verus!
