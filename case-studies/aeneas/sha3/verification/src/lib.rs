#![feature(random)]
pub mod algos;
pub mod simple;
pub mod neon;

pub fn get_vec_of_bits(s: &str) -> Vec<bool> {
    let mut res = vec![];
    for byte in s.as_bytes() {
        for i in 0..8 {
            res.push((byte >> i) & 1 == 1);
        }
    }
    return res;
}

pub fn hex_of_vec_of_bits(s: &[bool]) -> String {
    s.chunks(8)
     .map(|chunk| {
            let mut byte = 0u8;
            for i in 0..8 {
                byte *= 2;
                byte += chunk[7-i] as u8;
            }
            return format!("{:02x?}",byte);
        })
     .collect()
}

pub fn compress_u64(a: &[bool]) -> Vec<u64> {
    let width = 64;
    let mut res = Vec::with_capacity(a.len() / width);
    for lane_bits in a.chunks_exact(width) {
        let mut lane: u64 = 0;
        for (i, bit) in lane_bits.iter().enumerate() {
            lane = lane | (u64::from(*bit) << i);
        }
        res.push(lane);
    }
    return res;
}

pub fn compress_u8(a: &[bool]) -> Vec<u8> {
    let mut res = Vec::with_capacity(a.len() / 8);
    for byte_bits in a.chunks_exact(8) {
        let mut lane: u8 = 0;
        for (i, bit) in byte_bits.iter().enumerate() {
            lane = lane | (u8::from(*bit) << i);
        }
        res.push(lane);
    }
    return res;
}

pub fn decompress_u64(a: &[u64]) -> Vec<bool> {
    let width = 64;
    let mut res = Vec::with_capacity(a.len() * width);
    for byte in a {
        for i in 0..width {
            let bit = (byte >> i) % 2 == 1;
            res.push(bit);
        }
    }
    return res;
}

pub fn decompress_u8(a: &[u8]) -> Vec<bool> {
    let width = 8;
    let mut res = Vec::with_capacity(a.len() * width);
    for byte in a {
        for i in 0..width {
            let bit = (byte >> i) % 2 == 1;
            res.push(bit);
        }
    }
    return res;
}



#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_hex(){
        let input = [true, false, false, false, false, true, true, false];
        let expected = "61";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false];
        let expected = "6162";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, true, true, false, false, false, true, true, false, false, false, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false, false, true, true, false, true, true, true, false, false, true, true, false, false, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false];
        let expected = "616263646566676869";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, true, true, false, false, false, true, true, false, false, false, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false, false, true, true, false, true, true, true, false, false, true, true, false, false, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, false, true, true, false, true, true, false, true, false, true, true, false, false, false, true, true, false, true, true, false, true, false, true, true, false, true, true, false, false, true, true, true, false, true, true, false, true, true, true, true, false, true, true, false, false, false, false, false, true, true, true, false, true, false, false, false, true, true, true, false, false, true, false, false, true, true, true, false, true, true, false, false, true, true, true, false, false, false, true, false, true, true, true, false, true, false, true, false, true, true, true, false, false, true, true, false, true, true, true, false, true, true, true, false, true, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, false, false, true, false, true, true, true, true, false];
        let expected = "6162636465666768696a6b6c6d6e6f707172737475767778797a";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, true, true, false, false, false, true, true, false, false, false, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false, false, true, true, false, true, true, true, false, false, true, true, false, false, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, false, true, true, false, true, true, false, true, false, true, true, false, false, false, true, true, false, true, true, false, true, false, true, true, false, true, true, false, false, true, true, true, false, true, true, false, true, true, true, true, false, true, true, false, false, false, false, false, true, true, true, false, true, false, false, false, true, true, true, false, false, true, false, false, true, true, true, false, true, true, false, false, true, true, true, false, false, false, true, false, true, true, true, false, true, false, true, false, true, true, true, false, false, true, true, false, true, true, true, false, true, true, true, false, true, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, false, false, true, false, true, true, true, true, false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, true, false, false, false, true, false, true, false, true, false, false, false, true, false, false, true, true, false, false, false, true, false, true, true, true, false, false, false, true, false, false, false, false, true, false, false, true, false, true, false, false, true, false, false, true, false, false, true, false, true, false, false, true, false, true, true, false, true, false, false, true, false, false, false, true, true, false, false, true, false, true, false, true, true, false, false, true, false, false, true, true, true, false, false, true, false, true, true, true, true, false, false, true, false, false, false, false, false, true, false, true, false, true, false, false, false, true, false, true, false, false, true, false, false, true, false, true, false, true, true, false, false, true, false, true, false, false, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false, false, true, true, false, true, false, true, false, true, true, true, false, true, false, true, false, false, false, false, true, true, false, true, false, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false];
        let expected = "6162636465666768696a6b6c6d6e6f707172737475767778797a4142434445464748494a4b4c4d4e4f505152535455565758595a";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [true, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, true, true, false, false, false, true, true, false, false, false, true, false, false, true, true, false, true, false, true, false, false, true, true, false, false, true, true, false, false, true, true, false, true, true, true, false, false, true, true, false, false, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, true, false, true, true, false, true, true, false, true, false, true, true, false, false, false, true, true, false, true, true, false, true, false, true, true, false, true, true, false, false, true, true, true, false, true, true, false, true, true, true, true, false, true, true, false, false, false, false, false, true, true, true, false, true, false, false, false, true, true, true, false, false, true, false, false, true, true, true, false, true, true, false, false, true, true, true, false, false, false, true, false, true, true, true, false, true, false, true, false, true, true, true, false, false, true, true, false, true, true, true, false, true, true, true, false, true, true, true, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, false, false, true, false, true, true, true, true, false, false, false, false, false, true, true, false, false, true, false, false, false, true, true, false, false, false, true, false, false, true, true, false, false, true, true, false, false, true, true, false, false, false, false, true, false, true, true, false, false, true, false, true, false, true, true, false, false, false, true, true, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, true, true, true, false, false, true, false, false, true, true, true, false, false, true, false, false, false, false, false, true, false, false, true, false, false, false, false, true, false, true, true, false, false, false, false, true, false, false, false, true, false, false, false, true, false, true, false, true, false, false, false, true, false, false, true, true, false, false, false, true, false, true, true, true, false, false, false, true, false, false, false, false, true, false, false, true, false, true, false, false, true, false, false, true, false, false, true, false, true, false, false, true, false, true, true, false, true, false, false, true, false, false, false, true, true, false, false, true, false, true, false, true, true, false, false, true, false, false, true, true, true, false, false, true, false, true, true, true, true, false, false, true, false, false, false, false, false, true, false, true, false, true, false, false, false, true, false, true, false, false, true, false, false, true, false, true, false, true, true, false, false, true, false, true, false, false, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false, false, true, true, false, true, false, true, false, true, true, true, false, true, false, true, false, false, false, false, true, true, false, true, false, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false];
        let expected = "6162636465666768696a6b6c6d6e6f707172737475767778797a303132333435363738394142434445464748494a4b4c4d4e4f505152535455565758595a";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);

        let input = [false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
        let expected = "4c65616e000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc0000000000000000000000004c65616e000000000000000000000000000000000000000098cac2dc00000000";
        let actual = hex_of_vec_of_bits(&input);
        assert_eq!(expected, actual);
    }
}


