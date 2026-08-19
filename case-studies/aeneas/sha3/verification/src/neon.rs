use core::arch::aarch64::*;
use std::ops::{Deref, DerefMut, Index,IndexMut};

pub type Lane = uint64x2_t;
#[derive(Copy, Clone)]
pub struct State {
    pub st: [Lane; 25]
}

/* Encapsulating intrinsics around safe abstractions */

/** Performs the xor of two vectors */
fn _veorq_u64(a: Lane, b: Lane) -> Lane {
    unsafe { veorq_u64(a, b) }
}

/** Performs the xor of three vectors */
fn _veor3q_u64(a: Lane, b: Lane, c: Lane) -> Lane {
    unsafe { veor3q_u64(a, b, c) }
}

/** Rotates left each limb in vector [b] by one, and xor with vector [a] */
fn _vrax1q_u64(a: Lane, b: Lane) -> Lane {
    unsafe { vrax1q_u64(a, b) }
}

/** Xor a and b, and rotate right result by imm */
fn _vxarq_u64<const IMM: i32>(a: Lane, b: Lane) -> Lane {
    unsafe { vxarq_u64(a, b, IMM) }
}

/** Performs (a xor (b and not(c))) */
fn _vbcaxq_u64(a: Lane, b: Lane, c: Lane) -> Lane {
    unsafe { vbcaxq_u64(a, b, c) }
}

/** Load two u64 as a vector */
fn _vld1q_u64(a: &[u8]) -> Lane {
    debug_assert!(a.len() == 16);
    unsafe {
        vld1q_u64(a.as_ptr() as *const u64)
    }
}

/** Store a vector into an array of 16 u8.  */
fn _vst1q_u64(a: &mut [u8], v: Lane) {
    debug_assert!(a.len() == 16);
    unsafe {
        vst1q_u64(a.as_mut_ptr() as *mut u64, v)
    }
}

/** Combines the first element of vectors a and b */
fn _vtrn1q_u64(a: Lane, b: Lane) -> Lane {
    unsafe { vtrn1q_u64(a, b) }
}

/** Combines the second element of vectors a and b */
fn _vtrn2q_u64(a: Lane, b: Lane) -> Lane {
    unsafe { vtrn2q_u64(a, b) }
}

/** Sets vector to n */
fn n(v: u64) -> Lane {
    unsafe { vdupq_n_u64(v) }
}


/* Helpers for manipulating State */

impl Deref for State {
    type Target = [Lane; 25];
    fn deref(&self) -> &Self::Target { &self.st }
}
impl DerefMut for State {
    fn deref_mut(&mut self) -> &mut Self::Target { &mut self.st }
}

impl Index<(usize,usize)> for State {
    type Output = Lane;

    fn index(&self, (x,y): (usize, usize)) -> &Self::Output {
        &self.st[5*y + x]
    }
}

impl IndexMut<(usize,usize)> for State {
    fn index_mut(&mut self, (x,y): (usize,usize)) -> &mut Self::Output {
        &mut self.st[5*y + x]
    }
}

/* Keccak permutation function */

fn theta (a : State) -> State {
    fn c(a: &State, x: usize) -> Lane {
        _veor3q_u64(a[(x,0)], a[(x,1)], _veor3q_u64(a[(x, 2)],a[(x,3)], a[(x, 4)]))
    }
    fn d (a: &State, x: usize) -> Lane {
        let x1 = (x+4) % 5;
        let x2 = (x+1) % 5;
        _vrax1q_u64(c(a,x1), c(a,x2))
    }
    // TODO: Precompute values in temp arrays, no need to recompute
    // d(a, i) for all i
    fn compute(res: &mut State, a: &State, idx: (usize, usize)) {
        res[idx] = _veorq_u64(a[idx], d(a, idx.0))
    }

    let mut res = State {st: [ n(0); 25 ]};
    compute(&mut res, &a, (0,0));
    compute(&mut res, &a, (0,1));
    compute(&mut res, &a, (0,2));
    compute(&mut res, &a, (0,3));
    compute(&mut res, &a, (0,4));
    compute(&mut res, &a, (1,0));
    compute(&mut res, &a, (1,1));
    compute(&mut res, &a, (1,2));
    compute(&mut res, &a, (1,3));
    compute(&mut res, &a, (1,4));
    compute(&mut res, &a, (2,0));
    compute(&mut res, &a, (2,1));
    compute(&mut res, &a, (2,2));
    compute(&mut res, &a, (2,3));
    compute(&mut res, &a, (2,4));
    compute(&mut res, &a, (3,0));
    compute(&mut res, &a, (3,1));
    compute(&mut res, &a, (3,2));
    compute(&mut res, &a, (3,3));
    compute(&mut res, &a, (3,4));
    compute(&mut res, &a, (4,0));
    compute(&mut res, &a, (4,1));
    compute(&mut res, &a, (4,2));
    compute(&mut res, &a, (4,3));
    compute(&mut res, &a, (4,4));
    res
}

fn rho (a : State) -> State {
    // There does not seem to be a rotate operation,
    // only a xor and rotate. This should be combined
    // with the last step of theta above.
    let zero = n(0);

    let mut res = State {st: [ n(0); 25 ]};
    // vxarq_u64 performs rotate right, while the
    // SHA3 specification for rho expects rotate lefts.
    // Compared to the computed rho offsets, we must therefore
    // rotate by (64 - offset) to match the expected semantics
    res[(0, 0)] = a[(0, 0)];
    res[(0, 1)] = _vxarq_u64::<28>(a[(0, 1)], zero);
    res[(0, 2)] = _vxarq_u64::<61>(a[(0, 2)], zero);
    res[(0, 3)] = _vxarq_u64::<23>(a[(0, 3)], zero);
    res[(0, 4)] = _vxarq_u64::<46>(a[(0, 4)], zero);

    res[(1, 0)] = _vxarq_u64::<63>(a[(1, 0)], zero);
    res[(1, 1)] = _vxarq_u64::<20>(a[(1, 1)], zero);
    res[(1, 2)] = _vxarq_u64::<54>(a[(1, 2)], zero);
    res[(1, 3)] = _vxarq_u64::<19>(a[(1, 3)], zero);
    res[(1, 4)] = _vxarq_u64::<62>(a[(1, 4)], zero);

    res[(2, 0)] = _vxarq_u64::<2>(a[(2, 0)], zero);
    res[(2, 1)] = _vxarq_u64::<58>(a[(2, 1)], zero);
    res[(2, 2)] = _vxarq_u64::<21>(a[(2, 2)], zero);
    res[(2, 3)] = _vxarq_u64::<49>(a[(2, 3)], zero);
    res[(2, 4)] = _vxarq_u64::<3>(a[(2, 4)], zero);

    res[(3, 0)] = _vxarq_u64::<36>(a[(3, 0)], zero);
    res[(3, 1)] = _vxarq_u64::<9>(a[(3, 1)], zero);
    res[(3, 2)] = _vxarq_u64::<39>(a[(3, 2)], zero);
    res[(3, 3)] = _vxarq_u64::<43>(a[(3, 3)], zero);
    res[(3, 4)] = _vxarq_u64::<8>(a[(3, 4)], zero);

    res[(4, 0)] = _vxarq_u64::<37>(a[(4, 0)], zero);
    res[(4, 1)] = _vxarq_u64::<44>(a[(4, 1)], zero);
    res[(4, 2)] = _vxarq_u64::<25>(a[(4, 2)], zero);
    res[(4, 3)] = _vxarq_u64::<56>(a[(4, 3)], zero);
    res[(4, 4)] = _vxarq_u64::<50>(a[(4, 4)], zero);

    res
}

fn pi (a : State) -> State {
    let mut res = State {st: [ n(0); 25 ]};

    res[(0, 0)] = a[(0, 0)];
    res[(0, 1)] = a[(3, 0)];
    res[(0, 2)] = a[(1, 0)];
    res[(0, 3)] = a[(4, 0)];
    res[(0, 4)] = a[(2, 0)];

    res[(1, 0)] = a[(1, 1)];
    res[(1, 1)] = a[(4, 1)];
    res[(1, 2)] = a[(2, 1)];
    res[(1, 3)] = a[(0, 1)];
    res[(1, 4)] = a[(3, 1)];

    res[(2, 0)] = a[(2, 2)];
    res[(2, 1)] = a[(0, 2)];
    res[(2, 2)] = a[(3, 2)];
    res[(2, 3)] = a[(1, 2)];
    res[(2, 4)] = a[(4, 2)];

    res[(3, 0)] = a[(3, 3)];
    res[(3, 1)] = a[(1, 3)];
    res[(3, 2)] = a[(4, 3)];
    res[(3, 3)] = a[(2, 3)];
    res[(3, 4)] = a[(0, 3)];

    res[(4, 0)] = a[(4, 4)];
    res[(4, 1)] = a[(2, 4)];
    res[(4, 2)] = a[(0, 4)];
    res[(4, 3)] = a[(3, 4)];
    res[(4, 4)] = a[(1, 4)];

    res
}


fn chi (a : State) -> State {
    // In the RFC, a[(x + 1) % 5, y, z] XOR 1 for each z corresponds
    // to negating each bit of a[(x + 1) % 5, y]. Furthermore, a
    // bitwise and is commutative. We can therefore use the vbcaxq_u64
    // instruction to implement this in one go.
    let mut res = State {st: [ n(0); 25 ]};

    res[(0, 0)] = _vbcaxq_u64(a[(0, 0)], a[(2, 0)], a[(1, 0)]);
    res[(0, 1)] = _vbcaxq_u64(a[(0, 1)], a[(2, 1)], a[(1, 1)]);
    res[(0, 2)] = _vbcaxq_u64(a[(0, 2)], a[(2, 2)], a[(1, 2)]);
    res[(0, 3)] = _vbcaxq_u64(a[(0, 3)], a[(2, 3)], a[(1, 3)]);
    res[(0, 4)] = _vbcaxq_u64(a[(0, 4)], a[(2, 4)], a[(1, 4)]);

    res[(1, 0)] = _vbcaxq_u64(a[(1, 0)], a[(3, 0)], a[(2, 0)]);
    res[(1, 1)] = _vbcaxq_u64(a[(1, 1)], a[(3, 1)], a[(2, 1)]);
    res[(1, 2)] = _vbcaxq_u64(a[(1, 2)], a[(3, 2)], a[(2, 2)]);
    res[(1, 3)] = _vbcaxq_u64(a[(1, 3)], a[(3, 3)], a[(2, 3)]);
    res[(1, 4)] = _vbcaxq_u64(a[(1, 4)], a[(3, 4)], a[(2, 4)]);

    res[(2, 0)] = _vbcaxq_u64(a[(2, 0)], a[(4, 0)], a[(3, 0)]);
    res[(2, 1)] = _vbcaxq_u64(a[(2, 1)], a[(4, 1)], a[(3, 1)]);
    res[(2, 2)] = _vbcaxq_u64(a[(2, 2)], a[(4, 2)], a[(3, 2)]);
    res[(2, 3)] = _vbcaxq_u64(a[(2, 3)], a[(4, 3)], a[(3, 3)]);
    res[(2, 4)] = _vbcaxq_u64(a[(2, 4)], a[(4, 4)], a[(3, 4)]);

    res[(3, 0)] = _vbcaxq_u64(a[(3, 0)], a[(0, 0)], a[(4, 0)]);
    res[(3, 1)] = _vbcaxq_u64(a[(3, 1)], a[(0, 1)], a[(4, 1)]);
    res[(3, 2)] = _vbcaxq_u64(a[(3, 2)], a[(0, 2)], a[(4, 2)]);
    res[(3, 3)] = _vbcaxq_u64(a[(3, 3)], a[(0, 3)], a[(4, 3)]);
    res[(3, 4)] = _vbcaxq_u64(a[(3, 4)], a[(0, 4)], a[(4, 4)]);

    res[(4, 0)] = _vbcaxq_u64(a[(4, 0)], a[(1, 0)], a[(0, 0)]);
    res[(4, 1)] = _vbcaxq_u64(a[(4, 1)], a[(1, 1)], a[(0, 1)]);
    res[(4, 2)] = _vbcaxq_u64(a[(4, 2)], a[(1, 2)], a[(0, 2)]);
    res[(4, 3)] = _vbcaxq_u64(a[(4, 3)], a[(1, 3)], a[(0, 3)]);
    res[(4, 4)] = _vbcaxq_u64(a[(4, 4)], a[(1, 4)], a[(0, 4)]);

    res
}

const IOTA_RC: [u64; 24] = [0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000, 0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009, 0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a, 0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003, 0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a, 0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008];

fn iota (ir: usize, a : State) -> State {
    let mut res = State {st: *a};
    res[(0, 0)] = _veorq_u64(a[(0, 0)], n(IOTA_RC[ir]));
    res
}

fn round(a: &mut State, ir: usize) {
    let a1 = *a;
    let a1 = theta(a1);
    let a1 = rho(a1);
    let a1 = pi(a1);
    let a1 = chi(a1);
    *a = iota(ir, a1);
}

fn keccak_p(s: &mut State) {
    round(s, 0);
    round(s, 1);
    round(s, 2);
    round(s, 3);
    round(s, 4);
    round(s, 5);
    round(s, 6);
    round(s, 7);
    round(s, 8);
    round(s, 9);
    round(s, 10);
    round(s, 11);
    round(s, 12);
    round(s, 13);
    round(s, 14);
    round(s, 15);
    round(s, 16);
    round(s, 17);
    round(s, 18);
    round(s, 19);
    round(s, 20);
    round(s, 21);
    round(s, 22);
    round(s, 23);
}

/** Absorbing a block of size R consists of two steps:
* We first xor the block with the first part of the state
* We then apply the permutation function
*/
fn sponge_absorb_block<const R: usize>(input1: &[u8], input2: &[u8], s: &mut State) {
    debug_assert!(input1.len() == input2.len());
    debug_assert!(input1.len() == R);
    let mut i = 0;
    // We process elements two u64 at a time.
    while i < R / 16 {
        let a = _vld1q_u64(&input1[i*16..(i+1)*16]); // a0 a1
        let b = _vld1q_u64(&input2[i*16..(i+1)*16]); // b0 b1
        // Transpose representations to match have (a0 b0) and (a1 b1),
        // allowing to xor accordingly with the state
        let v0 = _vtrn1q_u64(a, b);
        let v1 = _vtrn2q_u64(a, b);
        // Xor with the state
        s.st[2 * i] = _veorq_u64(v0, s.st[2 * i]);
        s.st[2 * i + 1] = _veorq_u64(v1, s.st[2 * i + 1]);
        i += 1;
    }
    // We assume that R % 8 = 0. If however R % 16 = 8,
    // the last part of the block cannot be processed two
    // elements at a time, we handle it here
    if R % 16 == 8 {
        let mut tmp = [0u8; 16];
        tmp[0..8].copy_from_slice(&input1[i*16..i*16 + 8]);
        tmp[8..16].copy_from_slice(&input2[i*16..i*16 + 8]);
        let v = _vld1q_u64(&tmp);
        s.st[2 * i] = _veorq_u64(v, s.st[2 * i]);
    }

    // We finally apply the permutation function
    keccak_p(s);
}

fn sponge_absorb_final<const R: usize, const EXTRA: u8>(input1: &[u8], input2: &[u8], s: &mut State) {
    debug_assert!(input1.len() == input2.len());
    debug_assert!(input1.len() < R);
    let len = input1.len();
    let mut tmp1 = [0u8; R];
    let mut tmp2 = [0u8; R];

    tmp1[0..len].copy_from_slice(input1);
    tmp2[0..len].copy_from_slice(input2);
    tmp1[len] = EXTRA;
    tmp2[len] = EXTRA;
    // In case len == R - 1, we need to xor the suffix to incorporate it
    tmp1[R - 1] = tmp1[R - 1] ^ 0x80;
    tmp2[R - 1] = tmp2[R - 1] ^ 0x80;

    sponge_absorb_block::<R>(&tmp1, &tmp2, s);
}

fn sponge_absorb<const R: usize, const EXTRA: u8> (input1: &[u8], input2: &[u8], s: &mut State) {
    debug_assert!(input1.len() == input2.len());
    let n = input1.len() / R;
    let mut i = 0;
    while i < n {
        sponge_absorb_block::<R>(&input1[R*i..R*(i+1)], &input2[R*i..R*(i+1)], s);
        i += 1;
    }
    sponge_absorb_final::<R, EXTRA>(&input1[R*i..], &input2[R*i..], s)
}

fn store_block<const R: usize>(out1: &mut [u8], out2: &mut [u8], s: &mut State) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() == R);
    let mut i = 0;
    while i < R / 16 {
        let v0 = s.st[2 * i];     // a0 b0
        let v1 = s.st[2 * i + 1]; // a1 b1
        let tmp1 = _vtrn1q_u64(v0, v1);
        let tmp2 = _vtrn2q_u64(v0, v1);
        _vst1q_u64(&mut out1[16*i..16*(i + 1)], tmp1);
        _vst1q_u64(&mut out2[16*i..16*(i + 1)], tmp2);
        i += 1;
    }
    // We assume that R % 8 = 0. If however R % 16 = 8,
    // the last part of the block cannot be processed two
    // elements at a time, we handle it here
    if R % 16 == 8 {
        let mut tmp = [0u8; 16];
        _vst1q_u64(&mut tmp, s.st[2 * i]);
        // First 8 bytes contain out1 state, second contain out2
        out1[16*i..].copy_from_slice(&tmp[0..8]);
        out2[16*i..].copy_from_slice(&tmp[8..16]);
    }
}

fn store_last_block<const R: usize>(out1: &mut [u8], out2: &mut [u8], s: &mut State) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() < R);
    let mut i = 0;
    let l = out1.len();
    while i < l / 16 {
        let v0 = s.st[2 * i];     // a0 b0
        let v1 = s.st[2 * i + 1]; // a1 b1
        let tmp1 = _vtrn1q_u64(v0, v1);
        let tmp2 = _vtrn2q_u64(v0, v1);
        _vst1q_u64(&mut out1[16*i..16*(i + 1)], tmp1);
        _vst1q_u64(&mut out2[16*i..16*(i + 1)], tmp2);
        i += 1;
    }
    let rem = l % 16;
    if rem > 8 {
        // We can still load more than one block
        let v0 = s.st[2 * i];     // a0 b0
        let v1 = s.st[2 * i + 1]; // a1 b1
        let tmp1 = _vtrn1q_u64(v0, v1);
        let tmp2 = _vtrn2q_u64(v0, v1);
        let mut arr_tmp1 = [0u8; 16];
        let mut arr_tmp2 = [0u8; 16];
        _vst1q_u64(&mut arr_tmp1, tmp1);
        _vst1q_u64(&mut arr_tmp2, tmp2);
        out1[16*i..].copy_from_slice(&arr_tmp1[0..rem]);
        out2[16*i..].copy_from_slice(&arr_tmp2[0..rem]);
    } else if rem > 0 {
        let mut tmp = [0u8; 16];
        _vst1q_u64(&mut tmp, s.st[2 * i]);
        // First 8 bytes contain out1 state, second contain out2
        out1[16*i..].copy_from_slice(&tmp[0..rem]);
        out2[16*i..].copy_from_slice(&tmp[8..8+rem]);
    }
}

fn sponge_squeeze<const R: usize>(out1: &mut [u8], out2: &mut [u8], s: &mut State) {
    debug_assert!(out1.len() == out2.len());
    let mut i = 0;
    let d = out1.len();
    loop {
        if i + R < d {
            store_block::<R>(&mut out1[i..i+R], &mut out2[i..i+R], s);
            keccak_p(s);
            i += R;
        } else {
            store_last_block::<R>(&mut out1[i..], &mut out2[i..], s);
            return;
        }
    }
}

fn sponge<const R: usize, const EXTRA: u8>(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    let buf = [n(0); 25];
    let mut s = State {st: buf};
    sponge_absorb::<R, EXTRA>(inp1, inp2, &mut s);
    sponge_squeeze::<R>(out1, out2, &mut s);
}

const SHA3_EXTRA: u8 = 0b00000110;
pub fn sha3_224(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() == 28);
    debug_assert!(inp1.len() == inp2.len());
    sponge::<144, SHA3_EXTRA>(out1, out2, inp1, inp2)
}
pub fn sha3_256(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() == 32);
    debug_assert!(inp1.len() == inp2.len());
    sponge::<136, SHA3_EXTRA>(out1, out2, inp1, inp2)
}
pub fn sha3_384(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() == 48);
    debug_assert!(inp1.len() == inp2.len());
    sponge::<104, SHA3_EXTRA>(out1, out2, inp1, inp2)
}
pub fn sha3_512(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    debug_assert!(out1.len() == out2.len());
    debug_assert!(out1.len() == 64);
    debug_assert!(inp1.len() == inp2.len());
    sponge::<72, SHA3_EXTRA>(out1, out2, inp1, inp2)
}

const SHAKE_EXTRA: u8 = 0b00011111;
pub fn shake128(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    sponge::<168, SHAKE_EXTRA>(out1, out2, inp1, inp2)
}
pub fn shake256(out1: &mut [u8], out2: &mut [u8], inp1: &[u8], inp2: &[u8]) {
    sponge::<136, SHAKE_EXTRA>(out1, out2, inp1, inp2)
}

#[cfg(test)]
mod tests {
    use super::*;

    /** Cast a vector to two u64. Assumes that a is of length 2 */
    fn store(a: &mut [u64], n: Lane) {
        debug_assert!(a.len() == 2);
        unsafe { vst1q_u64(a.as_mut_ptr(), n) }
    }

    fn flatten (a: [Lane; 25]) -> [u64; 50] {
        let mut res = [0u64; 50];
        for i in 0..25 {
            store(&mut res[2*i..2*i+2], a[i]);
        }
        res
    }

    #[test] fn theta_works() {
        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(1851876684);

        let res = theta(State {st: buf});
        let expected = [
            n(1851876684), n(1851876684), n(0), n(0), n(3703753368),
            n(0), n(1851876684), n(0), n(0), n(3703753368),
            n(0), n(1851876684), n(0), n(0), n(3703753368),
            n(0), n(1851876684), n(0), n(0), n(3703753368),
            n(0), n(1851876684), n(0), n(0), n(3703753368)];
        assert_eq!(flatten(expected), flatten(res.st));
    }

    #[test] fn rho_works() {
        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(7523094288207667809);
        buf[1] = n(8101815670912281193);
        buf[2] = n(8680537053616894577);
        buf[3] = n(3833745473465776761);
        buf[4] = n(4918848065919006518);
        buf[5] = n(5497569448741520965);
        buf[6] = n(6076290831446134349);
        buf[7] = n(99339780707925);

        let res = rho(State {st: buf});
        let mut expected = [n(0); 25];
        expected[0] = n(7523094288207667809);
        expected[1] = n(16203631341824562386);
        expected[2] = n(6781820281831611548);
        expected[3] = n(2527372232197620531);
        expected[4] = n(705307819961883154);
        expected[5] = n(9544363825545127060);
        expected[6] = n(17646463733165528324);
        expected[7] = n(6357745965307200);

        assert_eq!(flatten(expected), flatten(res.st));
    }

    #[test] fn pi_works() {
        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(7523094288207667809);
        buf[1] = n(8101815670912281193);
        buf[2] = n(8680537053616894577);
        buf[3] = n(3833745473465776761);
        buf[4] = n(4918848065919006518);
        buf[5] = n(5497569448741520965);
        buf[6] = n(6076290831446134349);
        buf[7] = n(99339780707925);

        let res = pi(State {st: buf});
        let mut expected = [n(0); 25];
        expected[0] = n(7523094288207667809);
        expected[1] = n(6076290831446134349);
        expected[5] = n(3833745473465776761);
        expected[10] = n(8101815670912281193);
        expected[11] = n(99339780707925);
        expected[15] = n(4918848065919006518);
        expected[16] = n(5497569448741520965);
        expected[20] = n(8680537053616894577);

        assert_eq!(flatten(expected), flatten(res.st));
    }

    #[test] fn chi_works() {
        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(7523094288207667809);
        buf[1] = n(8101815670912281193);
        buf[2] = n(8680537053616894577);
        buf[3] = n(3833745473465776761);
        buf[4] = n(4918848065919006518);
        buf[5] = n(5497569448741520965);
        buf[6] = n(6076290831446134349);
        buf[7] = n(99339780707925);

        let res = chi(State {st: buf});
        let mut expected = [n(0); 25];
        expected[0] = n(6951154796706624113);
        expected[1] = n(8462104749220258401);
        expected[2] = n(4049921563967584119);
        expected[3] = n(2094199211954485816);
        expected[4] = n(6074030200657559358);
        expected[5] = n(5497560618155595349);
        expected[6] = n(6076290831446134349);
        expected[7] = n(99339780707925);
        expected[8] = n(5497569448741520965);
        expected[9] = n(1157442765408700424);

        assert_eq!(flatten(expected), flatten(res.st));
    }

    #[test] fn iota_works() {
        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(7523094288207667809);
        buf[1] = n(8101815670912281193);
        buf[2] = n(8680537053616894577);
        buf[3] = n(3833745473465776761);
        buf[4] = n(4918848065919006518);
        buf[5] = n(5497569448741520965);
        buf[6] = n(6076290831446134349);
        buf[7] = n(99339780707925);

        let res = iota(1, State {st: buf});
        let mut expected = [n(0); 25];
        expected[0] = n(7523094288207700707);
        expected[1] = n(8101815670912281193);
        expected[2] = n(8680537053616894577);
        expected[3] = n(3833745473465776761);
        expected[4] = n(4918848065919006518);
        expected[5] = n(5497569448741520965);
        expected[6] = n(6076290831446134349);
        expected[7] = n(99339780707925);
        assert_eq!(flatten(expected), flatten(res.st));

        let mut buf: [Lane; 25] = [n(0); 25];
        buf[0] = n(7450753080332940129);
        buf[1] = n(7667492055134201444);
        buf[2] = n(7812454975315535975);
        buf[3] = n(8390880619439421297);
        buf[4] = n(8464925009632326245);
        buf[5] = n(8028076975085418868);

        let res = iota(4, State {st: buf});
        let mut expected = [n(0); 25];
        expected[0] = n(7450753080332973034);
        expected[1] = n(7667492055134201444);
        expected[2] = n(7812454975315535975);
        expected[3] = n(8390880619439421297);
        expected[4] = n(8464925009632326245);
        expected[5] = n(8028076975085418868);
        assert_eq!(flatten(expected), flatten(res.st));
    }

    #[test] fn absorb_works () {
        let mut buf: [Lane; 25] = [n(0); 25];
        let mut st = State {st: buf};
        let msg : &[u8] = "abc".as_bytes();
        sponge_absorb::<136, 0b00000110>(&msg, &msg, &mut st);

        let expected : [u64; 25] = [12836915144627689530, 13659650127086181380, 6580494897001291653, 3608864417873313606, 17874948528354506449, 2348566366763630119, 3599156074273288695, 10367133458316451740, 11483760744433370284, 12108521354799725218, 13768354540184074050, 3500137825564227775, 1912775480511039586, 6972923045565212421, 2244051771410685518, 7138831979214414319, 5422184856821948861, 3512518658046197130, 15164272221349545673, 2712204227642176901, 6900990571980570312, 215085213393108161, 7386066746027502787, 15402962915016710781, 13103395320785080385];
        let mut exp = [n(0); 25];
        for i in 0..25 { exp[i] = n(expected[i]) }

        assert_eq!(flatten(st.st), flatten(exp));

        let mut buf: [Lane; 25] = [n(0); 25];
        let mut st = State {st: buf};
        let msg = "abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu".as_bytes();
        sponge_absorb::<136, 0b00000110>(&msg, &msg, &mut st);

        let expected : [u64; 25] = [4726395860573777809, 15843506506766574794, 2716634585774666024, 1737735774526996814, 14825840268597553408, 2893891804788006948, 1940574399708971279, 878942488969563697, 3483311747848758872, 12392203660646169219, 10743332778946232271, 17791808232983699314, 17415938836948980389, 17806889124508796133, 1552404197484772823, 5806758790584180956, 11975561253770213739, 13486334192412801403, 6547189894179636835, 8048833238230338377, 15482816981556078755, 14830601261318531571, 2437279447890865012, 12495424367303651719, 4718648261881104357];
        let mut exp = [n(0); 25];
        for i in 0..25 { exp[i] = n(expected[i]) }

        assert_eq!(flatten(st.st), flatten(exp));
    }

    #[test] fn sha3_works () {
        let msg = "abc".as_bytes();
        let mut out1 = [0u8; 32];
        let mut out2 = [0u8; 32];
        sha3_256(&mut out1, &mut out2, &msg, &msg);

        let expected: [u8; 32] = [58, 152, 93, 167, 79, 226, 37, 178, 4, 92, 23, 45,
            107, 211, 144, 189, 133, 95, 8, 110, 62, 157, 82, 91, 70, 191, 226, 69, 17, 67, 21, 50];

        assert_eq!(out1, out2);
        assert_eq!(out1, expected);
        let mut out1 = [0u8; 32];
        let mut out2 = [0u8; 32];
        sha3_256(&mut out1, &mut out2, &msg, &msg);

        let expected: [u8; 32] = [58, 152, 93, 167, 79, 226, 37, 178, 4, 92, 23, 45,
            107, 211, 144, 189, 133, 95, 8, 110, 62, 157, 82, 91, 70, 191, 226, 69, 17, 67, 21, 50];

        assert_eq!(out1, out2);
        assert_eq!(out1, expected);

        let msg = "abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu".as_bytes();
        let mut out1 = [0u8; 32];
        let mut out2 = [0u8; 32];
        sha3_256(&mut out1, &mut out2, &msg, &msg);

        let expected: [u8; 32] = [145, 111, 96, 97, 254, 135, 151, 65, 202, 100, 105, 180, 57, 113, 223, 219, 40, 177, 163, 45, 195, 108, 179, 37, 78, 129, 43, 226, 122, 173, 29, 24];

        assert_eq!(out1, out2);
        assert_eq!(out1, expected);

    }
}
