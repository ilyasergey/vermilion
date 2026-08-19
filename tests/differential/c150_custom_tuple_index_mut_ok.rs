// expect: pass
use vstd::prelude::*;
verus! {

pub struct Grid(pub [u64; 4]);

impl core::ops::Index<(usize, usize)> for Grid {
    type Output = u64;

    fn index(&self, (x, y): (usize, usize)) -> (out: &u64)
        ensures
            *out == self.0@[(2 * y + x) as int],
    {
        &self.0[2 * y + x]
    }
}

impl vstd::std_specs::core::IndexSpecImpl<(usize, usize)> for Grid {
    open spec fn index_req(&self, index: &(usize, usize)) -> bool {
        index.0 < 2 && index.1 < 2
    }
}

impl core::ops::IndexMut<(usize, usize)> for Grid {
    fn index_mut(&mut self, (x, y): (usize, usize)) -> (out: &mut u64)
        ensures
            *out == old(self).0@[(2 * y + x) as int],
            final(self).0@ == old(self).0@.update(
                (2 * y + x) as int,
                *final(out),
            ),
    {
        &mut self.0[2 * y + x]
    }
}

fn set(grid: &mut Grid)
    ensures
        final(grid).0@ == old(grid).0@.update(3, 9),
{
    grid[(1, 1)] = 9;
    assert(grid.0@[3] == 9);
}

} // verus!
