import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_0 25c0879a7b981ee5
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: assertion failed
- AssertId: `0`
- Statement hash: `25c0879a7b981ee5`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "25c0879a7b981ee5"
}
@[vrml_obligation] theorem assert_0
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : k = Vermilion.natClip (8 - 1)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_anonymous_0 13fd77ff327f3568
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_anonymous_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `13fd77ff327f3568`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "anonymous_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "13fd77ff327f3568"
}
@[vrml_obligation] theorem assert_anonymous_0
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True) :
    ((0 ≤ (8 - Vermilion.natClip (k + 1))) ∧ ((8 - Vermilion.natClip (k + 1)) < (8 - k))) ∨ (((8 - Vermilion.natClip (k + 1)) = (8 - k)) ∧ False) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_anonymous_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_1 582ed4221da95983
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_max_shifting
- AssertId: `1`
- Statement hash: `582ed4221da95983`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "582ed4221da95983"
}
@[vrml_obligation] theorem call_requires_1
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True)
    (assert_anonymous_0 : ((0 ≤ (8 - Vermilion.natClip (k + 1))) ∧ ((8 - Vermilion.natClip (k + 1)) < (8 - k))) ∨ (((8 - Vermilion.natClip (k + 1)) = (8 - k)) ∧ False)) :
    (1 ≤ Vermilion.natClip (k + 1)) ∧ (Vermilion.natClip (k + 1) < 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_2 e77cf9d1824ff82f
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `e77cf9d1824ff82f`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "e77cf9d1824ff82f"
}
@[vrml_obligation] theorem assert_2
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True)
    (assert_anonymous_0 : ((0 ≤ (8 - Vermilion.natClip (k + 1))) ∧ ((8 - Vermilion.natClip (k + 1)) < (8 - k))) ∨ (((8 - Vermilion.natClip (k + 1)) = (8 - k)) ∧ False))
    (call_lemma_u8_max_shifting_ensures_0 : Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((8 - Vermilion.natClip (k + 1)) % 256)) :
    Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_3 4086206d1a812577
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shr_by_sum
- AssertId: `3`
- Statement hash: `4086206d1a812577`
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "4086206d1a812577"
}
@[vrml_obligation] theorem call_requires_3
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True) :
    Vermilion.natClip (k + 1) < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_4 379c382c0067b2e6
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `379c382c0067b2e6`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "379c382c0067b2e6"
}
@[vrml_obligation] theorem assert_4
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True)
    (call_lemma_u8_shr_by_sum_ensures_0 : Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1) :
    Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_4

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_5 7ecd5ebe1245ffd8
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `5`
- Statement hash: `7ecd5ebe1245ffd8`
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "7ecd5ebe1245ffd8"
}
@[vrml_obligation] theorem call_requires_5
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1)) :
    Vermilion.natClip (Vermilion.natClip (8 - 1) - k) < Vermilion.natClip (8 - k) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_5

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_6 186a4c9ff4ccda93
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `6`
- Statement hash: `186a4c9ff4ccda93`
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "6"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "186a4c9ff4ccda93"
}
@[vrml_obligation] theorem call_requires_6
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True)
    (branch_1 : (¬ (k = 1))) :
    Vermilion.natClip (8 - k) < Vermilion.natClip (8 - 1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_6

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_0 a4a840eadbfffb6d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_mul_le
- AssertId: `7_0`
- Statement hash: `a4a840eadbfffb6d`
-/
def call_requires_7_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "7_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "a4a840eadbfffb6d"
}
@[vrml_obligation] theorem call_requires_7_0
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True)
    (else_1_call_lemma_pow2_strictly_increases_1_ensures_0 : (¬ (k = 1)) → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))) :
    1 ≤ 1 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_1 f6192b47eac9407f
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_mul_le
- AssertId: `7_1`
- Statement hash: `f6192b47eac9407f`
-/
def call_requires_7_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "7_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "f6192b47eac9407f"
}
@[vrml_obligation] theorem call_requires_7_1
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True)
    (else_1_call_lemma_pow2_strictly_increases_1_ensures_0 : (¬ (k = 1)) → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)) ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_7_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_8 b8b79c6c94c0e688
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `b8b79c6c94c0e688`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "b8b79c6c94c0e688"
}
@[vrml_obligation] theorem assert_8
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True)
    (else_1_call_lemma_pow2_strictly_increases_1_ensures_0 : (¬ (k = 1)) → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))))
    (call_lemma_mul_le_ensures_0 : Vermilion.natClip (1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ Vermilion.natClip (1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))) :
    ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_10 6f84b06bd98ead36
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `6f84b06bd98ead36`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "6f84b06bd98ead36"
}
@[vrml_obligation] theorem assert_10
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True)
    (assume_8 : True)
    (call_lemma_mul_basics_4_ensures_0 : (1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) :
    ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_11 4e1a27af111837db
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_pow2_le_max
- AssertId: `11`
- Statement hash: `4e1a27af111837db`
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "11"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "4e1a27af111837db"
}
@[vrml_obligation] theorem call_requires_11
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True)
    (assume_8 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))))
    (assume_9 : True) :
    Vermilion.natClip (8 - 1) < 8 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_11

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_12 a9ec267479e514a3
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `a9ec267479e514a3`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "12"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "a9ec267479e514a3"
}
@[vrml_obligation] theorem assert_12
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True)
    (assume_8 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))))
    (assume_9 : True)
    (call_lemma_u8_pow2_le_max_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)) ≤ 255) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)) ≤ 255 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_12

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_13 fa4a235ad9263920
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `fa4a235ad9263920`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "fa4a235ad9263920"
}
@[vrml_obligation] theorem assert_13
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True)
    (assume_8 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)) ≤ 255)) :
    ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_0 216a10fca2571c9a
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shl_by_sum
- AssertId: `14_0`
- Statement hash: `216a10fca2571c9a`
-/
def call_requires_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "14_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "216a10fca2571c9a"
}
@[vrml_obligation] theorem call_requires_14_0
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (8 - 1) - k) + 1) < 8 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_1 8ca829038d2f45b8
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shl_by_sum
- AssertId: `14_1`
- Statement hash: `8ca829038d2f45b8`
-/
def call_requires_14_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "14_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "8ca829038d2f45b8"
}
@[vrml_obligation] theorem call_requires_14_1
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True) :
    (1 * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (8 - 1) - k) + 1))) ≤ 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_14_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_15 d63b9186a82aed74
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `d63b9186a82aed74`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "15"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "d63b9186a82aed74"
}
@[vrml_obligation] theorem assert_15
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True)
    (call_lemma_u8_shl_by_sum_ensures_0 : Vermilion.Bits.shl 8 1 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (8 - 1) - k) + 1)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 1 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1) :
    Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_15

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_16 baec107e57c6eca1
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shr_is_div
- AssertId: `16`
- Statement hash: `baec107e57c6eca1`
-/
def call_requires_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "baec107e57c6eca1"
}
@[vrml_obligation] theorem call_requires_16
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True) :
    (0 ≤ 1) ∧ (1 < 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_16

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_17 0766c008d927b1ab
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `0766c008d927b1ab`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "17"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "0766c008d927b1ab"
}
@[vrml_obligation] theorem assert_17
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True)
    (call_lemma_u8_shr_is_div_ensures_0 : Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))) :
    Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_17

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_18 c272377cdf5d5dd9
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shift_is_pow2
- AssertId: `18`
- Statement hash: `c272377cdf5d5dd9`
-/
def call_requires_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "18"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "c272377cdf5d5dd9"
}
@[vrml_obligation] theorem call_requires_18
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True) :
    Vermilion.natClip (Vermilion.natClip (8 - 1) - k) < 8 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_18

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_20 e7b72ac6db3f66e9
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `e7b72ac6db3f66e9`
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "20"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "e7b72ac6db3f66e9"
}
@[vrml_obligation] theorem assert_20
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True)
    (call_lemma_u8_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) = vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)))
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (8 - 1) - k) + 1)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1)) :
    (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_20

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_0 ebb6b87cac731b4c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shl_is_mul
- AssertId: `21_0`
- Statement hash: `ebb6b87cac731b4c`
-/
def call_requires_21_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "21_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "ebb6b87cac731b4c"
}
@[vrml_obligation] theorem call_requires_21_0
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255))
    (assume_11 : True) :
    (0 ≤ 1) ∧ (1 < 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_1 b85e540c0d07c73e
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_u8_shl_is_mul
- AssertId: `21_1`
- Statement hash: `b85e540c0d07c73e`
-/
def call_requires_21_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "21_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "b85e540c0d07c73e"
}
@[vrml_obligation] theorem call_requires_21_1
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255))
    (assume_11 : True) :
    (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_21_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_22 fdfa7f62565cf95b
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `fdfa7f62565cf95b`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "22"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "fdfa7f62565cf95b"
}
@[vrml_obligation] theorem assert_22
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255))
    (assume_11 : True)
    (call_lemma_u8_shl_is_mul_ensures_0 : Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 = (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1)) :
    Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 = (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_22

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_24 10b5da087db1c8e2
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: call lemma_div_multiples_vanish
- AssertId: `24`
- Statement hash: `10b5da087db1c8e2`
-/
def call_requires_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "24"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "call_requires"
  statementHash := "10b5da087db1c8e2"
}
@[vrml_obligation] theorem call_requires_24
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255))
    (assume_11 : True → (Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 = (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1)))
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
    (assume_46 : True) :
    0 < 2 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.call_requires_24

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_25 209b99e823ba2590
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_25`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: Rust source assertion
- AssertId: `25`
- Statement hash: `209b99e823ba2590`
-/
def assert_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "25"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "assert"
  statementHash := "209b99e823ba2590"
}
@[vrml_obligation] theorem assert_25
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (branch_0 : (¬ (k = Vermilion.natClip (8 - 1))))
    (assume_3 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))
    (assume_4 : True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1))
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k)))
    (assume_6 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1)))))
    (assume_7 : True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255))
    (assume_8 : True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1))
    (assume_9 : True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1))))
    (assume_10 : True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255))
    (assume_11 : True → (Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 = (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1)))
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
    (assume_46 : True)
    (call_lemma_div_multiples_vanish_ensures_0 : ((2 * Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)) / 2) = Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)) :
    ((Vermilion.Bits.shl 8 (1 % 256) ((8 - k) % 256)) / 2) = Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.assert_25

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.ensures_26 dc419747c9c57f21
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.ensures_26`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:509:1-517:2`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `26`
- Statement hash: `dc419747c9c57f21`
-/
def ensures_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 509
  startColumn := 1
  endLine := 517
  endColumn := 2
  assertId := "26"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting"
  kind := "ensures"
  statementHash := "dc419747c9c57f21"
}
@[vrml_obligation] theorem ensures_26
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : (1 ≤ k) ∧ (k < 8))
    (then_0_assert_0 : (k = Vermilion.natClip (8 - 1)) → True)
    (then_0_assume_4 : (k = Vermilion.natClip (8 - 1)) → (Vermilion.Bits.shr 8 255 (8 - 1) < Vermilion.Bits.shl 8 (1 % 256) 1))
    (else_0_assume_3 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) < Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256))))
    (else_0_assume_4 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (Vermilion.Bits.shr 8 255 (Vermilion.natClip (k + 1)) = Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1)))
    (else_0_call_lemma_pow2_strictly_increases_ensures_0 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))))
    (else_0_assume_6 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - k))) ≤ ((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))))))
    (else_0_assume_7 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (((1 % 256) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (8 - 1))) ≤ 255)))
    (else_0_assume_8 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (8 - k)) = Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1)))
    (else_0_assume_9 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (Vermilion.Bits.shr 8 (Vermilion.Bits.shr 8 255 k) 1 = (Vermilion.ediv (Vermilion.Bits.shr 8 255 k) (vstd.arithmetic.power2.pow2 1)))))
    (else_0_assume_10 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → ((Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1) ≤ 255)))
    (else_0_assume_11 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (Vermilion.Bits.shl 8 (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k))) 1 = (Vermilion.Bits.shl 8 (1 % 256) (Vermilion.natClip (Vermilion.natClip (8 - 1) - k)) * vstd.arithmetic.power2.pow2 1))))
    (else_0_call_lemma2_to64_ensures_0 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 0 = 1))
    (else_0_call_lemma2_to64_ensures_1 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 1 = 2))
    (else_0_call_lemma2_to64_ensures_2 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 2 = 4))
    (else_0_call_lemma2_to64_ensures_3 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 3 = 8))
    (else_0_call_lemma2_to64_ensures_4 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 4 = 16))
    (else_0_call_lemma2_to64_ensures_5 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 5 = 32))
    (else_0_call_lemma2_to64_ensures_6 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 6 = 64))
    (else_0_call_lemma2_to64_ensures_7 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 7 = 128))
    (else_0_call_lemma2_to64_ensures_8 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 8 = 256))
    (else_0_call_lemma2_to64_ensures_9 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 9 = 512))
    (else_0_call_lemma2_to64_ensures_10 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 10 = 1024))
    (else_0_call_lemma2_to64_ensures_11 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 11 = 2048))
    (else_0_call_lemma2_to64_ensures_12 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 12 = 4096))
    (else_0_call_lemma2_to64_ensures_13 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 13 = 8192))
    (else_0_call_lemma2_to64_ensures_14 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 14 = 16384))
    (else_0_call_lemma2_to64_ensures_15 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 15 = 32768))
    (else_0_call_lemma2_to64_ensures_16 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 16 = 65536))
    (else_0_call_lemma2_to64_ensures_17 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 17 = 131072))
    (else_0_call_lemma2_to64_ensures_18 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 18 = 262144))
    (else_0_call_lemma2_to64_ensures_19 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 19 = 524288))
    (else_0_call_lemma2_to64_ensures_20 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 20 = 1048576))
    (else_0_call_lemma2_to64_ensures_21 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 21 = 2097152))
    (else_0_call_lemma2_to64_ensures_22 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 22 = 4194304))
    (else_0_call_lemma2_to64_ensures_23 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 23 = 8388608))
    (else_0_call_lemma2_to64_ensures_24 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 24 = 16777216))
    (else_0_call_lemma2_to64_ensures_25 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 25 = 33554432))
    (else_0_call_lemma2_to64_ensures_26 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 26 = 67108864))
    (else_0_call_lemma2_to64_ensures_27 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 27 = 134217728))
    (else_0_call_lemma2_to64_ensures_28 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 28 = 268435456))
    (else_0_call_lemma2_to64_ensures_29 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 29 = 536870912))
    (else_0_call_lemma2_to64_ensures_30 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 30 = 1073741824))
    (else_0_call_lemma2_to64_ensures_31 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 31 = 2147483648))
    (else_0_call_lemma2_to64_ensures_32 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 32 = 4294967296))
    (else_0_call_lemma2_to64_ensures_33 : (¬ (k = Vermilion.natClip (8 - 1))) → (vstd.arithmetic.power2.pow2 64 = 18446744073709551616))
    (else_0_assume_46 : (¬ (k = Vermilion.natClip (8 - 1))) → (True → (((Vermilion.Bits.shl 8 (1 % 256) ((8 - k) % 256)) / 2) = Vermilion.Bits.shl 8 (1 % 256) ((Vermilion.natClip (8 - 1) - k) % 256)))) :
    Vermilion.Bits.shr 8 255 k < Vermilion.Bits.shl 8 (1 % 256) ((8 - k) % 256) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting.ensures_26

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u8_max_shifting

