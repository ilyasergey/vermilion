import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_1 5a275d96cdcf51a4
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:519:16-519:67`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `5a275d96cdcf51a4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 519
  startColumn := 16
  endLine := 519
  endColumn := 67
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal"
  kind := "assert"
  statementHash := "5a275d96cdcf51a4"
}
@[vrml_obligation] theorem assert_1
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2)
    (assume_5 : True)
    (call_lemma_u8_32_as_nat_of_spec_fe51_to_bytes_ensures_0 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_3 99b388cdfd30f19f
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:522:16-522:67`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `99b388cdfd30f19f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 522
  startColumn := 16
  endLine := 522
  endColumn := 67
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal"
  kind := "assert"
  statementHash := "99b388cdfd30f19f"
}
@[vrml_obligation] theorem assert_3
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True)
    (call_lemma_u8_32_as_nat_of_spec_fe51_to_bytes_1_ensures_0 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_4 3e0ec1f460380de4
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:526:16-526:62`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `3e0ec1f460380de4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 526
  startColumn := 16
  endLine := 526
  endColumn := 62
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal"
  kind := "assert"
  statementHash := "3e0ec1f460380de4"
}
@[vrml_obligation] theorem assert_4
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_5 005c0340ec8a2dc0
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:527:16-527:72`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `005c0340ec8a2dc0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 527
  startColumn := 16
  endLine := 527
  endColumn := 72
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal"
  kind := "assert"
  statementHash := "005c0340ec8a2dc0"
}
@[vrml_obligation] theorem assert_5
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (branch_0 : layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2)
    (assume_5 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1))
    (assume_6 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2))
    (assert_4 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))) :
    layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.ensures_6 8d546631dc50bc0f
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.ensures_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:512:9-513:43`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `8d546631dc50bc0f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0⟩
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 512
  startColumn := 9
  endLine := 513
  endColumn := 43
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal"
  kind := "ensures"
  statementHash := "8d546631dc50bc0f"
}
@[vrml_obligation] theorem ensures_6
    (fe1 : layer_a.backend.serial.u64.field.FieldElement51)
    (fe2 : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe1) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe2) vrml_i0))))
    (then_0_assume_5 : (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) → (True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe1)))
    (then_0_assume_6 : (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) → (True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)))
    (then_0_assert_4 : (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe1)) = layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe2))))
    (then_0_assert_5 : (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) → (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2)) :
    (layer_a.specs.field_specs.spec_fe51_as_bytes fe1 = layer_a.specs.field_specs.spec_fe51_as_bytes fe2) → (layer_a.specs.field_specs.fe51_as_canonical_nat fe1 = layer_a.specs.field_specs.fe51_as_canonical_nat fe2) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal.ensures_6

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_fe51_to_bytes_equal_implies_field_element_equal

