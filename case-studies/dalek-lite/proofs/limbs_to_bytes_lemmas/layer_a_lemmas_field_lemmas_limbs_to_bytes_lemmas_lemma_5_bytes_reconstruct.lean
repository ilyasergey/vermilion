import Vermilion.Obligations
import limbs_to_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_7 af29cf1074cea614
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:444:16-444:44`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `af29cf1074cea614`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 444
  startColumn := 16
  endLine := 444
  endColumn := 44
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "af29cf1074cea614"
}
@[vrml_obligation] theorem assert_7
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True)
    (call_lemma_pow2_div_mod_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 0)))) (vstd.arithmetic.power2.pow2 0)))
    (call_lemma_pow2_div_mod_1_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)))) (vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_div_mod_2_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 16)))) (vstd.arithmetic.power2.pow2 16)))
    (call_lemma_pow2_div_mod_3_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 24)))) (vstd.arithmetic.power2.pow2 24)))
    (call_lemma_pow2_div_mod_4_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 32)))) (vstd.arithmetic.power2.pow2 32)))
    (assume_52 : True)
    (call_lemma_div_basics_2_ensures_0 : ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) / 1) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) :
    byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_8 dcc5088ed66cc538
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:435:12-437:74`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `dcc5088ed66cc538`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 435
  startColumn := 12
  endLine := 437
  endColumn := 74
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "dcc5088ed66cc538"
}
@[vrml_obligation] theorem assert_8
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True)
    (call_lemma_pow2_div_mod_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 0)))) (vstd.arithmetic.power2.pow2 0)))
    (call_lemma_pow2_div_mod_1_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 8)))) (vstd.arithmetic.power2.pow2 8)))
    (call_lemma_pow2_div_mod_2_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 16)))) (vstd.arithmetic.power2.pow2 16)))
    (call_lemma_pow2_div_mod_3_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 24)))) (vstd.arithmetic.power2.pow2 24)))
    (call_lemma_pow2_div_mod_4_ensures_0 : (Vermilion.emod (Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) (vstd.arithmetic.power2.pow2 8)) = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 + 32)))) (vstd.arithmetic.power2.pow2 32)))
    (assume_52 : True → (byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) :
    ((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_9 be6b519cc75c0a35
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:456:13-456:58`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `9`
- Statement hash: `be6b519cc75c0a35`
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 456
  startColumn := 13
  endLine := 456
  endColumn := 58
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "be6b519cc75c0a35"
}
@[vrml_obligation] theorem call_requires_9
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True) :
    (¬ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) = 0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_9

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_10 1dccd92bde8480d1
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:455:16-455:40`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `1dccd92bde8480d1`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 455
  startColumn := 16
  endLine := 455
  endColumn := 40
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "1dccd92bde8480d1"
}
@[vrml_obligation] theorem assert_10
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True)
    (call_lemma_fundamental_div_mod_ensures_0 : (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))) :
    (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_12 2b2237035e8e0946
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:459:16-459:56`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `2b2237035e8e0946`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 459
  startColumn := 16
  endLine := 459
  endColumn := 56
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "2b2237035e8e0946"
}
@[vrml_obligation] theorem assert_12
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_0 f48b79704a45db33
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:467:17-467:70`
- Rust/SST construct: call lemma_mod_mod
- AssertId: `15_0`
- Statement hash: `f48b79704a45db33`
-/
def call_requires_15_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 467
  startColumn := 17
  endLine := 467
  endColumn := 70
  assertId := "15_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "f48b79704a45db33"
}
@[vrml_obligation] theorem call_requires_15_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)))
    (assume_51 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (assume_54 : True) :
    0 < vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_1 424a872b9a0575e2
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:467:17-467:70`
- Rust/SST construct: call lemma_mod_mod
- AssertId: `15_1`
- Statement hash: `424a872b9a0575e2`
-/
def call_requires_15_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 467
  startColumn := 17
  endLine := 467
  endColumn := 70
  assertId := "15_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "424a872b9a0575e2"
}
@[vrml_obligation] theorem call_requires_15_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)))
    (assume_51 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (assume_54 : True) :
    0 < vstd.arithmetic.power2.pow2 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_15_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_16 d7e5dddb5147d856
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:466:20-466:60`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `d7e5dddb5147d856`
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 466
  startColumn := 20
  endLine := 466
  endColumn := 60
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "d7e5dddb5147d856"
}
@[vrml_obligation] theorem assert_16
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)))
    (assume_51 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (assume_54 : True)
    (call_lemma_mod_mod_ensures_0 : 0 < (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8))
    (call_lemma_mod_mod_ensures_1 : (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))) :
    (Vermilion.emod (Vermilion.emod value (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_16

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_17 5cb5782477946b64
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:463:16-463:34`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `5cb5782477946b64`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 463
  startColumn := 16
  endLine := 463
  endColumn := 34
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "5cb5782477946b64"
}
@[vrml_obligation] theorem assert_17
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)))
    (assume_51 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 8 > 0)
    (assume_54 : True → ((Vermilion.emod (Vermilion.emod value (Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))) :
    (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_18 77cd57dec9692758
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:449:47-451:63`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `77cd57dec9692758`
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 449
  startColumn := 47
  endLine := 451
  endColumn := 63
  assertId := "18"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "77cd57dec9692758"
}
@[vrml_obligation] theorem assert_18
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : 0 ≤ i)
    (assume_48 : (1 ≤ i) ∧ (i ≤ 4))
    (assume_49 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) = Vermilion.natClip (Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) + (Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))))
    (assume_50 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * vstd.arithmetic.power2.pow2 8)))
    (assume_51 : True → ((Vermilion.emod (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))))) :
    Vermilion.natClip ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) + Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_18

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_0 18ec9a7af71622af
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:473:9-473:41`
- Rust/SST construct: call lemma_small_mod
- AssertId: `19_0`
- Statement hash: `18ec9a7af71622af`
- Triggers (Verus, for future e-matching): ⟨(Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))⟩
-/
def call_requires_19_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 473
  startColumn := 9
  endLine := 473
  endColumn := 41
  assertId := "19_0"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "18ec9a7af71622af"
}
@[vrml_obligation] theorem call_requires_19_0
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : (∀ (i : Int), ((0 ≤ i) → (((1 ≤ i) ∧ (i ≤ 4)) → (Vermilion.natClip ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) + Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))))))))
    (assume_48 : True) :
    value < vstd.arithmetic.power2.pow2 40 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_0

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_1 d828fc0341d55d60
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:473:9-473:41`
- Rust/SST construct: call lemma_small_mod
- AssertId: `19_1`
- Statement hash: `d828fc0341d55d60`
- Triggers (Verus, for future e-matching): ⟨(Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))⟩
-/
def call_requires_19_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 473
  startColumn := 9
  endLine := 473
  endColumn := 41
  assertId := "19_1"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "call_requires"
  statementHash := "d828fc0341d55d60"
}
@[vrml_obligation] theorem call_requires_19_1
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : (∀ (i : Int), ((0 ≤ i) → (((1 ≤ i) ∧ (i ≤ 4)) → (Vermilion.natClip ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) + Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))))))))
    (assume_48 : True) :
    0 < vstd.arithmetic.power2.pow2 40 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.call_requires_19_1

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_20 bd1bf63986bc84f4
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:472:12-472:44`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `bd1bf63986bc84f4`
- Triggers (Verus, for future e-matching): ⟨(Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 472
  startColumn := 12
  endLine := 472
  endColumn := 44
  assertId := "20"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "assert"
  statementHash := "bd1bf63986bc84f4"
}
@[vrml_obligation] theorem assert_20
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : (∀ (i : Int), ((0 ≤ i) → (((1 ≤ i) ∧ (i ≤ 4)) → (Vermilion.natClip ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) + Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))))))))
    (assume_48 : True)
    (call_lemma_small_mod_ensures_0 : (Vermilion.emod value (vstd.arithmetic.power2.pow2 40)) = value) :
    (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) = value := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.assert_20

-- vrml:begin layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.ensures_21 c91e405c92cc9205
/--
Generated VC `layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.ensures_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs:430:9-431:58`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `21`
- Statement hash: `c91e405c92cc9205`
- Triggers (Verus, for future e-matching): ⟨(Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))))⟩
-/
def ensures_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs"
  startLine := 430
  startColumn := 9
  endLine := 431
  endColumn := 58
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct"
  kind := "ensures"
  statementHash := "c91e405c92cc9205"
}
@[vrml_obligation] theorem ensures_21
    (value : Int)
    (byte0 : Int)
    (byte1 : Int)
    (byte2 : Int)
    (byte3 : Int)
    (byte4 : Int)
    (requires_0 : 0 ≤ value)
    (requires_1 : Vermilion.inUnsignedRange 8 byte0)
    (requires_2 : Vermilion.inUnsignedRange 8 byte1)
    (requires_3 : Vermilion.inUnsignedRange 8 byte2)
    (requires_4 : Vermilion.inUnsignedRange 8 byte3)
    (requires_5 : Vermilion.inUnsignedRange 8 byte4)
    (requires_6 : byte0 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 0)) % 256))
    (requires_7 : byte1 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 8)) % 256))
    (requires_8 : byte2 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 16)) % 256))
    (requires_9 : byte3 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 24)) % 256))
    (requires_10 : byte4 = ((Vermilion.ediv value (vstd.arithmetic.power2.pow2 32)) % 256))
    (requires_11 : value < vstd.arithmetic.power2.pow2 40)
    (call_lemma2_to64_ensures_0 : vstd.arithmetic.power2.pow2 0 = 1)
    (call_lemma2_to64_ensures_1 : vstd.arithmetic.power2.pow2 1 = 2)
    (call_lemma2_to64_ensures_2 : vstd.arithmetic.power2.pow2 2 = 4)
    (call_lemma2_to64_ensures_3 : vstd.arithmetic.power2.pow2 3 = 8)
    (call_lemma2_to64_ensures_4 : vstd.arithmetic.power2.pow2 4 = 16)
    (call_lemma2_to64_ensures_5 : vstd.arithmetic.power2.pow2 5 = 32)
    (call_lemma2_to64_ensures_6 : vstd.arithmetic.power2.pow2 6 = 64)
    (call_lemma2_to64_ensures_7 : vstd.arithmetic.power2.pow2 7 = 128)
    (call_lemma2_to64_ensures_8 : vstd.arithmetic.power2.pow2 8 = 256)
    (call_lemma2_to64_ensures_9 : vstd.arithmetic.power2.pow2 9 = 512)
    (call_lemma2_to64_ensures_10 : vstd.arithmetic.power2.pow2 10 = 1024)
    (call_lemma2_to64_ensures_11 : vstd.arithmetic.power2.pow2 11 = 2048)
    (call_lemma2_to64_ensures_12 : vstd.arithmetic.power2.pow2 12 = 4096)
    (call_lemma2_to64_ensures_13 : vstd.arithmetic.power2.pow2 13 = 8192)
    (call_lemma2_to64_ensures_14 : vstd.arithmetic.power2.pow2 14 = 16384)
    (call_lemma2_to64_ensures_15 : vstd.arithmetic.power2.pow2 15 = 32768)
    (call_lemma2_to64_ensures_16 : vstd.arithmetic.power2.pow2 16 = 65536)
    (call_lemma2_to64_ensures_17 : vstd.arithmetic.power2.pow2 17 = 131072)
    (call_lemma2_to64_ensures_18 : vstd.arithmetic.power2.pow2 18 = 262144)
    (call_lemma2_to64_ensures_19 : vstd.arithmetic.power2.pow2 19 = 524288)
    (call_lemma2_to64_ensures_20 : vstd.arithmetic.power2.pow2 20 = 1048576)
    (call_lemma2_to64_ensures_21 : vstd.arithmetic.power2.pow2 21 = 2097152)
    (call_lemma2_to64_ensures_22 : vstd.arithmetic.power2.pow2 22 = 4194304)
    (call_lemma2_to64_ensures_23 : vstd.arithmetic.power2.pow2 23 = 8388608)
    (call_lemma2_to64_ensures_24 : vstd.arithmetic.power2.pow2 24 = 16777216)
    (call_lemma2_to64_ensures_25 : vstd.arithmetic.power2.pow2 25 = 33554432)
    (call_lemma2_to64_ensures_26 : vstd.arithmetic.power2.pow2 26 = 67108864)
    (call_lemma2_to64_ensures_27 : vstd.arithmetic.power2.pow2 27 = 134217728)
    (call_lemma2_to64_ensures_28 : vstd.arithmetic.power2.pow2 28 = 268435456)
    (call_lemma2_to64_ensures_29 : vstd.arithmetic.power2.pow2 29 = 536870912)
    (call_lemma2_to64_ensures_30 : vstd.arithmetic.power2.pow2 30 = 1073741824)
    (call_lemma2_to64_ensures_31 : vstd.arithmetic.power2.pow2 31 = 2147483648)
    (call_lemma2_to64_ensures_32 : vstd.arithmetic.power2.pow2 32 = 4294967296)
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_46 : True → (((((byte0 = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))))) ∧ (byte1 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (1 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)))))) ∧ (byte2 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (2 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)))))) ∧ (byte3 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (3 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)))))) ∧ (byte4 = (Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)))))))
    (assume_47 : (∀ (i : Int), ((0 ≤ i) → (((1 ≤ i) ∧ (i ≤ 4)) → (Vermilion.natClip ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) + Vermilion.natClip ((Vermilion.ediv (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))) = (Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (i * 8) + 8)))))))))
    (assume_48 : True → ((Vermilion.emod value (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (4 * 8) + 8)))) = value)) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (byte0 * vstd.arithmetic.power2.pow2 0) + Vermilion.natClip (byte1 * vstd.arithmetic.power2.pow2 8)) + Vermilion.natClip (byte2 * vstd.arithmetic.power2.pow2 16)) + Vermilion.natClip (byte3 * vstd.arithmetic.power2.pow2 24)) + Vermilion.natClip (byte4 * vstd.arithmetic.power2.pow2 32)) = value := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct.ensures_21

end layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.lemma_5_bytes_reconstruct

