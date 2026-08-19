use shars::{algos::*, hex_of_vec_of_bits, decompress_u8};

fn main() -> std::io::Result<()> {
    let mut iter = std::env::args();
    let _exe = iter.next();
    loop {
        let Some(op) = iter.next() else {break};
        let msg = iter.next().unwrap_or("".to_string());
        let bs: Vec<u8> = msg.bytes().collect();
        let output = match op.as_str() {
            "SHA3_224" => {
                sha3_224(&bs).to_vec()
            }
            "SHA3_256" => {
                sha3_256(&bs).to_vec()
            }
            "SHA3_384" => {
                sha3_384(&bs).to_vec()
            }
            "SHA3_512" => {
                sha3_512(&bs).to_vec()
            }
            "SHAKE128" => {
                let Some(Ok(d)) = iter.next().map(|x| usize::from_str_radix(&x, 10)) else {break};
                let mut output = vec![0; d];
                shake128(&bs, &mut output);
                output.to_vec()
            }
            "SHAKE256" => {
                let Some(Ok(d)) = iter.next().map(|x| usize::from_str_radix(&x, 10)) else {break};
                let mut output = vec![0; d];
                shake256(&bs, &mut output);
                output.to_vec()
            }
            _ => {
                eprint!("Unrecognized option: {}", &op);
                break
            }
        };
        println!("{}", hex_of_vec_of_bits(&decompress_u8(&output)));
    }
    return Ok(())
}
