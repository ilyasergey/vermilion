use vstd::prelude::*;
verus! {
trait HasVal {
    spec fn val(&self) -> int;
    fn get(&self) -> (r: u32)
        requires self.val() < 100, self.val() >= 0,
        ensures r as int == self.val();
}
fn generic_user<T: HasVal>(x: &T) -> (r: u32)
    requires x.val() < 50, x.val() >= 0,
    ensures r as int == x.val(),
{
    x.get()
}
struct C { v: u32 }
impl HasVal for C {
    spec fn val(&self) -> int { self.v as int }
    fn get(&self) -> (r: u32) { self.v }
}
fn concrete_caller(c: C)
    requires c.v < 50,
{
    let r = generic_user(&c);
    assert(r as int == c.v as int);
}
fn main() {}
}
