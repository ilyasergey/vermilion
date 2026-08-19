import Vermilion.Obligations
import compute_q_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_1 248593c611a48748
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:299:5-299:32`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `1`
- Statement hash: `248593c611a48748`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 299
  startColumn := 5
  endLine := 299
  endColumn := 32
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "call_requires"
  statementHash := "248593c611a48748"
}
@[vrml_obligation] theorem call_requires_1
    (no_param : Int)
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
    (call_lemma2_to64_ensures_33 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616) :
    51 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_1

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_2 35ef407230765e83
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:300:5-300:32`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `2`
- Statement hash: `35ef407230765e83`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 300
  startColumn := 5
  endLine := 300
  endColumn := 32
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "call_requires"
  statementHash := "35ef407230765e83"
}
@[vrml_obligation] theorem call_requires_2
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51) :
    52 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_2

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_5 4f8c35e068ffb1cc
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:303:12-303:36`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `4f8c35e068ffb1cc`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 303
  startColumn := 12
  endLine := 303
  endColumn := 36
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "assert"
  statementHash := "4f8c35e068ffb1cc"
}
@[vrml_obligation] theorem assert_5
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 1 * vstd.arithmetic.power2.pow2 51)) :
    vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_6 eccf85e83d8684ff
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:308:9-308:45`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `6`
- Statement hash: `eccf85e83d8684ff`
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 308
  startColumn := 9
  endLine := 308
  endColumn := 45
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "call_requires"
  statementHash := "eccf85e83d8684ff"
}
@[vrml_obligation] theorem call_requires_6
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True) :
    5 < 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.call_requires_6

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_7 e0c15c1d4cb9fda2
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:307:12-307:25`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `e0c15c1d4cb9fda2`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 307
  startColumn := 12
  endLine := 307
  endColumn := 25
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "assert"
  statementHash := "e0c15c1d4cb9fda2"
}
@[vrml_obligation] theorem assert_7
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True)
    (call_lemma_pow2_strictly_increases_ensures_0 : vstd.arithmetic.power2.pow2 5 < vstd.arithmetic.power2.pow2 51) :
    19 < vstd.arithmetic.power2.pow2 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_9 75c2c6a6c5f6d205
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:311:12-311:36`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `75c2c6a6c5f6d205`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 311
  startColumn := 12
  endLine := 311
  endColumn := 36
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "assert"
  statementHash := "75c2c6a6c5f6d205"
}
@[vrml_obligation] theorem assert_9
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True)
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
    (call_lemma2_to64_rest_ensures_31 : vstd.arithmetic.power2.pow2 64 = 18446744073709551616) :
    Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_0 f78d5a14bce89d42
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:292:9-292:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_0`
- Statement hash: `f78d5a14bce89d42`
-/
def ensures_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 292
  startColumn := 9
  endLine := 292
  endColumn := 33
  assertId := "10_0"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "ensures"
  statementHash := "f78d5a14bce89d42"
}
@[vrml_obligation] theorem ensures_10_0
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True → (Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615)) :
    Vermilion.Bits.shl 64 1 51 = vstd.arithmetic.power2.pow2 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_0

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_1 f8b33bdccab302f4
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:293:9-293:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_1`
- Statement hash: `f8b33bdccab302f4`
-/
def ensures_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 293
  startColumn := 9
  endLine := 293
  endColumn := 33
  assertId := "10_1"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "ensures"
  statementHash := "f8b33bdccab302f4"
}
@[vrml_obligation] theorem ensures_10_1
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True → (Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615)) :
    Vermilion.Bits.shl 64 1 52 = vstd.arithmetic.power2.pow2 52 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_1

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_2 e29e003a34dc6013
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:294:9-294:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_2`
- Statement hash: `e29e003a34dc6013`
-/
def ensures_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 294
  startColumn := 9
  endLine := 294
  endColumn := 33
  assertId := "10_2"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "ensures"
  statementHash := "e29e003a34dc6013"
}
@[vrml_obligation] theorem ensures_10_2
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True → (Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615)) :
    vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_2

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_3 1a9f60058956db2c
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:295:9-295:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_3`
- Statement hash: `1a9f60058956db2c`
-/
def ensures_10_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 295
  startColumn := 9
  endLine := 295
  endColumn := 22
  assertId := "10_3"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "ensures"
  statementHash := "1a9f60058956db2c"
}
@[vrml_obligation] theorem ensures_10_3
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True → (Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615)) :
    19 < vstd.arithmetic.power2.pow2 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_3

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_4 81b5e94747e45abc
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:296:9-296:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_4`
- Statement hash: `81b5e94747e45abc`
-/
def ensures_10_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 296
  startColumn := 9
  endLine := 296
  endColumn := 33
  assertId := "10_4"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup"
  kind := "ensures"
  statementHash := "81b5e94747e45abc"
}
@[vrml_obligation] theorem ensures_10_4
    (no_param : Int)
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
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 51 = vstd.arithmetic.power2.pow2 51)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 52 = vstd.arithmetic.power2.pow2 52)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (assume_37 : True → (vstd.arithmetic.power2.pow2 52 = Vermilion.natClip (2 * vstd.arithmetic.power2.pow2 51)))
    (assume_38 : True → (19 < vstd.arithmetic.power2.pow2 51))
    (assume_39 : True → (Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615)) :
    Vermilion.natClip (3 * vstd.arithmetic.power2.pow2 51) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup.ensures_10_4

end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_carry_propagation_setup

