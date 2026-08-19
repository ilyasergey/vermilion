import Vermilion.Obligations
import to_nat_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity

-- vrml:begin layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_1 6c22470e5714a753
/--
Generated VC `layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs:817:12-817:42`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `6c22470e5714a753`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs"
  startLine := 817
  startColumn := 12
  endLine := 817
  endColumn := 42
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity"
  kind := "assert"
  statementHash := "6c22470e5714a753"
}
@[vrml_obligation] theorem assert_1
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.index bytes 0 = 1)
    (requires_3 : (∀ (i : Int), (((1 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index bytes i = 0))))
    (assume_4 : True)
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
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616) :
    Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 0) = 1 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_3 7fe658f323df6d1c
/--
Generated VC `layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs:822:47-823:13`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `7fe658f323df6d1c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs"
  startLine := 822
  startColumn := 47
  endLine := 823
  endColumn := 13
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity"
  kind := "assert"
  statementHash := "7fe658f323df6d1c"
}
@[vrml_obligation] theorem assert_3
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.index bytes 0 = 1)
    (requires_3 : (∀ (i : Int), (((1 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index bytes i = 0))))
    (assume_4 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 0) = 1))
    (assume_5 : 0 ≤ i)
    (assume_6 : (1 ≤ i) ∧ (i < 32))
    (call_lemma_mul_basics_ensures_0 : (0 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) = 0)
    (call_lemma_mul_basics_ensures_1 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * 0) = 0)
    (call_lemma_mul_basics_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)) * 1) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8)))
    (call_lemma_mul_basics_ensures_3 : (1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) :
    Vermilion.natClip (Vermilion.Seq.index bytes i * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.ensures_4 a11a8cce8f61cad5
/--
Generated VC `layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.ensures_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs:814:9-814:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `a11a8cce8f61cad5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index bytes i⟩ ⟨vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs"
  startLine := 814
  startColumn := 9
  endLine := 814
  endColumn := 33
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity"
  kind := "ensures"
  statementHash := "a11a8cce8f61cad5"
}
@[vrml_obligation] theorem ensures_4
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.index bytes 0 = 1)
    (requires_3 : (∀ (i : Int), (((1 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index bytes i = 0))))
    (assume_4 : True → (Vermilion.natClip (Vermilion.Seq.index bytes 0 * vstd.arithmetic.power2.pow2 0) = 1))
    (assume_5 : (∀ (i : Int), ((0 ≤ i) → (((1 ≤ i) ∧ (i < 32)) → (Vermilion.natClip (Vermilion.Seq.index bytes i * vstd.arithmetic.power2.pow2 (Vermilion.natClip (i * 8))) = 0))))) :
    layer_a.specs.core_specs.u8_32_as_nat bytes = 1 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity.ensures_4

end layer_a.lemmas.common_lemmas.to_nat_lemmas.lemma_u8_32_as_nat_identity

