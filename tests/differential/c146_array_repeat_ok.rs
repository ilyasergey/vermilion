// expect: pass
use vstd::prelude::*;
verus! {

// The array-repeat literal `[t; N]` lowers through vstd's
// `spec_array_fill_for_copy_type` into the constant-Seq mirror
// (`Vermilion.Seq.fill`); every element reads back as the fill value.
fn array_repeat_reads_back() {
    let z = [7u64; 5];
    assert(z[0] == 7);
    assert(z[4] == 7);
    assert(z@.len() == 5);
}

} // verus!
