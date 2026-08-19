import Vermilion.Obligations
import div_mod_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_1 92e6faf6c8415238
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: call lemma_u8_pow2_le_max
- AssertId: `1`
- Statement hash: `92e6faf6c8415238`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "call_requires"
  statementHash := "92e6faf6c8415238"
}
@[vrml_obligation] theorem call_requires_1
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 k > 0) :
    k < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_1

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_2 a631deaa9823ed7a
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `a631deaa9823ed7a`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "assert"
  statementHash := "a631deaa9823ed7a"
}
@[vrml_obligation] theorem assert_2
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 k > 0)
    (call_lemma_u8_pow2_le_max_ensures_0 : vstd.arithmetic.power2.pow2 k ≤ 255) :
    (0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_2

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_3 3a919a35e41e8a64
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: call lemma_u8_shr_is_div
- AssertId: `3`
- Statement hash: `3a919a35e41e8a64`
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "call_requires"
  statementHash := "3a919a35e41e8a64"
}
@[vrml_obligation] theorem call_requires_3
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True) :
    (0 ≤ (k % 256)) ∧ ((k % 256) < 8) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_3

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_4 488a1a69c43c00e6
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `488a1a69c43c00e6`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "4"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "assert"
  statementHash := "488a1a69c43c00e6"
}
@[vrml_obligation] theorem assert_4
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True)
    (call_lemma_u8_shr_is_div_ensures_0 : Vermilion.Bits.shr 8 v (k % 256) = (Vermilion.ediv v (vstd.arithmetic.power2.pow2 (k % 256)))) :
    ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_4

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_5 d228d55c86c216af
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: call lemma_u8_low_bits_mask_is_mod
- AssertId: `5`
- Statement hash: `d228d55c86c216af`
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "call_requires"
  statementHash := "d228d55c86c216af"
}
@[vrml_obligation] theorem call_requires_5
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True) :
    k < 8 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_5

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_6 8a28ef1114451ca9
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `8a28ef1114451ca9`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "6"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "assert"
  statementHash := "8a28ef1114451ca9"
}
@[vrml_obligation] theorem assert_6
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True)
    (call_lemma_u8_low_bits_mask_is_mod_ensures_0 : Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256) = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))) :
    bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_6

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_7 278c85254fa8e3ea
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `7`
- Statement hash: `278c85254fa8e3ea`
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "7"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "call_requires"
  statementHash := "278c85254fa8e3ea"
}
@[vrml_obligation] theorem call_requires_7
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True → (bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_10 : True) :
    (¬ (vstd.arithmetic.power2.pow2 k = 0)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.call_requires_7

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_8 ef651682e60e3044
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `ef651682e60e3044`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "assert"
  statementHash := "ef651682e60e3044"
}
@[vrml_obligation] theorem assert_8
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True → (bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_10 : True)
    (call_lemma_fundamental_div_mod_ensures_0 : v = ((vstd.arithmetic.power2.pow2 k * (Vermilion.ediv v (vstd.arithmetic.power2.pow2 k))) + (Vermilion.emod v (vstd.arithmetic.power2.pow2 k)))) :
    v = Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 k * (Vermilion.ediv v (vstd.arithmetic.power2.pow2 k))) + (Vermilion.emod v (vstd.arithmetic.power2.pow2 k))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_0 47b09b051050eabc
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_0`
- Statement hash: `47b09b051050eabc`
-/
def ensures_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "10_0"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "ensures"
  statementHash := "47b09b051050eabc"
}
@[vrml_obligation] theorem ensures_10_0
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True → (bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_10 : True → (v = Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 k * (Vermilion.ediv v (vstd.arithmetic.power2.pow2 k))) + (Vermilion.emod v (vstd.arithmetic.power2.pow2 k)))))
    (call_lemma_mul_is_commutative_ensures_0 : (ai * vstd.arithmetic.power2.pow2 k) = (vstd.arithmetic.power2.pow2 k * ai)) :
    ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_0

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_1 808b9be056523550
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_1`
- Statement hash: `808b9be056523550`
-/
def ensures_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "10_1"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "ensures"
  statementHash := "808b9be056523550"
}
@[vrml_obligation] theorem ensures_10_1
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True → (bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_10 : True → (v = Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 k * (Vermilion.ediv v (vstd.arithmetic.power2.pow2 k))) + (Vermilion.emod v (vstd.arithmetic.power2.pow2 k)))))
    (call_lemma_mul_is_commutative_ensures_0 : (ai * vstd.arithmetic.power2.pow2 k) = (vstd.arithmetic.power2.pow2 k * ai)) :
    bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_1

-- vrml:begin layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_2 632102b284bd8d8c
/--
Generated VC `layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs:52:1-52:119`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_2`
- Statement hash: `632102b284bd8d8c`
-/
def ensures_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs"
  startLine := 52
  startColumn := 1
  endLine := 52
  endColumn := 119
  assertId := "10_2"
  functionName := "layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod"
  kind := "ensures"
  statementHash := "632102b284bd8d8c"
}
@[vrml_obligation] theorem ensures_10_2
    (ai : Int)
    (bi : Int)
    (v : Int)
    (k : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 ai)
    (requires_1 : Vermilion.inUnsignedRange 8 bi)
    (requires_2 : Vermilion.inUnsignedRange 8 v)
    (requires_3 : 0 ≤ k)
    (requires_4 : k < 8)
    (requires_5 : ai = Vermilion.Bits.shr 8 v k)
    (requires_6 : bi = Vermilion.Bits.band 8 v ((vstd.bits.low_bits_mask k) % 256))
    (assume_7 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 255)))
    (assume_8 : True → (ai = (Vermilion.ediv v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_9 : True → (bi = (Vermilion.emod v ((vstd.arithmetic.power2.pow2 k) % 256))))
    (assume_10 : True → (v = Vermilion.natClip (Vermilion.natClip (vstd.arithmetic.power2.pow2 k * (Vermilion.ediv v (vstd.arithmetic.power2.pow2 k))) + (Vermilion.emod v (vstd.arithmetic.power2.pow2 k)))))
    (call_lemma_mul_is_commutative_ensures_0 : (ai * vstd.arithmetic.power2.pow2 k) = (vstd.arithmetic.power2.pow2 k * ai)) :
    v = ((ai * vstd.arithmetic.power2.pow2 k) + bi) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod.ensures_10_2

end layer_a.lemmas.common_lemmas.div_mod_lemmas.lemma_u8_div_and_mod

