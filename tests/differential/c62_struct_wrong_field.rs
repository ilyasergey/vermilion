// expect: fail
use verus_builtin::*;
use verus_builtin_macros::*;
verus! {
pub struct Point { pub x: u32, pub y: u32 }
fn not_swap(p: Point) -> (q: Point)
    ensures q.x == p.y, // body keeps x
{
    Point { x: p.x, y: p.y }
}
}
