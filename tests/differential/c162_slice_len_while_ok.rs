// expect: pass
use vstd::prelude::*;

verus! {

fn copy_prefix(buf: &mut [u8; 8], src: &[u8])
    requires src@.len() <= 8,
{
    let mut i = 0;
    while i < src.len()
        invariant
            i <= src@.len(),
            src@.len() <= 8,
        decreases src@.len() - i,
    {
        buf[i] = src[i];
        i += 1;
    }
}

} // verus!
