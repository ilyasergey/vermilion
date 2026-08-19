import Vermilion.Obligations
import compute_q_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_6 d459c025eb5d36b8
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:72:12-74:59`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `d459c025eb5d36b8`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 72
  startColumn := 12
  endLine := 74
  endColumn := 59
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "d459c025eb5d36b8"
}
@[vrml_obligation] theorem assert_6
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True)
    (call_lemma_mul_is_distributive_sub_other_way_ensures_0 : ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) * vstd.arithmetic.power2.pow2 51) - (q0 * vstd.arithmetic.power2.pow2 51)))
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : (((q1 * vstd.arithmetic.power2.pow2 51) + r1) * vstd.arithmetic.power2.pow2 51) = (((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51))) :
    ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_6

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_9 49e7c2ffbc6e77ea
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:79:12-81:61`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `49e7c2ffbc6e77ea`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 79
  startColumn := 12
  endLine := 81
  endColumn := 61
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "49e7c2ffbc6e77ea"
}
@[vrml_obligation] theorem assert_9
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True)
    (call_lemma_mul_is_distributive_sub_other_way_1_ensures_0 : ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) * vstd.arithmetic.power2.pow2 102) - (q1 * vstd.arithmetic.power2.pow2 102)))
    (call_lemma_mul_is_distributive_add_other_way_1_ensures_0 : (((q2 * vstd.arithmetic.power2.pow2 51) + r2) * vstd.arithmetic.power2.pow2 102) = (((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102))) :
    ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_12 25462fa7606db2dd
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:86:12-88:61`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `25462fa7606db2dd`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 86
  startColumn := 12
  endLine := 88
  endColumn := 61
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "25462fa7606db2dd"
}
@[vrml_obligation] theorem assert_12
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True)
    (call_lemma_mul_is_distributive_sub_other_way_2_ensures_0 : ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) * vstd.arithmetic.power2.pow2 153) - (q2 * vstd.arithmetic.power2.pow2 153)))
    (call_lemma_mul_is_distributive_add_other_way_2_ensures_0 : (((q3 * vstd.arithmetic.power2.pow2 51) + r3) * vstd.arithmetic.power2.pow2 153) = (((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153))) :
    ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_15 29f3e53bfb531413
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:93:12-95:61`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `29f3e53bfb531413`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 93
  startColumn := 12
  endLine := 95
  endColumn := 61
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "29f3e53bfb531413"
}
@[vrml_obligation] theorem assert_15
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_8 : True)
    (call_lemma_mul_is_distributive_sub_other_way_3_ensures_0 : ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) * vstd.arithmetic.power2.pow2 204) - (q3 * vstd.arithmetic.power2.pow2 204)))
    (call_lemma_mul_is_distributive_add_other_way_3_ensures_0 : (((q4 * vstd.arithmetic.power2.pow2 51) + r4) * vstd.arithmetic.power2.pow2 204) = (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204))) :
    ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_17 8eec85d5112e2a03
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:109:12-109:75`
- Rust/SST construct: Rust source assertion
- AssertId: `17`
- Statement hash: `8eec85d5112e2a03`
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 109
  startColumn := 12
  endLine := 109
  endColumn := 75
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "8eec85d5112e2a03"
}
@[vrml_obligation] theorem assert_17
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_8 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assume_9 : True)
    (call_lemma_mul_is_associative_ensures_0 : (q1 * (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51)) = ((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51)) :
    ((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) = (q1 * vstd.arithmetic.power2.pow2 102) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_19 d7bfe15969c204db
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:112:12-112:76`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `d7bfe15969c204db`
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 112
  startColumn := 12
  endLine := 112
  endColumn := 76
  assertId := "19"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "d7bfe15969c204db"
}
@[vrml_obligation] theorem assert_19
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_8 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assume_9 : True → (((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) = (q1 * vstd.arithmetic.power2.pow2 102)))
    (assume_10 : True)
    (call_lemma_mul_is_associative_1_ensures_0 : (q2 * (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102)) = ((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102)) :
    ((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) = (q2 * vstd.arithmetic.power2.pow2 153) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_19

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_21 3f6b650e0de2bd08
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_21`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:115:12-115:76`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `3f6b650e0de2bd08`
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 115
  startColumn := 12
  endLine := 115
  endColumn := 76
  assertId := "21"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "assert"
  statementHash := "3f6b650e0de2bd08"
}
@[vrml_obligation] theorem assert_21
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_8 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assume_9 : True → (((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) = (q1 * vstd.arithmetic.power2.pow2 102)))
    (assume_10 : True → (((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) = (q2 * vstd.arithmetic.power2.pow2 153)))
    (assume_11 : True)
    (call_lemma_mul_is_associative_2_ensures_0 : (q3 * (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153)) = ((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153)) :
    ((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) = (q3 * vstd.arithmetic.power2.pow2 204) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.assert_21

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.ensures_22 2c380f5a99aa0d1c
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.ensures_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:54:9-58:60`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `22`
- Statement hash: `2c380f5a99aa0d1c`
-/
def ensures_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 54
  startColumn := 9
  endLine := 58
  endColumn := 60
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion"
  kind := "ensures"
  statementHash := "2c380f5a99aa0d1c"
}
@[vrml_obligation] theorem ensures_22
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assume_5 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_6 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_7 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_8 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assume_9 : True → (((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) = (q1 * vstd.arithmetic.power2.pow2 102)))
    (assume_10 : True → (((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) = (q2 * vstd.arithmetic.power2.pow2 153)))
    (assume_11 : True → (((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) = (q3 * vstd.arithmetic.power2.pow2 204))) :
    ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion.ensures_22

end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_expansion

