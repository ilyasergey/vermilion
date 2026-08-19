import Vermilion.Obligations
import pow_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_1 9826d3275d17e813
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:265:12-265:18`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `9826d3275d17e813`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 265
  startColumn := 12
  endLine := 265
  endColumn := 18
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "9826d3275d17e813"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 k > 0) :
    vstd.arithmetic.power2.pow2 k > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_2 e887b119937c74fd
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:270:9-270:58`
- Rust/SST construct: call lemma_add_mod_noop
- AssertId: `2`
- Statement hash: `e887b119937c74fd`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 270
  startColumn := 9
  endLine := 270
  endColumn := 58
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "e887b119937c74fd"
}
@[vrml_obligation] theorem call_requires_2
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True) :
    0 < vstd.arithmetic.power2.pow2 k := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_3 604c5ddab0c17915
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:269:12-269:54`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `604c5ddab0c17915`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 269
  startColumn := 12
  endLine := 269
  endColumn := 54
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "604c5ddab0c17915"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True)
    (call_lemma_add_mod_noop_ensures_0 : (Vermilion.emod ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k))) :
    (Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_6 449e3c2a80e364f0
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:276:20-276:43`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `449e3c2a80e364f0`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 276
  startColumn := 20
  endLine := 276
  endColumn := 43
  assertId := "6"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "449e3c2a80e364f0"
}
@[vrml_obligation] theorem assert_6
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True)
    (assume_9 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (s - k) + k)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k))
    (call_lemma_mul_is_associative_ensures_0 : (b * (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k)) * vstd.arithmetic.power2.pow2 k)) = ((b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k)) :
    Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s) = Vermilion.natClip (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_6

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_7 f8920a806739bb68
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:281:17-281:75`
- Rust/SST construct: call lemma_mod_multiples_basic
- AssertId: `7`
- Statement hash: `f8920a806739bb68`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 281
  startColumn := 17
  endLine := 281
  endColumn := 75
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "f8920a806739bb68"
}
@[vrml_obligation] theorem call_requires_7
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True)
    (assume_9 : True → (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s) = Vermilion.natClip (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k)))
    (assume_10 : True) :
    vstd.arithmetic.power2.pow2 k > 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_7

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_8 f9fb51fae1eda91f
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:280:20-280:31`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `f9fb51fae1eda91f`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 280
  startColumn := 20
  endLine := 280
  endColumn := 31
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "f9fb51fae1eda91f"
}
@[vrml_obligation] theorem assert_8
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True)
    (assume_9 : True → (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s) = Vermilion.natClip (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k)))
    (assume_10 : True)
    (call_lemma_mod_multiples_basic_ensures_0 : (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k) (vstd.arithmetic.power2.pow2 k)) = 0) :
    (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_9 493fbb33fca75e92
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:275:16-275:27`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `493fbb33fca75e92`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 275
  startColumn := 16
  endLine := 275
  endColumn := 27
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "493fbb33fca75e92"
}
@[vrml_obligation] theorem assert_9
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True)
    (assume_9 : True → (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s) = Vermilion.natClip (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 (Vermilion.natClip (s - k))) * vstd.arithmetic.power2.pow2 k)))
    (assume_10 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0)) :
    (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_9

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_10 6c402db7077e3965
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:286:13-286:49`
- Rust/SST construct: call lemma_mod_twice
- AssertId: `10`
- Statement hash: `6c402db7077e3965`
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 286
  startColumn := 13
  endLine := 286
  endColumn := 49
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "6c402db7077e3965"
}
@[vrml_obligation] theorem call_requires_10
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0))
    (assume_9 : True) :
    vstd.arithmetic.power2.pow2 k > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_10

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_11 5e316096947b80dd
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:285:16-285:39`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `5e316096947b80dd`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 285
  startColumn := 16
  endLine := 285
  endColumn := 39
  assertId := "11"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "5e316096947b80dd"
}
@[vrml_obligation] theorem assert_11
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : s ≥ k)
    (assume_8 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0))
    (assume_9 : True)
    (call_lemma_mod_twice_ensures_0 : (Vermilion.emod (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod a (vstd.arithmetic.power2.pow2 k))) :
    (Vermilion.emod (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_11

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_13 1daad8eb31cd4dbc
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:293:16-293:27`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `1daad8eb31cd4dbc`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 293
  startColumn := 16
  endLine := 293
  endColumn := 27
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "1daad8eb31cd4dbc"
}
@[vrml_obligation] theorem assert_13
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_14 c385ad862d8d3ac3
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:300:13-300:40`
- Rust/SST construct: call lemma_pow2_mul_mod
- AssertId: `14`
- Statement hash: `c385ad862d8d3ac3`
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 300
  startColumn := 13
  endLine := 300
  endColumn := 40
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "c385ad862d8d3ac3"
}
@[vrml_obligation] theorem call_requires_14
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True) :
    s ≤ k := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_14

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_15 7b5aea0dde748c82
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:299:16-299:32`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `7b5aea0dde748c82`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 299
  startColumn := 16
  endLine := 299
  endColumn := 32
  assertId := "15"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "7b5aea0dde748c82"
}
@[vrml_obligation] theorem assert_15
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True)
    (call_lemma_pow2_mul_mod_ensures_0 : (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) :
    (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_15

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_16 9860f15021e6220e
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:305:17-305:52`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `16`
- Statement hash: `9860f15021e6220e`
-/
def call_requires_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 305
  startColumn := 17
  endLine := 305
  endColumn := 52
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "9860f15021e6220e"
}
@[vrml_obligation] theorem call_requires_16
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True)
    (assume_11 : True) :
    s < k := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_16

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_17 5b02bdf67f676295
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:304:20-304:27`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `5b02bdf67f676295`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 304
  startColumn := 20
  endLine := 304
  endColumn := 27
  assertId := "17"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "5b02bdf67f676295"
}
@[vrml_obligation] theorem assert_17
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True)
    (assume_11 : True)
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 k) :
    vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 k := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_17

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_0 c6be81f6f201b08b
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:307:13-307:35`
- Rust/SST construct: call lemma_small_mod
- AssertId: `18_0`
- Statement hash: `c6be81f6f201b08b`
-/
def call_requires_18_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 307
  startColumn := 13
  endLine := 307
  endColumn := 35
  assertId := "18_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "c6be81f6f201b08b"
}
@[vrml_obligation] theorem call_requires_18_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True)
    (assume_11 : True → (vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 k)) :
    a < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_1 e65fd879450169bc
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:307:13-307:35`
- Rust/SST construct: call lemma_small_mod
- AssertId: `18_1`
- Statement hash: `e65fd879450169bc`
-/
def call_requires_18_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 307
  startColumn := 13
  endLine := 307
  endColumn := 35
  assertId := "18_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "e65fd879450169bc"
}
@[vrml_obligation] theorem call_requires_18_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True)
    (assume_11 : True → (vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 k)) :
    0 < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_18_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_19 9e6fdfedccce26b1
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:303:16-303:27`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `9e6fdfedccce26b1`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 303
  startColumn := 16
  endLine := 303
  endColumn := 27
  assertId := "19"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "9e6fdfedccce26b1"
}
@[vrml_obligation] theorem assert_19
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True)
    (assume_11 : True → (vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 k))
    (call_lemma_small_mod_ensures_0 : (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a) :
    (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_19

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_0 56d87938ec138687
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:314:25-314:52`
- Rust/SST construct: call lemma_small_mod
- AssertId: `20_0`
- Statement hash: `56d87938ec138687`
-/
def call_requires_20_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 314
  startColumn := 25
  endLine := 314
  endColumn := 52
  assertId := "20_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "56d87938ec138687"
}
@[vrml_obligation] theorem call_requires_20_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True)
    (assume_14 : True) :
    (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_1 57b7c8f76162dbba
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:314:25-314:52`
- Rust/SST construct: call lemma_small_mod
- AssertId: `20_1`
- Statement hash: `57b7c8f76162dbba`
-/
def call_requires_20_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 314
  startColumn := 25
  endLine := 314
  endColumn := 52
  assertId := "20_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "57b7c8f76162dbba"
}
@[vrml_obligation] theorem call_requires_20_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True)
    (assume_14 : True) :
    0 < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_20_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_21 8d0d782b6d41c4f7
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:313:28-313:39`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `8d0d782b6d41c4f7`
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 313
  startColumn := 28
  endLine := 313
  endColumn := 39
  assertId := "21"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "8d0d782b6d41c4f7"
}
@[vrml_obligation] theorem assert_21
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True)
    (assume_14 : True)
    (call_lemma_small_mod_1_ensures_0 : (Vermilion.emod (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) = (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s))))) :
    (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_21

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_22 c34ba0fab699ce06
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:316:21-316:58`
- Rust/SST construct: call lemma_pow2_mul_bound_general
- AssertId: `22`
- Statement hash: `c34ba0fab699ce06`
-/
def call_requires_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 316
  startColumn := 21
  endLine := 316
  endColumn := 58
  assertId := "22"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "c34ba0fab699ce06"
}
@[vrml_obligation] theorem call_requires_22
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True)
    (assume_14 : True → ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) :
    (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_22

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_23 8c2e102775cb408b
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_23`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:312:24-312:41`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `8c2e102775cb408b`
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 312
  startColumn := 24
  endLine := 312
  endColumn := 41
  assertId := "23"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "8c2e102775cb408b"
}
@[vrml_obligation] theorem assert_23
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True)
    (assume_14 : True → ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s))))
    (call_lemma_pow2_mul_bound_general_ensures_0 : Vermilion.natClip (vstd.arithmetic.power2.pow2 s * (Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s))))) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s + Vermilion.natClip (k - s))) - vstd.arithmetic.power2.pow2 s))
    (call_lemma_pow2_mul_bound_general_ensures_1 : Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s + Vermilion.natClip (k - s))) - vstd.arithmetic.power2.pow2 s))
    (call_lemma_pow2_mul_bound_general_ensures_2 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (s + Vermilion.natClip (k - s))) - vstd.arithmetic.power2.pow2 s) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (s + Vermilion.natClip (k - s)))) :
    Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s) ≤ (vstd.arithmetic.power2.pow2 k - vstd.arithmetic.power2.pow2 s) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_23

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_24 0bf9bc6140a516b0
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:311:20-311:35`
- Rust/SST construct: Rust source assertion
- AssertId: `24`
- Statement hash: `0bf9bc6140a516b0`
-/
def assert_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 311
  startColumn := 20
  endLine := 311
  endColumn := 35
  assertId := "24"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "0bf9bc6140a516b0"
}
@[vrml_obligation] theorem assert_24
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True)
    (assume_13 : True → (Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s) ≤ (vstd.arithmetic.power2.pow2 k - vstd.arithmetic.power2.pow2 s))) :
    Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_24

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_0 6d610d6a441a9ed9
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:320:13-320:44`
- Rust/SST construct: call lemma_small_mod
- AssertId: `25_0`
- Statement hash: `6d610d6a441a9ed9`
-/
def call_requires_25_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 320
  startColumn := 13
  endLine := 320
  endColumn := 44
  assertId := "25_0"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "6d610d6a441a9ed9"
}
@[vrml_obligation] theorem call_requires_25_0
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True → (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 k)) :
    Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_0

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_1 c4511ba39e7a2245
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:320:13-320:44`
- Rust/SST construct: call lemma_small_mod
- AssertId: `25_1`
- Statement hash: `c4511ba39e7a2245`
-/
def call_requires_25_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 320
  startColumn := 13
  endLine := 320
  endColumn := 44
  assertId := "25_1"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "call_requires"
  statementHash := "c4511ba39e7a2245"
}
@[vrml_obligation] theorem call_requires_25_1
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True → (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 k)) :
    0 < vstd.arithmetic.power2.pow2 k := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.call_requires_25_1

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_26 97e97a9a0ef90ee9
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_26`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:310:16-310:47`
- Rust/SST construct: Rust source assertion
- AssertId: `26`
- Statement hash: `97e97a9a0ef90ee9`
-/
def assert_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 310
  startColumn := 16
  endLine := 310
  endColumn := 47
  assertId := "26"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "assert"
  statementHash := "97e97a9a0ef90ee9"
}
@[vrml_obligation] theorem assert_26
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (branch_0 : (¬ (s ≥ k)))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0))
    (assume_9 : True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)))
    (assume_10 : True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a))
    (assume_11 : True)
    (assume_12 : True → (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 k))
    (call_lemma_small_mod_2_ensures_0 : (Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))) :
    (Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.assert_26

-- vrml:begin layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.ensures_27 42e73d7426d61a15
/--
Generated VC `layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.ensures_27`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs:258:9-258:77`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `27`
- Statement hash: `42e73d7426d61a15`
-/
def ensures_27_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs"
  startLine := 258
  startColumn := 9
  endLine := 258
  endColumn := 77
  assertId := "27"
  functionName := "layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition"
  kind := "ensures"
  statementHash := "42e73d7426d61a15"
}
@[vrml_obligation] theorem ensures_27
    (a : Int)
    (b : Int)
    (s : Int)
    (k : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (requires_2 : 0 ≤ s)
    (requires_3 : 0 ≤ k)
    (requires_4 : a < vstd.arithmetic.power2.pow2 s)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 k > 0))
    (assume_6 : True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)))) (vstd.arithmetic.power2.pow2 k))))
    (then_0_assume_8 : (s ≥ k) → (True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = 0)))
    (then_0_assume_9 : (s ≥ k) → (True → ((Vermilion.emod (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) (vstd.arithmetic.power2.pow2 k)) = (Vermilion.emod a (vstd.arithmetic.power2.pow2 k)))))
    (else_0_assume_8 : (¬ (s ≥ k)) → (True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)) > 0)))
    (else_0_assume_9 : (¬ (s ≥ k)) → (True → ((Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))))
    (else_0_assume_10 : (¬ (s ≥ k)) → (True → ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) = a)))
    (else_0_assume_11 : (¬ (s ≥ k)) → (True → ((Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip (a + Vermilion.natClip ((Vermilion.emod b (vstd.arithmetic.power2.pow2 (Vermilion.natClip (k - s)))) * vstd.arithmetic.power2.pow2 s))))) :
    (Vermilion.emod (Vermilion.natClip (a + Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s))) (vstd.arithmetic.power2.pow2 k)) = Vermilion.natClip ((Vermilion.emod a (vstd.arithmetic.power2.pow2 k)) + (Vermilion.emod (Vermilion.natClip (b * vstd.arithmetic.power2.pow2 s)) (vstd.arithmetic.power2.pow2 k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition.ensures_27

end layer_a.lemmas.common_lemmas.pow_lemmas.lemma_binary_sum_mod_decomposition

