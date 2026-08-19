import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_1 1b4c060d62541613
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `1b4c060d62541613`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "1b4c060d62541613"
}
@[vrml_obligation] theorem assert_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_2 9f9dd862afc74c36
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `2`
- Statement hash: `9f9dd862afc74c36`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "9f9dd862afc74c36"
}
@[vrml_obligation] theorem call_requires_2
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True)
    (branch_0 : b > 0) :
    a < Vermilion.natClip (a + b) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_3 04d8589d6e1c4495
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `04d8589d6e1c4495`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "04d8589d6e1c4495"
}
@[vrml_obligation] theorem assert_3
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True)
    (then_0_call_lemma_pow2_strictly_increases_ensures_0 : (b > 0) → (vstd.arithmetic.power2.pow2 a < vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) :
    vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_0 c3f350b3ee173f9e
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `4_0`
- Statement hash: `c3f350b3ee173f9e`
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "4_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "c3f350b3ee173f9e"
}
@[vrml_obligation] theorem call_requires_4_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True)
    (assume_8 : True) :
    vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_1 18147cb0137f1058
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `4_1`
- Statement hash: `18147cb0137f1058`
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "4_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "18147cb0137f1058"
}
@[vrml_obligation] theorem call_requires_4_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True)
    (assume_8 : True) :
    v ≥ 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_4_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_5 3d8f79253e3e8c06
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `3d8f79253e3e8c06`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "3d8f79253e3e8c06"
}
@[vrml_obligation] theorem assert_5
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True)
    (assume_8 : True)
    (call_lemma_mul_inequality_ensures_0 : (vstd.arithmetic.power2.pow2 a * v) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) * v)) :
    (vstd.arithmetic.power2.pow2 a * v) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) * v) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_8 dfc49b810d930ea7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `dfc49b810d930ea7`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "dfc49b810d930ea7"
}
@[vrml_obligation] theorem assert_8
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True)
    (assume_8 : True → ((vstd.arithmetic.power2.pow2 a * v) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) * v)))
    (call_lemma_mul_is_commutative_ensures_0 : (v * vstd.arithmetic.power2.pow2 a) = (vstd.arithmetic.power2.pow2 a * v))
    (call_lemma_mul_is_commutative_1_ensures_0 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) * v)) :
    ((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_0 a9bd9bb30f097049
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `9_0`
- Statement hash: `a9bd9bb30f097049`
-/
def call_requires_9_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "9_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "a9bd9bb30f097049"
}
@[vrml_obligation] theorem call_requires_9_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True) :
    (0 ≤ ((Vermilion.natClip (a + b)) % 18446744073709551616)) ∧ (((Vermilion.natClip (a + b)) % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_1 eb378e3f59deb578
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `9_1`
- Statement hash: `eb378e3f59deb578`
-/
def call_requires_9_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "9_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "eb378e3f59deb578"
}
@[vrml_obligation] theorem call_requires_9_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True) :
    (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (a + b)) % 18446744073709551616)) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_9_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_10 51ef363010f1c544
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `51ef363010f1c544`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "51ef363010f1c544"
}
@[vrml_obligation] theorem assert_10
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True)
    (call_lemma_u64_shl_is_mul_ensures_0 : Vermilion.Bits.shl 64 v ((Vermilion.natClip (a + b)) % 18446744073709551616) = (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (a + b)) % 18446744073709551616))) :
    Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_0 cb2e63f1190002e1
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `11_0`
- Statement hash: `cb2e63f1190002e1`
-/
def call_requires_11_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "11_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "cb2e63f1190002e1"
}
@[vrml_obligation] theorem call_requires_11_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True) :
    (0 ≤ (a % 18446744073709551616)) ∧ ((a % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_1 95220f472ad94e4d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `11_1`
- Statement hash: `95220f472ad94e4d`
-/
def call_requires_11_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "11_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "95220f472ad94e4d"
}
@[vrml_obligation] theorem call_requires_11_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True) :
    (v * vstd.arithmetic.power2.pow2 (a % 18446744073709551616)) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_11_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_12 fb858c874a08356c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `fb858c874a08356c`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "12"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "fb858c874a08356c"
}
@[vrml_obligation] theorem assert_12
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True)
    (call_lemma_u64_shl_is_mul_1_ensures_0 : Vermilion.Bits.shl 64 v (a % 18446744073709551616) = (v * vstd.arithmetic.power2.pow2 (a % 18446744073709551616))) :
    Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_12

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_14 1022ea7520f08a1a
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `1022ea7520f08a1a`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "1022ea7520f08a1a"
}
@[vrml_obligation] theorem assert_14
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True → (Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a)))
    (assume_10 : True)
    (call_lemma_mul_is_associative_ensures_0 : (v * (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)) = ((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b)) :
    ((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) = (v * Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_14

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_0 daae08e4be0f3717
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `15_0`
- Statement hash: `daae08e4be0f3717`
-/
def call_requires_15_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "15_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "daae08e4be0f3717"
}
@[vrml_obligation] theorem call_requires_15_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True → (Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a)))
    (assume_10 : True → (((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) = (v * Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))))
    (assume_11 : True) :
    (0 ≤ (b % 18446744073709551616)) ∧ ((b % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_1 982ab22f9fe38da6
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: call lemma_u64_shl_is_mul
- AssertId: `15_1`
- Statement hash: `982ab22f9fe38da6`
-/
def call_requires_15_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "15_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "call_requires"
  statementHash := "982ab22f9fe38da6"
}
@[vrml_obligation] theorem call_requires_15_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True → (Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a)))
    (assume_10 : True → (((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) = (v * Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))))
    (assume_11 : True) :
    (((v * vstd.arithmetic.power2.pow2 a) % 18446744073709551616) * vstd.arithmetic.power2.pow2 (b % 18446744073709551616)) ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.call_requires_15_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_16 ee0dc20b52493319
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `ee0dc20b52493319`
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "assert"
  statementHash := "ee0dc20b52493319"
}
@[vrml_obligation] theorem assert_16
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True → (Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a)))
    (assume_10 : True → (((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) = (v * Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))))
    (assume_11 : True)
    (call_lemma_u64_shl_is_mul_2_ensures_0 : Vermilion.Bits.shl 64 ((v * vstd.arithmetic.power2.pow2 a) % 18446744073709551616) (b % 18446744073709551616) = (((v * vstd.arithmetic.power2.pow2 a) % 18446744073709551616) * vstd.arithmetic.power2.pow2 (b % 18446744073709551616))) :
    Vermilion.Bits.shl 64 ((v * vstd.arithmetic.power2.pow2 a) % 18446744073709551616) b = ((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.assert_16

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.ensures_17 77b030a41c6ecd39
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.ensures_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:138:1-138:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `17`
- Statement hash: `77b030a41c6ecd39`
-/
def ensures_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 138
  startColumn := 1
  endLine := 138
  endColumn := 67
  assertId := "17"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum"
  kind := "ensures"
  statementHash := "77b030a41c6ecd39"
}
@[vrml_obligation] theorem ensures_17
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (requires_4 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)
    (assume_5 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_6 : True → (vstd.arithmetic.power2.pow2 a ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))
    (assume_7 : True → (((v * vstd.arithmetic.power2.pow2 a) ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) ∧ ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))) ≤ 18446744073709551615)))
    (assume_8 : True → (Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))
    (assume_9 : True → (Vermilion.Bits.shl 64 v a = (v * vstd.arithmetic.power2.pow2 a)))
    (assume_10 : True → (((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b) = (v * Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))))
    (assume_11 : True → (Vermilion.Bits.shl 64 ((v * vstd.arithmetic.power2.pow2 a) % 18446744073709551616) b = ((v * vstd.arithmetic.power2.pow2 a) * vstd.arithmetic.power2.pow2 b))) :
    Vermilion.Bits.shl 64 v (Vermilion.natClip (a + b)) = Vermilion.Bits.shl 64 (Vermilion.Bits.shl 64 v a) b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum.ensures_17

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shl_by_sum

