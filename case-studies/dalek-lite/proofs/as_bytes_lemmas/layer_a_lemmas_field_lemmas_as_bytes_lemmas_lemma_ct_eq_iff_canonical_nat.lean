import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat.ensures_2 c632239f8b8935ad
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat.ensures_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1154:9-1155:41`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `c632239f8b8935ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1154
  startColumn := 9
  endLine := 1155
  endColumn := 41
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat"
  kind := "ensures"
  statementHash := "c632239f8b8935ad"
}
@[vrml_obligation] theorem ensures_2
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (call_lemma_fe51_to_bytes_equal_implies_field_element_equal_ensures_0 : (layer_a.specs.field_specs.spec_fe51_as_bytes a = layer_a.specs.field_specs.spec_fe51_as_bytes b) → (layer_a.specs.field_specs.fe51_as_canonical_nat a = layer_a.specs.field_specs.fe51_as_canonical_nat b))
    (call_lemma_field_element_equal_implies_fe51_to_bytes_equal_ensures_0 : (layer_a.specs.field_specs.fe51_as_canonical_nat a = layer_a.specs.field_specs.fe51_as_canonical_nat b) → (layer_a.specs.field_specs.spec_fe51_as_bytes a = layer_a.specs.field_specs.spec_fe51_as_bytes b)) :
    (layer_a.specs.field_specs.spec_fe51_as_bytes a = layer_a.specs.field_specs.spec_fe51_as_bytes b) ↔ (layer_a.specs.field_specs.fe51_as_canonical_nat a = layer_a.specs.field_specs.fe51_as_canonical_nat b) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat.ensures_2

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_ct_eq_iff_canonical_nat

