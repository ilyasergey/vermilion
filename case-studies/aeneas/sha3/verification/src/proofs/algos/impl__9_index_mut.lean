import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__9.index_mut

-- vrml:begin algos.impl__9.index_mut.assert_0 1d7e5be5f78bb940
/--
Generated VC `algos.impl__9.index_mut.assert_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:114:21-114:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `1d7e5be5f78bb940`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 114
  startColumn := 21
  endLine := 114
  endColumn := 24
  assertId := "0"
  functionName := "algos.impl__9.index_mut"
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
-- vrml:end algos.impl__9.index_mut.assert_0

-- vrml:begin algos.impl__9.index_mut.assert_1 c7bce4c27bccc2ef
/--
Generated VC `algos.impl__9.index_mut.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:114:21-114:28`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `c7bce4c27bccc2ef`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 114
  startColumn := 21
  endLine := 114
  endColumn := 28
  assertId := "1"
  functionName := "algos.impl__9.index_mut"
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
-- vrml:end algos.impl__9.index_mut.assert_1

-- vrml:begin algos.impl__9.index_mut.assert_2 eb3841e8a95bf7eb
/--
Generated VC `algos.impl__9.index_mut.assert_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:114:14-114:29`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `2`
- Statement hash: `eb3841e8a95bf7eb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 114
  startColumn := 14
  endLine := 114
  endColumn := 29
  assertId := "2"
  functionName := "algos.impl__9.index_mut"
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
-- vrml:end algos.impl__9.index_mut.assert_2

-- vrml:begin algos.impl__9.index_mut.ensures_3_0 b2c0d9691e1fe877
/--
Generated VC `algos.impl__9.index_mut.ensures_3_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:97:29-97:34`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `b2c0d9691e1fe877`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 97
  startColumn := 29
  endLine := 97
  endColumn := 34
  assertId := "3_0"
  functionName := "algos.impl__9.index_mut"
  kind := "ensures"
  statementHash := "b2c0d9691e1fe877"
}
@[vrml_obligation] theorem ensures_3_0
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (tmp__post : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (assert_2 : (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (assume_8 : Vermilion.inUnsignedRange 64 tmp__post) :
    Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) = Vermilion.Seq.index (algos.impl__3.view self) ((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__9.index_mut.ensures_3_0

-- vrml:begin algos.impl__9.index_mut.ensures_3_1 bbd76d9480ffdcfd
/--
Generated VC `algos.impl__9.index_mut.ensures_3_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:97:29-97:34`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `bbd76d9480ffdcfd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 97
  startColumn := 29
  endLine := 97
  endColumn := 34
  assertId := "3_1"
  functionName := "algos.impl__9.index_mut"
  kind := "ensures"
  statementHash := "bbd76d9480ffdcfd"
}
@[vrml_obligation] theorem ensures_3_1
    (self : algos.StateArray)
    (__verus_param_1 : (vermilion.tuple_2 Int Int))
    (tmp__post : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (requires_3 : Vermilion.inUnsignedRange 64 (vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (requires_4 : algos.impl__8.index_req self __verus_param_1)
    (assert_0 : Vermilion.inUnsignedRange 64 (5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1))
    (assert_1 : Vermilion.inUnsignedRange 64 (((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1))
    (assert_2 : (0 ≤ ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616)) ∧ (((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self)))
    (assume_8 : Vermilion.inUnsignedRange 64 tmp__post) :
    algos.impl__3.view (algos.StateArray.StateArray (Vermilion.Seq.update (algos.StateArray.get_StateArray__0 self) ((((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) % 18446744073709551616) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) % 18446744073709551616) tmp__post)) = Vermilion.Seq.update (algos.impl__3.view self) ((5 * vermilion.tuple_2.get_tuple_2__1 __verus_param_1) + vermilion.tuple_2.get_tuple_2__0 __verus_param_1) tmp__post := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__9.index_mut.ensures_3_1

end algos.impl__9.index_mut

