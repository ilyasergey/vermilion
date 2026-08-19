import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_1 e1198d1ef88ee8b2
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:557:16-557:67`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `e1198d1ef88ee8b2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 557
  startColumn := 16
  endLine := 557
  endColumn := 67
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "e1198d1ef88ee8b2"
}
@[vrml_obligation] theorem assert_1
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True)
    (call_lemma_u8_32_as_nat_of_spec_fe51_to_bytes_ensures_0 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_3 420e932e1a37e6cd
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:560:16-560:67`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `420e932e1a37e6cd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 560
  startColumn := 16
  endLine := 560
  endColumn := 67
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "420e932e1a37e6cd"
}
@[vrml_obligation] theorem assert_3
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True)
    (call_lemma_u8_32_as_nat_of_spec_fe51_to_bytes_1_ensures_0 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_4 de08b388800a2df6
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:564:16-564:62`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `de08b388800a2df6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 564
  startColumn := 16
  endLine := 564
  endColumn := 62
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "de08b388800a2df6"
}
@[vrml_obligation] theorem assert_4
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_5 b330971158ced73e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:568:13-568:58`
- Rust/SST construct: call lemma_canonical_bytes_equal
- AssertId: `5`
- Statement hash: `b330971158ced73e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 568
  startColumn := 13
  endLine := 568
  endColumn := 58
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "call_requires"
  statementHash := "b330971158ced73e"
}
@[vrml_obligation] theorem call_requires_5
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_6 30d74b9168999f33
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:567:16-567:69`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `30d74b9168999f33`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 567
  startColumn := 16
  endLine := 567
  endColumn := 69
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "30d74b9168999f33"
}
@[vrml_obligation] theorem assert_6
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True)
    (call_lemma_canonical_bytes_equal_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i)))) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_6

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_7 644978178a7f7154
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:576:24-576:59`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `644978178a7f7154`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 576
  startColumn := 24
  endLine := 576
  endColumn := 59
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "644978178a7f7154"
}
@[vrml_obligation] theorem assert_7
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True)
    (assume_10 : True)
    (assume_11 : (0 ≤ i) ∧ (i < 32)) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_8 a579ff5460731a4e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:577:24-577:59`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `a579ff5460731a4e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 577
  startColumn := 24
  endLine := 577
  endColumn := 59
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "a579ff5460731a4e"
}
@[vrml_obligation] theorem assert_8
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True)
    (assume_10 : True)
    (assume_11 : (0 ≤ i) ∧ (i < 32))
    (assert_7 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_9 3fa23ba59014c85e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:578:24-578:46`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `3fa23ba59014c85e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 578
  startColumn := 24
  endLine := 578
  endColumn := 46
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "3fa23ba59014c85e"
}
@[vrml_obligation] theorem assert_9
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True)
    (assume_10 : True)
    (assume_11 : (0 ≤ i) ∧ (i < 32))
    (assert_7 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i)
    (assert_8 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_10 fb5d8f567ce81109
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:573:55-575:17`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `fb5d8f567ce81109`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 573
  startColumn := 55
  endLine := 575
  endColumn := 17
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "fb5d8f567ce81109"
}
@[vrml_obligation] theorem assert_10
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True)
    (assume_10 : True)
    (assume_11 : (0 ≤ i) ∧ (i < 32))
    (assert_7 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i)
    (assert_8 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i)
    (assert_9 : Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_11 78226014c28f121a
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:572:16-572:58`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `78226014c28f121a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 572
  startColumn := 16
  endLine := 572
  endColumn := 58
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "78226014c28f121a"
}
@[vrml_obligation] theorem assert_11
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True)
    (assume_10 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) i = Vermilion.Seq.index (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) i)))) :
    layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_12 c5331506db7d938b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:584:20-584:55`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `c5331506db7d938b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 584
  startColumn := 20
  endLine := 584
  endColumn := 55
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "c5331506db7d938b"
}
@[vrml_obligation] theorem assert_12
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True) :
    Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe1) = 32 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_13 4c9271c70f670f66
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:585:13-585:69`
- Rust/SST construct: call lemma_seq_to_array_32_roundtrip
- AssertId: `13`
- Statement hash: `4c9271c70f670f66`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 585
  startColumn := 13
  endLine := 585
  endColumn := 69
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "call_requires"
  statementHash := "4c9271c70f670f66"
}
@[vrml_obligation] theorem call_requires_13
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True)
    (assert_12 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe1) = 32) :
    Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe1) = 32 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_13

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_14 ae16c192c2666263
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:583:16-583:62`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `ae16c192c2666263`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 583
  startColumn := 16
  endLine := 583
  endColumn := 62
  assertId := "14"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "ae16c192c2666263"
}
@[vrml_obligation] theorem assert_14
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True)
    (assert_12 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe1) = 32)
    (call_lemma_seq_to_array_32_roundtrip_ensures_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))) :
    layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_14

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_15 dbab2aa5081a2116
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:588:20-588:55`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `dbab2aa5081a2116`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 588
  startColumn := 20
  endLine := 588
  endColumn := 55
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "dbab2aa5081a2116"
}
@[vrml_obligation] theorem assert_15
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))))
    (assume_11 : True) :
    Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe2) = 32 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_16 9ab48000d81db657
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:589:13-589:69`
- Rust/SST construct: call lemma_seq_to_array_32_roundtrip
- AssertId: `16`
- Statement hash: `9ab48000d81db657`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def call_requires_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 589
  startColumn := 13
  endLine := 589
  endColumn := 69
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "call_requires"
  statementHash := "9ab48000d81db657"
}
@[vrml_obligation] theorem call_requires_16
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))))
    (assume_11 : True)
    (assert_15 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe2) = 32) :
    Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe2) = 32 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.call_requires_16

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_17 8a60b3b8f2745e0b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:587:16-587:62`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `8a60b3b8f2745e0b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 587
  startColumn := 16
  endLine := 587
  endColumn := 62
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "8a60b3b8f2745e0b"
}
@[vrml_obligation] theorem assert_17
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))))
    (assume_11 : True)
    (assert_15 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe2) = 32)
    (call_lemma_seq_to_array_32_roundtrip_1_ensures_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe2 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) :
    layer_a.specs.field_specs.spec_fe51_as_bytes fe2 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_18 5d580ccf8b80a1b5
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:592:16-592:66`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `5d580ccf8b80a1b5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 592
  startColumn := 16
  endLine := 592
  endColumn := 66
  assertId := "18"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "assert"
  statementHash := "5d580ccf8b80a1b5"
}
@[vrml_obligation] theorem assert_18
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))
    (assume_8 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i))))
    (assume_9 : True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (assume_10 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1))))
    (assume_11 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe2 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))) :
    layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.assert_18

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.ensures_19 17136ae3f6199c5a
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.ensures_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:550:9-551:40`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19`
- Statement hash: `17136ae3f6199c5a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i⟩
-/
def ensures_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 550
  startColumn := 9
  endLine := 551
  endColumn := 40
  assertId := "19"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal"
  kind := "ensures"
  statementHash := "17136ae3f6199c5a"
}
@[vrml_obligation] theorem ensures_19
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (then_0_assume_5 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1)))
    (then_0_assume_6 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)))
    (then_0_assert_4 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (then_0_assume_8 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) i)))))
    (then_0_assume_9 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))))
    (then_0_assume_10 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)))))
    (then_0_assume_11 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe2 = layer_a.core_assumes.seq_from32 (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)))))
    (then_0_assert_18 : (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) :
    (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) → (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal.ensures_19

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_field_element_equal_implies_fe51_to_bytes_equal

