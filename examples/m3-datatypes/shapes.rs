use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

pub struct Point {
    pub x: u32,
    pub y: u32,
}

pub enum Shape {
    Circle { radius: u32 },
    Rect { width: u32, height: u32 },
}

/// `match` never reaches the IR: Verus desugars it into variant tests and
/// field projections, which land on the emitted inductive's `@[simp]`
/// predicates and accessors.
spec fn perimeter(s: Shape) -> int {
    match s {
        Shape::Circle { radius } => 6 * radius as int,
        Shape::Rect { width, height } => 2 * (width as int) + 2 * (height as int),
    }
}

proof fn circle_perimeter(r: u32)
    ensures
        perimeter(Shape::Circle { radius: r }) == 6 * (r as int),
{
}

fn make_rect(w: u32, h: u32) -> (s: Shape)
    requires
        w <= 1000,
        h <= 1000,
    ensures
        perimeter(s) == 2 * (w as int) + 2 * (h as int),
{
    Shape::Rect { width: w, height: h }
}

fn shift_x(p: Point, dx: u32) -> (q: Point)
    requires
        p.x <= 1000,
        dx <= 1000,
    ensures
        q.x == p.x + dx,
        q.y == p.y,
{
    Point { x: p.x + dx, y: p.y }
}

} // verus!
