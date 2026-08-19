#![allow(dead_code)]
use std::ops::{Deref, DerefMut, Index, IndexMut};

type Lane = u64;

#[derive(Clone, Copy)]
struct StateArray([Lane; 25]);

impl Default for StateArray {
    fn default() -> Self { StateArray([0; 25]) }
}

impl Deref for StateArray {
    type Target = [Lane; 25];
    fn deref(&self) -> &Self::Target { &self.0 }
}
impl DerefMut for StateArray {
    fn deref_mut(&mut self) -> &mut Self::Target { &mut self.0 }
}

impl Index<(usize,usize)> for StateArray {
    type Output = Lane;

    fn index(&self, (x,y): (usize, usize)) -> &Self::Output {
        &self.0[5*y + x]
    }
    /*
    index self (x,y) = .ok z /\
    z.toList = IR.get self.toBits x y

where
    Std.UScalar.toBitList: Std.Scalar ty → List Bool

    Std.U64.toBitList: Std.U64 → List Bool

    algos.StateArray.toBits: Array U64 25 → List Bool
    algos.StateArray.toBits self := arr.val.map (·.toBitList) |>.flatten

    @[simp]
    IR.get: List Bool → Nat → Nat → Vector Bool 64
    IR.get self x y := .ofFn (fun z = self[encodeIndex x y z])

also
    (Spec.Keccak.StateArray.get self x y z) = (ListIR.get self.toVector x y)[z]

    U64.numBits = Spec.w 6
    (Std.UScalar.toBitList u).length = ty.numBits
    (Std.U64.toBitList u).length = Spec.w 6
    (algos.StateArray.toBits self).length = Spec.b 6
    */
}

impl IndexMut<(usize,usize)> for StateArray {
    fn index_mut(&mut self, (x,y): (usize,usize)) -> &mut Self::Output {
        &mut self.0[5*y + x]
    }
    /*
    index_mut self (x,y) = .ok (old, mk) /\
    old.toList = IR.get self x y /\
    forall u, (mk u) = ListIR.set self x y u.toBitList

where
    @[simp]
    IR.set (self: List Bool) (x y: Usize) (u: List 64) := self.replace_slice (5 * x + y) u

    */
}

impl StateArray {
    pub fn xor_byte_at(&mut self, byte: u8, pos: usize /*&u8*/) {
        let lane_idx = pos / 8;
        let offset = pos % 8;
        let mut buf = self.0[lane_idx].to_le_bytes();
        buf[offset] ^= byte;
        self.0[lane_idx] = u64::from_le_bytes(buf);
    }

    fn xor_lane(dst: &mut Lane, src: &[u8]){
        let mut buf = dst.to_le_bytes();
        #[inline] fn inner(mut i: usize /*&u8*/, buf: &mut [u8; 8], src: &[u8]) {
            while i < src.len() {
                buf[i] ^= src[i];
                i += 1;
            }
        } inner(0, &mut buf, src);
        *dst = u64::from_le_bytes(buf);
    }

    /** Assumes `other.len() < self.len() * 8`. */
    pub fn xor(&mut self, other: &[u8]) {
        let mut block_idx = 0; /*&u64*/
        /** Assumes `8*block_idx < other.len()` */
        #[inline] fn inner(this: &mut StateArray, block_idx: &mut usize /*&u64*/, other: &[u8]){
            while 8* *block_idx + 8 <= other.len() {
                StateArray::xor_lane(&mut this.0[*block_idx], &other[8* *block_idx..8*(*block_idx+1)]);
                *block_idx += 1;
            }
        } inner(self, &mut block_idx, other);
        if 8 * block_idx  < other.len() {
            StateArray::xor_lane(&mut self.0[block_idx], &other[8*block_idx..]);
        }
    }

    /** */
    pub fn copy_to(&self, dst: &mut [u8]) {
        let mut i = 0 /*u64s*/;
        while i < self.len() && 8*(i + 1) < dst.len() {
            dst[8*i..8*(i + 1)].copy_from_slice(&self.0[i].to_le_bytes()[0..]);
            i += 1;
        }
        if i < self.len() && 8*i < dst.len() {
            let nb_left = dst.len() - 8*i;
            dst[8*i..].copy_from_slice(&self.0[i].to_le_bytes()[0..nb_left]);
        }
        // while i < self.len() && 8*i < dst.len() {
        //     if 8*i + 8 < dst.len() {
        //         dst[8*i..8*(i + 1)].copy_from_slice(&self.0[i].to_le_bytes()[0..]);
        //     } else {
        //         let nb_left = dst.len() - 8*i;
        //         dst[8*i..].copy_from_slice(&self.0[i].to_le_bytes()[0..nb_left]);
        //     }
        //     i += 1;
        // }
    }
    /*
    coyp_to_from src input i = .ok output /\
    output.toBits = input.toBits.setSlice! (8*i) (src.toBits.take (64 * input.toBits.length / 64 ) |>.drop (8*i))
    ---
    copy_to src input := .ok output /\
    output.toBits = input.toBits.setSlice! 0 (src.toBits.take input.toBits.length)
    */
}

// const W: usize = (Lane::BITS as usize)
const W: usize = 64;

fn theta(a: StateArray) -> StateArray {
    fn c(a: &StateArray, x: usize) -> Lane {
        a[(x,0)] ^ a[(x,1)] ^ a[(x,2)] ^ a[(x,3)] ^ a[(x,4)]
    }
    fn d(a: &StateArray, x: usize) -> Lane {
        let x1 = (x + 4) % 5;
        let x2 = (x + 1) % 5;
        c(a,x1) ^ c(a,x2).rotate_left(1)
    }
    let mut res = StateArray::default();
    let mut x = 0;
    while x < 5 {
        #[inline] fn inner(res: &mut StateArray, a: &StateArray, x: usize) {
            let mut y = 0;
            while y < 5 {
                #[inline] fn inner(res: &mut StateArray, a: &StateArray, x: usize, y: usize) {
                    res[(x,y)] = a[(x,y)] ^ d(a, x);
                } inner(res, a, x, y);
                y += 1;
            }
        } inner (&mut res, &a, x);
        x += 1;
    }
    return res;
}

const RHO_OFFSETS: [[u32; 5]; 5] = [
     [0, 36, 3, 41, 18],
     [1, 44, 10, 45, 2],
     [62, 6, 43, 15, 61],
     [28, 55, 25, 21, 56],
     [27, 20, 39, 8, 14]
];

fn rho(a: StateArray) -> StateArray {
    let (mut x, mut y) = (1, 0);
    let mut res = a; // Since (0,0) is never touched.
    let mut t = 0u32;
    while t < 24 {
        res[(x,y)] = a[(x,y)].rotate_left(RHO_OFFSETS[x][y]);
        (x, y) = (y, (2*x + 3*y) % 5);
        t += 1;
    }
    return res;
}

fn pi(a: StateArray) -> StateArray {
    let mut res = a;
    let mut x = 0;
    while x < 5 {
        #[inline] fn inner(res: &mut StateArray, a: &StateArray, x: usize) {
            let mut y = 0;
            while y < 5 {
                let x2 = (x + 3*y) % 5;
                let y2 = x;
                res[(x,y)] = a[(x2,y2)];
                y += 1;
            }
        } inner(&mut res, &a, x);
        x += 1;
    }
    return res;
}

fn chi(a: StateArray) -> StateArray {
    let mut res = a;
    let mut x = 0;
    while x < 5 {
        #[inline] fn inner(res: &mut StateArray, a: &StateArray, x: usize) {
            let mut y = 0;
            while y < 5 {
                let x1 = (x + 1) % 5;
                let x2 = (x + 2) % 5;
                res[(x,y)] = a[(x,y)] ^ ( (a[(x1,y)] ^ u64::MAX) & a[(x2,y)] );
                y += 1;
            } 
        } inner(&mut res, &a, x);
        x += 1;
    }
    return res;
}

const IOTA_RC: [u64; 24] = [0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000, 0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009, 0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a, 0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003, 0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a, 0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008];

fn iota(ir: usize, a: StateArray) -> StateArray {
    let mut res = a;
    res[(0,0)] = a[(0,0)] ^ IOTA_RC[ir];
    return res;
}

fn round(a: &mut StateArray, ir: usize) {
    let a1 = *a;
    let a1 = theta(a1);
    let a1 = rho(a1);
    let a1 = pi(a1);
    let a1 = chi(a1);
    *a = iota(ir, a1);
}

fn keccak_p(s: &mut StateArray) {
    let mut ir = 0;
    while ir < 24 {
        round(s, ir);
        ir += 1;
    }
}

/** Assumes r % 8 == 0 */
fn sponge_absorb_initial(bs: &[u8], r: usize, s: &mut StateArray) {
    let n = bs.len() / r ;
    let mut i = 0;
    while i < n {
        let chunk = &bs[r*i..r*(i+1)];
        s.xor(chunk);
        keccak_p(s);
        i += 1;
    }
}

/** Assumes `r % 8 == 0`, `rest.len() < r` */
fn sponge_absorb_final(s: &mut StateArray, rest: &[u8], extra: u8, r: usize){
    /* Since things are now byte aligned, we have that rest is given in terms
    *  of multiples of 8, and therefore both the suffix and the padding fit in
    *  one extra byte.
    *  It will be 01 ++ 100000 for SHA3 plus 00000001 at the end
    *  It will be 1111 ++ 1000 for SHAKE plus 00000001 at the end
    *  It will be 11 ++ 100000 for RawSHAKE plus 00000001 at the end
    *  Taking into account the endianness.
    * */
    s.xor(rest);
    s.xor_byte_at(extra, rest.len());
    s.xor_byte_at(0x80, r-1);
    keccak_p(s);
}

/** Assumes `r % 8 == 0` */
fn sponge_absorb(bs: &[u8], r: usize, s: &mut StateArray, extra: u8) {
    sponge_absorb_initial(bs, r, s);
    let n = bs.len() / r;
    let rest = &bs[r*n..];
    sponge_absorb_final(s, rest, extra, r);
}

/** Assumes `r % 8 == 0` and `r < 200` */
fn sponge_squeeze(r: usize, z: &mut [u8], s: StateArray) {
    let mut s = s;
    let mut i = 0;
    let d = z.len();
    loop {
        if i + r < d {
            s.copy_to(&mut z[i..i+r]);
            keccak_p(&mut s);
            i += r;
        } else {
            s.copy_to(&mut z[i..]);
            return;
        }
    }
}

/** Assumes `r % 8 == 0` and `r < 200` */
fn sponge(r: usize /* u8s */, bs: &[u8], output: &mut [u8], extra: u8) {
    let mut s = StateArray::default();
    sponge_absorb(bs, r, &mut s, extra);
    sponge_squeeze(r, output, s);
}

const SHA3_EXTRA: u8  = 0b00000110;
pub fn sha3_224(bs: &[u8]) -> [u8;28] { let mut output = [0;28]; sponge(144, &bs, &mut output, SHA3_EXTRA); return output }
pub fn sha3_256(bs: &[u8]) -> [u8;32] { let mut output = [0;32]; sponge(136, &bs, &mut output, SHA3_EXTRA); return output }
pub fn sha3_384(bs: &[u8]) -> [u8;48] { let mut output = [0;48]; sponge(104, &bs, &mut output, SHA3_EXTRA); return output }
pub fn sha3_512(bs: &[u8]) -> [u8;64] { let mut output = [0;64]; sponge(72, &bs, &mut output, SHA3_EXTRA); return output }

const SHAKE_EXTRA: u8 = 0b00011111;
pub fn shake128(bs: &[u8], output: &mut [u8]) { sponge(168, &bs, output, SHAKE_EXTRA) }
pub fn shake256(bs: &[u8], output: &mut [u8]) { sponge(136, &bs, output, SHAKE_EXTRA) }

#[cfg(test)]
mod tests {
    use std::random::random;

    use super::*;
    use crate::simple;
    use crate::{compress_u8, compress_u64, decompress_u8, decompress_u64};

    #[test] fn theta_works() {
        let buf: [u64; 25] = [1851876684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "4c65616e000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc00000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&theta(StateArray(buf)).0[..]));
        assert_eq!(actual, expected);
    }

    #[test] fn rho_works() {
        let buf: [u64; 25] = [7523094288207667809, 8101815670912281193, 8680537053616894577, 3833745473465776761, 4918848065919006518, 5497569448741520965, 6076290831446134349, 99339780707925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "6162636465666768d2d4d6d8dadcdee09cdc1c5d9ddd1d5e33435393a7071323121a22b2b9c1c90994a4b4c4546474840415253545d5e4f44095d5155696160000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&rho(StateArray(buf)).0[..]));
        assert_eq!(actual, expected);
    }

    #[test] fn pi_works() {
        let buf: [u64; 25] = [7523094288207667809, 8101815670912281193, 8680537053616894577, 3833745473465776761, 4918848065919006518, 5497569448741520965, 6076290831446134349, 99339780707925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "61626364656667684d4e4f5051525354000000000000000000000000000000000000000000000000797a3031323334350000000000000000000000000000000000000000000000000000000000000000696a6b6c6d6e6f7055565758595a0000000000000000000000000000000000000000000000000000363738394142434445464748494a4b4c00000000000000000000000000000000000000000000000071727374757677780000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&pi(StateArray(buf)).0[..]));
        assert_eq!(actual, expected);
    }
    #[test] fn chi_works() {
        let buf: [u64; 25] = [7523094288207667809, 8101815670912281193, 8680537053616894577, 3833745473465776761, 4918848065919006518, 5497569448741520965, 6076290831446134349, 99339780707925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "717273747576776061626b6d6f6f6f7577777b7c34363438383a73751617101d3e3f3031494a4b545556574041424b4c4d4e4f505152535455565758595a000045464748494a4b4c0808081010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&chi(StateArray(buf)).0[..]));
        assert_eq!(actual, expected);
    }

    #[test] fn iota_rc_init_works(){
        let rc = IOTA_RC[1];
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&[rc]));
        let expected = "8280000000000000";
        assert_eq!(actual, expected, "Quite bad");

        // let rc = iota_init_rc(1);
        // let actual = crate::hex_of_vec_of_bits(&decompress_u64(&[rc]));
        // let expected = "8280000000000000";
        // assert_eq!(actual, expected);
    }

    #[test] fn iota_works() {
        let buf = [7523094288207667809, 8101815670912281193, 8680537053616894577, 3833745473465776761, 4918848065919006518, 5497569448741520965, 6076290831446134349, 99339780707925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "e3e2636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738394142434445464748494a4b4c4d4e4f505152535455565758595a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&iota(1, StateArray(buf)).0[..]));
        assert_eq!(actual, expected);

        let buf = [7450753080332940129, 7667492055134201444, 7812454975315535975, 8390880619439421297, 8464925009632326245, 8028076975085418868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "eaf3646673646667646667686667686a67686a6b686a6b6c71776572776572746572747972747975747975697975696f0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&iota(4, StateArray(buf)).0[..]));
        assert_eq!(actual, expected);

        let buf = [7885348258236753271, 8320509671759178347, 7740964729211089509, 1966618985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        let expected = "7fe572e676626eed6b6a68677663787365727467686e6d6b6939387500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        let actual = crate::hex_of_vec_of_bits(&decompress_u64(&iota(23, StateArray(buf)).0[..]));
        assert_eq!(actual, expected);
    }

    #[test] fn keccak_p_works() {
        for _attempt in 0..100 {
            let min_state_len = 0;
            let state_len = (random::<usize>() % (25 - min_state_len)) + min_state_len;

            let bits: Vec<bool> = (0..64*state_len).map(|_| random()).collect();
            let mut state_bits = [false; 1600];
            state_bits[..state_len*64].copy_from_slice(&bits);
            let mut state = StateArray::default();
            state.0[..].copy_from_slice(&compress_u64(&state_bits)[..]);

            simple::keccak_p(&mut state_bits);
            let expected = crate::hex_of_vec_of_bits(&state_bits);

            keccak_p(&mut state);
            let actual = crate::hex_of_vec_of_bits(&decompress_u64(&state.0[..]));
            
            assert_eq!(actual, expected);
        }
    }

    #[test] fn sponge_absorb_initial_works() {
        for _attempt in 0..100 {
            let min_state_len = 0;
            let state_len = (random::<usize>() % (25 - min_state_len)) + min_state_len;
            dbg!(&state_len);
            let bytes_len = state_len * 8 - (random::<usize>() % (8*state_len).max(1));
            dbg!(&bytes_len);
            let r = (random::<usize>() % (25 - 1) + 1) * 8;
            dbg!(&r);

            let bits: Vec<bool> = (0..64*state_len).map(|_| random()).collect();
            let mut state_bits = [false; 1600];
            state_bits[..state_len*64].copy_from_slice(&bits);
            let mut state: StateArray = Default::default();
            state.0[..].copy_from_slice(&compress_u64(&state_bits)[..]);

            let data_bits: Vec<bool> = (0..8*bytes_len).map(|_| random()).collect();
            let data = compress_u8(&data_bits);

            simple::sponge_absorb_initial(&data_bits, r*8, &mut state_bits);
            let expected = crate::hex_of_vec_of_bits(&state_bits[..64*state_len]);

            sponge_absorb_initial(&data, r, &mut state);
            let actual = crate::hex_of_vec_of_bits(&decompress_u64(&state.0[..state_len]));

            assert_eq!(actual, expected);
        }
    }

    #[test] fn sponge_absorb_final_works() {
        for _attempt in 0..100 {
            let min_state_len = 0;
            let state_len = (random::<usize>() % (25 - min_state_len)) + min_state_len;
            let r = (random::<usize>() % (25 - 1) + 1) * 8;
            let bytes_len = (random::<usize>() % r) / 8 * 8;
            // let bytes_len = random::<usize>() % (r / 8);

            let bits: Vec<bool> = (0..64*state_len).map(|_| random()).collect();
            let mut state_bits = [false; 1600];
            state_bits[..state_len*64].copy_from_slice(&bits);
            let mut state: StateArray = Default::default();
            state.0[..].copy_from_slice(&compress_u64(&state_bits)[..]);

            let data_bits: Vec<bool> = (0..8*bytes_len).map(|_| random()).collect();
            let data = compress_u8(&data_bits);

            simple::sponge_absorb_final(&mut state_bits, &data_bits, &simple::SHA3_SUFFIX, r*8);
            let expected = crate::hex_of_vec_of_bits(&state_bits[..]);

            sponge_absorb_final(&mut state, &data, SHA3_EXTRA, r);
            let actual = crate::hex_of_vec_of_bits(&decompress_u64(&state.0[..]));

            assert_eq!(actual, expected);
        }
    }

    #[test] fn sponge_squeeze_works(){
        for _attempt in 0..100 {
            let min_state_len = 0;
            dbg!(&min_state_len);
            // let state_len = 1;
            let state_len = (random::<usize>() % (25 - min_state_len)) + min_state_len;
            dbg!(&state_len);
            let r = (random::<usize>() % (25*8 - 1) + 1) * 8;
            dbg!(&r);
            let bytes_len = random::<usize>() % (r/8);
            dbg!(&bytes_len);
            let d = (random::<usize>() % 40) + 20;

            let bits: Vec<bool> = (0..64*state_len).map(|_| random()).collect();
            let mut state_bits = [false; 1600];
            state_bits[..state_len*64].copy_from_slice(&bits);
            let mut state: StateArray = Default::default();
            state.0[..].copy_from_slice(&compress_u64(&state_bits)[..]);
            dbg!(crate::hex_of_vec_of_bits(&state_bits));

            let mut dst = vec![0u8; d];
            sponge_squeeze(r/8, &mut dst[..], state);
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&dst));

            let mut dst = vec![false; d*8];
            simple::sponge_squeeze(r, &mut dst, state_bits);
            let expected = crate::hex_of_vec_of_bits(&dst);

            assert_eq!(actual, expected);
        }
    }
    #[test] fn sha3_works() {
        let mgs = [
            "abc",
            "",
            "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq",
            "abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu",
            "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
            "Lean",
        ];
        eprintln!("Starting with 224");
        for msg in mgs {
            eprintln!("Message {msg}");
            let bits = crate::get_vec_of_bits(msg);
            assert!(bits.len() % 8 == 0);
            assert_eq!(compress_u8(&bits).len(), msg.len());
            let expected = crate::hex_of_vec_of_bits(&simple::sha3_224(&bits));
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&sha3_224(&compress_u8(&bits))));
            assert_eq!(actual, expected, "Failed at 224");
        }
        eprintln!("Starting with 256");
        for msg in mgs {
            let bits = crate::get_vec_of_bits(msg);
            let expected = crate::hex_of_vec_of_bits(&simple::sha3_256(&bits));
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&sha3_256(&compress_u8(&bits))));
            assert_eq!(actual, expected, "Failed at 256");
        }
        eprintln!("Starting with 384");
        for msg in mgs {
            let bits = crate::get_vec_of_bits(msg);
            let expected = crate::hex_of_vec_of_bits(&simple::sha3_384(&bits));
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&sha3_384(&compress_u8(&bits))));
            assert_eq!(actual, expected, "Failed at 384");
        }
        eprintln!("Starting with 512");
        for msg in mgs {
            let bits = crate::get_vec_of_bits(msg);
            let expected = crate::hex_of_vec_of_bits(&simple::sha3_512(&bits));
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&sha3_512(&compress_u8(&bits))));
            assert_eq!(actual, expected, "Failed at 512");
        }
    }
    #[test] fn shake_works() {
        let mgs = [
            "abc",
            "",
            "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq",
            "abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu",
            "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
            "Lean",
        ];
        for msg in mgs {
            let d = 20;
            let mut dst_bits = vec![false; d*8];
            let bits = crate::get_vec_of_bits(msg);
            simple::shake128(&bits, &mut dst_bits);
            let expected = crate::hex_of_vec_of_bits(&dst_bits);

            let mut dst = vec![0u8; d];
            shake128(&compress_u8(&bits), &mut dst);
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&dst));
            assert_eq!(actual, expected);
        }
        for msg in mgs {
            let d = 20;
            let mut dst_bits = vec![false; d*8];
            let bits = crate::get_vec_of_bits(msg);
            simple::shake256(&bits, &mut dst_bits);
            let expected = crate::hex_of_vec_of_bits(&dst_bits);

            let mut dst = vec![0u8; d];
            shake256(&compress_u8(&bits), &mut dst);
            let actual = crate::hex_of_vec_of_bits(&decompress_u8(&dst));
            assert_eq!(actual, expected);
        }
    }
}
