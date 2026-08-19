import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_1 7633aa40a2cf62ec
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1172:12-1172:26`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `7633aa40a2cf62ec`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1172
  startColumn := 12
  endLine := 1172
  endColumn := 26
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "7633aa40a2cf62ec"
}
@[vrml_obligation] theorem assert_1
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True)
    (call_pow255_gt_19_ensures_0 : vstd.arithmetic.power2.pow2 255 > 19) :
    vstd.arithmetic.power2.pow2 255 > 19 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_0 531e73a020cb5f68
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1176:9-1176:56`
- Rust/SST construct: call lemma_small_mod
- AssertId: `2_0`
- Statement hash: `531e73a020cb5f68`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def call_requires_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1176
  startColumn := 9
  endLine := 1176
  endColumn := 56
  assertId := "2_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "call_requires"
  statementHash := "531e73a020cb5f68"
}
@[vrml_obligation] theorem call_requires_2_0
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True) :
    layer_a.specs.core_specs.u8_32_as_nat bytes < vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_1 dd22704ca8e278e8
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1176:9-1176:56`
- Rust/SST construct: call lemma_small_mod
- AssertId: `2_1`
- Statement hash: `dd22704ca8e278e8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def call_requires_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1176
  startColumn := 9
  endLine := 1176
  endColumn := 56
  assertId := "2_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "call_requires"
  statementHash := "dd22704ca8e278e8"
}
@[vrml_obligation] theorem call_requires_2_1
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True) :
    0 < vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_2_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_3 f33737d23a79a856
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1175:12-1175:66`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `f33737d23a79a856`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1175
  startColumn := 12
  endLine := 1175
  endColumn := 66
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "f33737d23a79a856"
}
@[vrml_obligation] theorem assert_3
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True)
    (call_lemma_small_mod_ensures_0 : (Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes) :
    (Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_0 eafa8830c8efa597
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1179:9-1179:50`
- Rust/SST construct: call lemma_small_mod
- AssertId: `4_0`
- Statement hash: `eafa8830c8efa597`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1179
  startColumn := 9
  endLine := 1179
  endColumn := 50
  assertId := "4_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "call_requires"
  statementHash := "eafa8830c8efa597"
}
@[vrml_obligation] theorem call_requires_4_0
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True) :
    layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_1 da9496d1724bbcef
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1179:9-1179:50`
- Rust/SST construct: call lemma_small_mod
- AssertId: `4_1`
- Statement hash: `da9496d1724bbcef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1179
  startColumn := 9
  endLine := 1179
  endColumn := 50
  assertId := "4_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "call_requires"
  statementHash := "da9496d1724bbcef"
}
@[vrml_obligation] theorem call_requires_4_1
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True) :
    0 < layer_a.specs.field_specs_u64.p 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_4_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_5 ea019d52437b0155
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1178:12-1178:60`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `ea019d52437b0155`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1178
  startColumn := 12
  endLine := 1178
  endColumn := 60
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "ea019d52437b0155"
}
@[vrml_obligation] theorem assert_5
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True)
    (call_lemma_small_mod_1_ensures_0 : (Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes) :
    (Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_7 9c212fac5d657cdf
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1183:12-1183:64`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `9c212fac5d657cdf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1183
  startColumn := 12
  endLine := 1183
  endColumn := 64
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "9c212fac5d657cdf"
}
@[vrml_obligation] theorem assert_7
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True)
    (call_lemma_u8_32_as_nat_of_spec_fe51_to_bytes_ensures_0 : layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_8 8197b5bcc8dc3fcf
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1187:9-1187:54`
- Rust/SST construct: call lemma_canonical_bytes_equal
- AssertId: `8`
- Statement hash: `8197b5bcc8dc3fcf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1187
  startColumn := 9
  endLine := 1187
  endColumn := 54
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "call_requires"
  statementHash := "8197b5bcc8dc3fcf"
}
@[vrml_obligation] theorem call_requires_8
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True) :
    layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.core_specs.u8_32_as_nat bytes := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.call_requires_8

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_9 a536f2107c8ad758
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1186:12-1186:66`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `a536f2107c8ad758`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1186
  startColumn := 12
  endLine := 1186
  endColumn := 66
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "a536f2107c8ad758"
}
@[vrml_obligation] theorem assert_9
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True)
    (call_lemma_canonical_bytes_equal_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i)))) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_10 4a4b4dd44734b08e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1191:16-1191:50`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `4a4b4dd44734b08e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1191
  startColumn := 16
  endLine := 1191
  endColumn := 50
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "4a4b4dd44734b08e"
}
@[vrml_obligation] theorem assert_10
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True) :
    Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_11 814fa9e052180122
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1195:20-1195:60`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `814fa9e052180122`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1195
  startColumn := 20
  endLine := 1195
  endColumn := 60
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "814fa9e052180122"
}
@[vrml_obligation] theorem assert_11
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True)
    (assert_10 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32)
    (assume_13 : True)
    (assume_14 : (0 ≤ i) ∧ (i < 32)) :
    Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_12 617a4db705f59db5
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1196:20-1196:52`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `617a4db705f59db5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1196
  startColumn := 20
  endLine := 1196
  endColumn := 52
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "617a4db705f59db5"
}
@[vrml_obligation] theorem assert_12
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True)
    (assert_10 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32)
    (assume_13 : True)
    (assume_14 : (0 ≤ i) ∧ (i < 32))
    (assert_11 : Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i = Vermilion.Seq.index bytes i := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_13 bf4a7ddac623044e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1197:20-1197:43`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `bf4a7ddac623044e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1197
  startColumn := 20
  endLine := 1197
  endColumn := 43
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "bf4a7ddac623044e"
}
@[vrml_obligation] theorem assert_13
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True)
    (assert_10 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32)
    (assume_13 : True)
    (assume_14 : (0 ≤ i) ∧ (i < 32))
    (assert_11 : Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i)
    (assert_12 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i = Vermilion.Seq.index bytes i) :
    Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_14 b33cde3810d6ab16
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1192:51-1194:13`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `b33cde3810d6ab16`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1192
  startColumn := 51
  endLine := 1194
  endColumn := 13
  assertId := "14"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "b33cde3810d6ab16"
}
@[vrml_obligation] theorem assert_14
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True)
    (assert_10 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32)
    (assume_13 : True)
    (assume_14 : (0 ≤ i) ∧ (i < 32))
    (assert_11 : Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i)
    (assert_12 : Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i = Vermilion.Seq.index bytes i)
    (assert_13 : Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i) :
    Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_14

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_15 bc6844e547332e43
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1190:12-1190:56`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `bc6844e547332e43`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i⟩
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1190
  startColumn := 12
  endLine := 1190
  endColumn := 56
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "assert"
  statementHash := "bc6844e547332e43"
}
@[vrml_obligation] theorem assert_15
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True)
    (assert_10 : Vermilion.Seq.len (layer_a.specs.field_specs.spec_fe51_as_bytes fe) = 32)
    (assume_13 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.specs.field_specs.spec_fe51_as_bytes fe) i = Vermilion.Seq.index (layer_a.core_assumes.seq_from32 bytes) i)))) :
    layer_a.specs.field_specs.spec_fe51_as_bytes fe = layer_a.core_assumes.seq_from32 bytes := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.ensures_16 59de24f0c59941f8
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.ensures_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:1170:9-1170:52`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `16`
- Statement hash: `59de24f0c59941f8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i⟩ ⟨Vermilion.Seq.index bytes i⟩
-/
def ensures_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 1170
  startColumn := 9
  endLine := 1170
  endColumn := 52
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward"
  kind := "ensures"
  statementHash := "59de24f0c59941f8"
}
@[vrml_obligation] theorem ensures_16
    (bytes : (Vermilion.Seq Int))
    (fe : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe) vrml_i0))))
    (requires_4 : layer_a.specs.field_specs.fe51_as_canonical_nat fe = layer_a.specs.field_specs.field_element_from_bytes bytes)
    (requires_5 : layer_a.specs.core_specs.u8_32_as_nat bytes < layer_a.specs.field_specs_u64.p 0)
    (assume_6 : True → (vstd.arithmetic.power2.pow2 255 > 19))
    (assume_7 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (vstd.arithmetic.power2.pow2 255)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_8 : True → ((Vermilion.emod (layer_a.specs.core_specs.u8_32_as_nat bytes) (layer_a.specs.field_specs_u64.p 0)) = layer_a.specs.core_specs.u8_32_as_nat bytes))
    (assume_9 : True → (layer_a.specs.core_specs.u8_32_as_nat (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) = layer_a.specs.field_specs.fe51_as_canonical_nat fe))
    (assume_10 : True → (∀ (i : Int), (((0 ≤ i) ∧ (i < 32)) → (Vermilion.Seq.index (layer_a.core_assumes.seq_to_array_32 (layer_a.specs.field_specs.spec_fe51_as_bytes fe)) i = Vermilion.Seq.index bytes i))))
    (assume_11 : True → (layer_a.specs.field_specs.spec_fe51_as_bytes fe = layer_a.core_assumes.seq_from32 bytes)) :
    layer_a.specs.field_specs.spec_fe51_as_bytes fe = layer_a.core_assumes.seq_from32 bytes := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward.ensures_16

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_canonical_check_backward

