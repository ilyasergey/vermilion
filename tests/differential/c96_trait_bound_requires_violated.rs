// expect: fail @ 15
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
trait HasVal {
    spec fn val(&self) -> int;
    fn get(&self) -> (r: u64)
        requires self.val() < 100, self.val() >= 0,
        ensures r as int == self.val();
}
fn generic_user<T: HasVal>(x: &T) -> (r: u64)
    requires x.val() < 500, x.val() >= 0, // too weak for get's requires
    ensures r as int == x.val(),
{
    x.get()
}
}
