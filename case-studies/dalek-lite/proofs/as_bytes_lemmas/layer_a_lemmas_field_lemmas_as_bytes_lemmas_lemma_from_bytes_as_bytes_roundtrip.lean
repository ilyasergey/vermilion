import Vermilion.Obligations
import as_bytes_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_1 cbefe2b10cf4e03f
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:405:16-405:35`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `cbefe2b10cf4e03f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 405
  startColumn := 16
  endLine := 405
  endColumn := 35
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "assert"
  statementHash := "cbefe2b10cf4e03f"
}
@[vrml_obligation] theorem assert_1
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True)
    (call_pow255_gt_19_ensures_0 : vstd.arithmetic.power2.pow2 255 > 19) :
    (0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_2 1549e347cc9c8063
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:412:17-412:54`
- Rust/SST construct: call lemma_mod_bound
- AssertId: `2`
- Statement hash: `1549e347cc9c8063`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 412
  startColumn := 17
  endLine := 412
  endColumn := 54
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "call_requires"
  statementHash := "1549e347cc9c8063"
}
@[vrml_obligation] theorem call_requires_2
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True)
    (assume_11 : True) :
    0 < layer_a.specs.field_specs_u64.p 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_2

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_3 d7e59afcd125b9d6
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:411:20-411:33`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `d7e59afcd125b9d6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 411
  startColumn := 20
  endLine := 411
  endColumn := 33
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "assert"
  statementHash := "d7e59afcd125b9d6"
}
@[vrml_obligation] theorem assert_3
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True)
    (assume_11 : True)
    (call_lemma_mod_bound_ensures_0 : (0 ≤ (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))) ∧ ((Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < layer_a.specs.field_specs_u64.p 0)) :
    (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < layer_a.specs.field_specs_u64.p 0 := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_3

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_0 c1e72e33fe447480
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:414:13-414:57`
- Rust/SST construct: call lemma_small_mod
- AssertId: `4_0`
- Statement hash: `c1e72e33fe447480`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def call_requires_4_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 414
  startColumn := 13
  endLine := 414
  endColumn := 57
  assertId := "4_0"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "call_requires"
  statementHash := "c1e72e33fe447480"
}
@[vrml_obligation] theorem call_requires_4_0
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True)
    (assume_11 : True → ((Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < layer_a.specs.field_specs_u64.p 0)) :
    (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_0

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_1 0c57959e20923616
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:414:13-414:57`
- Rust/SST construct: call lemma_small_mod
- AssertId: `4_1`
- Statement hash: `0c57959e20923616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def call_requires_4_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 414
  startColumn := 13
  endLine := 414
  endColumn := 57
  assertId := "4_1"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "call_requires"
  statementHash := "0c57959e20923616"
}
@[vrml_obligation] theorem call_requires_4_1
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True)
    (assume_11 : True → ((Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < layer_a.specs.field_specs_u64.p 0)) :
    0 < vstd.arithmetic.power2.pow2 255 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_4_1

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_5 25757fbd0b81c9d0
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:410:16-410:48`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `25757fbd0b81c9d0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 410
  startColumn := 16
  endLine := 410
  endColumn := 48
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "assert"
  statementHash := "25757fbd0b81c9d0"
}
@[vrml_obligation] theorem assert_5
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True)
    (assume_11 : True → ((Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) < layer_a.specs.field_specs_u64.p 0))
    (call_lemma_small_mod_ensures_0 : (Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (vstd.arithmetic.power2.pow2 255)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))) :
    (Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (vstd.arithmetic.power2.pow2 255)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_5

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_6 62f103189c8026c9
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_6`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:420:13-420:50`
- Rust/SST construct: call lemma_mod_twice
- AssertId: `6`
- Statement hash: `62f103189c8026c9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 420
  startColumn := 13
  endLine := 420
  endColumn := 50
  assertId := "6"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "call_requires"
  statementHash := "62f103189c8026c9"
}
@[vrml_obligation] theorem call_requires_6
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True → ((Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (vstd.arithmetic.power2.pow2 255)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))))
    (assume_11 : True) :
    layer_a.specs.field_specs_u64.p 0 > 0 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.call_requires_6

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_7 db47b6dc87c4c608
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_7`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:419:16-419:42`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `db47b6dc87c4c608`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 419
  startColumn := 16
  endLine := 419
  endColumn := 42
  assertId := "7"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "assert"
  statementHash := "db47b6dc87c4c608"
}
@[vrml_obligation] theorem assert_7
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True → ((Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (vstd.arithmetic.power2.pow2 255)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))))
    (assume_11 : True)
    (call_lemma_mod_twice_ensures_0 : (Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))) :
    (Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) := by
  iterate 13 (try first | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_extended_gcd]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.factorial]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.shifted_binomial_sum]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.number_theory_lemmas.product_of_multiples]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u8]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u16]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u32]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u64]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.pow_lemmas.pow2_sum_u128]; try norm_num) | (rw [layer_a.lemmas.common_lemmas.sum_lemmas.seq_sum]; try norm_num))
  vrml [layer_a.specs.field_specs.sum_of_limbs_bounded, layer_a.backend.serial.u64.field.impl__5.add_req, vstd.arithmetic.power2.pow2, layer_a.specs.field_specs_u64.u64_5_as_nat, layer_a.specs.field_specs.spec_add_fe51_limbs, layer_a.specs.field_specs_u64.p, layer_a.specs.field_specs_u64.field_canonical, layer_a.specs.field_specs_u64.u64_5_as_field_canonical, layer_a.specs.field_specs.fe51_as_canonical_nat, layer_a.specs.field_specs.field_add, layer_a.backend.serial.u64.field.impl__5.obeys_add_spec, layer_a.backend.serial.u64.field.impl__5.add_spec, layer_a.specs.field_specs.fe51_as_nat, layer_a.specs.field_specs.u64_5_bounded, layer_a.specs.field_specs.fe51_limbs_bounded, layer_a.specs.field_specs_u64.mask51, layer_a.specs.field_specs_u64.spec_reduce, layer_a.backend.serial.u64.field.LOW_51_BIT_MASK, layer_a.backend.serial.u64.field.impl__8.sub_req, layer_a.specs.field_specs.field_sub, layer_a.backend.serial.u64.field.impl__8.obeys_sub_spec, layer_a.specs.field_specs.spec_sub_limbs, layer_a.backend.serial.u64.field.impl__8.sub_spec, layer_a.backend.serial.u64.field.impl__11.mul_req, layer_a.lemmas.field_lemmas.mul_lemmas.mul_term_product_bounds_spec, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_0_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c0_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c1_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c2_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c3_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_c4_val, layer_a.lemmas.field_lemmas.mul_lemmas.mul_ci_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_out_val_boundaries, layer_a.lemmas.field_lemmas.mul_lemmas.mul_return, layer_a.lemmas.field_lemmas.mul_lemmas.mul_boundary_spec, layer_a.specs.field_specs.field_mul, layer_a.backend.serial.u64.field.impl__11.obeys_mul_spec, layer_a.backend.serial.u64.field.impl__11.mul_spec, layer_a.lemmas.field_lemmas.negate_lemmas.all_neg_limbs_positive, layer_a.specs.field_specs_u64.sixteen_p_vec, layer_a.specs.field_specs_u64.pre_reduce_limbs, layer_a.specs.field_specs_u64.spec_negate, layer_a.backend.serial.u64.field.impl__13.neg_req, layer_a.specs.field_specs.field_neg, layer_a.backend.serial.u64.field.impl__13.obeys_neg_spec, layer_a.backend.serial.u64.field.impl__13.neg_spec, vstd.slice.len_returns_clause_autospec, layer_a.specs.core_specs.spec_load8_at, layer_a.specs.core_specs.u8_32_as_nat, layer_a.specs.field_specs_u64.compute_q_arr, layer_a.specs.field_specs_u64.compute_unmasked_limbs, layer_a.specs.field_specs_u64.compute_q_spec, layer_a.specs.field_specs_u64.reduce_with_q_spec, layer_a.specs.field_specs_u64.bit_arrange, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.bytes_match_limbs_packing, layer_a.lemmas.field_lemmas.pow2k_lemmas.term_product_bounds_spec, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a2_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a3_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a4_0_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.carry_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.a0_2_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.ai_val_boundaries, layer_a.lemmas.field_lemmas.pow2k_lemmas.a1_1_val, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_return, layer_a.lemmas.field_lemmas.pow2k_lemmas.pow2k_loop_boundary_spec, vstd.bits.low_bits_mask, layer_a.specs.primality_specs.is_prime, layer_a.lemmas.common_lemmas.number_theory_lemmas.spec_mod_inverse, layer_a.specs.core_specs.word64_from_bytes, layer_a.specs.edwards_specs.edwards_x, layer_a.specs.edwards_specs.edwards_y, layer_a.specs.edwards_specs.edwards_z, layer_a.specs.edwards_specs.edwards_t, layer_a.specs.edwards_specs.edwards_point_limbs_bounded, layer_a.specs.field_specs.spec_fe51_as_bytes, layer_a.core_assumes.seq_from32, layer_a.specs.field_specs.as_bytes_post, layer_a.specs.field_specs.from_bytes_post, layer_a.core_assumes.seq_to_array_32, layer_a.specs.field_specs.field_element_from_bytes, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb0_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb1_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb2_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb3_byte_contribution, layer_a.lemmas.field_lemmas.limbs_to_bytes_lemmas.limb4_byte_contribution, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mul_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_div_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_close_mod_u8_t51_cond, layer_a.lemmas.field_lemmas.load8_lemmas.pow2_mul_div_mod_small_mod_u8_t51_cond, layer_a.specs.field_specs.field_inv, layer_a.specs.field_specs.field_square, layer_a.constants.SQRT_M1, layer_a.specs.field_specs.sqrt_m1, layer_a.specs.field_specs.is_negative, layer_a.specs.field_specs.nat_invsqrt, layer_a.specs.field_specs.field_abs, layer_a.specs.scalar52_specs.group_order]
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_7

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_8 8e0e95d64c46ca3b
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_8`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:404:12-404:79`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `8e0e95d64c46ca3b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 404
  startColumn := 12
  endLine := 404
  endColumn := 79
  assertId := "8"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "assert"
  statementHash := "8e0e95d64c46ca3b"
}
@[vrml_obligation] theorem assert_8
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True)
    (assume_9 : True → ((0 < layer_a.specs.field_specs_u64.p 0) ∧ (layer_a.specs.field_specs_u64.p 0 < vstd.arithmetic.power2.pow2 255)))
    (assume_10 : True → ((Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (vstd.arithmetic.power2.pow2 255)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0))))
    (assume_11 : True → ((Vermilion.emod (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)) (layer_a.specs.field_specs_u64.p 0)) = (Vermilion.emod (layer_a.specs.field_specs.fe51_as_nat fe_orig) (layer_a.specs.field_specs_u64.p 0)))) :
    layer_a.specs.field_specs.fe51_as_canonical_nat fe_decoded = layer_a.specs.field_specs.fe51_as_canonical_nat fe_orig := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.assert_8

-- vrml:begin layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.ensures_9 d71c6d41c7545808
/--
Generated VC `layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.ensures_9`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs:400:9-400:76`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `9`
- Statement hash: `d71c6d41c7545808`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0⟩ ⟨Vermilion.Seq.index bytes vrml_i0⟩ ⟨Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0⟩
-/
def ensures_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs"
  startLine := 400
  startColumn := 9
  endLine := 400
  endColumn := 76
  assertId := "9"
  functionName := "layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip"
  kind := "ensures"
  statementHash := "d71c6d41c7545808"
}
@[vrml_obligation] theorem ensures_9
    (fe_orig : layer_a.backend.serial.u64.field.FieldElement51)
    (bytes : (Vermilion.Seq Int))
    (fe_decoded : layer_a.backend.serial.u64.field.FieldElement51)
    (requires_0 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_orig) vrml_i0))))
    (requires_2 : Vermilion.Seq.len bytes = 32)
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_4 : Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) = 5)
    (requires_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (layer_a.backend.serial.u64.field.FieldElement51.get_FieldElement51_limbs fe_decoded) vrml_i0))))
    (requires_6 : layer_a.specs.field_specs.as_bytes_post fe_orig bytes)
    (requires_7 : layer_a.specs.field_specs.from_bytes_post bytes fe_decoded)
    (assume_8 : True → (layer_a.specs.field_specs.fe51_as_canonical_nat fe_decoded = layer_a.specs.field_specs.fe51_as_canonical_nat fe_orig)) :
    layer_a.specs.field_specs.fe51_as_canonical_nat fe_decoded = layer_a.specs.field_specs.fe51_as_canonical_nat fe_orig := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip.ensures_9

end layer_a.lemmas.field_lemmas.as_bytes_lemmas.lemma_from_bytes_as_bytes_roundtrip

