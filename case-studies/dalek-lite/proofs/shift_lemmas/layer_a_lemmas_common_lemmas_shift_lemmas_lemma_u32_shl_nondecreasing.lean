import Vermilion.Obligations
import shift_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_0 dc806bb2f0d364a7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_by_sum
- AssertId: `0_0`
- Statement hash: `dc806bb2f0d364a7`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "0_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "dc806bb2f0d364a7"
}
@[vrml_obligation] theorem call_requires_0_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True) :
    Vermilion.natClip (Vermilion.natClip (b - a) + a) < 32 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_1 59a1759af33996da
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_by_sum
- AssertId: `0_1`
- Statement hash: `59a1759af33996da`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "0_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "59a1759af33996da"
}
@[vrml_obligation] theorem call_requires_0_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True) :
    (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (b - a) + a))) ≤ 4294967295 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_0_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_1 321e9ba01ec843cd
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `321e9ba01ec843cd`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "321e9ba01ec843cd"
}
@[vrml_obligation] theorem assert_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True)
    (call_lemma_u32_shl_by_sum_ensures_0 : Vermilion.Bits.shl 32 v (Vermilion.natClip (Vermilion.natClip (b - a) + a)) = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a) :
    Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_2 b4849f01410b8c70
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_pow2_strictly_increases
- AssertId: `2`
- Statement hash: `b4849f01410b8c70`
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "b4849f01410b8c70"
}
@[vrml_obligation] theorem call_requires_2
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True)
    (branch_0 : Vermilion.natClip (b - a) < b) :
    Vermilion.natClip (b - a) < b := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_3 d8d3e102e7d63dbe
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `d8d3e102e7d63dbe`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "3"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "d8d3e102e7d63dbe"
}
@[vrml_obligation] theorem assert_3
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True)
    (then_0_call_lemma_pow2_strictly_increases_ensures_0 : (Vermilion.natClip (b - a) < b) → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) < vstd.arithmetic.power2.pow2 b)) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_3

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_0 4d7496526de0d522
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `4_0`
- Statement hash: `4d7496526de0d522`
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "4_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "4d7496526de0d522"
}
@[vrml_obligation] theorem call_requires_4_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True)
    (assume_9 : True) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_1 a834a3c39532a4a7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `4_1`
- Statement hash: `a834a3c39532a4a7`
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "4_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "a834a3c39532a4a7"
}
@[vrml_obligation] theorem call_requires_4_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True)
    (assume_9 : True) :
    v ≥ 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_4_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_5 08fc03c45601bb4b
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `08fc03c45601bb4b`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "5"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "08fc03c45601bb4b"
}
@[vrml_obligation] theorem assert_5
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True)
    (assume_9 : True)
    (call_lemma_mul_inequality_ensures_0 : (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v) ≤ (vstd.arithmetic.power2.pow2 b * v)) :
    (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v) ≤ (vstd.arithmetic.power2.pow2 b * v) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_5

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_8 e562fa7400a34b18
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `e562fa7400a34b18`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "8"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "e562fa7400a34b18"
}
@[vrml_obligation] theorem assert_8
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True)
    (assume_9 : True → ((vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v) ≤ (vstd.arithmetic.power2.pow2 b * v)))
    (call_lemma_mul_is_commutative_ensures_0 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v))
    (call_lemma_mul_is_commutative_1_ensures_0 : (v * vstd.arithmetic.power2.pow2 b) = (vstd.arithmetic.power2.pow2 b * v)) :
    ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) ≤ (v * vstd.arithmetic.power2.pow2 b)) ∧ ((v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_8

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_0 7f8f8af30ae8aedb
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_is_mul
- AssertId: `9_0`
- Statement hash: `7f8f8af30ae8aedb`
-/
def call_requires_9_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "9_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "7f8f8af30ae8aedb"
}
@[vrml_obligation] theorem call_requires_9_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True → (((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) ≤ (v * vstd.arithmetic.power2.pow2 b)) ∧ ((v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295))) :
    (0 ≤ ((Vermilion.natClip (b - a)) % 4294967296)) ∧ (((Vermilion.natClip (b - a)) % 4294967296) < 32) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_1 c4a4f935a4531aa7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_is_mul
- AssertId: `9_1`
- Statement hash: `c4a4f935a4531aa7`
-/
def call_requires_9_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "9_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "c4a4f935a4531aa7"
}
@[vrml_obligation] theorem call_requires_9_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True → (((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) ≤ (v * vstd.arithmetic.power2.pow2 b)) ∧ ((v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295))) :
    (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (b - a)) % 4294967296)) ≤ 4294967295 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_9_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_10 c087f94dcebf8e50
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_10`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `c087f94dcebf8e50`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "10"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "c087f94dcebf8e50"
}
@[vrml_obligation] theorem assert_10
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True)
    (assume_7 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≤ vstd.arithmetic.power2.pow2 b))
    (assume_8 : True → (((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) ≤ (v * vstd.arithmetic.power2.pow2 b)) ∧ ((v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)))
    (call_lemma_u32_shl_is_mul_ensures_0 : Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) = (v * vstd.arithmetic.power2.pow2 ((Vermilion.natClip (b - a)) % 4294967296))) :
    Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_10

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_12 d4f5591dfa739bc7
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_12`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `d4f5591dfa739bc7`
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "12"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "d4f5591dfa739bc7"
}
@[vrml_obligation] theorem assert_12
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True)
    (call_lemma_mul_basics_4_ensures_0 : (1 * v) = v) :
    v = (1 * v) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_12

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_14 65b13f0648800fd5
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_14`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `65b13f0648800fd5`
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "14"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "65b13f0648800fd5"
}
@[vrml_obligation] theorem assert_14
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True → (v = (1 * v)))
    (assume_9 : True)
    (call_lemma_pow2_pos_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) > 0) :
    vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≥ 1 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_14

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_16 804eb28a0e0cafd3
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_16`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `16`
- Statement hash: `804eb28a0e0cafd3`
-/
def assert_16_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "16"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "804eb28a0e0cafd3"
}
@[vrml_obligation] theorem assert_16
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True → (v = (1 * v)))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≥ 1))
    (assume_10 : True)
    (call_lemma_mul_is_commutative_2_ensures_0 : (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v)) :
    (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_16

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_0 498820193aeb198e
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `17_0`
- Statement hash: `498820193aeb198e`
-/
def call_requires_17_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "17_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "498820193aeb198e"
}
@[vrml_obligation] theorem call_requires_17_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True → (v = (1 * v)))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≥ 1))
    (assume_10 : True → ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v))) :
    1 ≤ vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_1 0c2bdaf86deab1ae
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_mul_inequality
- AssertId: `17_1`
- Statement hash: `0c2bdaf86deab1ae`
-/
def call_requires_17_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "17_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "0c2bdaf86deab1ae"
}
@[vrml_obligation] theorem call_requires_17_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True → (v = (1 * v)))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≥ 1))
    (assume_10 : True → ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v))) :
    v ≥ 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_17_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_18 e9e07cb66aeab848
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_18`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `18`
- Statement hash: `e9e07cb66aeab848`
-/
def assert_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "18"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "e9e07cb66aeab848"
}
@[vrml_obligation] theorem assert_18
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True)
    (assume_8 : True → (v = (1 * v)))
    (assume_9 : True → (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) ≥ 1))
    (assume_10 : True → ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) = (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v)))
    (call_lemma_mul_inequality_1_ensures_0 : (1 * v) ≤ (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * v)) :
    v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_18

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_20 ec04a1e306f0ca7d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_20`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `20`
- Statement hash: `ec04a1e306f0ca7d`
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "20"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "ec04a1e306f0ca7d"
}
@[vrml_obligation] theorem assert_20
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True)
    (call_lemma_pow2_adds_ensures_0 : vstd.arithmetic.power2.pow2 (Vermilion.natClip (Vermilion.natClip (b - a) + a)) = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)) :
    vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_20

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_22 faf6994209fa50c9
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_22`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `faf6994209fa50c9`
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "22"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "assert"
  statementHash := "faf6994209fa50c9"
}
@[vrml_obligation] theorem assert_22
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)))
    (assume_9 : True)
    (call_lemma_mul_is_associative_ensures_0 : (v * (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)) = ((v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a))) * vstd.arithmetic.power2.pow2 a)) :
    (Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.assert_22

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_0 8f1cfdeb554c6c30
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_le
- AssertId: `23_0`
- Statement hash: `8f1cfdeb554c6c30`
-/
def call_requires_23_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "23_0"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "8f1cfdeb554c6c30"
}
@[vrml_obligation] theorem call_requires_23_0
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)))
    (assume_9 : True → ((Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295)) :
    v ≤ Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_0

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_1 7d9579c8a3e232c0
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_le
- AssertId: `23_1`
- Statement hash: `7d9579c8a3e232c0`
-/
def call_requires_23_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "23_1"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "7d9579c8a3e232c0"
}
@[vrml_obligation] theorem call_requires_23_1
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)))
    (assume_9 : True → ((Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295)) :
    a < 32 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_1

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_2 91106c22e96b403d
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: call lemma_u32_shl_le
- AssertId: `23_2`
- Statement hash: `91106c22e96b403d`
-/
def call_requires_23_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "23_2"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "call_requires"
  statementHash := "91106c22e96b403d"
}
@[vrml_obligation] theorem call_requires_23_2
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)))
    (assume_9 : True → ((Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295)) :
    (Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.call_requires_23_2

-- vrml:begin layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.ensures_24 fff37f279d58c477
/--
Generated VC `layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.ensures_24`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs:246:1-246:121`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `24`
- Statement hash: `fff37f279d58c477`
-/
def ensures_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs"
  startLine := 246
  startColumn := 1
  endLine := 246
  endColumn := 121
  assertId := "24"
  functionName := "layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing"
  kind := "ensures"
  statementHash := "fff37f279d58c477"
}
@[vrml_obligation] theorem ensures_24
    (v : Int)
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 v)
    (requires_1 : 0 ≤ a)
    (requires_2 : 0 ≤ b)
    (requires_3 : (a ≤ b) ∧ (b < 32))
    (requires_4 : (v * vstd.arithmetic.power2.pow2 b) ≤ 4294967295)
    (assume_5 : True → (Vermilion.Bits.shl 32 v b = Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a))) a))
    (assume_6 : True → (Vermilion.Bits.shl 32 v (Vermilion.natClip (b - a)) = (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_7 : True → (v ≤ (v * vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)))))
    (assume_8 : True → (vstd.arithmetic.power2.pow2 b = Vermilion.natClip (vstd.arithmetic.power2.pow2 (Vermilion.natClip (b - a)) * vstd.arithmetic.power2.pow2 a)))
    (assume_9 : True → ((Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296) * vstd.arithmetic.power2.pow2 a) ≤ 4294967295))
    (call_lemma_u32_shl_le_ensures_0 : Vermilion.Bits.shl 32 v a ≤ Vermilion.Bits.shl 32 (Vermilion.Bits.shl 32 v ((Vermilion.natClip (b - a)) % 4294967296)) a) :
    Vermilion.Bits.shl 32 v a ≤ Vermilion.Bits.shl 32 v b := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing.ensures_24

end layer_a.lemmas.common_lemmas.shift_lemmas.lemma_u32_shl_nondecreasing

