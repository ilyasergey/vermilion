import Vermilion.Obligations
import u64_5_as_nat_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub

-- vrml:begin layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.assert_4 d3b0ad4d87ef4ae4
/--
Generated VC `layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/u64_5_as_nat_lemmas.rs:124:12-126:15`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `d3b0ad4d87ef4ae4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index b i⟩ ⟨Vermilion.Seq.index a i⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/u64_5_as_nat_lemmas.rs"
  startLine := 124
  startColumn := 12
  endLine := 126
  endColumn := 15
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub"
  kind := "assert"
  statementHash := "d3b0ad4d87ef4ae4"
}
@[vrml_obligation] theorem assert_4
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.Seq.len b = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index b vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index b i ≤ Vermilion.Seq.index a i))))
    (assume_5 : True)
    (call_lemma_mul_is_distributive_sub_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 51)) * (Vermilion.Seq.index a 1 - Vermilion.Seq.index b 1)) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 51)) * Vermilion.Seq.index a 1) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 51)) * Vermilion.Seq.index b 1)))
    (call_lemma_mul_is_distributive_sub_1_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 51)) * (Vermilion.Seq.index a 2 - Vermilion.Seq.index b 2)) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 51)) * Vermilion.Seq.index a 2) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 51)) * Vermilion.Seq.index b 2)))
    (call_lemma_mul_is_distributive_sub_2_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 51)) * (Vermilion.Seq.index a 3 - Vermilion.Seq.index b 3)) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 51)) * Vermilion.Seq.index a 3) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 51)) * Vermilion.Seq.index b 3)))
    (call_lemma_mul_is_distributive_sub_3_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 51)) * (Vermilion.Seq.index a 4 - Vermilion.Seq.index b 4)) = ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 51)) * Vermilion.Seq.index a 4) - (vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 51)) * Vermilion.Seq.index b 4))) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((Vermilion.Seq.index a 0 - Vermilion.Seq.index b 0) % 18446744073709551616)) ((Vermilion.Seq.index a 1 - Vermilion.Seq.index b 1) % 18446744073709551616)) ((Vermilion.Seq.index a 2 - Vermilion.Seq.index b 2) % 18446744073709551616)) ((Vermilion.Seq.index a 3 - Vermilion.Seq.index b 3) % 18446744073709551616)) ((Vermilion.Seq.index a 4 - Vermilion.Seq.index b 4) % 18446744073709551616)) = (((((((((Vermilion.Seq.index a 0 - Vermilion.Seq.index b 0) + (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index a 1)) - (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index b 1)) + (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index a 2)) - (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index b 2)) + (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index a 3)) - (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index b 3)) + (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index a 4)) - (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index b 4)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.ensures_5 8b62b5a3c927188b
/--
Generated VC `layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.ensures_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/u64_5_as_nat_lemmas.rs:106:9-114:47`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `8b62b5a3c927188b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩ ⟨Vermilion.Seq.index b vrml_i0⟩ ⟨Vermilion.Seq.index b i⟩ ⟨Vermilion.Seq.index a i⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/u64_5_as_nat_lemmas.rs"
  startLine := 106
  startColumn := 9
  endLine := 114
  endColumn := 47
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub"
  kind := "ensures"
  statementHash := "8b62b5a3c927188b"
}
@[vrml_obligation] theorem ensures_5
    (a : (Vermilion.Seq Int))
    (b : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.Seq.len b = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len b)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index b vrml_i0))))
    (requires_4 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index b i ≤ Vermilion.Seq.index a i))))
    (assume_5 : True → (layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((Vermilion.Seq.index a 0 - Vermilion.Seq.index b 0) % 18446744073709551616)) ((Vermilion.Seq.index a 1 - Vermilion.Seq.index b 1) % 18446744073709551616)) ((Vermilion.Seq.index a 2 - Vermilion.Seq.index b 2) % 18446744073709551616)) ((Vermilion.Seq.index a 3 - Vermilion.Seq.index b 3) % 18446744073709551616)) ((Vermilion.Seq.index a 4 - Vermilion.Seq.index b 4) % 18446744073709551616)) = (((((((((Vermilion.Seq.index a 0 - Vermilion.Seq.index b 0) + (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index a 1)) - (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index b 1)) + (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index a 2)) - (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index b 2)) + (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index a 3)) - (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index b 3)) + (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index a 4)) - (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index b 4)))) :
    layer_a.specs.field_specs_u64.u64_5_as_nat (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) ((Vermilion.Seq.index a 0 - Vermilion.Seq.index b 0) % 18446744073709551616)) ((Vermilion.Seq.index a 1 - Vermilion.Seq.index b 1) % 18446744073709551616)) ((Vermilion.Seq.index a 2 - Vermilion.Seq.index b 2) % 18446744073709551616)) ((Vermilion.Seq.index a 3 - Vermilion.Seq.index b 3) % 18446744073709551616)) ((Vermilion.Seq.index a 4 - Vermilion.Seq.index b 4) % 18446744073709551616)) = (layer_a.specs.field_specs_u64.u64_5_as_nat a - layer_a.specs.field_specs_u64.u64_5_as_nat b) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub.ensures_5

end layer_a.lemmas.field_lemmas.u64_5_as_nat_lemmas.lemma_u64_5_as_nat_sub

