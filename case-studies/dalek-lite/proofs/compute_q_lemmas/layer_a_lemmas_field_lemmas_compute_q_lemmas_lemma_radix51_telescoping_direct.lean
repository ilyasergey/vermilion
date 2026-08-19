import Vermilion.Obligations
import compute_q_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_5 d5560adb171f9772
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:177:12-178:85`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `d5560adb171f9772`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 177
  startColumn := 12
  endLine := 178
  endColumn := 85
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "d5560adb171f9772"
}
@[vrml_obligation] theorem assert_5
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204)) :
    layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_10 39c2fce712a46e16
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:180:12-184:33`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `39c2fce712a46e16`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 180
  startColumn := 12
  endLine := 184
  endColumn := 33
  assertId := "10"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "39c2fce712a46e16"
}
@[vrml_obligation] theorem assert_10
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True)
    (call_lemma_mul_is_commutative_ensures_0 : (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1) = (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_mul_is_commutative_1_ensures_0 : (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2) = (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_mul_is_commutative_2_ensures_0 : (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3) = (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_mul_is_commutative_3_ensures_0 : (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4) = (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) :
    Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_10

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_13 693419215fa809f2
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_13`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:194:12-196:59`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `693419215fa809f2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 194
  startColumn := 12
  endLine := 196
  endColumn := 59
  assertId := "13"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "693419215fa809f2"
}
@[vrml_obligation] theorem assert_13
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True)
    (call_lemma_mul_is_distributive_sub_other_way_ensures_0 : ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) * vstd.arithmetic.power2.pow2 51) - (q0 * vstd.arithmetic.power2.pow2 51)))
    (call_lemma_mul_is_distributive_add_other_way_ensures_0 : (((q1 * vstd.arithmetic.power2.pow2 51) + r1) * vstd.arithmetic.power2.pow2 51) = (((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51))) :
    ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_13

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_16 6e7c4117f4289086
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:201:12-203:61`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `6e7c4117f4289086`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 201
  startColumn := 12
  endLine := 203
  endColumn := 61
  assertId := "16"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "6e7c4117f4289086"
}
@[vrml_obligation] theorem assert_16
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True)
    (call_lemma_mul_is_distributive_sub_other_way_1_ensures_0 : ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) * vstd.arithmetic.power2.pow2 102) - (q1 * vstd.arithmetic.power2.pow2 102)))
    (call_lemma_mul_is_distributive_add_other_way_1_ensures_0 : (((q2 * vstd.arithmetic.power2.pow2 51) + r2) * vstd.arithmetic.power2.pow2 102) = (((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102))) :
    ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_16

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_19 83805053d35ec9ef
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_19`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:208:12-210:61`
- Rust/SST construct: Rust source assertion
- AssertId: `19`
- Statement hash: `83805053d35ec9ef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_19_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 208
  startColumn := 12
  endLine := 210
  endColumn := 61
  assertId := "19"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "83805053d35ec9ef"
}
@[vrml_obligation] theorem assert_19
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True)
    (call_lemma_mul_is_distributive_sub_other_way_2_ensures_0 : ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) * vstd.arithmetic.power2.pow2 153) - (q2 * vstd.arithmetic.power2.pow2 153)))
    (call_lemma_mul_is_distributive_add_other_way_2_ensures_0 : (((q3 * vstd.arithmetic.power2.pow2 51) + r3) * vstd.arithmetic.power2.pow2 153) = (((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153))) :
    ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_19

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_22 055b6e0783d8580d
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:215:12-217:61`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `055b6e0783d8580d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 215
  startColumn := 12
  endLine := 217
  endColumn := 61
  assertId := "22"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "055b6e0783d8580d"
}
@[vrml_obligation] theorem assert_22
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True)
    (call_lemma_mul_is_distributive_sub_other_way_3_ensures_0 : ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) * vstd.arithmetic.power2.pow2 204) - (q3 * vstd.arithmetic.power2.pow2 204)))
    (call_lemma_mul_is_distributive_add_other_way_3_ensures_0 : (((q4 * vstd.arithmetic.power2.pow2 51) + r4) * vstd.arithmetic.power2.pow2 204) = (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204))) :
    ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_22

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_23 c91457d3837a34ad
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_23`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:227:12-232:72`
- Rust/SST construct: Rust source assertion
- AssertId: `23`
- Statement hash: `c91457d3837a34ad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_23_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 227
  startColumn := 12
  endLine := 232
  endColumn := 72
  assertId := "23"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "c91457d3837a34ad"
}
@[vrml_obligation] theorem assert_23
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204)))) :
    (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_23

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_24 5bc53227777f01c4
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:235:5-235:80`
- Rust/SST construct: call lemma_radix51_telescoping_expansion
- AssertId: `24`
- Statement hash: `5bc53227777f01c4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 235
  startColumn := 5
  endLine := 235
  endColumn := 80
  assertId := "24"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "5bc53227777f01c4"
}
@[vrml_obligation] theorem call_requires_24
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19)) :
    True := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_24

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_26 cdc9d48063cec03b
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_26`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:237:12-237:76`
- Rust/SST construct: Rust source assertion
- AssertId: `26`
- Statement hash: `cdc9d48063cec03b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def assert_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 237
  startColumn := 12
  endLine := 237
  endColumn := 76
  assertId := "26"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "assert"
  statementHash := "cdc9d48063cec03b"
}
@[vrml_obligation] theorem assert_26
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True)
    (call_lemma_mul_is_associative_ensures_0 : (q4 * (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204)) = ((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204)) :
    ((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.assert_26

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_0 40180c42a9488886
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:242:5-242:54`
- Rust/SST construct: call lemma_radix51_remainder_bound
- AssertId: `27_0`
- Statement hash: `40180c42a9488886`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_27_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 242
  startColumn := 5
  endLine := 242
  endColumn := 54
  assertId := "27_0"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "40180c42a9488886"
}
@[vrml_obligation] theorem call_requires_27_0
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255))) :
    (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_0

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_1 0d368ed7800194c8
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:242:5-242:54`
- Rust/SST construct: call lemma_radix51_remainder_bound
- AssertId: `27_1`
- Statement hash: `0d368ed7800194c8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_27_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 242
  startColumn := 5
  endLine := 242
  endColumn := 54
  assertId := "27_1"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "0d368ed7800194c8"
}
@[vrml_obligation] theorem call_requires_27_1
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255))) :
    (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_1

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_2 efaab765b6f706de
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:242:5-242:54`
- Rust/SST construct: call lemma_radix51_remainder_bound
- AssertId: `27_2`
- Statement hash: `efaab765b6f706de`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_27_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 242
  startColumn := 5
  endLine := 242
  endColumn := 54
  assertId := "27_2"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "efaab765b6f706de"
}
@[vrml_obligation] theorem call_requires_27_2
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255))) :
    (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_2

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_3 60dea73fe16a5d5c
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:242:5-242:54`
- Rust/SST construct: call lemma_radix51_remainder_bound
- AssertId: `27_3`
- Statement hash: `60dea73fe16a5d5c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_27_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 242
  startColumn := 5
  endLine := 242
  endColumn := 54
  assertId := "27_3"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "60dea73fe16a5d5c"
}
@[vrml_obligation] theorem call_requires_27_3
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255))) :
    (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_3

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_4 28b53e593443f43e
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:242:5-242:54`
- Rust/SST construct: call lemma_radix51_remainder_bound
- AssertId: `27_4`
- Statement hash: `28b53e593443f43e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_27_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 242
  startColumn := 5
  endLine := 242
  endColumn := 54
  assertId := "27_4"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "28b53e593443f43e"
}
@[vrml_obligation] theorem call_requires_27_4
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255))) :
    (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_27_4

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_29 c943b1d57f59f9c3
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_29`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:244:5-244:55`
- Rust/SST construct: call lemma_fundamental_div_mod
- AssertId: `29`
- Statement hash: `c943b1d57f59f9c3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 244
  startColumn := 5
  endLine := 244
  endColumn := 55
  assertId := "29"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "c943b1d57f59f9c3"
}
@[vrml_obligation] theorem call_requires_29
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255)))
    (call_lemma_radix51_remainder_bound_ensures_0 : ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 255 > 0) :
    (¬ (vstd.arithmetic.power2.pow2 255 = 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_29

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_0 ff79dc94dcb812e0
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:245:5-245:70`
- Rust/SST construct: call lemma_div_multiples_vanish_fancy
- AssertId: `30_0`
- Statement hash: `ff79dc94dcb812e0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_30_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 245
  startColumn := 5
  endLine := 245
  endColumn := 70
  assertId := "30_0"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "ff79dc94dcb812e0"
}
@[vrml_obligation] theorem call_requires_30_0
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255)))
    (call_lemma_radix51_remainder_bound_ensures_0 : ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 255 > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((vstd.arithmetic.power2.pow2 255 * (Vermilion.ediv (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255))) + (Vermilion.emod (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255)))) :
    0 < vstd.arithmetic.power2.pow2 255 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_0

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_1 bc1c99aa8981074a
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:245:5-245:70`
- Rust/SST construct: call lemma_div_multiples_vanish_fancy
- AssertId: `30_1`
- Statement hash: `bc1c99aa8981074a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def call_requires_30_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 245
  startColumn := 5
  endLine := 245
  endColumn := 70
  assertId := "30_1"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "call_requires"
  statementHash := "bc1c99aa8981074a"
}
@[vrml_obligation] theorem call_requires_30_1
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255)))
    (call_lemma_radix51_remainder_bound_ensures_0 : ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 255 > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((vstd.arithmetic.power2.pow2 255 * (Vermilion.ediv (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255))) + (Vermilion.emod (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255)))) :
    (0 ≤ ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204))) ∧ (((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.call_requires_30_1

-- vrml:begin layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.ensures_31 b842072122e5da64
/--
Generated VC `layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.ensures_31`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs:163:9-163:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `31`
- Statement hash: `b842072122e5da64`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index limbs vrml_i0⟩
-/
def ensures_31_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs"
  startLine := 163
  startColumn := 9
  endLine := 163
  endColumn := 67
  assertId := "31"
  functionName := "layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct"
  kind := "ensures"
  statementHash := "b842072122e5da64"
}
@[vrml_obligation] theorem ensures_31
    (limbs : (Vermilion.Seq Int))
    (q0 : Int)
    (q1 : Int)
    (q2 : Int)
    (q3 : Int)
    (q4 : Int)
    (r0 : Int)
    (r1 : Int)
    (r2 : Int)
    (r3 : Int)
    (r4 : Int)
    (requires_0 : Vermilion.Seq.len limbs = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len limbs)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index limbs vrml_i0))))
    (requires_2 : (Vermilion.Seq.index limbs 0 + 19) = ((q0 * vstd.arithmetic.power2.pow2 51) + r0))
    (requires_3 : (Vermilion.Seq.index limbs 1 + q0) = ((q1 * vstd.arithmetic.power2.pow2 51) + r1))
    (requires_4 : (Vermilion.Seq.index limbs 2 + q1) = ((q2 * vstd.arithmetic.power2.pow2 51) + r2))
    (requires_5 : (Vermilion.Seq.index limbs 3 + q2) = ((q3 * vstd.arithmetic.power2.pow2 51) + r3))
    (requires_6 : (Vermilion.Seq.index limbs 4 + q3) = ((q4 * vstd.arithmetic.power2.pow2 51) + r4))
    (requires_7 : (0 ≤ r0) ∧ (r0 < vstd.arithmetic.power2.pow2 51))
    (requires_8 : (0 ≤ r1) ∧ (r1 < vstd.arithmetic.power2.pow2 51))
    (requires_9 : (0 ≤ r2) ∧ (r2 < vstd.arithmetic.power2.pow2 51))
    (requires_10 : (0 ≤ r3) ∧ (r3 < vstd.arithmetic.power2.pow2 51))
    (requires_11 : (0 ≤ r4) ∧ (r4 < vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 51 > 0)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 51)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 51))
    (call_lemma_pow2_adds_1_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 102)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 102))
    (call_lemma_pow2_adds_2_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 153)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 153))
    (call_lemma_pow2_adds_3_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (51 + 204)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * vstd.arithmetic.power2.pow2 204))
    (assert_5 : layer_a.specs.field_specs_u64.u64_5_as_nat limbs = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)))
    (assume_18 : True → (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (vstd.arithmetic.power2.pow2 51 * Vermilion.Seq.index limbs 1)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 102 * Vermilion.Seq.index limbs 2)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 153 * Vermilion.Seq.index limbs 3)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 204 * Vermilion.Seq.index limbs 4)) = Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (Vermilion.Seq.index limbs 0 + Vermilion.natClip (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + Vermilion.natClip (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + Vermilion.natClip (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + Vermilion.natClip (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204))))
    (assume_19 : True → (((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51) = ((((q1 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 51) + (r1 * vstd.arithmetic.power2.pow2 51)) - (q0 * vstd.arithmetic.power2.pow2 51))))
    (assume_20 : True → (((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102) = ((((q2 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 102) + (r2 * vstd.arithmetic.power2.pow2 102)) - (q1 * vstd.arithmetic.power2.pow2 102))))
    (assume_21 : True → (((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153) = ((((q3 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 153) + (r3 * vstd.arithmetic.power2.pow2 153)) - (q2 * vstd.arithmetic.power2.pow2 153))))
    (assume_22 : True → (((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204) = ((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + (r4 * vstd.arithmetic.power2.pow2 204)) - (q3 * vstd.arithmetic.power2.pow2 204))))
    (assert_23 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19))
    (call_lemma_radix51_telescoping_expansion_ensures_0 : ((((((((q0 * vstd.arithmetic.power2.pow2 51) + r0) - 19) + ((((q1 * vstd.arithmetic.power2.pow2 51) + r1) - q0) * vstd.arithmetic.power2.pow2 51)) + ((((q2 * vstd.arithmetic.power2.pow2 51) + r2) - q1) * vstd.arithmetic.power2.pow2 102)) + ((((q3 * vstd.arithmetic.power2.pow2 51) + r3) - q2) * vstd.arithmetic.power2.pow2 153)) + ((((q4 * vstd.arithmetic.power2.pow2 51) + r4) - q3) * vstd.arithmetic.power2.pow2 204)) + 19) = (((((((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) + r0) + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)))
    (assume_25 : True → (((q4 * vstd.arithmetic.power2.pow2 51) * vstd.arithmetic.power2.pow2 204) = (q4 * vstd.arithmetic.power2.pow2 255)))
    (call_lemma_radix51_remainder_bound_ensures_0 : ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204)) < vstd.arithmetic.power2.pow2 255)
    (call_lemma_pow2_pos_1_ensures_0 : vstd.arithmetic.power2.pow2 255 > 0)
    (call_lemma_fundamental_div_mod_ensures_0 : (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) = ((vstd.arithmetic.power2.pow2 255 * (Vermilion.ediv (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255))) + (Vermilion.emod (((((Vermilion.Seq.index limbs 0 + (Vermilion.Seq.index limbs 1 * vstd.arithmetic.power2.pow2 51)) + (Vermilion.Seq.index limbs 2 * vstd.arithmetic.power2.pow2 102)) + (Vermilion.Seq.index limbs 3 * vstd.arithmetic.power2.pow2 153)) + (Vermilion.Seq.index limbs 4 * vstd.arithmetic.power2.pow2 204)) + 19) (vstd.arithmetic.power2.pow2 255))))
    (call_lemma_div_multiples_vanish_fancy_ensures_0 : (Vermilion.ediv ((vstd.arithmetic.power2.pow2 255 * q4) + ((((r0 + (r1 * vstd.arithmetic.power2.pow2 51)) + (r2 * vstd.arithmetic.power2.pow2 102)) + (r3 * vstd.arithmetic.power2.pow2 153)) + (r4 * vstd.arithmetic.power2.pow2 204))) (vstd.arithmetic.power2.pow2 255)) = q4) :
    q4 = (Vermilion.ediv (layer_a.specs.field_specs_u64.u64_5_as_nat limbs + 19) (vstd.arithmetic.power2.pow2 255)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct.ensures_31

end layer_a.lemmas.field_lemmas.compute_q_lemmas.lemma_radix51_telescoping_direct

