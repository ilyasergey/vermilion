// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Counter { pub count: u32 }
impl Counter {
    fn bump(&mut self)
        requires old(self).count < 100,
        ensures final(self).count == old(self).count + 1,
    {
        self.count = self.count + 1;
    }
}
fn caller() {
    let mut c = Counter { count: 5 };
    c.bump();
    assert(c.count == 6);
}
}
