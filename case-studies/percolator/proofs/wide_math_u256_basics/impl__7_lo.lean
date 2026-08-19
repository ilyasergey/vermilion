import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.lo

-- vrml:begin wide_math_u256_basics.impl__7.lo.assert_0 423190691db03c56
/--
Generated VC `wide_math_u256_basics.impl__7.lo.assert_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:55:10-55:19`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `423190691db03c56`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 55
  startColumn := 10
  endLine := 55
  endColumn := 19
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__7.lo"
  kind := "assert"
  statementHash := "423190691db03c56"
}
@[vrml_obligation] theorem assert_0
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0)))) :
    (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.lo.assert_0

-- vrml:begin wide_math_u256_basics.impl__7.lo.assert_1 ef5babf91f3a2db6
/--
Generated VC `wide_math_u256_basics.impl__7.lo.assert_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:55:33-55:42`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `ef5babf91f3a2db6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 55
  startColumn := 33
  endLine := 55
  endColumn := 42
  assertId := "1"
  functionName := "wide_math_u256_basics.impl__7.lo"
  kind := "assert"
  statementHash := "ef5babf91f3a2db6"
}
@[vrml_obligation] theorem assert_1
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) :
    (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.lo.assert_1

-- vrml:begin wide_math_u256_basics.impl__7.lo.assert_2 76dad4dd951e5d30
/--
Generated VC `wide_math_u256_basics.impl__7.lo.assert_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:55:31-55:58`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `2`
- Statement hash: `76dad4dd951e5d30`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 55
  startColumn := 31
  endLine := 55
  endColumn := 58
  assertId := "2"
  functionName := "wide_math_u256_basics.impl__7.lo"
  kind := "assert"
  statementHash := "76dad4dd951e5d30"
}
@[vrml_obligation] theorem assert_2
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_1 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) :
    (0 ≤ 64) ∧ (64 < 128) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.lo.assert_2

-- vrml:begin wide_math_u256_basics.impl__7.lo.ensures_3 7990827db0e105c1
/--
Generated VC `wide_math_u256_basics.impl__7.lo.ensures_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:53:13-53:72`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `7990827db0e105c1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 53
  startColumn := 13
  endLine := 53
  endColumn := 72
  assertId := "3"
  functionName := "wide_math_u256_basics.impl__7.lo"
  kind := "ensures"
  statementHash := "7990827db0e105c1"
}
@[vrml_obligation] theorem ensures_3
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_1 : (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_2 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64) = Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.lo.ensures_3

end wide_math_u256_basics.impl__7.lo

