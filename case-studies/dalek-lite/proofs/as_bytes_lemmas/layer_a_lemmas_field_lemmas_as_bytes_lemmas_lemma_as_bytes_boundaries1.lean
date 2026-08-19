import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_1 c1d7405d7abb575f
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:47:12-47:41`
- Rust/SST construct: assertion failed
- AssertId: `1`
- Statement hash: `c1d7405d7abb575f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 47
  startColumn := 12
  endLine := 47
  endColumn := 41
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "c1d7405d7abb575f"
}
@[vrml_obligation] theorem assert_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0))) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_2 fa243f51b22f5217
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:48:12-48:49`
- Rust/SST construct: assertion failed
- AssertId: `2`
- Statement hash: `fa243f51b22f5217`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 48
  startColumn := 12
  endLine := 48
  endColumn := 49
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "fa243f51b22f5217"
}
@[vrml_obligation] theorem assert_2
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_3 7972099cc344920d
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:49:12-49:48`
- Rust/SST construct: assertion failed
- AssertId: `3`
- Statement hash: `7972099cc344920d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 49
  startColumn := 12
  endLine := 49
  endColumn := 48
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "7972099cc344920d"
}
@[vrml_obligation] theorem assert_3
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_0 cee797333ce3769a
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:59:9-59:81`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `4_0`
- Statement hash: `cee797333ce3769a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 59
  startColumn := 9
  endLine := 59
  endColumn := 81
  assertId := "4_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "cee797333ce3769a"
}
@[vrml_obligation] theorem call_requires_4_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True) :
    ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 0 + 19) % 18446744073709551616) ≤ ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_1 39a77dfc880ef40c
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:59:9-59:81`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `4_1`
- Statement hash: `39a77dfc880ef40c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 59
  startColumn := 9
  endLine := 59
  endColumn := 81
  assertId := "4_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "39a77dfc880ef40c"
}
@[vrml_obligation] theorem call_requires_4_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_4_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_5 aff42915ee4fdd87
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:58:12-58:19`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `aff42915ee4fdd87`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 58
  startColumn := 12
  endLine := 58
  endColumn := 19
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "aff42915ee4fdd87"
}
@[vrml_obligation] theorem assert_5
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True)
    (call_lemma_u64_shr_le_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 0 + 19) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51) :
    Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_0 a59e915840cf4c51
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:63:9-63:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `6_0`
- Statement hash: `a59e915840cf4c51`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 63
  startColumn := 9
  endLine := 63
  endColumn := 80
  assertId := "6_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "a59e915840cf4c51"
}
@[vrml_obligation] theorem call_requires_6_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True) :
    ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 1 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0) % 18446744073709551616) ≤ ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_1 e43015c7c67fa64b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:63:9-63:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `6_1`
- Statement hash: `e43015c7c67fa64b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_6_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 63
  startColumn := 9
  endLine := 63
  endColumn := 80
  assertId := "6_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "e43015c7c67fa64b"
}
@[vrml_obligation] theorem call_requires_6_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_6_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_7 17c5dc4e063b18bf
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:62:12-62:19`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `17c5dc4e063b18bf`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 62
  startColumn := 12
  endLine := 62
  endColumn := 19
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "17c5dc4e063b18bf"
}
@[vrml_obligation] theorem assert_7
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True)
    (call_lemma_u64_shr_le_1_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 1 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51) :
    Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_0 9a42b90847348a18
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:67:9-67:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `8_0`
- Statement hash: `9a42b90847348a18`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_8_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 67
  startColumn := 9
  endLine := 67
  endColumn := 80
  assertId := "8_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "9a42b90847348a18"
}
@[vrml_obligation] theorem call_requires_8_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True) :
    ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 2 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1) % 18446744073709551616) ≤ ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_1 150f467cac994d2e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:67:9-67:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `8_1`
- Statement hash: `150f467cac994d2e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_8_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 67
  startColumn := 9
  endLine := 67
  endColumn := 80
  assertId := "8_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "150f467cac994d2e"
}
@[vrml_obligation] theorem call_requires_8_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_8_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_9 5784e05c9b19ec9a
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:66:12-66:19`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `5784e05c9b19ec9a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 66
  startColumn := 12
  endLine := 66
  endColumn := 19
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "5784e05c9b19ec9a"
}
@[vrml_obligation] theorem assert_9
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True)
    (call_lemma_u64_shr_le_2_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 2 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51) :
    Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_9

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_0 8b1b3ced5dba73b3
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:71:9-71:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `10_0`
- Statement hash: `8b1b3ced5dba73b3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 71
  startColumn := 9
  endLine := 71
  endColumn := 80
  assertId := "10_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "8b1b3ced5dba73b3"
}
@[vrml_obligation] theorem call_requires_10_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True) :
    ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 3 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2) % 18446744073709551616) ≤ ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_1 9710ae700682ab51
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:71:9-71:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `10_1`
- Statement hash: `9710ae700682ab51`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 71
  startColumn := 9
  endLine := 71
  endColumn := 80
  assertId := "10_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "9710ae700682ab51"
}
@[vrml_obligation] theorem call_requires_10_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_10_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_11 e259b4279efc50ed
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_11`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:70:12-70:19`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `e259b4279efc50ed`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 70
  startColumn := 12
  endLine := 70
  endColumn := 19
  assertId := "11"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "e259b4279efc50ed"
}
@[vrml_obligation] theorem assert_11
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True)
    (call_lemma_u64_shr_le_3_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 3 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51) :
    Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_11

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_0 3472046de96113ee
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:75:9-75:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `12_0`
- Statement hash: `3472046de96113ee`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_12_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 75
  startColumn := 9
  endLine := 75
  endColumn := 80
  assertId := "12_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "3472046de96113ee"
}
@[vrml_obligation] theorem call_requires_12_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True) :
    ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 4 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3) % 18446744073709551616) ≤ ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_1 188d45ccfc2e4668
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:75:9-75:80`
- Rust/SST construct: call lemma_u64_shr_le
- AssertId: `12_1`
- Statement hash: `188d45ccfc2e4668`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def call_requires_12_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 75
  startColumn := 9
  endLine := 75
  endColumn := 80
  assertId := "12_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "call_requires"
  statementHash := "188d45ccfc2e4668"
}
@[vrml_obligation] theorem call_requires_12_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True) :
    51 ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.call_requires_12_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_13 8787eb8a317252d4
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:74:12-74:19`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `8787eb8a317252d4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 74
  startColumn := 12
  endLine := 74
  endColumn := 19
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "assert"
  statementHash := "8787eb8a317252d4"
}
@[vrml_obligation] theorem assert_13
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True)
    (call_lemma_u64_shr_le_4_ensures_0 : Vermilion.Bits.shr 64 ((Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 4 + Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3) % 18446744073709551616) 51 ≤ Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51) :
    Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_0 da7302d17027581b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:33:9-33:50`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_0`
- Statement hash: `da7302d17027581b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 33
  startColumn := 9
  endLine := 33
  endColumn := 50
  assertId := "14_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "da7302d17027581b"
}
@[vrml_obligation] theorem ensures_14_0
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 0 + 19) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_1 68cf0b3be2ae5e96
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:34:9-34:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_1`
- Statement hash: `68cf0b3be2ae5e96`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 34
  startColumn := 9
  endLine := 34
  endColumn := 49
  assertId := "14_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "68cf0b3be2ae5e96"
}
@[vrml_obligation] theorem ensures_14_1
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 1 + 2) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_2 dda903c81491774b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:35:9-35:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_2`
- Statement hash: `dda903c81491774b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 35
  startColumn := 9
  endLine := 35
  endColumn := 49
  assertId := "14_2"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "dda903c81491774b"
}
@[vrml_obligation] theorem ensures_14_2
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 2 + 2) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_2

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_3 89dd8d0e34d2dee0
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:36:9-36:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_3`
- Statement hash: `89dd8d0e34d2dee0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 36
  startColumn := 9
  endLine := 36
  endColumn := 49
  assertId := "14_3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "89dd8d0e34d2dee0"
}
@[vrml_obligation] theorem ensures_14_3
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 3 + 2) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_4 1d581e4c29b17585
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:37:9-37:49`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_4`
- Statement hash: `1d581e4c29b17585`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 49
  assertId := "14_4"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "1d581e4c29b17585"
}
@[vrml_obligation] theorem ensures_14_4
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) 4 + 2) < 18446744073709551615 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_4

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_5 8a7820d5a0894777
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:38:9-38:92`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_5`
- Statement hash: `8a7820d5a0894777`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) i⟩ ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 92
  assertId := "14_5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "8a7820d5a0894777"
}
@[vrml_obligation] theorem ensures_14_5
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i ≤ 4)) → (((Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) i) % 18446744073709551616) ≤ 2))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_6 f8cb8a93b7a883c5
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:39:9-39:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_6`
- Statement hash: `f8cb8a93b7a883c5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 39
  startColumn := 9
  endLine := 39
  endColumn := 38
  assertId := "14_6"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "f8cb8a93b7a883c5"
}
@[vrml_obligation] theorem ensures_14_6
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_6

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_7 b060275f2cbecdc6
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:40:9-40:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_7`
- Statement hash: `b060275f2cbecdc6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 40
  startColumn := 9
  endLine := 40
  endColumn := 46
  assertId := "14_7"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "b060275f2cbecdc6"
}
@[vrml_obligation] theorem ensures_14_7
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_7

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_8 c5e908f6d734fa2e
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:41:9-41:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `14_8`
- Statement hash: `c5e908f6d734fa2e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index raw_limbs vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i⟩ ⟨Vermilion.Seq.index raw_limbs i⟩
-/
def ensures_14_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 41
  startColumn := 9
  endLine := 41
  endColumn := 45
  assertId := "14_8"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1"
  kind := "ensures"
  statementHash := "c5e908f6d734fa2e"
}
@[vrml_obligation] theorem ensures_14_8
    (raw_limbs : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len raw_limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len raw_limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index raw_limbs vrml_i0))))
    (call_proof_reduce_ensures_0 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) i < Vermilion.Bits.shl 64 1 52))))
    (call_proof_reduce_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index raw_limbs i < Vermilion.Bits.shl 64 1 51))) → (layer_a.specs.field_specs_u64.spec_reduce raw_limbs = raw_limbs))
    (call_proof_reduce_ensures_2 : layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs) = (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs - (layer_a.specs.field_specs_u64.p 0 * Vermilion.Bits.shr 64 (Vermilion.Seq.index raw_limbs 4) 51)))
    (call_proof_reduce_ensures_3 : (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs_u64.u64_5_as_nat raw_limbs) (layer_a.specs.field_specs_u64.p 0)))
    (assert_1 : True)
    (assume_7 : (Vermilion.Bits.shl 64 1 52 + 19) ≤ 18446744073709551615)
    (assert_2 : True)
    (assume_9 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 19) % 18446744073709551616) 51 = 2)
    (assert_3 : True)
    (assume_11 : Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2)
    (assume_12 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 0 ≤ 2))
    (assume_13 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 1 ≤ 2))
    (assume_14 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 2 ≤ 2))
    (assume_15 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 3 ≤ 2))
    (assume_16 : True → (Vermilion.Seq.index (layer_a.specs.field_specs_u64.compute_q_arr (layer_a.specs.field_specs_u64.spec_reduce raw_limbs)) 4 ≤ 2)) :
    Vermilion.Bits.shr 64 ((Vermilion.Bits.shl 64 1 52 + 2) % 18446744073709551616) 51 = 2 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1.ensures_14_8

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_as_bytes_boundaries1

