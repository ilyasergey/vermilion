use vstd::prelude::*;

verus! {

trait HasOutput {
    type Output;
}

fn identity<T: HasOutput>(value: T::Output) -> (result: T::Output)
    ensures
        result == value,
{
    value
}

} // verus!
