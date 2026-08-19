use vstd::prelude::*;

verus! {

/// A higher-order spec function: `spec_fn` values are genuine Lean
/// functions, application is application, closures are `fun`.
spec fn apply_twice(f: spec_fn(int) -> int, x: int) -> int {
    f(f(x))
}

spec fn compose(f: spec_fn(int) -> int, g: spec_fn(int) -> int) -> spec_fn(int) -> int {
    |x: int| f(g(x))
}

proof fn closure_basics() {
    let bump = |x: int| x + 1;
    assert(bump(2) == 3);
    assert(apply_twice(bump, 3) == 5);
    let double = |x: int| 2 * x;
    assert(compose(bump, double)(10) == 21);
}

fn main() {}

}
