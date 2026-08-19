// expect: pass
// DL5 (#18): a constructor whose type parameters the fields cannot pin
// (`Ok(())`'s error type) renders with explicit type ascription, so the
// obligation elaborates standalone — the self-elaboration invariant.
use vstd::prelude::*;

verus! {

#[derive(PartialEq, Eq)]
pub enum StoreError {
    Full,
}

pub fn store_unit() -> (result: Result<(), StoreError>)
    ensures
        result == Result::<(), StoreError>::Ok(()),
{
    Ok(())
}

} // verus!
