import Vermilion.Obligations
import load8_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_1 872e849952cdc407
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:702:9-702:34`
- Rust/SST construct: call lemma_u64_pow2_le_max
- AssertId: `1`
- Statement hash: `872e849952cdc407`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 702
  startColumn := 9
  endLine := 702
  endColumn := 34
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "872e849952cdc407"
}
@[vrml_obligation] theorem call_requires_1
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0) :
    51 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_2 87e30c9bdb38c09b
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:700:12-700:36`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `87e30c9bdb38c09b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 700
  startColumn := 12
  endLine := 700
  endColumn := 36
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "assert"
  statementHash := "87e30c9bdb38c09b"
}
@[vrml_obligation] theorem assert_2
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_u64_pow2_le_max_ensures_0 : vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615) :
    (0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_4 0d1fe9d17dc2d9d3
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:707:9-707:40`
- Rust/SST construct: call lemma_u64_pow2_le_max
- AssertId: `4`
- Statement hash: `0d1fe9d17dc2d9d3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 707
  startColumn := 9
  endLine := 707
  endColumn := 40
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "0d1fe9d17dc2d9d3"
}
@[vrml_obligation] theorem call_requires_4
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 k > 0) :
    k < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_4

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_5 4ea882da37162507
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:705:12-705:42`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `4ea882da37162507`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 705
  startColumn := 12
  endLine := 705
  endColumn := 42
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "assert"
  statementHash := "4ea882da37162507"
}
@[vrml_obligation] theorem assert_5
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 k > 0)
    (call_lemma_u64_pow2_le_max_1_ensures_0 : vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615) :
    (0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_7 bd6d5b304a327d91
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:713:12-713:39`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `bd6d5b304a327d91`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 713
  startColumn := 12
  endLine := 713
  endColumn := 39
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "assert"
  statementHash := "bd6d5b304a327d91"
}
@[vrml_obligation] theorem assert_7
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True)
    (call_l51_bit_mask_lt_ensures_0 : layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51)
    (call_l51_bit_mask_lt_ensures_1 : layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51) :
    layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_8 27d82edaf969c131
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:718:9-718:47`
- Rust/SST construct: call lemma_spec_load8_at_fits_u64
- AssertId: `8`
- Statement hash: `27d82edaf969c131`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 718
  startColumn := 9
  endLine := 718
  endColumn := 47
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "27d82edaf969c131"
}
@[vrml_obligation] theorem call_requires_8
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True) :
    (i + 7) < vstd.slice.len_returns_clause_autospec input := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_8

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_9 43549e31aab66d3d
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:717:12-717:47`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `43549e31aab66d3d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 717
  startColumn := 12
  endLine := 717
  endColumn := 47
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "assert"
  statementHash := "43549e31aab66d3d"
}
@[vrml_obligation] theorem assert_9
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True)
    (call_lemma_spec_load8_at_fits_u64_ensures_0 : layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615) :
    layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_0 a08dabd3c28d8617
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:728:9-728:47`
- Rust/SST construct: call lemma_load8_shift_mod
- AssertId: `10_0`
- Statement hash: `a08dabd3c28d8617`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 728
  startColumn := 9
  endLine := 728
  endColumn := 47
  assertId := "10_0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "a08dabd3c28d8617"
}
@[vrml_obligation] theorem call_requires_10_0
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True) :
    (i + 7) < vstd.slice.len_returns_clause_autospec input := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_1 1fee8c4970024207
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:728:9-728:47`
- Rust/SST construct: call lemma_load8_shift_mod
- AssertId: `10_1`
- Statement hash: `1fee8c4970024207`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 728
  startColumn := 9
  endLine := 728
  endColumn := 47
  assertId := "10_1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "1fee8c4970024207"
}
@[vrml_obligation] theorem call_requires_10_1
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True) :
    k < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_2 775ab16bd201e5ea
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:728:9-728:47`
- Rust/SST construct: call lemma_load8_shift_mod
- AssertId: `10_2`
- Statement hash: `775ab16bd201e5ea`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def call_requires_10_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 728
  startColumn := 9
  endLine := 728
  endColumn := 47
  assertId := "10_2"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "call_requires"
  statementHash := "775ab16bd201e5ea"
}
@[vrml_obligation] theorem call_requires_10_2
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True) :
    51 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.call_requires_10_2

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_11 9877a746f98641dc
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:721:12-727:43`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `9877a746f98641dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 721
  startColumn := 12
  endLine := 727
  endColumn := 43
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "assert"
  statementHash := "9877a746f98641dc"
}
@[vrml_obligation] theorem assert_11
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True)
    (call_lemma_load8_shift_mod_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) ((vstd.bits.low_bits_mask 51) % 18446744073709551616) = ((((((((Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8)) * Vermilion.Seq.index input (i + 0)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8)) * Vermilion.Seq.index input (i + 1)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8)) * Vermilion.Seq.index input (i + 2)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8)) * Vermilion.Seq.index input (i + 3)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8)) * Vermilion.Seq.index input (i + 4)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8)) * Vermilion.Seq.index input (i + 5)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8)) * Vermilion.Seq.index input (i + 6)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8)) * Vermilion.Seq.index input (i + 7)) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)))) :
    Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) ((vstd.bits.low_bits_mask 51) % 18446744073709551616) = ((((((((Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 0) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 1) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 3) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 5) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 7) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_0 696570822db113dc
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:688:9-688:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `12_0`
- Statement hash: `696570822db113dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def ensures_12_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 688
  startColumn := 9
  endLine := 688
  endColumn := 33
  assertId := "12_0"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "ensures"
  statementHash := "696570822db113dc"
}
@[vrml_obligation] theorem ensures_12_0
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True → (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) ((vstd.bits.low_bits_mask 51) % 18446744073709551616) = ((((((((Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 0) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 1) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 3) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 5) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 7) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))) :
    (0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_0

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_1 bbbd0b9ae147a66b
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:689:9-689:44`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `12_1`
- Statement hash: `bbbd0b9ae147a66b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def ensures_12_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 689
  startColumn := 9
  endLine := 689
  endColumn := 44
  assertId := "12_1"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "ensures"
  statementHash := "bbbd0b9ae147a66b"
}
@[vrml_obligation] theorem ensures_12_1
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True → (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) ((vstd.bits.low_bits_mask 51) % 18446744073709551616) = ((((((((Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 0) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 1) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 3) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 5) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 7) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))) :
    layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_1

-- vrml:begin layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_2 298a76121873039d
/--
Generated VC `layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs:690:9-698:59`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `12_2`
- Statement hash: `298a76121873039d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index input vrml_i0⟩
-/
def ensures_12_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs"
  startLine := 690
  startColumn := 9
  endLine := 698
  endColumn := 59
  assertId := "12_2"
  functionName := "layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base"
  kind := "ensures"
  statementHash := "298a76121873039d"
}
@[vrml_obligation] theorem ensures_12_2
    (input : (Vermilion.Seq Int))
    (i : Int)
    (k : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len input)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index input vrml_i0))))
    (requires_1 : Vermilion.inUnsignedRange 64 i)
    (requires_2 : Vermilion.inUnsignedRange 64 k)
    (requires_3 : (i + 7) < vstd.slice.len_returns_clause_autospec input)
    (requires_4 : k < 64)
    (assume_5 : True → ((0 < vstd.arithmetic.power2.pow2 51) ∧ (vstd.arithmetic.power2.pow2 51 ≤ 18446744073709551615)))
    (assume_6 : True → ((0 < vstd.arithmetic.power2.pow2 k) ∧ (vstd.arithmetic.power2.pow2 k ≤ 18446744073709551615)))
    (assume_7 : True → (layer_a.specs.field_specs_u64.mask51 = vstd.bits.low_bits_mask 51))
    (assume_8 : True → (layer_a.specs.core_specs.spec_load8_at input i ≤ 18446744073709551615))
    (assume_9 : True → (Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) ((vstd.bits.low_bits_mask 51) % 18446744073709551616) = ((((((((Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 0) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 1) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 3) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 5) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 7) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))))) :
    Vermilion.Bits.band 64 (Vermilion.Bits.shr 64 ((layer_a.specs.core_specs.spec_load8_at input i) % 18446744073709551616) k) layer_a.specs.field_specs_u64.mask51 = ((((((((Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 0) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (0 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616)) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 1) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (1 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 2) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (2 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 3) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (3 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 4) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (4 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 5) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (5 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 6) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (6 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) + (Vermilion.emod (Vermilion.ediv ((Vermilion.Seq.index input (i + 7) * vstd.arithmetic.power2.pow2 (Vermilion.natClip (7 * 8))) % 18446744073709551616) ((vstd.arithmetic.power2.pow2 k) % 18446744073709551616)) ((vstd.arithmetic.power2.pow2 51) % 18446744073709551616))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base.ensures_12_2

end layer_a.lemmas.field_lemmas.load8_lemmas.lemma_load8_at_limb_base

