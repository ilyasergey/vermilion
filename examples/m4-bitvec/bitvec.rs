use vstd::prelude::*;

verus! {

/// Machine bit operations, modeled through `BitVec` with proved
/// conversions (`Vermilion.Bits`) — Lean-native, nothing trusted.
fn masks(x: u32, y: u32) -> (r: u32)
    ensures r == (x & y),
{
    x & y
}

/// `by (bit_vector)` proof blocks discharge as isolated queries (the
/// loop-rule scoping), exactly like Verus's spun-off BV query.
proof fn bit_identities(x: u32) {
    assert((x & 0) == 0) by (bit_vector);
    assert((x | 0) == x) by (bit_vector);
    assert((x ^ x) == 0) by (bit_vector);
}

/// Shift queries with arithmetic content (not ground identities) close
/// through the proved bridge: a logical right shift of an in-range
/// operand IS division by a power of two (`Vermilion.Bits.shr_eq_div`),
/// so the linear rungs finish (#35).
proof fn shift_is_division(x: u32)
    requires
        x < 4096,
{
    assert(x >> 12 == 0) by (bit_vector)
        requires
            x < 4096,
    ;
}

/// The operand may be a byte read out of an array through a ghost
/// binding (a `Seq.index` application, not a plain binder): the contract
/// forall over the array is instantiated at the occurring index, and the
/// same bridge closes the query (dalek-lite DL4).
fn high_bit_clear(bytes: &[u8; 32]) -> (result: bool)
    requires
        bytes[31] <= 127,
    ensures
        result,
{
    let ghost high_byte: u8 = bytes[31];
    proof {
        assert(high_byte >> 7 == 0) by (bit_vector)
            requires
                high_byte <= 127,
        ;
    }
    true
}

fn main() {}

}
