import Vermilion.Obligations
import keccak_iota.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace keccak_iota.impl__6.index

-- vrml:begin keccak_iota.impl__6.index.assert_0 64b4f4b07e6db367
/--
Generated VC `keccak_iota.impl__6.index.assert_0`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:37:17-37:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `64b4f4b07e6db367`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 37
  startColumn := 17
  endLine := 37
  endColumn := 20
  assertId := "0"
  functionName := "keccak_iota.impl__6.index"
  kind := "assert"
  statementHash := "64b4f4b07e6db367"
}
@[vrml_obligation] theorem assert_0
    (self : keccak_iota.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1) :
    Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.impl__6.index.assert_0

-- vrml:begin keccak_iota.impl__6.index.assert_1 0205b0a3e5b7694e
/--
Generated VC `keccak_iota.impl__6.index.assert_1`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:37:17-37:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `0205b0a3e5b7694e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 37
  startColumn := 17
  endLine := 37
  endColumn := 24
  assertId := "1"
  functionName := "keccak_iota.impl__6.index"
  kind := "assert"
  statementHash := "0205b0a3e5b7694e"
}
@[vrml_obligation] theorem assert_1
    (self : keccak_iota.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1)) :
    Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.impl__6.index.assert_1

-- vrml:begin keccak_iota.impl__6.index.assert_2 15c3072f6bda1878
/--
Generated VC `keccak_iota.impl__6.index.assert_2`.

- Rust source: `case-studies/aeneas/probes/keccak_iota.rs:37:10-37:25`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `15c3072f6bda1878`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/keccak_iota.rs"
  startLine := 37
  startColumn := 10
  endLine := 37
  endColumn := 25
  assertId := "2"
  functionName := "keccak_iota.impl__6.index"
  kind := "assert"
  statementHash := "15c3072f6bda1878"
}
@[vrml_obligation] theorem assert_2
    (self : keccak_iota.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (index_req_at_0 : (keccak_iota.StateArray → (vermilion.tuple_2 Int Int) → Prop))
    (requires_0 : Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (keccak_iota.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : index_req_at_0 self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1)) :
    (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (keccak_iota.StateArray.get_StateArray__0 self)) := by
  -- TODO(vermilion): automation failed; prove this obligation.
  sorry
-- vrml:end keccak_iota.impl__6.index.assert_2

end keccak_iota.impl__6.index

