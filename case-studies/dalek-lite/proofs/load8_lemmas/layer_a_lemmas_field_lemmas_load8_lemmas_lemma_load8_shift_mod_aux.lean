import Vermilion.Obligations
import load8_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_0 e9c084ceca23492e
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:420:21-420:60`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `0`
- Statement hash: `e9c084ceca23492e`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 420
  startColumn := 21
  endLine := 420
  endColumn := 60
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "e9c084ceca23492e"
}
@[vrml_obligation] theorem call_requires_0
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True)
    (branch_1 : s < Vermilion.natClip (j * 8)) :
    s < Vermilion.natClip (j * 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_1 9bcc8c9197991cbb
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:418:20-418:42`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `9bcc8c9197991cbb`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 418
  startColumn := 20
  endLine := 418
  endColumn := 42
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "9bcc8c9197991cbb"
}
@[vrml_obligation] theorem assert_1
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True)
    (then_1_call_lemma_pow2_strictly_increases_ensures_0 : (s < Vermilion.natClip (j * 8)) → (vstd.arithmetic.power2.pow2 s < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) :
    vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_0 22deea05eb47686a
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:424:17-424:83`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `2_0`
- Statement hash: `22deea05eb47686a`
-/
def call_requires_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 424
  startColumn := 17
  endLine := 424
  endColumn := 83
  assertId := "2_0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "22deea05eb47686a"
}
@[vrml_obligation] theorem call_requires_2_0
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True) :
    vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_1 c1cd4e2fc5e46b90
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:424:17-424:83`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `2_1`
- Statement hash: `c1cd4e2fc5e46b90`
-/
def call_requires_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 424
  startColumn := 17
  endLine := 424
  endColumn := 83
  assertId := "2_1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "c1cd4e2fc5e46b90"
}
@[vrml_obligation] theorem call_requires_2_1
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True) :
    x ≥ 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_2_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_3 9fc8adb9ed7584f2
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:423:20-423:43`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `9fc8adb9ed7584f2`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 423
  startColumn := 20
  endLine := 423
  endColumn := 43
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "9fc8adb9ed7584f2"
}
@[vrml_obligation] theorem assert_3
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True)
    (call_lemma_mul_inequality_ensures_0 : (vstd.arithmetic.power2.pow2 s * x) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) * x)) :
    (x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_4 b0f4c4d4cfff7799
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:426:20-426:67`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `b0f4c4d4cfff7799`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 426
  startColumn := 20
  endLine := 426
  endColumn := 67
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "b0f4c4d4cfff7799"
}
@[vrml_obligation] theorem assert_4
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1)) :
    ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_4

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_0 b17bf90b276842bf
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:433:17-433:84`
- Rust/SST construct: call lemma_u64_div_pow2_preserves_decomposition
- AssertId: `5_0`
- Statement hash: `b17bf90b276842bf`
-/
def call_requires_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 433
  startColumn := 17
  endLine := 433
  endColumn := 84
  assertId := "5_0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "b17bf90b276842bf"
}
@[vrml_obligation] theorem call_requires_5_0
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True) :
    s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_1 4f3b1a7d8242a360
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:433:17-433:84`
- Rust/SST construct: call lemma_u64_div_pow2_preserves_decomposition
- AssertId: `5_1`
- Statement hash: `4f3b1a7d8242a360`
-/
def call_requires_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 433
  startColumn := 17
  endLine := 433
  endColumn := 84
  assertId := "5_1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "4f3b1a7d8242a360"
}
@[vrml_obligation] theorem call_requires_5_1
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True) :
    (s_j + ((x % 18446744073709551616) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_2 b9cd47f556e680b6
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:433:17-433:84`
- Rust/SST construct: call lemma_u64_div_pow2_preserves_decomposition
- AssertId: `5_2`
- Statement hash: `b9cd47f556e680b6`
-/
def call_requires_5_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 433
  startColumn := 17
  endLine := 433
  endColumn := 84
  assertId := "5_2"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "b9cd47f556e680b6"
}
@[vrml_obligation] theorem call_requires_5_2
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True) :
    (s ≤ Vermilion.natClip (j * 8)) ∧ (Vermilion.natClip (j * 8) < 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_5_2

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_6 c53f10cb2c1f49d7
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:430:20-432:26`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `c53f10cb2c1f49d7`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 430
  startColumn := 20
  endLine := 432
  endColumn := 26
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "c53f10cb2c1f49d7"
}
@[vrml_obligation] theorem assert_6
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True)
    (call_lemma_u64_div_pow2_preserves_decomposition_ensures_0 : (Vermilion.ediv s_j (vstd.arithmetic.power2.pow2 s)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) - s)))
    (call_lemma_u64_div_pow2_preserves_decomposition_ensures_1 : (Vermilion.ediv (Vermilion.natClip ((x % 18446744073709551616) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) (vstd.arithmetic.power2.pow2 s)) = ((x % 18446744073709551616) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) - s))))
    (call_lemma_u64_div_pow2_preserves_decomposition_ensures_2 : ((Vermilion.ediv s_j (vstd.arithmetic.power2.pow2 s)) + ((x % 18446744073709551616) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (j * 8) - s)))) ≤ 18446744073709551615) :
    (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) ∧ ((Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))))) ∧ (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) ≤ 18446744073709551615) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_6

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_7 741d9e519ee17857
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:439:17-439:88`
- Rust/SST construct: call lemma_binary_sum_mod_decomposition
- AssertId: `7`
- Statement hash: `741d9e519ee17857`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 439
  startColumn := 17
  endLine := 439
  endColumn := 88
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "741d9e519ee17857"
}
@[vrml_obligation] theorem call_requires_7
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True → ((((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) ∧ ((Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))))) ∧ (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) ≤ 18446744073709551615)))
    (assume_23 : True) :
    (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_7

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_8 18d346fd7dcff1b7
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:436:20-438:79`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `18d346fd7dcff1b7`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 436
  startColumn := 20
  endLine := 438
  endColumn := 79
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "18d346fd7dcff1b7"
}
@[vrml_obligation] theorem assert_8
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : s ≤ Vermilion.natClip (j * 8))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))))
    (assume_20 : True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1))
    (assert_4 : ((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615))
    (assume_22 : True → ((((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) ∧ ((Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))))) ∧ (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) ≤ 18446744073709551615)))
    (assume_23 : True)
    (call_lemma_binary_sum_mod_decomposition_ensures_0 : (Vermilion.emod (Vermilion.natClip ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + Vermilion.natClip (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))))) (vstd.arithmetic.power2.pow2 t)) = Vermilion.natClip ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) (vstd.arithmetic.power2.pow2 t)) + (Vermilion.emod (Vermilion.natClip (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) (vstd.arithmetic.power2.pow2 t)))) :
    ((Vermilion.emod (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)))) ∧ (((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616))) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_9 8c46042aeb64666b
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:444:17-444:56`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `9`
- Statement hash: `8c46042aeb64666b`
-/
def call_requires_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 444
  startColumn := 17
  endLine := 444
  endColumn := 56
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "8c46042aeb64666b"
}
@[vrml_obligation] theorem call_requires_9
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True) :
    Vermilion.natClip (j * 8) < s := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_9

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_10 9eedfcf82efadd54
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:443:20-443:41`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `9eedfcf82efadd54`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 443
  startColumn := 20
  endLine := 443
  endColumn := 41
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "9eedfcf82efadd54"
}
@[vrml_obligation] theorem assert_10
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True)
    (call_lemma_pow2_strictly_increases_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_11 0b8e60484a7cc779
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:447:17-447:57`
- Rust/SST construct: call lemma_basic_div
- AssertId: `11`
- Statement hash: `0b8e60484a7cc779`
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 447
  startColumn := 17
  endLine := 447
  endColumn := 57
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "0b8e60484a7cc779"
}
@[vrml_obligation] theorem call_requires_11
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s))
    (assume_20 : True) :
    (0 ≤ s_j) ∧ (s_j < ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_11

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_12 91b972222a4b7171
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:446:20-446:35`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `91b972222a4b7171`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 446
  startColumn := 20
  endLine := 446
  endColumn := 35
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "91b972222a4b7171"
}
@[vrml_obligation] theorem assert_12
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s))
    (assume_20 : True)
    (call_lemma_basic_div_ensures_0 : (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0) :
    (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_12

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_0 590f1dbc95e9cdd6
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:451:17-451:44`
- Rust/SST construct: call lemma_small_mod
- AssertId: `13_0`
- Statement hash: `590f1dbc95e9cdd6`
-/
def call_requires_13_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 451
  startColumn := 17
  endLine := 451
  endColumn := 44
  assertId := "13_0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "590f1dbc95e9cdd6"
}
@[vrml_obligation] theorem call_requires_13_0
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s))
    (assume_20 : True → ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0))
    (assume_21 : True) :
    0 < vstd.arithmetic.power2.pow2 t := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_1 590f1dbc95e9cdd6
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:451:17-451:44`
- Rust/SST construct: call lemma_small_mod
- AssertId: `13_1`
- Statement hash: `590f1dbc95e9cdd6`
-/
def call_requires_13_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 451
  startColumn := 17
  endLine := 451
  endColumn := 44
  assertId := "13_1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "call_requires"
  statementHash := "590f1dbc95e9cdd6"
}
@[vrml_obligation] theorem call_requires_13_1
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s))
    (assume_20 : True → ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0))
    (assume_21 : True) :
    0 < vstd.arithmetic.power2.pow2 t := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.call_requires_13_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_14 5aea2b8921bcd69e
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:450:20-450:36`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `5aea2b8921bcd69e`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 450
  startColumn := 20
  endLine := 450
  endColumn := 36
  assertId := "14"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "5aea2b8921bcd69e"
}
@[vrml_obligation] theorem assert_14
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (branch_0 : (¬ (s ≤ Vermilion.natClip (j * 8))))
    (assume_19 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s))
    (assume_20 : True → ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0))
    (assume_21 : True)
    (call_lemma_small_mod_ensures_0 : (Vermilion.emod 0 (vstd.arithmetic.power2.pow2 t)) = 0) :
    (Vermilion.emod 0 ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_14

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_15 767ec438a0330d37
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:416:12-416:86`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `767ec438a0330d37`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 416
  startColumn := 12
  endLine := 416
  endColumn := 86
  assertId := "15"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "assert"
  statementHash := "767ec438a0330d37"
}
@[vrml_obligation] theorem assert_15
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True)
    (then_0_assume_19 : (s ≤ Vermilion.natClip (j * 8)) → (True → (vstd.arithmetic.power2.pow2 s ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))))
    (then_0_assume_20 : (s ≤ Vermilion.natClip (j * 8)) → (True → ((x * vstd.arithmetic.power2.pow2 s) ≤ a_jplus1)))
    (then_0_assert_4 : (s ≤ Vermilion.natClip (j * 8)) → (((s_j + (x * vstd.arithmetic.power2.pow2 s)) ≤ (s_j + a_jplus1)) ∧ ((s_j + a_jplus1) ≤ 18446744073709551615)))
    (then_0_assume_22 : (s ≤ Vermilion.natClip (j * 8)) → (True → ((((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) < vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) ∧ ((Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))))) ∧ (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) ≤ 18446744073709551615))))
    (then_0_assume_23 : (s ≤ Vermilion.natClip (j * 8)) → (True → (((Vermilion.emod (((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s)))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)))) ∧ (((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (8 * j) - s))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616))) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)))))))
    (else_0_assume_19 : (¬ (s ≤ Vermilion.natClip (j * 8))) → (True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)) < vstd.arithmetic.power2.pow2 s)))
    (else_0_assume_20 : (¬ (s ≤ Vermilion.natClip (j * 8))) → (True → ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = 0)))
    (else_0_assume_21 : (¬ (s ≤ Vermilion.natClip (j * 8))) → (True → ((Vermilion.emod 0 ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = 0))) :
    (Vermilion.emod (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.assert_15

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.ensures_16 fa7647ca28409d29
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.ensures_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:409:9-411:69`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `16`
- Statement hash: `fa7647ca28409d29`
-/
def ensures_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 409
  startColumn := 9
  endLine := 411
  endColumn := 69
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux"
  kind := "ensures"
  statementHash := "fa7647ca28409d29"
}
@[vrml_obligation] theorem ensures_16
    (s_jplus1 : Int)
    (s_j : Int)
    (a_jplus1 : Int)
    (x : Int)
    (j : Int)
    (s : Int)
    (t : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 s_jplus1)
    (requires_1 : Vermilion.inUnsignedRange 64 s_j)
    (requires_2 : Vermilion.inUnsignedRange 64 a_jplus1)
    (requires_3 : Vermilion.inUnsignedRange 8 x)
    (requires_4 : 0 ≤ j)
    (requires_5 : 0 ≤ s)
    (requires_6 : 0 ≤ t)
    (requires_7 : s_j < vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))
    (requires_8 : (s_j + (x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8)))) ≤ 18446744073709551615)
    (requires_9 : a_jplus1 = ((x * vstd.arithmetic.power2.pow2 (Vermilion.natClip (j * 8))) % 18446744073709551616))
    (requires_10 : s_jplus1 = (s_j + a_jplus1))
    (requires_11 : (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) = ((Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) + (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616))))
    (requires_12 : (0 ≤ j) ∧ (j ≤ 7))
    (requires_13 : s < 64)
    (requires_14 : t < 64)
    (requires_15 : (0 < vstd.arithmetic.power2.pow2 s) ∧ (vstd.arithmetic.power2.pow2 s ≤ 18446744073709551615))
    (requires_16 : (0 < vstd.arithmetic.power2.pow2 t) ∧ (vstd.arithmetic.power2.pow2 t ≤ 18446744073709551615))
    (assume_17 : True → ((Vermilion.emod (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616))))) :
    (Vermilion.emod (Vermilion.ediv s_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) = ((Vermilion.emod (Vermilion.ediv s_j ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv a_jplus1 ((vstd.arithmetic.power2.pow2 s) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 t) % 18446744073709551616))) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux.ensures_16

end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_shift_mod_aux

