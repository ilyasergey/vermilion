// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
trait Doubler {
    spec fn model(&self) -> int;
    fn double(&self) -> (r: u64)
        requires self.model() < 1000,
        ensures r as int == 2 * self.model();
}
pub struct N { pub n: u32 }
impl Doubler for N {
    spec fn model(&self) -> int { self.n as int }
    fn double(&self) -> (r: u64) {
        (self.n as u64) * 2
    }
}
fn caller(x: N)
    requires x.n < 500,
{
    let d = x.double();
    assert(d as int == 2 * x.n as int);
}
}
