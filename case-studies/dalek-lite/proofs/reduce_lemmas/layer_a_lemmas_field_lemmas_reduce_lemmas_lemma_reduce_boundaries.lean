import Vermilion.Obligations
import reduce_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_0 1586f369713d722f
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:34:5-34:39`
- Rust/SST construct: call lemma_u64_shifted_lt
- AssertId: `0`
- Statement hash: `1586f369713d722f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 34
  startColumn := 5
  endLine := 34
  endColumn := 39
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "1586f369713d722f"
}
@[vrml_obligation] theorem call_requires_0
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0)))) :
    (1 ≤ 51) ∧ (51 ≤ 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_1 5ce1ce1ecbd6c55a
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:35:5-35:39`
- Rust/SST construct: call lemma_u64_shifted_lt
- AssertId: `1`
- Statement hash: `5ce1ce1ecbd6c55a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 35
  startColumn := 5
  endLine := 35
  endColumn := 39
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "5ce1ce1ecbd6c55a"
}
@[vrml_obligation] theorem call_requires_1
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51)) :
    (1 ≤ 51) ∧ (51 ≤ 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_1

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_2 fb2e26a5a2c3ebba
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:36:5-36:39`
- Rust/SST construct: call lemma_u64_shifted_lt
- AssertId: `2`
- Statement hash: `fb2e26a5a2c3ebba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 36
  startColumn := 5
  endLine := 36
  endColumn := 39
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "fb2e26a5a2c3ebba"
}
@[vrml_obligation] theorem call_requires_2
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51)) :
    (1 ≤ 51) ∧ (51 ≤ 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_2

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_3 1322befa90c4f49c
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:37:5-37:39`
- Rust/SST construct: call lemma_u64_shifted_lt
- AssertId: `3`
- Statement hash: `1322befa90c4f49c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 37
  startColumn := 5
  endLine := 37
  endColumn := 39
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "1322befa90c4f49c"
}
@[vrml_obligation] theorem call_requires_3
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51)) :
    (1 ≤ 51) ∧ (51 ≤ 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_3

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_4 0faaeae5a13a5058
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:38:5-38:39`
- Rust/SST construct: call lemma_u64_shifted_lt
- AssertId: `4`
- Statement hash: `0faaeae5a13a5058`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 38
  startColumn := 5
  endLine := 38
  endColumn := 39
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "0faaeae5a13a5058"
}
@[vrml_obligation] theorem call_requires_4
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51)) :
    (1 ≤ 51) ∧ (51 ≤ 64) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_4

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_10 8c973ce7581a1467
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:49:9-49:15`
- Rust/SST construct: requires not satisfied
- AssertId: `10`
- Statement hash: `8c973ce7581a1467`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 49
  startColumn := 9
  endLine := 49
  endColumn := 15
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "8c973ce7581a1467"
}
@[vrml_obligation] theorem assert_10
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_3_0 103537106b30e8ac
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_3_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:49:16-49:32`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_3_0`
- Statement hash: `103537106b30e8ac`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_bv_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 49
  startColumn := 16
  endLine := 49
  endColumn := 32
  assertId := "bv_3_0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "103537106b30e8ac"
}
@[vrml_obligation] theorem assert_bv_3_0
    (limbs : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len limbs = 5)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (loop_0_iteration_2 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_3_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_11 7a1aa447d60a5974
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:50:9-50:35`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `11`
- Statement hash: `7a1aa447d60a5974`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 50
  startColumn := 9
  endLine := 50
  endColumn := 35
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "7a1aa447d60a5974"
}
@[vrml_obligation] theorem call_requires_11
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5) :
    5 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_11

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_12 566632403620f725
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:51:9-51:36`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `12`
- Statement hash: `566632403620f725`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 51
  startColumn := 9
  endLine := 51
  endColumn := 36
  assertId := "12"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "566632403620f725"
}
@[vrml_obligation] theorem call_requires_12
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 5 = vstd.arithmetic.power2.pow2 5) :
    13 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_12

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_13 e787014081e86942
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:52:9-52:36`
- Rust/SST construct: call lemma_u64_shift_is_pow2
- AssertId: `13`
- Statement hash: `e787014081e86942`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 52
  startColumn := 9
  endLine := 52
  endColumn := 36
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "e787014081e86942"
}
@[vrml_obligation] theorem call_requires_13
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 5 = vstd.arithmetic.power2.pow2 5)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 13 = vstd.arithmetic.power2.pow2 13) :
    18 < 64 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_13

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_0 7f580b75cd7851b3
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:55:9-55:94`
- Rust/SST construct: call lemma_mul_lt
- AssertId: `15_0`
- Statement hash: `7f580b75cd7851b3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_15_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 55
  startColumn := 9
  endLine := 55
  endColumn := 94
  assertId := "15_0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "7f580b75cd7851b3"
}
@[vrml_obligation] theorem call_requires_15_0
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 5 = vstd.arithmetic.power2.pow2 5)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 13 = vstd.arithmetic.power2.pow2 13)
    (call_lemma_u64_shift_is_pow2_2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 18 = vstd.arithmetic.power2.pow2 18)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 + 5)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 13 * vstd.arithmetic.power2.pow2 5)) :
    Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 1 13 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_1 933c849a3cc97c06
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:55:9-55:94`
- Rust/SST construct: call lemma_mul_lt
- AssertId: `15_1`
- Statement hash: `933c849a3cc97c06`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_15_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 55
  startColumn := 9
  endLine := 55
  endColumn := 94
  assertId := "15_1"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "call_requires"
  statementHash := "933c849a3cc97c06"
}
@[vrml_obligation] theorem call_requires_15_1
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 5 = vstd.arithmetic.power2.pow2 5)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 13 = vstd.arithmetic.power2.pow2 13)
    (call_lemma_u64_shift_is_pow2_2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 18 = vstd.arithmetic.power2.pow2 18)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 + 5)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 13 * vstd.arithmetic.power2.pow2 5)) :
    19 < Vermilion.Bits.shl 64 1 5 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.call_requires_15_1

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_16 25a482646a5c9d51
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:48:12-48:55`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `25a482646a5c9d51`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 48
  startColumn := 12
  endLine := 48
  endColumn := 55
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "25a482646a5c9d51"
}
@[vrml_obligation] theorem assert_16
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True)
    (assert_10 : True)
    (assume_14 : 19 < Vermilion.Bits.shl 64 1 5)
    (call_lemma_u64_shift_is_pow2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 5 = vstd.arithmetic.power2.pow2 5)
    (call_lemma_u64_shift_is_pow2_1_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 13 = vstd.arithmetic.power2.pow2 13)
    (call_lemma_u64_shift_is_pow2_2_ensures_0 : Vermilion.Bits.shl 64 (1 % 18446744073709551616) 18 = vstd.arithmetic.power2.pow2 18)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (13 + 5)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 13 * vstd.arithmetic.power2.pow2 5))
    (call_lemma_mul_lt_ensures_0 : Vermilion.natClip (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.natClip (Vermilion.Bits.shl 64 1 13 * Vermilion.Bits.shl 64 1 5)) :
    (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_16

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_17 e63e2b67dc081e9f
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_17`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:59:5-59:11`
- Rust/SST construct: requires not satisfied
- AssertId: `17`
- Statement hash: `e63e2b67dc081e9f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_17_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 59
  startColumn := 5
  endLine := 59
  endColumn := 11
  assertId := "17"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "e63e2b67dc081e9f"
}
@[vrml_obligation] theorem assert_17
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_17

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_14_0 f2c9443a6056013b
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_14_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:59:12-59:56`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_14_0`
- Statement hash: `f2c9443a6056013b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_bv_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 59
  startColumn := 12
  endLine := 59
  endColumn := 56
  assertId := "bv_14_0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "f2c9443a6056013b"
}
@[vrml_obligation] theorem assert_bv_14_0
    (limbs : (Vermilion.Seq Int))
    (loop_1_iteration_0 : Vermilion.Seq.len limbs = 5)
    (loop_1_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (loop_1_iteration_2 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_14_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_18 307c8d654dc01eaf
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:60:5-60:11`
- Rust/SST construct: requires not satisfied
- AssertId: `18`
- Statement hash: `307c8d654dc01eaf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 60
  startColumn := 5
  endLine := 60
  endColumn := 11
  assertId := "18"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "307c8d654dc01eaf"
}
@[vrml_obligation] theorem assert_18
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_18

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_17_0 3d7b7d8f6b9019f6
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_17_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:60:12-60:56`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_17_0`
- Statement hash: `3d7b7d8f6b9019f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_bv_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 60
  startColumn := 12
  endLine := 60
  endColumn := 56
  assertId := "bv_17_0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "assert"
  statementHash := "3d7b7d8f6b9019f6"
}
@[vrml_obligation] theorem assert_bv_17_0
    (limbs : (Vermilion.Seq Int))
    (loop_2_iteration_0 : Vermilion.Seq.len limbs = 5)
    (loop_2_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (loop_2_iteration_2 : True) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.assert_bv_17_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_0 f3ceb7a119d63ee6
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:27:9-27:69`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19_0`
- Statement hash: `f3ceb7a119d63ee6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_19_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 27
  startColumn := 9
  endLine := 27
  endColumn := 69
  assertId := "19_0"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "ensures"
  statementHash := "f3ceb7a119d63ee6"
}
@[vrml_obligation] theorem ensures_19_0
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52)
    (assert_18 : True)
    (assume_16 : (Vermilion.Bits.shl 64 1 13 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    (Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 + (Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19)) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_0

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_1 a32d7f7426d859b8
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:28:9-28:64`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19_1`
- Statement hash: `a32d7f7426d859b8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_19_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 64
  assertId := "19_1"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "ensures"
  statementHash := "a32d7f7426d859b8"
}
@[vrml_obligation] theorem ensures_19_1
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52)
    (assert_18 : True)
    (assume_16 : (Vermilion.Bits.shl 64 1 13 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    (Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 + Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_1

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_2 bff15bf35834bff8
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:29:9-29:64`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19_2`
- Statement hash: `bff15bf35834bff8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_19_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 29
  startColumn := 9
  endLine := 29
  endColumn := 64
  assertId := "19_2"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "ensures"
  statementHash := "bff15bf35834bff8"
}
@[vrml_obligation] theorem ensures_19_2
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52)
    (assert_18 : True)
    (assume_16 : (Vermilion.Bits.shl 64 1 13 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    (Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 + Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_2

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_3 b517e5cda53b6f78
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:30:9-30:64`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19_3`
- Statement hash: `b517e5cda53b6f78`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_19_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 30
  startColumn := 9
  endLine := 30
  endColumn := 64
  assertId := "19_3"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "ensures"
  statementHash := "b517e5cda53b6f78"
}
@[vrml_obligation] theorem ensures_19_3
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52)
    (assert_18 : True)
    (assume_16 : (Vermilion.Bits.shl 64 1 13 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    (Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 + Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_3

-- vrml:begin layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_4 49fee7d34f4396d0
/--
Generated VC `layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs:31:9-31:64`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `19_4`
- Statement hash: `49fee7d34f4396d0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_19_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs"
  startLine := 31
  startColumn := 9
  endLine := 31
  endColumn := 64
  assertId := "19_4"
  functionName := "layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries"
  kind := "ensures"
  statementHash := "49fee7d34f4396d0"
}
@[vrml_obligation] theorem ensures_19_4
    (limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (call_lemma_u64_shifted_lt_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 0) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_1_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 1) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_2_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 2) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_3_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_u64_shifted_lt_4_ensures_0 : Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 < Vermilion.Bits.shl 64 (1 % 18446744073709551616) (64 - 51))
    (call_lemma_masked_lt_51_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 0) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_1_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 1) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_2_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 2) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_3_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 3) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (call_lemma_masked_lt_51_4_ensures_0 : Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 < Vermilion.Bits.shl 64 1 51)
    (assume_12 : True → ((Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 4) 51 * 19) < Vermilion.Bits.shl 64 1 18))
    (assert_17 : True)
    (assume_14 : (Vermilion.Bits.shl 64 1 18 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52)
    (assert_18 : True)
    (assume_16 : (Vermilion.Bits.shl 64 1 13 + Vermilion.Bits.shl 64 1 51) < Vermilion.Bits.shl 64 1 52) :
    (Vermilion.Bits.band 64 (Vermilion.Seq.index limbs 4) layer_a.specs.field_specs_u64.mask51 + Vermilion.Bits.shr 64 (Vermilion.Seq.index limbs 3) 51) < Vermilion.Bits.shl 64 1 52 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries.ensures_19_4

end layer_a.lemmas.field_lemmas.reduce_lemmas.lemma_reduce_boundaries

