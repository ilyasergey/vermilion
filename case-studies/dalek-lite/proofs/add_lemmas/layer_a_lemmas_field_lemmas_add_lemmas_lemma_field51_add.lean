import Vermilion.Obligations
import add_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_0 c5d874ccbb757940
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:30:9-30:53`
- Rust/SST construct: call lemma_u64_5_as_nat_add
- AssertId: `0`
- Statement hash: `c5d874ccbb757940`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) i⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) i⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 30
  startColumn := 9
  endLine := 30
  endColumn := 53
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "call_requires"
  statementHash := "c5d874ccbb757940"
}
@[vrml_obligation] theorem call_requires_0
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.natClip (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) i + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) i) ≤ 18446744073709551615))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_0

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_1 bed0e2d8c9a28970
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:28:12-29:34`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `bed0e2d8c9a28970`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 28
  startColumn := 12
  endLine := 29
  endColumn := 34
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "assert"
  statementHash := "bed0e2d8c9a28970"
}
@[vrml_obligation] theorem assert_1
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True)
    (call_lemma_u64_5_as_nat_add_ensures_0 : layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) 0 + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) 0) % 18446744073709551616)) ((Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) 1 + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) 1) % 18446744073709551616)) ((Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) 2 + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) 2) % 18446744073709551616)) ((Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) 3 + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) 3) % 18446744073709551616)) ((Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) 4 + Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) 4) % 18446744073709551616)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_3 ca78355e2d814df3
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:38:16-38:23`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `ca78355e2d814df3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 38
  startColumn := 16
  endLine := 38
  endColumn := 23
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "assert"
  statementHash := "ca78355e2d814df3"
}
@[vrml_obligation] theorem assert_3
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))))
    (assume_6 : True)
    (assume_7 : True)
    (call_pow255_gt_19_ensures_0 : vstd.arithmetic.power2.pow2 255 > 19) :
    layer_a.specs.field_specs_u64.p 0 > 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_4 a3295a665790c098
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:41:9-45:10`
- Rust/SST construct: call lemma_add_mod_noop
- AssertId: `4`
- Statement hash: `a3295a665790c098`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 41
  startColumn := 9
  endLine := 45
  endColumn := 10
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "call_requires"
  statementHash := "a3295a665790c098"
}
@[vrml_obligation] theorem call_requires_4
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))))
    (assume_6 : True)
    (assume_7 : True → (layer_a.specs.field_specs_u64.p 0 > 0)) :
    0 < layer_a.specs.field_specs_u64.p 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.call_requires_4

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_5 605f7376d687e59d
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:36:12-37:53`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `605f7376d687e59d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 36
  startColumn := 12
  endLine := 37
  endColumn := 53
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "assert"
  statementHash := "605f7376d687e59d"
}
@[vrml_obligation] theorem assert_5
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))))
    (assume_6 : True)
    (assume_7 : True → (layer_a.specs.field_specs_u64.p 0 > 0))
    (call_lemma_add_mod_noop_ensures_0 : (Vermilion.emod ((Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs)) (layer_a.specs.field_specs_u64.p 0)) + (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) (layer_a.specs.field_specs_u64.p 0))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) (layer_a.specs.field_specs_u64.p 0))) :
    (Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs)) (layer_a.specs.field_specs_u64.p 0)) + (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) (layer_a.specs.field_specs_u64.p 0)))) (layer_a.specs.field_specs_u64.p 0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_0 e9ef147a600af07f
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:20:9-22:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_0`
- Statement hash: `e9ef147a600af07f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def ensures_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 20
  startColumn := 9
  endLine := 22
  endColumn := 10
  assertId := "6_0"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "ensures"
  statementHash := "e9ef147a600af07f"
}
@[vrml_obligation] theorem ensures_6_0
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs)) (layer_a.specs.field_specs_u64.p 0)) + (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) (layer_a.specs.field_specs_u64.p 0)))) (layer_a.specs.field_specs_u64.p 0)))) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_1 1785853ed0613478
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:23:9-26:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_1`
- Statement hash: `1785853ed0613478`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0⟩
-/
def ensures_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 23
  startColumn := 9
  endLine := 26
  endColumn := 10
  assertId := "6_1"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add"
  kind := "ensures"
  statementHash := "1785853ed0613478"
}
@[vrml_obligation] theorem ensures_6_1
    (lhs : layer_a.backend.serial.u64.field.FieldElement51)
    (rhs : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.sum_of_limbs_bounded lhs rhs 18446744073709551615)
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs)) = Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs) + layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs))) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs lhs)) (layer_a.specs.field_specs_u64.p 0)) + (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs rhs)) (layer_a.specs.field_specs_u64.p 0)))) (layer_a.specs.field_specs_u64.p 0)))) :
    layer_a.specs.field_specs.fe51_as_canonical_nat (layer_a.specs.field_specs.spec_add_fe51_limbs lhs rhs) = layer_a.specs.field_specs.field_add (layer_a.specs.field_specs.fe51_as_canonical_nat lhs) (layer_a.specs.field_specs.fe51_as_canonical_nat rhs) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add.ensures_6_1

end layer_a.lemmas.field_lemmas.add_lemmas.lemma_field51_add

