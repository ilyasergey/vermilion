import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_2 04cf24f4ca1a67d7
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1129:16-1129:30`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `04cf24f4ca1a67d7`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1129
  startColumn := 16
  endLine := 1129
  endColumn := 30
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double"
  kind := "assert"
  statementHash := "04cf24f4ca1a67d7"
}
@[vrml_obligation] theorem assert_2
    (n : Int)
    (requires_0 : 0 ≤ n)
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
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (n + n)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n))
    (assume_36 : True) :
    Vermilion.natClip (n + n) = Vermilion.natClip (2 * n) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_2

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_3 047607ead57c500f
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1128:12-1128:44`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `047607ead57c500f`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1128
  startColumn := 12
  endLine := 1128
  endColumn := 44
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double"
  kind := "assert"
  statementHash := "047607ead57c500f"
}
@[vrml_obligation] theorem assert_3
    (n : Int)
    (requires_0 : 0 ≤ n)
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
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (n + n)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n))
    (assume_36 : True)
    (assert_2 : Vermilion.natClip (n + n) = Vermilion.natClip (2 * n)) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * n)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.ensures_5 08dfdacf6f824100
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.ensures_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:1124:9-1124:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `08dfdacf6f824100`
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 1124
  startColumn := 9
  endLine := 1124
  endColumn := 67
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double"
  kind := "ensures"
  statementHash := "08dfdacf6f824100"
}
@[vrml_obligation] theorem ensures_5
    (n : Int)
    (requires_0 : 0 ≤ n)
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
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (n + n)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n))
    (assume_36 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * n)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n)))
    (call_lemma_mul_is_distributive_sub_ensures_0 : (vstd.arithmetic.power2.pow2 n * (vstd.arithmetic.power2.pow2 n - 1)) = ((vstd.arithmetic.power2.pow2 n * vstd.arithmetic.power2.pow2 n) - (vstd.arithmetic.power2.pow2 n * 1))) :
    (((vstd.arithmetic.power2.pow2 n - 1) * vstd.arithmetic.power2.pow2 n) + (vstd.arithmetic.power2.pow2 n - 1)) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * n)) - 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double.ensures_5

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_pow2_geometric_double

