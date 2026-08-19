import Vermilion.Obligations
import keccak_rho.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_rho.impl__3.index

-- vrml:begin keccak_rho.impl__3.index.assert_0 67d7c343258711eb
/--
Generated VC `keccak_rho.impl__3.index.assert_0`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:24:17-24:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `67d7c343258711eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 24
  startColumn := 17
  endLine := 24
  endColumn := 20
  assertId := "0"
  functionName := "keccak_rho.impl__3.index"
  kind := "assert"
  statementHash := "67d7c343258711eb"
}
@[vrml_obligation] theorem assert_0
    (self : keccak_rho.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1) :
    Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.impl__3.index.assert_0

-- vrml:begin keccak_rho.impl__3.index.assert_1 f226bc4588d1712a
/--
Generated VC `keccak_rho.impl__3.index.assert_1`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:24:17-24:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `f226bc4588d1712a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 24
  startColumn := 17
  endLine := 24
  endColumn := 24
  assertId := "1"
  functionName := "keccak_rho.impl__3.index"
  kind := "assert"
  statementHash := "f226bc4588d1712a"
}
@[vrml_obligation] theorem assert_1
    (self : keccak_rho.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1)) :
    Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.impl__3.index.assert_1

-- vrml:begin keccak_rho.impl__3.index.assert_2 952e66e9682a0f00
/--
Generated VC `keccak_rho.impl__3.index.assert_2`.

- Rust source: `case-studies/aeneas/probes/keccak_rho.rs:24:10-24:25`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `952e66e9682a0f00`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_rho.rs"
  startLine := 24
  startColumn := 10
  endLine := 24
  endColumn := 25
  assertId := "2"
  functionName := "keccak_rho.impl__3.index"
  kind := "assert"
  statementHash := "952e66e9682a0f00"
}
@[vrml_obligation] theorem assert_2
    (self : keccak_rho.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_rho.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_rho.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1)) :
    (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (keccak_rho.StateArray.get_StateArray__0 self)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_rho.impl__3.index.assert_2

end keccak_rho.impl__3.index

