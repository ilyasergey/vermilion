// SPDX-License-Identifier: Apache-2.0
//
// Executable body extracted from aeyakovenko/percolator src/v16.rs at
// 143e68c4917ed0400a27b952f036a5677047cd84.  Verus result binders and
// contracts are the only changes around the body.  Verus verifies this file;
// Vermilion currently emits `iteP value ...` without a `Decidable value`
// binder when an exec bool parameter becomes a Lean proposition.

use vstd::prelude::*;

verus! {

fn encode_bool(value: bool) -> (result: u8)
    ensures
        value ==> result == 1u8,
        !value ==> result == 0u8,
{
    if value {
        1
    } else {
        0
    }
}

} // verus!
