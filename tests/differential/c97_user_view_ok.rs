// expect: pass
use vstd::prelude::*;
verus! {
pub struct Stack { pub items: Vec<u32> }
impl View for Stack {
    type V = Seq<u32>;
    open spec fn view(&self) -> Seq<u32> { self.items@ }
}
fn peek_len(s: &Stack) -> (n: usize)
    requires s@.len() < 1000,
    ensures n as int == s@.len(),
{
    s.items.len()
}
}
