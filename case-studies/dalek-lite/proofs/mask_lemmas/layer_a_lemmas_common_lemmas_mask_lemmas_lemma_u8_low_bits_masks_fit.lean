import Vermilion.Obligations
import mask_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit

-- vrml:begin layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.assert_1 15b322a159250d62
/--
Generated VC `layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs:93:1-93:59`
- Rust/SST construct: assertion failed
- AssertId: `1`
- Statement hash: `15b322a159250d62`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs"
  startLine := 93
  startColumn := 1
  endLine := 93
  endColumn := 59
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit"
  kind := "assert"
  statementHash := "15b322a159250d62"
}
@[vrml_obligation] theorem assert_1
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : k ≤ 8)
    (call_lemma_low_bits_mask_values_ensures_0 : vstd.bits.low_bits_mask 0 = 0)
    (call_lemma_low_bits_mask_values_ensures_1 : vstd.bits.low_bits_mask 1 = 1)
    (call_lemma_low_bits_mask_values_ensures_2 : vstd.bits.low_bits_mask 2 = 3)
    (call_lemma_low_bits_mask_values_ensures_3 : vstd.bits.low_bits_mask 3 = 7)
    (call_lemma_low_bits_mask_values_ensures_4 : vstd.bits.low_bits_mask 4 = 15)
    (call_lemma_low_bits_mask_values_ensures_5 : vstd.bits.low_bits_mask 5 = 31)
    (call_lemma_low_bits_mask_values_ensures_6 : vstd.bits.low_bits_mask 6 = 63)
    (call_lemma_low_bits_mask_values_ensures_7 : vstd.bits.low_bits_mask 7 = 127)
    (call_lemma_low_bits_mask_values_ensures_8 : vstd.bits.low_bits_mask 8 = 255)
    (call_lemma_low_bits_mask_values_ensures_9 : vstd.bits.low_bits_mask 9 = 511)
    (call_lemma_low_bits_mask_values_ensures_10 : vstd.bits.low_bits_mask 10 = 1023)
    (call_lemma_low_bits_mask_values_ensures_11 : vstd.bits.low_bits_mask 11 = 2047)
    (call_lemma_low_bits_mask_values_ensures_12 : vstd.bits.low_bits_mask 12 = 4095)
    (call_lemma_low_bits_mask_values_ensures_13 : vstd.bits.low_bits_mask 13 = 8191)
    (call_lemma_low_bits_mask_values_ensures_14 : vstd.bits.low_bits_mask 14 = 16383)
    (call_lemma_low_bits_mask_values_ensures_15 : vstd.bits.low_bits_mask 15 = 32767)
    (call_lemma_low_bits_mask_values_ensures_16 : vstd.bits.low_bits_mask 16 = 65535)
    (call_lemma_low_bits_mask_values_ensures_17 : vstd.bits.low_bits_mask 17 = 131071)
    (call_lemma_low_bits_mask_values_ensures_18 : vstd.bits.low_bits_mask 18 = 262143)
    (call_lemma_low_bits_mask_values_ensures_19 : vstd.bits.low_bits_mask 19 = 524287)
    (call_lemma_low_bits_mask_values_ensures_20 : vstd.bits.low_bits_mask 20 = 1048575)
    (call_lemma_low_bits_mask_values_ensures_21 : vstd.bits.low_bits_mask 21 = 2097151)
    (call_lemma_low_bits_mask_values_ensures_22 : vstd.bits.low_bits_mask 22 = 4194303)
    (call_lemma_low_bits_mask_values_ensures_23 : vstd.bits.low_bits_mask 23 = 8388607)
    (call_lemma_low_bits_mask_values_ensures_24 : vstd.bits.low_bits_mask 24 = 16777215)
    (call_lemma_low_bits_mask_values_ensures_25 : vstd.bits.low_bits_mask 25 = 33554431)
    (call_lemma_low_bits_mask_values_ensures_26 : vstd.bits.low_bits_mask 26 = 67108863)
    (call_lemma_low_bits_mask_values_ensures_27 : vstd.bits.low_bits_mask 27 = 134217727)
    (call_lemma_low_bits_mask_values_ensures_28 : vstd.bits.low_bits_mask 28 = 268435455)
    (call_lemma_low_bits_mask_values_ensures_29 : vstd.bits.low_bits_mask 29 = 536870911)
    (call_lemma_low_bits_mask_values_ensures_30 : vstd.bits.low_bits_mask 30 = 1073741823)
    (call_lemma_low_bits_mask_values_ensures_31 : vstd.bits.low_bits_mask 31 = 2147483647)
    (call_lemma_low_bits_mask_values_ensures_32 : vstd.bits.low_bits_mask 32 = 4294967295)
    (call_lemma_low_bits_mask_values_ensures_33 : vstd.bits.low_bits_mask 64 = 18446744073709551615) :
    Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power.pow 2 8) - 1) ≤ 255 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.call_requires_2 d22914605c768af5
/--
Generated VC `layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs:93:1-93:59`
- Rust/SST construct: call lemma_low_bits_mask_increases
- AssertId: `2`
- Statement hash: `d22914605c768af5`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs"
  startLine := 93
  startColumn := 1
  endLine := 93
  endColumn := 59
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit"
  kind := "call_requires"
  statementHash := "d22914605c768af5"
}
@[vrml_obligation] theorem call_requires_2
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : k ≤ 8)
    (call_lemma_low_bits_mask_values_ensures_0 : vstd.bits.low_bits_mask 0 = 0)
    (call_lemma_low_bits_mask_values_ensures_1 : vstd.bits.low_bits_mask 1 = 1)
    (call_lemma_low_bits_mask_values_ensures_2 : vstd.bits.low_bits_mask 2 = 3)
    (call_lemma_low_bits_mask_values_ensures_3 : vstd.bits.low_bits_mask 3 = 7)
    (call_lemma_low_bits_mask_values_ensures_4 : vstd.bits.low_bits_mask 4 = 15)
    (call_lemma_low_bits_mask_values_ensures_5 : vstd.bits.low_bits_mask 5 = 31)
    (call_lemma_low_bits_mask_values_ensures_6 : vstd.bits.low_bits_mask 6 = 63)
    (call_lemma_low_bits_mask_values_ensures_7 : vstd.bits.low_bits_mask 7 = 127)
    (call_lemma_low_bits_mask_values_ensures_8 : vstd.bits.low_bits_mask 8 = 255)
    (call_lemma_low_bits_mask_values_ensures_9 : vstd.bits.low_bits_mask 9 = 511)
    (call_lemma_low_bits_mask_values_ensures_10 : vstd.bits.low_bits_mask 10 = 1023)
    (call_lemma_low_bits_mask_values_ensures_11 : vstd.bits.low_bits_mask 11 = 2047)
    (call_lemma_low_bits_mask_values_ensures_12 : vstd.bits.low_bits_mask 12 = 4095)
    (call_lemma_low_bits_mask_values_ensures_13 : vstd.bits.low_bits_mask 13 = 8191)
    (call_lemma_low_bits_mask_values_ensures_14 : vstd.bits.low_bits_mask 14 = 16383)
    (call_lemma_low_bits_mask_values_ensures_15 : vstd.bits.low_bits_mask 15 = 32767)
    (call_lemma_low_bits_mask_values_ensures_16 : vstd.bits.low_bits_mask 16 = 65535)
    (call_lemma_low_bits_mask_values_ensures_17 : vstd.bits.low_bits_mask 17 = 131071)
    (call_lemma_low_bits_mask_values_ensures_18 : vstd.bits.low_bits_mask 18 = 262143)
    (call_lemma_low_bits_mask_values_ensures_19 : vstd.bits.low_bits_mask 19 = 524287)
    (call_lemma_low_bits_mask_values_ensures_20 : vstd.bits.low_bits_mask 20 = 1048575)
    (call_lemma_low_bits_mask_values_ensures_21 : vstd.bits.low_bits_mask 21 = 2097151)
    (call_lemma_low_bits_mask_values_ensures_22 : vstd.bits.low_bits_mask 22 = 4194303)
    (call_lemma_low_bits_mask_values_ensures_23 : vstd.bits.low_bits_mask 23 = 8388607)
    (call_lemma_low_bits_mask_values_ensures_24 : vstd.bits.low_bits_mask 24 = 16777215)
    (call_lemma_low_bits_mask_values_ensures_25 : vstd.bits.low_bits_mask 25 = 33554431)
    (call_lemma_low_bits_mask_values_ensures_26 : vstd.bits.low_bits_mask 26 = 67108863)
    (call_lemma_low_bits_mask_values_ensures_27 : vstd.bits.low_bits_mask 27 = 134217727)
    (call_lemma_low_bits_mask_values_ensures_28 : vstd.bits.low_bits_mask 28 = 268435455)
    (call_lemma_low_bits_mask_values_ensures_29 : vstd.bits.low_bits_mask 29 = 536870911)
    (call_lemma_low_bits_mask_values_ensures_30 : vstd.bits.low_bits_mask 30 = 1073741823)
    (call_lemma_low_bits_mask_values_ensures_31 : vstd.bits.low_bits_mask 31 = 2147483647)
    (call_lemma_low_bits_mask_values_ensures_32 : vstd.bits.low_bits_mask 32 = 4294967295)
    (call_lemma_low_bits_mask_values_ensures_33 : vstd.bits.low_bits_mask 64 = 18446744073709551615)
    (assert_1 : Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power.pow 2 8) - 1) ≤ 255)
    (assume_37 : vstd.bits.low_bits_mask 8 ≤ 255)
    (branch_0 : k < 8) :
    k < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.ensures_3 c1d6aacb72396481
/--
Generated VC `layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.ensures_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs:93:1-93:59`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `c1d6aacb72396481`
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs"
  startLine := 93
  startColumn := 1
  endLine := 93
  endColumn := 59
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit"
  kind := "ensures"
  statementHash := "c1d6aacb72396481"
}
@[vrml_obligation] theorem ensures_3
    (k : Int)
    (requires_0 : 0 ≤ k)
    (requires_1 : k ≤ 8)
    (call_lemma_low_bits_mask_values_ensures_0 : vstd.bits.low_bits_mask 0 = 0)
    (call_lemma_low_bits_mask_values_ensures_1 : vstd.bits.low_bits_mask 1 = 1)
    (call_lemma_low_bits_mask_values_ensures_2 : vstd.bits.low_bits_mask 2 = 3)
    (call_lemma_low_bits_mask_values_ensures_3 : vstd.bits.low_bits_mask 3 = 7)
    (call_lemma_low_bits_mask_values_ensures_4 : vstd.bits.low_bits_mask 4 = 15)
    (call_lemma_low_bits_mask_values_ensures_5 : vstd.bits.low_bits_mask 5 = 31)
    (call_lemma_low_bits_mask_values_ensures_6 : vstd.bits.low_bits_mask 6 = 63)
    (call_lemma_low_bits_mask_values_ensures_7 : vstd.bits.low_bits_mask 7 = 127)
    (call_lemma_low_bits_mask_values_ensures_8 : vstd.bits.low_bits_mask 8 = 255)
    (call_lemma_low_bits_mask_values_ensures_9 : vstd.bits.low_bits_mask 9 = 511)
    (call_lemma_low_bits_mask_values_ensures_10 : vstd.bits.low_bits_mask 10 = 1023)
    (call_lemma_low_bits_mask_values_ensures_11 : vstd.bits.low_bits_mask 11 = 2047)
    (call_lemma_low_bits_mask_values_ensures_12 : vstd.bits.low_bits_mask 12 = 4095)
    (call_lemma_low_bits_mask_values_ensures_13 : vstd.bits.low_bits_mask 13 = 8191)
    (call_lemma_low_bits_mask_values_ensures_14 : vstd.bits.low_bits_mask 14 = 16383)
    (call_lemma_low_bits_mask_values_ensures_15 : vstd.bits.low_bits_mask 15 = 32767)
    (call_lemma_low_bits_mask_values_ensures_16 : vstd.bits.low_bits_mask 16 = 65535)
    (call_lemma_low_bits_mask_values_ensures_17 : vstd.bits.low_bits_mask 17 = 131071)
    (call_lemma_low_bits_mask_values_ensures_18 : vstd.bits.low_bits_mask 18 = 262143)
    (call_lemma_low_bits_mask_values_ensures_19 : vstd.bits.low_bits_mask 19 = 524287)
    (call_lemma_low_bits_mask_values_ensures_20 : vstd.bits.low_bits_mask 20 = 1048575)
    (call_lemma_low_bits_mask_values_ensures_21 : vstd.bits.low_bits_mask 21 = 2097151)
    (call_lemma_low_bits_mask_values_ensures_22 : vstd.bits.low_bits_mask 22 = 4194303)
    (call_lemma_low_bits_mask_values_ensures_23 : vstd.bits.low_bits_mask 23 = 8388607)
    (call_lemma_low_bits_mask_values_ensures_24 : vstd.bits.low_bits_mask 24 = 16777215)
    (call_lemma_low_bits_mask_values_ensures_25 : vstd.bits.low_bits_mask 25 = 33554431)
    (call_lemma_low_bits_mask_values_ensures_26 : vstd.bits.low_bits_mask 26 = 67108863)
    (call_lemma_low_bits_mask_values_ensures_27 : vstd.bits.low_bits_mask 27 = 134217727)
    (call_lemma_low_bits_mask_values_ensures_28 : vstd.bits.low_bits_mask 28 = 268435455)
    (call_lemma_low_bits_mask_values_ensures_29 : vstd.bits.low_bits_mask 29 = 536870911)
    (call_lemma_low_bits_mask_values_ensures_30 : vstd.bits.low_bits_mask 30 = 1073741823)
    (call_lemma_low_bits_mask_values_ensures_31 : vstd.bits.low_bits_mask 31 = 2147483647)
    (call_lemma_low_bits_mask_values_ensures_32 : vstd.bits.low_bits_mask 32 = 4294967295)
    (call_lemma_low_bits_mask_values_ensures_33 : vstd.bits.low_bits_mask 64 = 18446744073709551615)
    (assert_1 : Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power.pow 2 8) - 1) ≤ 255)
    (assume_37 : vstd.bits.low_bits_mask 8 ≤ 255)
    (then_0_call_lemma_low_bits_mask_increases_ensures_0 : (k < 8) → (vstd.bits.low_bits_mask k < vstd.bits.low_bits_mask 8)) :
    vstd.bits.low_bits_mask k ≤ 255 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit.ensures_3

end layer_a.lemmas.common_lemmas.mask_lemmas.lemma_u8_low_bits_masks_fit

