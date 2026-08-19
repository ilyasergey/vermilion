import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_1 3567a4244cacb393
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `3567a4244cacb393`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "3567a4244cacb393"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 k > 0) :
    vstd.arithmetic.power2.pow2 k > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_3 9b36da0f1265bcd4
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `9b36da0f1265bcd4`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "9b36da0f1265bcd4"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (s - k) + k)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)) :
    vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_0 83929c8c10ba93ba
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call lemma_div_by_multiple_is_strongly_ordered
- AssertId: `4_0`
- Statement hash: `83929c8c10ba93ba`
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "4_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "83929c8c10ba93ba"
}
@[vrml_obligation] theorem call_requires_4_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True) :
    a < vstd.arithmetic.power2.pow2 s := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_1 1565e33efc3aaef9
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call lemma_div_by_multiple_is_strongly_ordered
- AssertId: `4_1`
- Statement hash: `1565e33efc3aaef9`
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "4_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "1565e33efc3aaef9"
}
@[vrml_obligation] theorem call_requires_4_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True) :
    vstd.arithmetic.power2.pow2 s = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_2 935fddcbd5a134a9
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call lemma_div_by_multiple_is_strongly_ordered
- AssertId: `4_2`
- Statement hash: `935fddcbd5a134a9`
-/
def call_requires_4_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "4_2"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "935fddcbd5a134a9"
}
@[vrml_obligation] theorem call_requires_4_2
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True) :
    0 < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_4_2

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_5 5a237076b70277d4
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `5a237076b70277d4`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "5a237076b70277d4"
}
@[vrml_obligation] theorem assert_5
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True)
    (call_lemma_div_by_multiple_is_strongly_ordered_ensures_0 : (Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k))) :
    (Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_0 4ace133afc9497f0
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call lemma_div_by_multiple
- AssertId: `6_0`
- Statement hash: `4ace133afc9497f0`
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "6_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "4ace133afc9497f0"
}
@[vrml_obligation] theorem call_requires_6_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k))))
    (assume_11 : True) :
    0 ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_1 e65cf2ec9c10f80d
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call lemma_div_by_multiple
- AssertId: `6_1`
- Statement hash: `e65cf2ec9c10f80d`
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "6_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "e65cf2ec9c10f80d"
}
@[vrml_obligation] theorem call_requires_6_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k))))
    (assume_11 : True) :
    0 < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_6_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_7 7d8ff4ab30a36e65
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `7d8ff4ab30a36e65`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "7d8ff4ab30a36e65"
}
@[vrml_obligation] theorem assert_7
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k))))
    (assume_11 : True)
    (call_lemma_div_by_multiple_ensures_0 : (Vermilion.ediv (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k) (vstd.arithmetic.power2.pow2 k)) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) :
    (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k)) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_8 5f67883bca73bef1
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `5f67883bca73bef1`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "5f67883bca73bef1"
}
@[vrml_obligation] theorem assert_8
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True)
    (assume_10 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < (Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k))))
    (assume_11 : True → ((Vermilion.ediv (vstd.arithmetic.power2.pow2 s) (vstd.arithmetic.power2.pow2 k)) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)))) :
    (Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_9 ec03fcde71d67805
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: call pow2_MUL_div
- AssertId: `9`
- Statement hash: `ec03fcde71d67805`
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "call_requires"
  statementHash := "ec03fcde71d67805"
}
@[vrml_obligation] theorem call_requires_9
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))
    (assume_10 : True) :
    s ≥ k := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.call_requires_9

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_10 c07d7be91477e9ed
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `c07d7be91477e9ed`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "assert"
  statementHash := "c07d7be91477e9ed"
}
@[vrml_obligation] theorem assert_10
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))
    (assume_10 : True)
    (call_pow2_MUL_div_ensures_0 : (Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)))) :
    (Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_0 f5a5b3484c9de59e
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_0`
- Statement hash: `f5a5b3484c9de59e`
-/
def ensures_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "11_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "ensures"
  statementHash := "f5a5b3484c9de59e"
}
@[vrml_obligation] theorem ensures_11_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))) :
    (Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_1 1e8efc9de46a6e1a
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_1`
- Statement hash: `1e8efc9de46a6e1a`
-/
def ensures_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "11_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "ensures"
  statementHash := "1e8efc9de46a6e1a"
}
@[vrml_obligation] theorem ensures_11_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))) :
    (Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_2 10ab73e7eec4bd66
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:853:1-853:87`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_2`
- Statement hash: `10ab73e7eec4bd66`
-/
def ensures_11_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 853
  startColumn := 1
  endLine := 853
  endColumn := 87
  assertId := "11_2"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition"
  kind := "ensures"
  statementHash := "10ab73e7eec4bd66"
}
@[vrml_obligation] theorem ensures_11_2
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 a)
    (requires_1 : Vermilion.inUnsignedRange 8 b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (requires_5 : (a + (b * vstd.arithmetic.power2.pow2 s)) ≤ 255)
    (requires_6 : (k ≤ s) ∧ (s < 8))
    (assume_7 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 s = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)))
    (assume_9 : True → ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))))) :
    ((Vermilion.ediv a (vstd.arithmetic.power2.pow2 k)) + (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)))) ≤ 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition.ensures_11_2

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_u8_div_pow2_preserves_decomposition

