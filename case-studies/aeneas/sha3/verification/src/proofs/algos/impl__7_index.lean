import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__7.index

-- vrml:begin algos.impl__7.index.assert_0 1d7e5be5f78bb940
/--
Generated VC `algos.impl__7.index.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:60:17-60:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `1d7e5be5f78bb940`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 60
  startColumn := 17
  endLine := 60
  endColumn := 20
  assertId := "0"
  functionName := "algos.impl__7.index"
  kind := "assert"
  statementHash := "1d7e5be5f78bb940"
}
@[vrml_obligation] theorem assert_0
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1) :
    Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__7.index.assert_0

-- vrml:begin algos.impl__7.index.assert_1 c7bce4c27bccc2ef
/--
Generated VC `algos.impl__7.index.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:60:17-60:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `c7bce4c27bccc2ef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 60
  startColumn := 17
  endLine := 60
  endColumn := 24
  assertId := "1"
  functionName := "algos.impl__7.index"
  kind := "assert"
  statementHash := "c7bce4c27bccc2ef"
}
@[vrml_obligation] theorem assert_1
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1)) :
    Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__7.index.assert_1

-- vrml:begin algos.impl__7.index.assert_2 eb3841e8a95bf7eb
/--
Generated VC `algos.impl__7.index.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:60:10-60:25`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `eb3841e8a95bf7eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 60
  startColumn := 10
  endLine := 60
  endColumn := 25
  assertId := "2"
  functionName := "algos.impl__7.index"
  kind := "assert"
  statementHash := "eb3841e8a95bf7eb"
}
@[vrml_obligation] theorem assert_2
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1)) :
    (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__7.index.assert_2

-- vrml:begin algos.impl__7.index.ensures_3 18418385199a3efd
/--
Generated VC `algos.impl__7.index.ensures_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:47:21-47:26`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `18418385199a3efd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 47
  startColumn := 21
  endLine := 47
  endColumn := 26
  assertId := "3"
  functionName := "algos.impl__7.index"
  kind := "ensures"
  statementHash := "18418385199a3efd"
}
@[vrml_obligation] theorem ensures_3
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (assert_2 : (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) :
    Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) = Vermilion.Seq.index (algos.impl__3.view self) ((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__7.index.ensures_3

end algos.impl__7.index

