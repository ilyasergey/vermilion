import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.hi

-- vrml:begin wide_math_u256_basics.impl__7.hi.assert_0 3c98626cd7465b66
/--
Generated VC `wide_math_u256_basics.impl__7.hi.assert_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:63:10-63:19`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `3c98626cd7465b66`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 63
  startColumn := 10
  endLine := 63
  endColumn := 19
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__7.hi"
  kind := "assert"
  statementHash := "3c98626cd7465b66"
}
@[vrml_obligation] theorem assert_0
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0)))) :
    (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.hi.assert_0

-- vrml:begin wide_math_u256_basics.impl__7.hi.assert_1 a321f05a935298f6
/--
Generated VC `wide_math_u256_basics.impl__7.hi.assert_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:63:33-63:42`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `a321f05a935298f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 63
  startColumn := 33
  endLine := 63
  endColumn := 42
  assertId := "1"
  functionName := "wide_math_u256_basics.impl__7.hi"
  kind := "assert"
  statementHash := "a321f05a935298f6"
}
@[vrml_obligation] theorem assert_1
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) :
    (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.hi.assert_1

-- vrml:begin wide_math_u256_basics.impl__7.hi.assert_2 6f688e91dfa1a800
/--
Generated VC `wide_math_u256_basics.impl__7.hi.assert_2`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:63:31-63:58`
- Rust/SST construct: possible bit shift underflow/overflow
- AssertId: `2`
- Statement hash: `6f688e91dfa1a800`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 63
  startColumn := 31
  endLine := 63
  endColumn := 58
  assertId := "2"
  functionName := "wide_math_u256_basics.impl__7.hi"
  kind := "assert"
  statementHash := "6f688e91dfa1a800"
}
@[vrml_obligation] theorem assert_2
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_1 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) :
    (0 ≤ 64) ∧ (64 < 128) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.hi.assert_2

-- vrml:begin wide_math_u256_basics.impl__7.hi.ensures_3 efd956d38076b361
/--
Generated VC `wide_math_u256_basics.impl__7.hi.ensures_3`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:61:13-61:72`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `efd956d38076b361`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 61
  startColumn := 13
  endLine := 61
  endColumn := 72
  assertId := "3"
  functionName := "wide_math_u256_basics.impl__7.hi"
  kind := "ensures"
  statementHash := "efd956d38076b361"
}
@[vrml_obligation] theorem ensures_3
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_1 : (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (assert_2 : (0 ≤ 64) ∧ (64 < 128)) :
    Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64) = Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3) % 340282366920938463463374607431768211456) 64) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.hi.ensures_3

end wide_math_u256_basics.impl__7.hi

