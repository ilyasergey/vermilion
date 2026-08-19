// expect: fail @ 9
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Counter { pub count: u32 }
impl Counter {
    fn bump(&mut self)
        requires old(self).count < 100,
        ensures final(self).count == old(self).count + 2, // off by one
    {
        self.count = self.count + 1;
    }
}
}
