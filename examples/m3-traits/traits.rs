use vstd::prelude::*;

verus! {

/// A trait with a spec-level model: `area_spec` gives the method's
/// meaning, `wf` its precondition (Verus only allows `requires` on the
/// trait declaration — impls inherit it).
trait Shape {
    spec fn area_spec(&self) -> int;

    spec fn wf(&self) -> bool;

    fn area(&self) -> (r: u32)
        requires self.wf(),
        ensures r as int == self.area_spec();
}

struct Square { side: u32 }
struct Rect { w: u32, h: u32 }

impl Shape for Square {
    spec fn area_spec(&self) -> int { self.side * self.side }

    spec fn wf(&self) -> bool { self.side < 100 }

    fn area(&self) -> (r: u32) {
        self.side * self.side
    }
}

impl Shape for Rect {
    spec fn area_spec(&self) -> int { self.w * self.h }

    spec fn wf(&self) -> bool { self.w < 100 && self.h < 100 }

    fn area(&self) -> (r: u32) {
        self.w * self.h
    }
}

/// Statically-dispatched trait calls: each call site resolves to its
/// concrete impl, and the inherited trait contract — instantiated at
/// that impl's spec fns — applies.
fn total_area(s: Square, r: Rect) -> (t: u64)
    requires s.wf(), r.wf(),
    ensures t as int == s.area_spec() + r.area_spec(),
{
    let a = s.area();
    let b = r.area();
    (a as u64) + (b as u64)
}

fn main() {}

}
