import Vermilion.Obligations
import add_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_0 f41d539a74e41122
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:173:16-173:40`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `f41d539a74e41122`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 173
  startColumn := 16
  endLine := 173
  endColumn := 40
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "assert"
  statementHash := "f41d539a74e41122"
}
@[vrml_obligation] theorem assert_0
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 n)
    (requires_5 : layer_a.specs.field_specs.fe51_limbs_bounded a n)
    (requires_6 : layer_a.specs.field_specs.fe51_limbs_bounded b n)
    (requires_7 : n < 63)
    (assume_8 : True)
    (assume_9 : (0 ≤ i) ∧ (i < 5)) :
    Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) i < Vermilion.Bits.shl 64 1 n := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_0

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_1 a59feed6da6b3724
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:174:16-174:40`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `a59feed6da6b3724`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 174
  startColumn := 16
  endLine := 174
  endColumn := 40
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "assert"
  statementHash := "a59feed6da6b3724"
}
@[vrml_obligation] theorem assert_1
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 n)
    (requires_5 : layer_a.specs.field_specs.fe51_limbs_bounded a n)
    (requires_6 : layer_a.specs.field_specs.fe51_limbs_bounded b n)
    (requires_7 : n < 63)
    (assume_8 : True)
    (assume_9 : (0 ≤ i) ∧ (i < 5))
    (assert_0 : Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) i < Vermilion.Bits.shl 64 1 n) :
    Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) i < Vermilion.Bits.shl 64 1 n := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_2 a14cda0f0a27fcf4
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:177:17-177:23`
- Rust/SST construct: requires not satisfied
- AssertId: `2`
- Statement hash: `a14cda0f0a27fcf4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 177
  startColumn := 17
  endLine := 177
  endColumn := 23
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "assert"
  statementHash := "a14cda0f0a27fcf4"
}
@[vrml_obligation] theorem assert_2
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 n)
    (requires_5 : layer_a.specs.field_specs.fe51_limbs_bounded a n)
    (requires_6 : layer_a.specs.field_specs.fe51_limbs_bounded b n)
    (requires_7 : n < 63)
    (assume_8 : True)
    (assume_9 : (0 ≤ i) ∧ (i < 5))
    (assert_0 : Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) i < Vermilion.Bits.shl 64 1 n)
    (assert_1 : Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) i < Vermilion.Bits.shl 64 1 n) :
    n < 63 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_2

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_bv_6_0 3f0388c87516230c
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_bv_6_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:175:16-175:71`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_6_0`
- Statement hash: `3f0388c87516230c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def assert_bv_6_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 175
  startColumn := 16
  endLine := 175
  endColumn := 71
  assertId := "bv_6_0"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "assert"
  statementHash := "3f0388c87516230c"
}
@[vrml_obligation] theorem assert_bv_6_0
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (loop_0_iteration_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_5 : n < 63) :
    (Vermilion.Bits.shl 64 1 n + Vermilion.Bits.shl 64 1 n) = Vermilion.Bits.shl 64 1 ((n + 1) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_bv_6_0

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_3 1748f9a74b03050f
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:170:46-170:90`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `1748f9a74b03050f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 170
  startColumn := 46
  endLine := 170
  endColumn := 90
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "assert"
  statementHash := "1748f9a74b03050f"
}
@[vrml_obligation] theorem assert_3
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 n)
    (requires_5 : layer_a.specs.field_specs.fe51_limbs_bounded a n)
    (requires_6 : layer_a.specs.field_specs.fe51_limbs_bounded b n)
    (requires_7 : n < 63)
    (assume_8 : True)
    (assume_9 : (0 ≤ i) ∧ (i < 5))
    (assert_0 : Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) i < Vermilion.Bits.shl 64 1 n)
    (assert_1 : Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) i < Vermilion.Bits.shl 64 1 n)
    (assert_2 : n < 63)
    (assume_13 : (Vermilion.Bits.shl 64 1 n + Vermilion.Bits.shl 64 1 n) = Vermilion.Bits.shl 64 1 ((n + 1) % 18446744073709551616)) :
    Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs a b)) i < Vermilion.Bits.shl 64 1 ((n + 1) % 18446744073709551616) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.ensures_4 67c3a080e7da23dc
/--
Generated VC `layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.ensures_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs:167:9-167:71`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `67c3a080e7da23dc`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs a b)) i⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs"
  startLine := 167
  startColumn := 9
  endLine := 167
  endColumn := 71
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate"
  kind := "ensures"
  statementHash := "67c3a080e7da23dc"
}
@[vrml_obligation] theorem ensures_4
    (a : layer_a.backend.serial.u64.field.FieldElement51)
    (b : layer_a.backend.serial.u64.field.FieldElement51)
    (n : Int)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs a) vrml_i0))))
    (requires_2 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) = 5)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs b) vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 n)
    (requires_5 : layer_a.specs.field_specs.fe51_limbs_bounded a n)
    (requires_6 : layer_a.specs.field_specs.fe51_limbs_bounded b n)
    (requires_7 : n < 63)
    (assume_8 : (∀ (i : Int), (((0 ≤ i) ∧ (i < 5)) → (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs (layer_a.specs.field_specs.spec_add_fe51_limbs a b)) i < Vermilion.Bits.shl 64 1 ((n + 1) % 18446744073709551616))))) :
    layer_a.specs.field_specs.fe51_limbs_bounded (layer_a.specs.field_specs.spec_add_fe51_limbs a b) ((n + 1) % 18446744073709551616) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate.ensures_4

end layer_a.lemmas.field_lemmas.add_lemmas.lemma_add_bounds_propagate

