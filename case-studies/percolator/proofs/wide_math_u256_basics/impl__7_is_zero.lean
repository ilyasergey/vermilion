import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.is_zero

-- vrml:begin wide_math_u256_basics.impl__7.is_zero.assert_0 423190691db03c56
/--
Generated VC `wide_math_u256_basics.impl__7.is_zero.assert_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:74:9-74:18`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `423190691db03c56`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 74
  startColumn := 9
  endLine := 74
  endColumn := 18
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__7.is_zero"
  kind := "assert"
  statementHash := "423190691db03c56"
}
@[vrml_obligation] theorem assert_0
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0)))) :
    (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.is_zero.assert_0

-- vrml:begin wide_math_u256_basics.impl__7.is_zero.assert_1 b24864ea2c25b7c2
/--
Generated VC `wide_math_u256_basics.impl__7.is_zero.assert_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:74:27-74:36`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `b24864ea2c25b7c2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 74
  startColumn := 27
  endLine := 74
  endColumn := 36
  assertId := "1"
  functionName := "wide_math_u256_basics.impl__7.is_zero"
  kind := "assert"
  statementHash := "b24864ea2c25b7c2"
}
@[vrml_obligation] theorem assert_1
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (branch_0 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) :
    (0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.is_zero.assert_1

-- vrml:begin wide_math_u256_basics.impl__7.is_zero.assert_2 be5fd1ffe82c4457
/--
Generated VC `wide_math_u256_basics.impl__7.is_zero.assert_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:74:45-74:54`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `be5fd1ffe82c4457`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 74
  startColumn := 45
  endLine := 74
  endColumn := 54
  assertId := "2"
  functionName := "wide_math_u256_basics.impl__7.is_zero"
  kind := "assert"
  statementHash := "be5fd1ffe82c4457"
}
@[vrml_obligation] theorem assert_2
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (then_0_assert_1 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → ((0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_0_assume_5 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → (tmp_ ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1 = 0)))
    (else_0_assume_4 : (¬ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0)) → (tmp_ ↔ False))
    (branch_1 : tmp_) :
    (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.is_zero.assert_2

-- vrml:begin wide_math_u256_basics.impl__7.is_zero.assert_3 e628cde6a1be74b4
/--
Generated VC `wide_math_u256_basics.impl__7.is_zero.assert_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:74:63-74:72`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `3`
- Statement hash: `e628cde6a1be74b4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 74
  startColumn := 63
  endLine := 74
  endColumn := 72
  assertId := "3"
  functionName := "wide_math_u256_basics.impl__7.is_zero"
  kind := "assert"
  statementHash := "e628cde6a1be74b4"
}
@[vrml_obligation] theorem assert_3
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (then_0_assert_1 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → ((0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_0_assume_5 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → (tmp_ ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1 = 0)))
    (else_0_assume_4 : (¬ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0)) → (tmp_ ↔ False))
    (then_1_assert_2 : tmp_ → ((0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_1_assume_8 : tmp_ → (tmp__2 ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0)))
    (else_1_assume_7 : (¬ tmp_) → (tmp__2 ↔ False))
    (branch_2 : tmp__2) :
    (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.is_zero.assert_3

-- vrml:begin wide_math_u256_basics.impl__7.is_zero.ensures_4 222f0bf05a5e2630
/--
Generated VC `wide_math_u256_basics.impl__7.is_zero.ensures_4`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:69:13-72:14`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `222f0bf05a5e2630`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 69
  startColumn := 13
  endLine := 72
  endColumn := 14
  assertId := "4"
  functionName := "wide_math_u256_basics.impl__7.is_zero"
  kind := "ensures"
  statementHash := "222f0bf05a5e2630"
}
@[vrml_obligation] theorem ensures_4
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (tmp__2 : Prop)
    (tmp__3 : Prop)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 0) ∧ (0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (then_0_assert_1 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → ((0 ≤ 1) ∧ (1 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_0_assume_5 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) → (tmp_ ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1 = 0)))
    (else_0_assume_4 : (¬ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0)) → (tmp_ ↔ False))
    (then_1_assert_2 : tmp_ → ((0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_1_assume_8 : tmp_ → (tmp__2 ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0)))
    (else_1_assume_7 : (¬ tmp_) → (tmp__2 ↔ False))
    (then_2_assert_3 : tmp__2 → ((0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_2_assume_11 : tmp__2 → (tmp__3 ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0)))
    (else_2_assume_10 : (¬ tmp__2) → (tmp__3 ↔ False)) :
    tmp__3 ↔ ((((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0 = 0) ∧ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1 = 0)) ∧ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0)) ∧ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.is_zero.ensures_4

end wide_math_u256_basics.impl__7.is_zero

