import Vermilion.Obligations
import number_theory_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_0 10b310d93476a26a
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:89:13-89:39`
- Rust/SST construct: call lemma_mod_self_0
- AssertId: `0`
- Statement hash: `10b310d93476a26a`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 89
  startColumn := 13
  endLine := 89
  endColumn := 39
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "call_requires"
  statementHash := "10b310d93476a26a"
}
@[vrml_obligation] theorem call_requires_0
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : b = 0)
    (branch_1 : a > 0) :
    a > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_0

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_anonymous_0 5b7108fedd052a9b
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_anonymous_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:93:9-93:37`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `5b7108fedd052a9b`
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 93
  startColumn := 9
  endLine := 93
  endColumn := 37
  assertId := "anonymous_0"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "assert"
  statementHash := "5b7108fedd052a9b"
}
@[vrml_obligation] theorem assert_anonymous_0
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0))) :
    ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_anonymous_0

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_2 69f8630157c3ae7c
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:96:13-96:58`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `2`
- Statement hash: `69f8630157c3ae7c`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 96
  startColumn := 13
  endLine := 96
  endColumn := 58
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "call_requires"
  statementHash := "69f8630157c3ae7c"
}
@[vrml_obligation] theorem call_requires_2
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0)))
    (assert_anonymous_0 : ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False))
    (call_lemma_gcd_divides_both_ensures_0 : ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (call_lemma_gcd_divides_both_ensures_1 : ((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (branch_2 : layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) :
    (¬ (b = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_0 8f81085e18c0abba
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:97:13-97:55`
- Rust/SST construct: call lemma_divides_linear_combo
- AssertId: `3_0`
- Statement hash: `8f81085e18c0abba`
-/
def call_requires_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 97
  startColumn := 13
  endLine := 97
  endColumn := 55
  assertId := "3_0"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "call_requires"
  statementHash := "8f81085e18c0abba"
}
@[vrml_obligation] theorem call_requires_3_0
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0)))
    (assert_anonymous_0 : ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False))
    (call_lemma_gcd_divides_both_ensures_0 : ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (call_lemma_gcd_divides_both_ensures_1 : ((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (branch_2 : layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b))) :
    layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_0

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_1 31535a7720355469
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:97:13-97:55`
- Rust/SST construct: call lemma_divides_linear_combo
- AssertId: `3_1`
- Statement hash: `31535a7720355469`
-/
def call_requires_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 97
  startColumn := 13
  endLine := 97
  endColumn := 55
  assertId := "3_1"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "call_requires"
  statementHash := "31535a7720355469"
}
@[vrml_obligation] theorem call_requires_3_1
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0)))
    (assert_anonymous_0 : ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False))
    (call_lemma_gcd_divides_both_ensures_0 : ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (call_lemma_gcd_divides_both_ensures_1 : ((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (branch_2 : layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b))) :
    (Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_1

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_2 e68d95419d96a4d5
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:97:13-97:55`
- Rust/SST construct: call lemma_divides_linear_combo
- AssertId: `3_2`
- Statement hash: `e68d95419d96a4d5`
-/
def call_requires_3_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 97
  startColumn := 13
  endLine := 97
  endColumn := 55
  assertId := "3_2"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "call_requires"
  statementHash := "e68d95419d96a4d5"
}
@[vrml_obligation] theorem call_requires_3_2
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0)))
    (assert_anonymous_0 : ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False))
    (call_lemma_gcd_divides_both_ensures_0 : ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (call_lemma_gcd_divides_both_ensures_1 : ((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (branch_2 : layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b))) :
    (Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.call_requires_3_2

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_5 def6acf1b51b924d
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:98:20-98:42`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `def6acf1b51b924d`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 98
  startColumn := 20
  endLine := 98
  endColumn := 42
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "assert"
  statementHash := "def6acf1b51b924d"
}
@[vrml_obligation] theorem assert_5
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (branch_0 : (¬ (b = 0)))
    (assert_anonymous_0 : ((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False))
    (call_lemma_gcd_divides_both_ensures_0 : ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (call_lemma_gcd_divides_both_ensures_1 : ((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0))
    (branch_2 : layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b)))
    (call_lemma_divides_linear_combo_ensures_0 : (Vermilion.emod (Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b))) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0)
    (assume_9 : True)
    (call_lemma_mul_is_commutative_ensures_0 : ((Vermilion.ediv a b) * b) = (b * (Vermilion.ediv a b))) :
    Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b)) = a := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_0 8f7778bde7ed52eb
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:81:9-81:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_0`
- Statement hash: `8f7778bde7ed52eb`
-/
def ensures_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 81
  startColumn := 9
  endLine := 81
  endColumn := 55
  assertId := "6_0"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "ensures"
  statementHash := "8f7778bde7ed52eb"
}
@[vrml_obligation] theorem ensures_6_0
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (then_0_then_1_call_lemma_mod_self_0_ensures_0 : (b = 0) → ((a > 0) → ((Vermilion.emod a a) = 0)))
    (else_0_assert_anonymous_0 : (¬ (b = 0)) → (((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False)))
    (else_0_call_lemma_gcd_divides_both_ensures_0 : (¬ (b = 0)) → (((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0)))
    (else_0_call_lemma_gcd_divides_both_ensures_1 : (¬ (b = 0)) → (((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0)))
    (else_0_then_2_call_lemma_fundamental_div_mod_ensures_0 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → (a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b)))))
    (else_0_then_2_call_lemma_divides_linear_combo_ensures_0 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → ((Vermilion.emod (Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b))) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0)))
    (else_0_then_2_assume_9 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → (True → (Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b)) = a)))) :
    ((Vermilion.emod a (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b = 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_0

-- vrml:begin layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_1 f7c23ae229c12a4e
/--
Generated VC `layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs:82:9-82:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6_1`
- Statement hash: `f7c23ae229c12a4e`
-/
def ensures_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs"
  startLine := 82
  startColumn := 9
  endLine := 82
  endColumn := 55
  assertId := "6_1"
  functionName := "layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both"
  kind := "ensures"
  statementHash := "f7c23ae229c12a4e"
}
@[vrml_obligation] theorem ensures_6_1
    (a : Int)
    (b : Int)
    (requires_0 : 0 ≤ a)
    (requires_1 : 0 ≤ b)
    (then_0_then_1_call_lemma_mod_self_0_ensures_0 : (b = 0) → ((a > 0) → ((Vermilion.emod a a) = 0)))
    (else_0_assert_anonymous_0 : (¬ (b = 0)) → (((0 ≤ (Vermilion.emod a b)) ∧ ((Vermilion.emod a b) < b)) ∨ (((Vermilion.emod a b) = b) ∧ False)))
    (else_0_call_lemma_gcd_divides_both_ensures_0 : (¬ (b = 0)) → (((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0)))
    (else_0_call_lemma_gcd_divides_both_ensures_1 : (¬ (b = 0)) → (((Vermilion.emod (Vermilion.emod a b) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b))) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd b (Vermilion.emod a b) = 0)))
    (else_0_then_2_call_lemma_fundamental_div_mod_ensures_0 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → (a = ((b * (Vermilion.ediv a b)) + (Vermilion.emod a b)))))
    (else_0_then_2_call_lemma_divides_linear_combo_ensures_0 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → ((Vermilion.emod (Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b))) (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0)))
    (else_0_then_2_assume_9 : (¬ (b = 0)) → ((layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b > 0) → (True → (Vermilion.natClip ((Vermilion.emod a b) + Vermilion.natClip ((Vermilion.ediv a b) * b)) = a)))) :
    ((Vermilion.emod b (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b)) = 0) ∨ (layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd a b = 0) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both.ensures_6_1

end layer_a.lemmas.common_lemmas.number_theory_lemmas.lemma_gcd_divides_both

