import Vermilion.Obligations
import montgomery_inverse_calc.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace montgomery_inverse_calc.lemma_montgomery_inverse

-- vrml:begin montgomery_inverse_calc.lemma_montgomery_inverse.assert_6 5315efde34979114
/--
Generated VC `montgomery_inverse_calc.lemma_montgomery_inverse.assert_6`.

- Rust source: `case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:52:5-59:6`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `5315efde34979114`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/montgomery_inverse_calc.rs"
  startLine := 52
  startColumn := 5
  endLine := 59
  endColumn := 6
  assertId := "6"
  functionName := "montgomery_inverse_calc.lemma_montgomery_inverse"
  kind := "assert"
  statementHash := "5315efde34979114"
}
@[vrml_obligation] theorem assert_6
    (no_param : Int)
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
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (64 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 64 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (128 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 128 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (192 + 60)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 192 * vstd.arithmetic.power2.pow2 60))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (252 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 252 * vstd.arithmetic.power2.pow2 8))
    (assume_70 : True)
    (assume_71 : True) :
    (Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = ((Vermilion.natClip (1852673427797059126777135760139006525652319754650249024631321344126610074238976 * 5706410653605570882457795059301885719620630590890452783038400561109479083972)) % 7237005577332262213973186563042994240857116359379907606001950938285454250989) := by
  vrml [vstd.arithmetic.power2.pow2, montgomery_inverse_calc.montgomery_radix, montgomery_inverse_calc.inv_montgomery_radix, montgomery_inverse_calc.group_order]
-- vrml:end montgomery_inverse_calc.lemma_montgomery_inverse.assert_6

-- vrml:begin montgomery_inverse_calc.lemma_montgomery_inverse.assert_7 2226a6e2c2469d17
/--
Generated VC `montgomery_inverse_calc.lemma_montgomery_inverse.assert_7`.

- Rust source: `case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:52:5-59:6`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `2226a6e2c2469d17`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/montgomery_inverse_calc.rs"
  startLine := 52
  startColumn := 5
  endLine := 59
  endColumn := 6
  assertId := "7"
  functionName := "montgomery_inverse_calc.lemma_montgomery_inverse"
  kind := "assert"
  statementHash := "2226a6e2c2469d17"
}
@[vrml_obligation] theorem assert_7
    (no_param : Int)
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
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (64 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 64 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (128 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 128 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (192 + 60)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 192 * vstd.arithmetic.power2.pow2 60))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (252 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 252 * vstd.arithmetic.power2.pow2 8))
    (assume_70 : True)
    (assume_71 : True → ((Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = ((Vermilion.natClip (1852673427797059126777135760139006525652319754650249024631321344126610074238976 * 5706410653605570882457795059301885719620630590890452783038400561109479083972)) % 7237005577332262213973186563042994240857116359379907606001950938285454250989)))
    (assume_72 : True) :
    ((Vermilion.natClip (1852673427797059126777135760139006525652319754650249024631321344126610074238976 * 5706410653605570882457795059301885719620630590890452783038400561109479083972)) % 7237005577332262213973186563042994240857116359379907606001950938285454250989) = 1 := by
  vrml [vstd.arithmetic.power2.pow2, montgomery_inverse_calc.montgomery_radix, montgomery_inverse_calc.inv_montgomery_radix, montgomery_inverse_calc.group_order]
-- vrml:end montgomery_inverse_calc.lemma_montgomery_inverse.assert_7

-- vrml:begin montgomery_inverse_calc.lemma_montgomery_inverse.assert_8 80c7e5055de4c14e
/--
Generated VC `montgomery_inverse_calc.lemma_montgomery_inverse.assert_8`.

- Rust source: `case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:52:5-59:6`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `80c7e5055de4c14e`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/montgomery_inverse_calc.rs"
  startLine := 52
  startColumn := 5
  endLine := 59
  endColumn := 6
  assertId := "8"
  functionName := "montgomery_inverse_calc.lemma_montgomery_inverse"
  kind := "assert"
  statementHash := "80c7e5055de4c14e"
}
@[vrml_obligation] theorem assert_8
    (no_param : Int)
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
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (64 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 64 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (128 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 128 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (192 + 60)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 192 * vstd.arithmetic.power2.pow2 60))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (252 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 252 * vstd.arithmetic.power2.pow2 8))
    (assume_70 : True)
    (assume_71 : True → ((Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = ((Vermilion.natClip (1852673427797059126777135760139006525652319754650249024631321344126610074238976 * 5706410653605570882457795059301885719620630590890452783038400561109479083972)) % 7237005577332262213973186563042994240857116359379907606001950938285454250989)))
    (assume_72 : True → (((Vermilion.natClip (1852673427797059126777135760139006525652319754650249024631321344126610074238976 * 5706410653605570882457795059301885719620630590890452783038400561109479083972)) % 7237005577332262213973186563042994240857116359379907606001950938285454250989) = 1)) :
    (Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = 1 := by
  vrml [vstd.arithmetic.power2.pow2, montgomery_inverse_calc.montgomery_radix, montgomery_inverse_calc.inv_montgomery_radix, montgomery_inverse_calc.group_order]
-- vrml:end montgomery_inverse_calc.lemma_montgomery_inverse.assert_8

-- vrml:begin montgomery_inverse_calc.lemma_montgomery_inverse.ensures_9 957048f9f0aa716f
/--
Generated VC `montgomery_inverse_calc.lemma_montgomery_inverse.ensures_9`.

- Rust source: `case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:42:9-42:75`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `957048f9f0aa716f`
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/montgomery_inverse_calc.rs"
  startLine := 42
  startColumn := 9
  endLine := 42
  endColumn := 75
  assertId := "9"
  functionName := "montgomery_inverse_calc.lemma_montgomery_inverse"
  kind := "ensures"
  statementHash := "957048f9f0aa716f"
}
@[vrml_obligation] theorem ensures_9
    (no_param : Int)
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
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (64 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 64 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (128 + 64)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 128 * vstd.arithmetic.power2.pow2 64))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (192 + 60)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 192 * vstd.arithmetic.power2.pow2 60))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (252 + 8)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 252 * vstd.arithmetic.power2.pow2 8))
    (assume_70 : True → ((Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = 1)) :
    (Vermilion.emod (Vermilion.natClip (montgomery_inverse_calc.montgomery_radix 0 * montgomery_inverse_calc.inv_montgomery_radix 0)) (montgomery_inverse_calc.group_order 0)) = 1 := by
  vrml [vstd.arithmetic.power2.pow2, montgomery_inverse_calc.montgomery_radix, montgomery_inverse_calc.inv_montgomery_radix, montgomery_inverse_calc.group_order]
-- vrml:end montgomery_inverse_calc.lemma_montgomery_inverse.ensures_9

end montgomery_inverse_calc.lemma_montgomery_inverse

