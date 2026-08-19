// expect: pass
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
    requires x.val() < 50, x.val() >= 0,
    ensures r as int == x.val(),
{
    x.get()
}
}
