import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_0 cc9b461a7c000687
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `0_0`
- Statement hash: `cc9b461a7c000687`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "0_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "cc9b461a7c000687"
}
@[vrml_obligation] theorem call_requires_0_0
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True) :
    (0 ≤ sl) ∧ (sl < 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_1 b5a9cb6e8a664f67
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `0_1`
- Statement hash: `b5a9cb6e8a664f67`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "0_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "b5a9cb6e8a664f67"
}
@[vrml_obligation] theorem call_requires_0_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True) :
    (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_0_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_1 ad8556abcdc49006
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `ad8556abcdc49006`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "ad8556abcdc49006"
}
@[vrml_obligation] theorem assert_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True)
    (call_lemma_u64_shl_is_mul_ensures_0 : Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)) :
    Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_3 f581484612985712
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `f581484612985712`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "f581484612985712"
}
@[vrml_obligation] theorem assert_3
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (sl - sr) + sr)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)) :
    vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_4 6c21911863ec4cf5
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_u64_shr_is_div
- AssertId: `4`
- Statement hash: `6c21911863ec4cf5`
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "6c21911863ec4cf5"
}
@[vrml_obligation] theorem call_requires_4
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True) :
    (0 ≤ sr) ∧ (sr < 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_4

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_5 dd775daad70c0dc9
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `dd775daad70c0dc9`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "dd775daad70c0dc9"
}
@[vrml_obligation] theorem assert_5
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True)
    (call_lemma_u64_shr_is_div_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) (vstd.arithmetic.power2.pow2 sr))) :
    Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_7 ff8fe5e64dd9c0cf
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `ff8fe5e64dd9c0cf`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "ff8fe5e64dd9c0cf"
}
@[vrml_obligation] theorem assert_7
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True)
    (call_lemma_mul_is_associative_ensures_0 : (v * (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)) = ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) * vstd.arithmetic.power2.pow2 sr)) :
    Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_9 daa03078e7bbd438
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `daa03078e7bbd438`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "daa03078e7bbd438"
}
@[vrml_obligation] theorem assert_9
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 sr > 0) :
    vstd.arithmetic.power2.pow2 sr > 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_9

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_10 50fcdafbe0ff26a9
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_div_multiples_vanish
- AssertId: `10`
- Statement hash: `50fcdafbe0ff26a9`
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "50fcdafbe0ff26a9"
}
@[vrml_obligation] theorem call_requires_10
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True) :
    0 < vstd.arithmetic.power2.pow2 sr := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_11 ffd3560e48259208
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `ffd3560e48259208`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "11"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "ffd3560e48259208"
}
@[vrml_obligation] theorem assert_11
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True)
    (call_lemma_div_multiples_vanish_ensures_0 : (Vermilion.ediv (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))) :
    (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_11

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_0 7b08ec292776d203
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `12_0`
- Statement hash: `7b08ec292776d203`
-/
def call_requires_12_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "12_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "7b08ec292776d203"
}
@[vrml_obligation] theorem call_requires_12_0
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True) :
    (0 ≤ ((Vermilion.natClip (sl - sr)) % 18446744073709551616)) ∧ (((Vermilion.natClip (sl - sr)) % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_1 79c8595efc018175
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `12_1`
- Statement hash: `79c8595efc018175`
-/
def call_requires_12_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "12_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "call_requires"
  statementHash := "79c8595efc018175"
}
@[vrml_obligation] theorem call_requires_12_1
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True) :
    (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (sl - sr)) % 18446744073709551616)) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.call_requires_12_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_13 f8b6836cc0b34bb8
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `f8b6836cc0b34bb8`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "assert"
  statementHash := "f8b6836cc0b34bb8"
}
@[vrml_obligation] theorem assert_13
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True)
    (call_lemma_u64_shl_is_mul_1_ensures_0 : Vermilion.Bits.shl 64 v ((Vermilion.natClip (sl - sr)) % 18446744073709551616) = (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (sl - sr)) % 18446744073709551616))) :
    (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) = Vermilion.Bits.shl 64 v ((Vermilion.natClip (sl - sr)) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.ensures_14 65d5b674382bd162
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.ensures_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:651:1-651:101`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14`
- Statement hash: `65d5b674382bd162`
-/
def ensures_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 651
  startColumn := 1
  endLine := 651
  endColumn := 101
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift"
  kind := "ensures"
  statementHash := "65d5b674382bd162"
}
@[vrml_obligation] theorem ensures_14
    (v : Int)
    (sl : Int)
    (sr : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : Vermilion.inUnsignedRange 64 sl)
    (requires_2 : Vermilion.inUnsignedRange 64 sr)
    (requires_3 : (sr ≤ sl) ∧ (sl < 64))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 sl) ≤ 18446744073709551615)
    (assume_5 : True → (Vermilion.Bits.shl 64 v sl = (v * vstd.arithmetic.power2.pow2 sl)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 sl = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)) * vstd.arithmetic.power2.pow2 sr)))
    (assume_7 : True → (Vermilion.Bits.shr 64 ((Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) % 18446744073709551616) sr = (Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr))))
    (assume_8 : True → (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl) = (vstd.arithmetic.power2.pow2 sr * (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))))))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 sr > 0))
    (assume_10 : True → ((Vermilion.ediv (Vermilion.natClip (v * vstd.arithmetic.power2.pow2 sl)) (vstd.arithmetic.power2.pow2 sr)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr)))))
    (assume_11 : True → ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (sl - sr))) = Vermilion.Bits.shl 64 v ((Vermilion.natClip (sl - sr)) % 18446744073709551616))) :
    Vermilion.Bits.shr 64 (Vermilion.Bits.shl 64 v sl) sr = Vermilion.Bits.shl 64 v (sl - sr) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift.ensures_14

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_left_right_shift

