// expect: pass
use vstd::prelude::*;
use vstd::wrapping::u64_specs;

verus! {

fn rotate(x: u64, shift: u32) -> (result: u64)
    ensures result == u64_specs::rotate_left(x, shift),
{
    x.rotate_left(shift)
}

fn u64_rotate_left_ok() {
    let r0 = rotate(0x0123_4567_89ab_cdef, 0);
    assert(r0 == 0x0123_4567_89ab_cdef);
    let r4 = rotate(0x0123_4567_89ab_cdef, 4);
    assert(u64_specs::rotate_left(0x0123_4567_89ab_cdef, 4)
        == 0x1234_5678_9abc_def0) by (bit_vector);
    assert(r4 == 0x1234_5678_9abc_def0);
    let r63 = rotate(1, 63);
    assert(u64_specs::rotate_left(1, 63) == 0x8000_0000_0000_0000) by (bit_vector);
    assert(r63 == 0x8000_0000_0000_0000);
    let r64 = rotate(1, 64);
    assert(r64 == 1);
    let r129 = rotate(1, 129);
    assert(u64_specs::rotate_left(1, 129) == 2) by (bit_vector);
    assert(r129 == 2);
}

} // verus!
