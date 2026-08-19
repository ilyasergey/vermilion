import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace ghost_high_byte.high_bit_is_clear

-- vrml:begin ghost_high_byte.high_bit_is_clear.assert_0 d44233924eee30b9
/--
Generated VC `ghost_high_byte.high_bit_is_clear.assert_0`.

- Rust source: `case-studies/dalek-lite/probes/ghost_high_byte.rs:28:17-28:33`
- Rust/SST construct: requires not satisfied
- AssertId: `0`
- Statement hash: `d44233924eee30b9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/ghost_high_byte.rs"
  startLine := 28
  startColumn := 17
  endLine := 28
  endColumn := 33
  assertId := "0"
  functionName := "ghost_high_byte.high_bit_is_clear"
  kind := "assert"
  statementHash := "d44233924eee30b9"
}
@[vrml_obligation] theorem assert_0
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.index bytes 31 ≤ 127) :
    Vermilion.Seq.index bytes 31 ≤ 127 := by
  vrml
-- vrml:end ghost_high_byte.high_bit_is_clear.assert_0

-- vrml:begin ghost_high_byte.high_bit_is_clear.assert_bv_2_0 3fa0089d00925b06
/--
Generated VC `ghost_high_byte.high_bit_is_clear.assert_bv_2_0`.

- Rust source: `case-studies/dalek-lite/probes/ghost_high_byte.rs:26:16-26:35`
- Rust/SST construct: bit-vector assertion (`by (bit_vector)`)
- AssertId: `bv_2_0`
- Statement hash: `3fa0089d00925b06`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩
-/
def assert_bv_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/ghost_high_byte.rs"
  startLine := 26
  startColumn := 16
  endLine := 26
  endColumn := 35
  assertId := "bv_2_0"
  functionName := "ghost_high_byte.high_bit_is_clear"
  kind := "assert"
  statementHash := "3fa0089d00925b06"
}
@[vrml_obligation] theorem assert_bv_2_0
    (bytes : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.Seq.len bytes = 32)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.index bytes 31 ≤ 127) :
    Vermilion.Bits.shr 8 (Vermilion.Seq.index bytes 31) 7 = 0 := by
  vrml
-- vrml:end ghost_high_byte.high_bit_is_clear.assert_bv_2_0

-- vrml:begin ghost_high_byte.high_bit_is_clear.ensures_1 089597d3084061cd
/--
Generated VC `ghost_high_byte.high_bit_is_clear.ensures_1`.

- Rust source: `case-studies/dalek-lite/probes/ghost_high_byte.rs:20:9-20:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `089597d3084061cd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index bytes vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/ghost_high_byte.rs"
  startLine := 20
  startColumn := 9
  endLine := 20
  endColumn := 15
  assertId := "1"
  functionName := "ghost_high_byte.high_bit_is_clear"
  kind := "ensures"
  statementHash := "089597d3084061cd"
}
@[vrml_obligation] theorem ensures_1
    (bytes : (Vermilion.Seq Int))
    (requires_0 : Vermilion.Seq.len bytes = 32)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len bytes)) → Vermilion.inUnsignedRange 8 (Vermilion.Seq.index bytes vrml_i0))))
    (requires_2 : Vermilion.Seq.index bytes 31 ≤ 127)
    (assert_0 : Vermilion.Seq.index bytes 31 ≤ 127)
    (assume_4 : Vermilion.Bits.shr 8 (Vermilion.Seq.index bytes 31) 7 = 0) :
    True := by
  vrml
-- vrml:end ghost_high_byte.high_bit_is_clear.ensures_1

end ghost_high_byte.high_bit_is_clear

