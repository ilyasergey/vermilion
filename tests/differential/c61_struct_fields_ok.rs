// expect: pass
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Point { pub x: u32, pub y: u32 }
fn swap(p: Point) -> (q: Point)
    ensures q.x == p.y, q.y == p.x,
{
    Point { x: p.y, y: p.x }
}
}
