import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_0 42a9465083b3f94b
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_u64_pow2_le_max
- AssertId: `0`
- Statement hash: `42a9465083b3f94b`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "42a9465083b3f94b"
}
@[vrml_obligation] theorem call_requires_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True) :
    a < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_1 cdb6596e84e9de86
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `cdb6596e84e9de86`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "cdb6596e84e9de86"
}
@[vrml_obligation] theorem assert_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True)
    (call_lemma_u64_pow2_le_max_ensures_0 : vstd.arithmetic.power2.pow2 a ≤ 18446744073709551615) :
    vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_2 8600237ae3152f2c
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_u64_pow2_le_max
- AssertId: `2`
- Statement hash: `8600237ae3152f2c`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "8600237ae3152f2c"
}
@[vrml_obligation] theorem call_requires_2
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True) :
    b < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_3 446df75ba6e6bf59
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `446df75ba6e6bf59`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "446df75ba6e6bf59"
}
@[vrml_obligation] theorem assert_3
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True)
    (call_lemma_u64_pow2_le_max_1_ensures_0 : vstd.arithmetic.power2.pow2 b ≤ 18446744073709551615) :
    vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_7 5e3f941fb97beea5
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `5e3f941fb97beea5`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "5e3f941fb97beea5"
}
@[vrml_obligation] theorem assert_7
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_7

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_8 b912671b2b8fdfb7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_u64_shr_is_div
- AssertId: `8`
- Statement hash: `b912671b2b8fdfb7`
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "b912671b2b8fdfb7"
}
@[vrml_obligation] theorem call_requires_8
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True) :
    (0 ≤ ((Vermilion.natClip (a + b)) % 18446744073709551616)) ∧ (((Vermilion.natClip (a + b)) % 18446744073709551616) < 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_8

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_9 7fc50df57616ba93
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `7fc50df57616ba93`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "9"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "7fc50df57616ba93"
}
@[vrml_obligation] theorem assert_9
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True)
    (call_lemma_u64_shr_is_div_ensures_0 : Vermilion.Bits.shr 64 v ((Vermilion.natClip (a + b)) % 18446744073709551616) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 ((Vermilion.natClip (a + b)) % 18446744073709551616)))) :
    Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_9

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_10 ff8953bfeaff4449
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_u64_shr_is_div
- AssertId: `10`
- Statement hash: `ff8953bfeaff4449`
-/
def call_requires_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "ff8953bfeaff4449"
}
@[vrml_obligation] theorem call_requires_10
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True) :
    (0 ≤ (a % 18446744073709551616)) ∧ ((a % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_11 c9555a76bf3ba9cd
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `c9555a76bf3ba9cd`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "11"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "c9555a76bf3ba9cd"
}
@[vrml_obligation] theorem assert_11
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True)
    (call_lemma_u64_shr_is_div_1_ensures_0 : Vermilion.Bits.shr 64 v (a % 18446744073709551616) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (a % 18446744073709551616)))) :
    Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_11

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_12 e67001aa375328cc
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_u64_shr_is_div
- AssertId: `12`
- Statement hash: `e67001aa375328cc`
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "12"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "e67001aa375328cc"
}
@[vrml_obligation] theorem call_requires_12
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True) :
    (0 ≤ (b % 18446744073709551616)) ∧ ((b % 18446744073709551616) < 64) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_12

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_13 c6736dd59b48e047
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `c6736dd59b48e047`
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "13"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "c6736dd59b48e047"
}
@[vrml_obligation] theorem assert_13
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True)
    (call_lemma_u64_shr_is_div_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)) (b % 18446744073709551616) = (Vermilion.ediv (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)) (vstd.arithmetic.power2.pow2 (b % 18446744073709551616)))) :
    Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_13

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_0 4b4a97eb92012be7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `14_0`
- Statement hash: `4b4a97eb92012be7`
-/
def call_requires_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "14_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "4b4a97eb92012be7"
}
@[vrml_obligation] theorem call_requires_14_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True → (Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b))))
    (assume_12 : True) :
    0 ≤ v := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_1 ed05a0e3ed66c03d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `14_1`
- Statement hash: `ed05a0e3ed66c03d`
-/
def call_requires_14_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "14_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "ed05a0e3ed66c03d"
}
@[vrml_obligation] theorem call_requires_14_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True → (Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b))))
    (assume_12 : True) :
    0 < vstd.arithmetic.power2.pow2 a := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_2 ed059de3ed66bb24
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: call lemma_div_denominator
- AssertId: `14_2`
- Statement hash: `ed059de3ed66bb24`
-/
def call_requires_14_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "14_2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "call_requires"
  statementHash := "ed059de3ed66bb24"
}
@[vrml_obligation] theorem call_requires_14_2
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True → (Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b))))
    (assume_12 : True) :
    0 < vstd.arithmetic.power2.pow2 b := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.call_requires_14_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_15 15dbbc3196d3f245
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_15`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: Rust source assertion
- AssertId: `15`
- Statement hash: `15dbbc3196d3f245`
-/
def assert_15_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "15"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "assert"
  statementHash := "15dbbc3196d3f245"
}
@[vrml_obligation] theorem assert_15
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True → (Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b))))
    (assume_12 : True)
    (call_lemma_div_denominator_ensures_0 : (¬ ((vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b) = 0)))
    (call_lemma_div_denominator_ensures_1 : (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b))) :
    (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.assert_15

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.ensures_16 25e5fba7d0d3ea15
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.ensures_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:329:1-329:90`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `16`
- Statement hash: `25e5fba7d0d3ea15`
-/
def ensures_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 329
  startColumn := 1
  endLine := 329
  endColumn := 90
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum"
  kind := "ensures"
  statementHash := "25e5fba7d0d3ea15"
}
@[vrml_obligation] theorem ensures_16
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : Vermilion.natClip (a + b) < 64)
    (assume_4 : True → (vstd.arithmetic.power2.pow2 a = ((vstd.arithmetic.power2.pow2 a) % 18446744073709551616)))
    (assume_5 : True → (vstd.arithmetic.power2.pow2 b = ((vstd.arithmetic.power2.pow2 b) % 18446744073709551616)))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 a > 0)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 b > 0)
    (assume_8 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 a * vstd.arithmetic.power2.pow2 b)))
    (assume_9 : True → (Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b))))))
    (assume_10 : True → (Vermilion.Bits.shr 64 v a = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a))))
    (assume_11 : True → (Vermilion.Bits.shr 64 ((Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) % 18446744073709551616) b = (Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b))))
    (assume_12 : True → ((Vermilion.ediv (Vermilion.ediv v (vstd.arithmetic.power2.pow2 a)) (vstd.arithmetic.power2.pow2 b)) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (Vermilion.natClip (a + b)))))) :
    Vermilion.Bits.shr 64 v (Vermilion.natClip (a + b)) = Vermilion.Bits.shr 64 (Vermilion.Bits.shr 64 v a) b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum.ensures_16

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u64_shr_by_sum

