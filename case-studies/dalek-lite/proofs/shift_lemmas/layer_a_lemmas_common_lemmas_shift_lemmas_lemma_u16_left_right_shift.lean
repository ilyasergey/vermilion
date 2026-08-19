import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_0 175b8c000c95c043
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_u16_shl_is_mul
- AssertId: `0_0`
- Statement hash: `175b8c000c95c043`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "0_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "175b8c000c95c043"
}
@[vrml_obligation] theorem call_requires_0_0
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True) :
    (0 ≤ sl) ∧ (sl < 16) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_1 14e9f1b8a2147c2d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_u16_shl_is_mul
- AssertId: `0_1`
- Statement hash: `14e9f1b8a2147c2d`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "0_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "14e9f1b8a2147c2d"
}
@[vrml_obligation] theorem call_requires_0_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True) :
    (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_0_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_1 450a2cc0fce0e3c8
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `450a2cc0fce0e3c8`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "450a2cc0fce0e3c8"
}
@[vrml_obligation] theorem assert_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True)
    (call_lemma_u16_shl_is_mul_ensures_0 : Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)) :
    Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_3 c2f03671b0a6a632
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `c2f03671b0a6a632`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "c2f03671b0a6a632"
}
@[vrml_obligation] theorem assert_3
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (sl - sr) + sr)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)) :
    vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_4 94be1997054df74e
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_u16_shr_is_div
- AssertId: `4`
- Statement hash: `94be1997054df74e`
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "94be1997054df74e"
}
@[vrml_obligation] theorem call_requires_4
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True) :
    (0 ≤ sr) ∧ (sr < 16) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_4

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_5 8d9cbd36f9863295
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `8d9cbd36f9863295`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "8d9cbd36f9863295"
}
@[vrml_obligation] theorem assert_5
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True)
    (call_lemma_u16_shr_is_div_ensures_0 : Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) (vstd.arithmetic.power2.pow2 sr))) :
    Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_7 caaecc8e0b176093
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `caaecc8e0b176093`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "caaecc8e0b176093"
}
@[vrml_obligation] theorem assert_7
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True)
    (call_lemma_mul_is_associative_ensures_0 : (v * (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)) = ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) * vstd.arithmetic.power2.pow2 sr)) :
    Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_9 a1e6026217285f3c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `a1e6026217285f3c`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "a1e6026217285f3c"
}
@[vrml_obligation] theorem assert_9
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 sr > 0) :
    vstd.arithmetic.power2.pow2 sr > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_9

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_10 f4764dec04695f75
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_div_multiples_vanish
- AssertId: `10`
- Statement hash: `f4764dec04695f75`
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "f4764dec04695f75"
}
@[vrml_obligation] theorem call_requires_10
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True) :
    0 < vstd.arithmetic.power2.pow2 sr := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_11 723c98ad6d34f83c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `723c98ad6d34f83c`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "11"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "723c98ad6d34f83c"
}
@[vrml_obligation] theorem assert_11
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True)
    (call_lemma_div_multiples_vanish_ensures_0 : (Vermilion.ediv (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) :
    (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_11

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_0 83d857dfaf50823e
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_u16_shl_is_mul
- AssertId: `12_0`
- Statement hash: `83d857dfaf50823e`
-/
def call_requires_12_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "12_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "83d857dfaf50823e"
}
@[vrml_obligation] theorem call_requires_12_0
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True) :
    (0 ≤ ((Vermilion.natClip (sl - sr)) % 65536)) ∧ (((Vermilion.natClip (sl - sr)) % 65536) < 16) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_1 923b0268e7ff2d33
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: call lemma_u16_shl_is_mul
- AssertId: `12_1`
- Statement hash: `923b0268e7ff2d33`
-/
def call_requires_12_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "12_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "call_requires"
  statementHash := "923b0268e7ff2d33"
}
@[vrml_obligation] theorem call_requires_12_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True) :
    (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (sl - sr)) % 65536)) ≤ 65535 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.call_requires_12_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_13 1ade2b94063385e0
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `1ade2b94063385e0`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "assert"
  statementHash := "1ade2b94063385e0"
}
@[vrml_obligation] theorem assert_13
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True)
    (call_lemma_u16_shl_is_mul_1_ensures_0 : Vermilion.Bits.shl 16 v ((Vermilion.natClip (sl - sr)) % 65536) = (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (sl - sr)) % 65536))) :
    (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) = Vermilion.Bits.shl 16 v ((Vermilion.natClip (sl - sr)) % 65536) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.ensures_14 9dab20dbd64a3d1d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.ensures_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:647:1-647:101`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14`
- Statement hash: `9dab20dbd64a3d1d`
-/
def ensures_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 647
  startColumn := 1
  endLine := 647
  endColumn := 101
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift"
  kind := "ensures"
  statementHash := "9dab20dbd64a3d1d"
}
@[vrml_obligation] theorem ensures_14
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 16 v)
    (requires_1 : Vermilion.inUnsignedRange 16 sl)
    (requires_2 : Vermilion.inUnsignedRange 16 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 16))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 65535)
    (assume_5 : True → (Vermilion.Bits.shl 16 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 16 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 65536) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True → ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) = Vermilion.Bits.shl 16 v ((Vermilion.natClip (sl - sr)) % 65536))) :
    Vermilion.Bits.shr 16 (Vermilion.Bits.shl 16 v sl) sr = Vermilion.Bits.shl 16 v (sl - sr) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift.ensures_14

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u16_left_right_shift

