import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.iota

-- vrml:begin algos.iota.assert_1 d3e6630b6ff2e70a
/--
Generated VC `algos.iota.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:320:29-320:40`
- Rust/SST construct: precondition not met: index in bounds for this access
- AssertId: `1`
- Statement hash: `d3e6630b6ff2e70a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 320
  startColumn := 29
  endLine := 320
  endColumn := 40
  assertId := "1"
  functionName := "algos.iota"
  kind := "assert"
  statementHash := "d3e6630b6ff2e70a"
}
@[vrml_obligation] theorem assert_1
    (ir : Int)
    (a : algos.StateArray)
    (tmp_ : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 0 0)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 0 0))) :
    (0 ≤ ir) ∧ (ir < Vermilion.Seq.len algos.IOTA_RC) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.iota.assert_1

-- vrml:begin algos.iota.ensures_3 2a5b0de74c12025c
/--
Generated VC `algos.iota.ensures_3`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:316:9-316:60`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `2a5b0de74c12025c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 316
  startColumn := 9
  endLine := 316
  endColumn := 60
  assertId := "3"
  functionName := "algos.iota"
  kind := "ensures"
  statementHash := "2a5b0de74c12025c"
}
@[vrml_obligation] theorem ensures_3
    (ir : Int)
    (a : algos.StateArray)
    (tmp_ : Int)
    (tmp__post : algos.StateArray)
    (tmp__post_2 : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 ir)
    (requires_1 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a) = 25)
    (requires_2 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 a))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 a) vrml_i0))))
    (requires_3 : ir < 24)
    (call_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_index_ensures_1 : tmp_ = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 0 0)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 0 0)))
    (assert_1 : (0 ≤ ir) ∧ (ir < Vermilion.Seq.len algos.IOTA_RC))
    (assume_7 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (assume_9 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_index_mut_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_index_mut_ensures_1 : tmp__2 = Vermilion.Seq.index (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 0 0)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 0 0)))
    (call_index_mut_ensures_2 : algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view a) ((5 * vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 0 0)) + vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 0 0)) tmp__post_2)
    (assume_13 : tmp__post_2 = Vermilion.Bits.bxor 64 tmp_ (Vermilion.Seq.index algos.IOTA_RC ir)) :
    algos.impl__3.view tmp__post = Vermilion.Seq.update (algos.impl__3.view a) 0 (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.impl__3.view a) 0) (Vermilion.Seq.index algos.IOTA_RC ir)) := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.iota.ensures_3

end algos.iota

