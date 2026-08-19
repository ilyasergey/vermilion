import Vermilion.Obligations
import pow2k_lemmas.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_0 1a5178465a685a36
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_0`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:179:5-179:37`
- Rust/SST construct: call lemma_shr_51_fits_u64
- AssertId: `0`
- Statement hash: `1a5178465a685a36`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 179
  startColumn := 5
  endLine := 179
  endColumn := 37
  assertId := "0"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "call_requires"
  statementHash := "1a5178465a685a36"
}
@[vrml_obligation] theorem call_requires_0
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_0

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_1 c7468242edae191b
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_1`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:180:5-180:37`
- Rust/SST construct: call lemma_shr_51_fits_u64
- AssertId: `1`
- Statement hash: `c7468242edae191b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 180
  startColumn := 5
  endLine := 180
  endColumn := 37
  assertId := "1"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "call_requires"
  statementHash := "c7468242edae191b"
}
@[vrml_obligation] theorem call_requires_1
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound)
    (call_lemma_shr_51_fits_u64_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_1

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_2 060b0c49707515a9
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_2`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:181:5-181:37`
- Rust/SST construct: call lemma_shr_51_fits_u64
- AssertId: `2`
- Statement hash: `060b0c49707515a9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def call_requires_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 181
  startColumn := 5
  endLine := 181
  endColumn := 37
  assertId := "2"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "call_requires"
  statementHash := "060b0c49707515a9"
}
@[vrml_obligation] theorem call_requires_2
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound)
    (call_lemma_shr_51_fits_u64_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_1_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val a ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_2

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_3 f4798341c24982e9
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_3`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:182:5-182:37`
- Rust/SST construct: call lemma_shr_51_fits_u64
- AssertId: `3`
- Statement hash: `f4798341c24982e9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 182
  startColumn := 5
  endLine := 182
  endColumn := 37
  assertId := "3"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "call_requires"
  statementHash := "f4798341c24982e9"
}
@[vrml_obligation] theorem call_requires_3
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound)
    (call_lemma_shr_51_fits_u64_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_1_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_2_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val a ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_3

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_4 fd4ef2111284278f
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_4`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:183:5-183:37`
- Rust/SST construct: call lemma_shr_51_fits_u64
- AssertId: `4`
- Statement hash: `fd4ef2111284278f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 183
  startColumn := 5
  endLine := 183
  endColumn := 37
  assertId := "4"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "call_requires"
  statementHash := "fd4ef2111284278f"
}
@[vrml_obligation] theorem call_requires_4
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound)
    (call_lemma_shr_51_fits_u64_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_1_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_2_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_3_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51 := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.call_requires_4

-- vrml:begin layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.ensures_5 f91fd000b1146999
/--
Generated VC `layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.ensures_5`.

- Rust source: `case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs:177:9-177:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `f91fd000b1146999`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index a vrml_i0⟩
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/upstream/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs"
  startLine := 177
  startColumn := 9
  endLine := 177
  endColumn := 29
  assertId := "5"
  functionName := "layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded"
  kind := "ensures"
  statementHash := "f91fd000b1146999"
}
@[vrml_obligation] theorem ensures_5
    (a : (Vermilion.Seq Int))
    (bound : Int)
    (requires_0 : Vermilion.Seq.len a = 5)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len a)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index a vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 bound)
    (requires_3 : (19 * bound) ≤ 18446744073709551615)
    (requires_4 : ((77 * (bound * bound)) + 18446744073709551615) ≤ Vermilion.Bits.shl 128 (18446744073709551615 % 340282366920938463463374607431768211456) 51)
    (requires_5 : layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_0_val_boundaries a bound)
    (call_lemma_shr_51_fits_u64_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c0_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_1_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c1_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_2_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c2_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_3_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c3_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456))
    (call_lemma_shr_51_fits_u64_4_ensures_0 : Vermilion.Bits.shr 128 (layer_a.lemmas.field_lemmas.pow2k_lemmas.c4_val a) 51 ≤ (18446744073709551615 % 340282366920938463463374607431768211456)) :
    layer_a.lemmas.field_lemmas.pow2k_lemmas.ci_val_boundaries a := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded.ensures_5

end layer_a.lemmas.field_lemmas.pow2k_lemmas.lemma_c_i_shift_bounded

