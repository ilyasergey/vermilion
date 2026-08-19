import Vermilion.Obligations
import wide_math_u256_basics.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_u256_basics.impl__7.try_into_u128

-- vrml:begin wide_math_u256_basics.impl__7.try_into_u128.assert_0 3c98626cd7465b66
/--
Generated VC `wide_math_u256_basics.impl__7.try_into_u128.assert_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:84:12-84:21`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `0`
- Statement hash: `3c98626cd7465b66`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 84
  startColumn := 12
  endLine := 84
  endColumn := 21
  assertId := "0"
  functionName := "wide_math_u256_basics.impl__7.try_into_u128"
  kind := "assert"
  statementHash := "3c98626cd7465b66"
}
@[vrml_obligation] theorem assert_0
    (self : wide_math_u256_basics.U256)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0)))) :
    (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.try_into_u128.assert_0

-- vrml:begin wide_math_u256_basics.impl__7.try_into_u128.assert_1 c57bbbf40c50f0e4
/--
Generated VC `wide_math_u256_basics.impl__7.try_into_u128.assert_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:84:30-84:39`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `c57bbbf40c50f0e4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 84
  startColumn := 30
  endLine := 84
  endColumn := 39
  assertId := "1"
  functionName := "wide_math_u256_basics.impl__7.try_into_u128"
  kind := "assert"
  statementHash := "c57bbbf40c50f0e4"
}
@[vrml_obligation] theorem assert_1
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (branch_0 : Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) :
    (0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.try_into_u128.assert_1

-- vrml:begin wide_math_u256_basics.impl__7.try_into_u128.ensures_3_0 666196f761790205
/--
Generated VC `wide_math_u256_basics.impl__7.try_into_u128.ensures_3_0`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:81:13-82:82`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `666196f761790205`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 81
  startColumn := 13
  endLine := 82
  endColumn := 82
  assertId := "3_0"
  functionName := "wide_math_u256_basics.impl__7.try_into_u128"
  kind := "ensures"
  statementHash := "666196f761790205"
}
@[vrml_obligation] theorem ensures_3_0
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (tmp__2 : (core.option.Option Int))
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (then_0_assert_1 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) → ((0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_0_assume_5 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) → (tmp_ ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0)))
    (else_0_assume_4 : (¬ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0)) → (tmp_ ↔ False))
    (then_1_assume_7 : tmp_ → Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (then_1_assume_8 : tmp_ → (tmp__2 = core.option.Option.Some (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64))))
    (else_1_assume_7 : (¬ tmp_) → (tmp__2 = core.option.Option.None (V := Int)))
    (assume_9 : Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 tmp__2)) :
    ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) ∧ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0)) → (tmp__2 = core.option.Option.Some (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64))) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.try_into_u128.ensures_3_0

-- vrml:begin wide_math_u256_basics.impl__7.try_into_u128.ensures_3_1 ac5722d8b57a7124
/--
Generated VC `wide_math_u256_basics.impl__7.try_into_u128.ensures_3_1`.

- Rust source: `case-studies/percolator/wide_math_u256_basics.rs:83:13-83:67`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `ac5722d8b57a7124`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0⟩
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_u256_basics.rs"
  startLine := 83
  startColumn := 13
  endLine := 83
  endColumn := 67
  assertId := "3_1"
  functionName := "wide_math_u256_basics.impl__7.try_into_u128"
  kind := "ensures"
  statementHash := "ac5722d8b57a7124"
}
@[vrml_obligation] theorem ensures_3_1
    (self : wide_math_u256_basics.U256)
    (tmp_ : Prop)
    (tmp__2 : (core.option.Option Int))
    (requires_0 : Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self) = 4)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) vrml_i0))))
    (assert_0 : (0 ≤ 2) ∧ (2 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self)))
    (then_0_assert_1 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) → ((0 ≤ 3) ∧ (3 < Vermilion.Seq.len (wide_math_u256_basics.U256.get_U256__0 self))))
    (then_0_assume_5 : (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) → (tmp_ ↔ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0)))
    (else_0_assume_4 : (¬ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0)) → (tmp_ ↔ False))
    (then_1_assume_7 : tmp_ → Vermilion.inUnsignedRange 128 (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64)))
    (then_1_assume_8 : tmp_ → (tmp__2 = core.option.Option.Some (Vermilion.Bits.bor 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 0) % 340282366920938463463374607431768211456) (Vermilion.Bits.shl 128 ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 1) % 340282366920938463463374607431768211456) 64))))
    (else_1_assume_7 : (¬ tmp_) → (tmp__2 = core.option.Option.None (V := Int)))
    (assume_9 : Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 tmp__2)) :
    (¬ ((Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 2 = 0) ∧ (Vermilion.Seq.index (wide_math_u256_basics.U256.get_U256__0 self) 3 = 0))) → (tmp__2 = core.option.Option.None (V := Int)) := by
  vrml
-- vrml:end wide_math_u256_basics.impl__7.try_into_u128.ensures_3_1

end wide_math_u256_basics.impl__7.try_into_u128

