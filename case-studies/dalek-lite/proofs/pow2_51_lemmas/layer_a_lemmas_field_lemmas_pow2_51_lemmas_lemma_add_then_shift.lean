import Vermilion.Obligations
import pow2_51_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_1 faa17e3949e34039
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:35:16-35:57`
- Rust/SST construct: assertion failed
- AssertId: `1`
- Statement hash: `faa17e3949e34039`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 35
  startColumn := 16
  endLine := 35
  endColumn := 57
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "faa17e3949e34039"
}
@[vrml_obligation] theorem assert_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_2 e945e0e6fdb31c61
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:34:12-34:32`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `e945e0e6fdb31c61`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 34
  startColumn := 12
  endLine := 34
  endColumn := 32
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "e945e0e6fdb31c61"
}
@[vrml_obligation] theorem assert_2
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True)
    (assert_1 : True)
    (assume_38 : (Vermilion.Bits.shl 64 1 52 + Vermilion.Bits.shl 64 1 52) = Vermilion.Bits.shl 64 1 53) :
    (a + b) < Vermilion.Bits.shl 64 1 53 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_3 82a2f095cd9551bc
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:37:5-37:11`
- Rust/SST construct: requires not satisfied
- AssertId: `3`
- Statement hash: `82a2f095cd9551bc`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 37
  startColumn := 5
  endLine := 37
  endColumn := 11
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "82a2f095cd9551bc"
}
@[vrml_obligation] theorem assert_3
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_bv_5_0 edc1745f9dacabed
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_bv_5_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:37:12-37:42`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_5_0`
- Statement hash: `edc1745f9dacabed`
-/
def assert_bv_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 37
  startColumn := 12
  endLine := 37
  endColumn := 42
  assertId := "bv_5_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "edc1745f9dacabed"
}
@[vrml_obligation] theorem assert_bv_5_0
    (a : Int)
    (b : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 a)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 b)
    (loop_0_iteration_2 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_bv_5_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_0 ea56489001c1821d
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:39:5-39:72`
- Rust/SST construct: call lemma_multiply_divide_lt
- AssertId: `4_0`
- Statement hash: `ea56489001c1821d`
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 39
  startColumn := 5
  endLine := 39
  endColumn := 72
  assertId := "4_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "ea56489001c1821d"
}
@[vrml_obligation] theorem call_requires_4_0
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4)) :
    0 < Vermilion.Bits.shl 64 1 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_1 c049dd127ed4d1d3
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:39:5-39:72`
- Rust/SST construct: call lemma_multiply_divide_lt
- AssertId: `4_1`
- Statement hash: `c049dd127ed4d1d3`
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 39
  startColumn := 5
  endLine := 39
  endColumn := 72
  assertId := "4_1"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "c049dd127ed4d1d3"
}
@[vrml_obligation] theorem call_requires_4_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4)) :
    (a + b) < (Vermilion.Bits.shl 64 1 51 * 4) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_4_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_5 dc4f3d5f72d2fa22
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:40:5-40:32`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `5`
- Statement hash: `dc4f3d5f72d2fa22`
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 40
  startColumn := 5
  endLine := 40
  endColumn := 32
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "dc4f3d5f72d2fa22"
}
@[vrml_obligation] theorem call_requires_5
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4) :
    51 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_5

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_6 c157d8db4ce2f2d4
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:41:5-41:32`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `6`
- Statement hash: `c157d8db4ce2f2d4`
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 41
  startColumn := 5
  endLine := 41
  endColumn := 32
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "c157d8db4ce2f2d4"
}
@[vrml_obligation] theorem call_requires_6
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51) :
    53 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_6

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_7 d3e60227d6e01690
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:43:9-43:49`
- Rust/SST construct: call lemma_u64_shr_is_div
- AssertId: `7`
- Statement hash: `d3e60227d6e01690`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 43
  startColumn := 9
  endLine := 43
  endColumn := 49
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "d3e60227d6e01690"
}
@[vrml_obligation] theorem call_requires_7
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True) :
    (0 ≤ 51) ∧ (51 < 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_7

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_8 b7597609bd1264a2
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:42:12-42:70`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `b7597609bd1264a2`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 42
  startColumn := 12
  endLine := 42
  endColumn := 70
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "b7597609bd1264a2"
}
@[vrml_obligation] theorem assert_8
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True)
    (call_lemma_u64_shr_is_div_ensures_0 : Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) (vstd.arithmetic.power2.pow2 51))) :
    Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_9 ad362f0cb53411e7
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:46:9-46:37`
- Rust/SST construct: call lemma_pow2_subtracts
- AssertId: `9`
- Statement hash: `ad362f0cb53411e7`
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 46
  startColumn := 9
  endLine := 46
  endColumn := 37
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "call_requires"
  statementHash := "ad362f0cb53411e7"
}
@[vrml_obligation] theorem call_requires_9
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True → (Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))
    (assume_43 : True) :
    51 ≤ 53 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.call_requires_9

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_10 8676943ef215f556
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:45:12-45:36`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `8676943ef215f556`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 45
  startColumn := 12
  endLine := 45
  endColumn := 36
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "assert"
  statementHash := "8676943ef215f556"
}
@[vrml_obligation] theorem assert_10
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True → (Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))
    (assume_43 : True)
    (call_lemma_pow2_subtracts_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (53 - 51)) = (Vermilion.ediv (vstd.arithmetic.power2.pow2 53) (vstd.arithmetic.power2.pow2 51))) ∧ ((Vermilion.ediv (vstd.arithmetic.power2.pow2 53) (vstd.arithmetic.power2.pow2 51)) > 0)) :
    (Vermilion.ediv (vstd.arithmetic.power2.pow2 53) (vstd.arithmetic.power2.pow2 51)) = 4 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_0 f13b9306016cf088
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:30:9-30:31`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_0`
- Statement hash: `f13b9306016cf088`
-/
def ensures_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 30
  startColumn := 9
  endLine := 30
  endColumn := 31
  assertId := "11_0"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "ensures"
  statementHash := "f13b9306016cf088"
}
@[vrml_obligation] theorem ensures_11_0
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True → (Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))
    (assume_43 : True → ((Vermilion.ediv (vstd.arithmetic.power2.pow2 53) (vstd.arithmetic.power2.pow2 51)) = 4)) :
    (a + b) < Vermilion.Bits.shl 64 1 53 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_1 9ff5372ca9a2e9b9
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs:31:9-31:35`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `11_1`
- Statement hash: `9ff5372ca9a2e9b9`
-/
def ensures_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs"
  startLine := 31
  startColumn := 9
  endLine := 31
  endColumn := 35
  assertId := "11_1"
  functionName := "layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift"
  kind := "ensures"
  statementHash := "9ff5372ca9a2e9b9"
}
@[vrml_obligation] theorem ensures_11_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (requires_2 : a < Vermilion.Bits.shl 64 1 52)
    (requires_3 : b < Vermilion.Bits.shl 64 1 52)
    (call_lemma2_to64_rest_ensures_0 : vstd.arithmetic.power2.pow2 33 = 8589934592)
    (call_lemma2_to64_rest_ensures_1 : vstd.arithmetic.power2.pow2 34 = 17179869184)
    (call_lemma2_to64_rest_ensures_2 : vstd.arithmetic.power2.pow2 35 = 34359738368)
    (call_lemma2_to64_rest_ensures_3 : vstd.arithmetic.power2.pow2 36 = 68719476736)
    (call_lemma2_to64_rest_ensures_4 : vstd.arithmetic.power2.pow2 37 = 137438953472)
    (call_lemma2_to64_rest_ensures_5 : vstd.arithmetic.power2.pow2 38 = 274877906944)
    (call_lemma2_to64_rest_ensures_6 : vstd.arithmetic.power2.pow2 39 = 549755813888)
    (call_lemma2_to64_rest_ensures_7 : vstd.arithmetic.power2.pow2 40 = 1099511627776)
    (call_lemma2_to64_rest_ensures_8 : vstd.arithmetic.power2.pow2 41 = 2199023255552)
    (call_lemma2_to64_rest_ensures_9 : vstd.arithmetic.power2.pow2 42 = 4398046511104)
    (call_lemma2_to64_rest_ensures_10 : vstd.arithmetic.power2.pow2 43 = 8796093022208)
    (call_lemma2_to64_rest_ensures_11 : vstd.arithmetic.power2.pow2 44 = 17592186044416)
    (call_lemma2_to64_rest_ensures_12 : vstd.arithmetic.power2.pow2 45 = 35184372088832)
    (call_lemma2_to64_rest_ensures_13 : vstd.arithmetic.power2.pow2 46 = 70368744177664)
    (call_lemma2_to64_rest_ensures_14 : vstd.arithmetic.power2.pow2 47 = 140737488355328)
    (call_lemma2_to64_rest_ensures_15 : vstd.arithmetic.power2.pow2 48 = 281474976710656)
    (call_lemma2_to64_rest_ensures_16 : vstd.arithmetic.power2.pow2 49 = 562949953421312)
    (call_lemma2_to64_rest_ensures_17 : vstd.arithmetic.power2.pow2 50 = 1125899906842624)
    (call_lemma2_to64_rest_ensures_18 : vstd.arithmetic.power2.pow2 51 = 2251799813685248)
    (call_lemma2_to64_rest_ensures_19 : vstd.arithmetic.power2.pow2 52 = 4503599627370496)
    (call_lemma2_to64_rest_ensures_20 : vstd.arithmetic.power2.pow2 53 = 9007199254740992)
    (call_lemma2_to64_rest_ensures_21 : vstd.arithmetic.power2.pow2 54 = 18014398509481984)
    (call_lemma2_to64_rest_ensures_22 : vstd.arithmetic.power2.pow2 55 = 36028797018963968)
    (call_lemma2_to64_rest_ensures_23 : vstd.arithmetic.power2.pow2 56 = 72057594037927936)
    (call_lemma2_to64_rest_ensures_24 : vstd.arithmetic.power2.pow2 57 = 144115188075855872)
    (call_lemma2_to64_rest_ensures_25 : vstd.arithmetic.power2.pow2 58 = 288230376151711744)
    (call_lemma2_to64_rest_ensures_26 : vstd.arithmetic.power2.pow2 59 = 576460752303423488)
    (call_lemma2_to64_rest_ensures_27 : vstd.arithmetic.power2.pow2 60 = 1152921504606846976)
    (call_lemma2_to64_rest_ensures_28 : vstd.arithmetic.power2.pow2 61 = 2305843009213693952)
    (call_lemma2_to64_rest_ensures_29 : vstd.arithmetic.power2.pow2 62 = 4611686018427387904)
    (call_lemma2_to64_rest_ensures_30 : vstd.arithmetic.power2.pow2 63 = 9223372036854775808)
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616)
    (assume_36 : True → ((a + b) < Vermilion.Bits.shl 64 1 53))
    (assert_3 : True)
    (assume_38 : Vermilion.Bits.shl 64 1 53 = (Vermilion.Bits.shl 64 1 51 * 4))
    (call_lemma_multiply_divide_lt_ensures_0 : (Vermilion.ediv (a + b) (Vermilion.Bits.shl 64 1 51)) < 4)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 53 = vstd.arithmetic.power2.pow2 53)
    (assume_42 : True → (Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 = (Vermilion.ediv ((a + b) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))
    (assume_43 : True → ((Vermilion.ediv (vstd.arithmetic.power2.pow2 53) (vstd.arithmetic.power2.pow2 51)) = 4)) :
    Vermilion.Bits.shr 64 ((a + b) % 18446744073709551616) 51 < 4 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift.ensures_11_1

end layer_a.lemmas.field_lemmas.pow2_51_lemmas.lemma_add_then_shift

