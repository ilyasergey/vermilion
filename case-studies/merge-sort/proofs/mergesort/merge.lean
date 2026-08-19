import Vermilion.Obligations
import mergesort.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort.merge

-- vrml:begin mergesort.merge.assert_1 71944f0bf4d3f6d1
/--
Generated VC `mergesort.merge.assert_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:86:12-86:68`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `71944f0bf4d3f6d1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 86
  startColumn := 12
  endLine := 86
  endColumn := 68
  assertId := "1"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "71944f0bf4d3f6d1"
}
@[vrml_obligation] theorem assert_1
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_1

-- vrml:begin mergesort.merge.invariant_entry_0_0 5c6fa4b0d7305fbd
/--
Generated VC `mergesort.merge.invariant_entry_0_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:90:13-90:32`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `5c6fa4b0d7305fbd`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 90
  startColumn := 13
  endLine := 90
  endColumn := 32
  assertId := "0_0"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "5c6fa4b0d7305fbd"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len v1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_0

-- vrml:begin mergesort.merge.invariant_entry_0_1 5c6c3cb0d72d792e
/--
Generated VC `mergesort.merge.invariant_entry_0_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:91:13-91:32`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `5c6c3cb0d72d792e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 91
  startColumn := 13
  endLine := 91
  endColumn := 32
  assertId := "0_1"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "5c6c3cb0d72d792e"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len v2) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_1

-- vrml:begin mergesort.merge.invariant_entry_0_2 b83a40ca28a29c17
/--
Generated VC `mergesort.merge.invariant_entry_0_2`.

- Rust source: `case-studies/merge-sort/mergesort.rs:92:13-92:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `b83a40ca28a29c17`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 92
  startColumn := 13
  endLine := 92
  endColumn := 26
  assertId := "0_2"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "b83a40ca28a29c17"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort.is_sorted v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_2

-- vrml:begin mergesort.merge.invariant_entry_0_3 b83a41ca28a29dca
/--
Generated VC `mergesort.merge.invariant_entry_0_3`.

- Rust source: `case-studies/merge-sort/mergesort.rs:93:13-93:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `b83a41ca28a29dca`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 93
  startColumn := 13
  endLine := 93
  endColumn := 26
  assertId := "0_3"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "b83a41ca28a29dca"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort.is_sorted v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_3

-- vrml:begin mergesort.merge.invariant_entry_0_4 c7bd5814b328d823
/--
Generated VC `mergesort.merge.invariant_entry_0_4`.

- Rust source: `case-studies/merge-sort/mergesort.rs:94:13-94:88`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `c7bd5814b328d823`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 94
  startColumn := 13
  endLine := 94
  endColumn := 88
  assertId := "0_4"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "c7bd5814b328d823"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (∀ (i : Int), ((0 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp_)) → (Vermilion.Seq.index tmp_ i ≤ Vermilion.Seq.index v1 0)))) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_4

-- vrml:begin mergesort.merge.invariant_entry_0_5 dbec6afa263a721f
/--
Generated VC `mergesort.merge.invariant_entry_0_5`.

- Rust source: `case-studies/merge-sort/mergesort.rs:95:13-95:88`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `dbec6afa263a721f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 95
  startColumn := 13
  endLine := 95
  endColumn := 88
  assertId := "0_5"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "dbec6afa263a721f"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (∀ (i : Int), ((0 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp_)) → (Vermilion.Seq.index tmp_ i ≤ Vermilion.Seq.index v2 0)))) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_5

-- vrml:begin mergesort.merge.invariant_entry_0_6 4422676266ad059e
/--
Generated VC `mergesort.merge.invariant_entry_0_6`.

- Rust source: `case-studies/merge-sort/mergesort.rs:96:13-99:29`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_6`
- Statement hash: `4422676266ad059e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 96
  startColumn := 13
  endLine := 99
  endColumn := 29
  assertId := "0_6"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "4422676266ad059e"
}
@[vrml_obligation] theorem invariant_entry_0_6
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    Vermilion.Seq.toMultiset tmp_ = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 0) (Vermilion.Seq.subrange v2 0 0)) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_6

-- vrml:begin mergesort.merge.invariant_entry_0_7 a5e5bac05a9a0f98
/--
Generated VC `mergesort.merge.invariant_entry_0_7`.

- Rust source: `case-studies/merge-sort/mergesort.rs:100:13-100:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_7`
- Statement hash: `a5e5bac05a9a0f98`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 100
  startColumn := 13
  endLine := 100
  endColumn := 26
  assertId := "0_7"
  functionName := "mergesort.merge"
  kind := "invariant_entry"
  statementHash := "a5e5bac05a9a0f98"
}
@[vrml_obligation] theorem invariant_entry_0_7
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort.is_sorted tmp_ := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_entry_0_7

-- vrml:begin mergesort.merge.call_requires_5 7a211a0e839388f0
/--
Generated VC `mergesort.merge.call_requires_5`.

- Rust source: `case-studies/merge-sort/mergesort.rs:106:12-106:18`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `7a211a0e839388f0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 106
  startColumn := 12
  endLine := 106
  endColumn := 18
  assertId := "5"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "7a211a0e839388f0"
}
@[vrml_obligation] theorem call_requires_5
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0))))) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_5

-- vrml:begin mergesort.merge.call_requires_6 83f93b88eabeeef0
/--
Generated VC `mergesort.merge.call_requires_6`.

- Rust source: `case-studies/merge-sort/mergesort.rs:106:21-106:27`
- Rust/SST construct: call vec_index
- AssertId: `6`
- Statement hash: `83f93b88eabeeef0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩
-/
def call_requires_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 106
  startColumn := 21
  endLine := 106
  endColumn := 27
  assertId := "6"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "83f93b88eabeeef0"
}
@[vrml_obligation] theorem call_requires_6
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_6

-- vrml:begin mergesort.merge.call_requires_7 71c4a26c93e0617d
/--
Generated VC `mergesort.merge.call_requires_7`.

- Rust source: `case-studies/merge-sort/mergesort.rs:107:20-107:26`
- Rust/SST construct: call vec_index
- AssertId: `7`
- Statement hash: `71c4a26c93e0617d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩
-/
def call_requires_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 107
  startColumn := 20
  endLine := 107
  endColumn := 26
  assertId := "7"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "71c4a26c93e0617d"
}
@[vrml_obligation] theorem call_requires_7
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : tmp__2 < tmp__3) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_7

-- vrml:begin mergesort.merge.call_requires_11 53f330ca0cb660fa
/--
Generated VC `mergesort.merge.call_requires_11`.

- Rust source: `case-studies/merge-sort/mergesort.rs:114:17-114:62`
- Rust/SST construct: call lemma_subrange_push
- AssertId: `11`
- Statement hash: `53f330ca0cb660fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩
-/
def call_requires_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 114
  startColumn := 17
  endLine := 114
  endColumn := 62
  assertId := "11"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "53f330ca0cb660fa"
}
@[vrml_obligation] theorem call_requires_11
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : tmp__2 < tmp__3)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_vec_index_2_ensures_1 : tmp__4 = Vermilion.Seq.index v1 i1)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r tmp__4)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_1_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (call_to_multiset_ensures_1_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (call_to_multiset_ensures_1_ensures_2 : Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)))
    (call_to_multiset_ensures_1_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0))))) :
    ((0 ≤ 0) ∧ (0 ≤ i1)) ∧ (i1 < Vermilion.Seq.len v1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_11

-- vrml:begin mergesort.merge.assert_13 f0276516034c4140
/--
Generated VC `mergesort.merge.assert_13`.

- Rust source: `case-studies/merge-sort/mergesort.rs:120:13-120:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `13`
- Statement hash: `f0276516034c4140`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 120
  startColumn := 13
  endLine := 120
  endColumn := 20
  assertId := "13"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "f0276516034c4140"
}
@[vrml_obligation] theorem assert_13
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : tmp__2 < tmp__3)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_vec_index_2_ensures_1 : tmp__4 = Vermilion.Seq.index v1 i1)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r tmp__4)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_1_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (call_to_multiset_ensures_1_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (call_to_multiset_ensures_1_ensures_2 : Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)))
    (call_to_multiset_ensures_1_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (call_lemma_subrange_push_ensures_0 : Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1))
    (call_lemma_to_multiset_distributes_over_add_1_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))) :
    Vermilion.inUnsignedRange 64 (i1 + 1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_13

-- vrml:begin mergesort.merge.call_requires_14 244daccbd42aec9d
/--
Generated VC `mergesort.merge.call_requires_14`.

- Rust source: `case-studies/merge-sort/mergesort.rs:122:20-122:26`
- Rust/SST construct: call vec_index
- AssertId: `14`
- Statement hash: `244daccbd42aec9d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 122
  startColumn := 20
  endLine := 122
  endColumn := 26
  assertId := "14"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "244daccbd42aec9d"
}
@[vrml_obligation] theorem call_requires_14
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : (¬ (tmp__2 < tmp__3))) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_14

-- vrml:begin mergesort.merge.call_requires_18 4ee1ab1b9fe1b001
/--
Generated VC `mergesort.merge.call_requires_18`.

- Rust source: `case-studies/merge-sort/mergesort.rs:129:17-129:62`
- Rust/SST construct: call lemma_subrange_push
- AssertId: `18`
- Statement hash: `4ee1ab1b9fe1b001`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩
-/
def call_requires_18_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 129
  startColumn := 17
  endLine := 129
  endColumn := 62
  assertId := "18"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "4ee1ab1b9fe1b001"
}
@[vrml_obligation] theorem call_requires_18
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : (¬ (tmp__2 < tmp__3)))
    (call_vec_index_3_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_3_ensures_1 : tmp__5 = Vermilion.Seq.index v2 i2)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_push_1_ensures_0 : tmp__post_2 = Vermilion.Seq.push r tmp__5)
    (call_lemma_to_multiset_distributes_over_add_2_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_2_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (call_to_multiset_ensures_2_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (call_to_multiset_ensures_2_ensures_2 : Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_2_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0))))) :
    ((0 ≤ 0) ∧ (0 ≤ i2)) ∧ (i2 < Vermilion.Seq.len v2) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_18

-- vrml:begin mergesort.merge.assert_20 fa27b3ae6363913f
/--
Generated VC `mergesort.merge.assert_20`.

- Rust source: `case-studies/merge-sort/mergesort.rs:135:13-135:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `20`
- Statement hash: `fa27b3ae6363913f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩
-/
def assert_20_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 135
  startColumn := 13
  endLine := 135
  endColumn := 20
  assertId := "20"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "fa27b3ae6363913f"
}
@[vrml_obligation] theorem assert_20
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : (¬ (tmp__2 < tmp__3)))
    (call_vec_index_3_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_3_ensures_1 : tmp__5 = Vermilion.Seq.index v2 i2)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_push_1_ensures_0 : tmp__post_2 = Vermilion.Seq.push r tmp__5)
    (call_lemma_to_multiset_distributes_over_add_2_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_2_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (call_to_multiset_ensures_2_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (call_to_multiset_ensures_2_ensures_2 : Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)))
    (call_to_multiset_ensures_2_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (call_lemma_subrange_push_1_ensures_0 : Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1))
    (call_lemma_to_multiset_distributes_over_add_3_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))) :
    Vermilion.inUnsignedRange 64 (i2 + 1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_20

-- vrml:begin mergesort.merge.invariant_preserve_0_0 6d13481355aee2e3
/--
Generated VC `mergesort.merge.invariant_preserve_0_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:90:13-90:32`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `6d13481355aee2e3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 90
  startColumn := 13
  endLine := 90
  endColumn := 32
  assertId := "0_0"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "6d13481355aee2e3"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (0 ≤ i1_2) ∧ (i1_2 ≤ Vermilion.Seq.len v1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_preserve_0_0

-- vrml:begin mergesort.merge.invariant_preserve_0_1 0ba1e3a530ae9196
/--
Generated VC `mergesort.merge.invariant_preserve_0_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:91:13-91:32`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `0ba1e3a530ae9196`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 91
  startColumn := 13
  endLine := 91
  endColumn := 32
  assertId := "0_1"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "0ba1e3a530ae9196"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (0 ≤ i2_2) ∧ (i2_2 ≤ Vermilion.Seq.len v2) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_preserve_0_1

-- vrml:begin mergesort.merge.invariant_preserve_0_2 e44593b05b2be45f
/--
Generated VC `mergesort.merge.invariant_preserve_0_2`.

- Rust source: `case-studies/merge-sort/mergesort.rs:92:13-92:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `e44593b05b2be45f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 92
  startColumn := 13
  endLine := 92
  endColumn := 26
  assertId := "0_2"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "e44593b05b2be45f"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort.is_sorted v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_preserve_0_2

-- vrml:begin mergesort.merge.invariant_preserve_0_3 e44594b05b2be612
/--
Generated VC `mergesort.merge.invariant_preserve_0_3`.

- Rust source: `case-studies/merge-sort/mergesort.rs:93:13-93:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `e44594b05b2be612`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 93
  startColumn := 13
  endLine := 93
  endColumn := 26
  assertId := "0_3"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "e44594b05b2be612"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort.is_sorted v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.invariant_preserve_0_3

-- vrml:begin mergesort.merge.invariant_preserve_0_4 0525a3204cd3efad
/--
Generated VC `mergesort.merge.invariant_preserve_0_4`.

- Rust source: `case-studies/merge-sort/mergesort.rs:94:13-94:88`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `0525a3204cd3efad`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r_2 i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 94
  startColumn := 13
  endLine := 94
  endColumn := 88
  assertId := "0_4"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "0525a3204cd3efad"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (∀ (i : Int), ((i1_2 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r_2)) → (Vermilion.Seq.index r_2 i ≤ Vermilion.Seq.index v1 i1_2)))) := by
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  intro i hlt hi
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_43 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    have hinc := then_0_assert_13 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i1 + 1) % 18446744073709551616 = i1 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [then_0_assume_41 hbr, hmod] at hlt ⊢
    have hv1 : Vermilion.Seq.index v1 i1 ≤ Vermilion.Seq.index v1 (i1 + 1) :=
      loop_0_iteration_12 i1 (i1 + 1) ⟨⟨loop_0_iteration_10.1, by omega⟩, hlt⟩
    rw [hr2] at hi ⊢
    rw [Vermilion.Seq.len_push] at hi
    by_cases hir : i < Vermilion.Seq.len r
    · rw [Vermilion.Seq.index_push_prefix _ _ i hi.1 hir]
      exact le_trans (loop_0_iteration_14 i hguard.1 ⟨hi.1, hir⟩) hv1
    · have hieq : i = Vermilion.Seq.len r := by omega
      rw [hieq, Vermilion.Seq.index_push_last]
      exact hv1
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v2 i2) := by
      rw [else_0_assume_43 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    rw [else_0_assume_41 hbr] at hlt ⊢
    have hcross : Vermilion.Seq.index v2 i2 ≤ Vermilion.Seq.index v1 i1 := by
      have h2 := call_vec_index_ensures_1
      have h3 := call_vec_index_1_ensures_1
      omega
    rw [hr2] at hi ⊢
    rw [Vermilion.Seq.len_push] at hi
    by_cases hir : i < Vermilion.Seq.len r
    · rw [Vermilion.Seq.index_push_prefix _ _ i hi.1 hir]
      exact loop_0_iteration_14 i hlt ⟨hi.1, hir⟩
    · have hieq : i = Vermilion.Seq.len r := by omega
      rw [hieq, Vermilion.Seq.index_push_last]
      exact hcross
-- vrml:end mergesort.merge.invariant_preserve_0_4

-- vrml:begin mergesort.merge.invariant_preserve_0_5 d82973e49f3fa7f9
/--
Generated VC `mergesort.merge.invariant_preserve_0_5`.

- Rust source: `case-studies/merge-sort/mergesort.rs:95:13-95:88`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `d82973e49f3fa7f9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r_2 i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 95
  startColumn := 13
  endLine := 95
  endColumn := 88
  assertId := "0_5"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "d82973e49f3fa7f9"
}
@[vrml_obligation] theorem invariant_preserve_0_5
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (∀ (i : Int), ((i2_2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r_2)) → (Vermilion.Seq.index r_2 i ≤ Vermilion.Seq.index v2 i2_2)))) := by
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  intro i hlt hi
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_43 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    rw [then_0_assume_42 hbr] at hlt ⊢
    have hcross : Vermilion.Seq.index v1 i1 ≤ Vermilion.Seq.index v2 i2 := by
      have h2 := call_vec_index_ensures_1
      have h3 := call_vec_index_1_ensures_1
      omega
    rw [hr2] at hi ⊢
    rw [Vermilion.Seq.len_push] at hi
    by_cases hir : i < Vermilion.Seq.len r
    · rw [Vermilion.Seq.index_push_prefix _ _ i hi.1 hir]
      exact loop_0_iteration_15 i hlt ⟨hi.1, hir⟩
    · have hieq : i = Vermilion.Seq.len r := by omega
      rw [hieq, Vermilion.Seq.index_push_last]
      exact hcross
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v2 i2) := by
      rw [else_0_assume_43 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    have hinc := else_0_assert_20 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i2 + 1) % 18446744073709551616 = i2 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [else_0_assume_42 hbr, hmod] at hlt ⊢
    have hv2 : Vermilion.Seq.index v2 i2 ≤ Vermilion.Seq.index v2 (i2 + 1) :=
      loop_0_iteration_13 i2 (i2 + 1) ⟨⟨loop_0_iteration_11.1, by omega⟩, hlt⟩
    rw [hr2] at hi ⊢
    rw [Vermilion.Seq.len_push] at hi
    by_cases hir : i < Vermilion.Seq.len r
    · rw [Vermilion.Seq.index_push_prefix _ _ i hi.1 hir]
      exact le_trans (loop_0_iteration_15 i hguard.2 ⟨hi.1, hir⟩) hv2
    · have hieq : i = Vermilion.Seq.len r := by omega
      rw [hieq, Vermilion.Seq.index_push_last]
      exact hv2
-- vrml:end mergesort.merge.invariant_preserve_0_5

-- vrml:begin mergesort.merge.invariant_preserve_0_6 d426f4e786981caa
/--
Generated VC `mergesort.merge.invariant_preserve_0_6`.

- Rust source: `case-studies/merge-sort/mergesort.rs:96:13-99:29`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `d426f4e786981caa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 96
  startColumn := 13
  endLine := 99
  endColumn := 29
  assertId := "0_6"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "d426f4e786981caa"
}
@[vrml_obligation] theorem invariant_preserve_0_6
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    Vermilion.Seq.toMultiset r_2 = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1_2) (Vermilion.Seq.subrange v2 0 i2_2)) := by
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  by_cases hbr : tmp__2 < tmp__3
  · have hinc := then_0_assert_13 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i1 + 1) % 18446744073709551616 = i1 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [then_0_assume_43 hbr, then_0_call_push_ensures_0 hbr,
      then_0_call_vec_index_2_ensures_1 hbr, then_0_assume_41 hbr, hmod,
      then_0_assume_42 hbr]
    exact MergeSortHelpers.multiset_step_left v1 v2 r i1 i2 loop_0_iteration_16
      loop_0_iteration_10.1 hguard.1
  · have hinc := else_0_assert_20 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i2 + 1) % 18446744073709551616 = i2 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [else_0_assume_43 hbr, else_0_call_push_1_ensures_0 hbr,
      else_0_call_vec_index_3_ensures_1 hbr, else_0_assume_41 hbr,
      else_0_assume_42 hbr, hmod]
    exact MergeSortHelpers.multiset_step_right v1 v2 r i1 i2 loop_0_iteration_16
      loop_0_iteration_11.1 hguard.2
-- vrml:end mergesort.merge.invariant_preserve_0_6

-- vrml:begin mergesort.merge.invariant_preserve_0_7 ea982daad736a0c5
/--
Generated VC `mergesort.merge.invariant_preserve_0_7`.

- Rust source: `case-studies/merge-sort/mergesort.rs:100:13-100:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `ea982daad736a0c5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 100
  startColumn := 13
  endLine := 100
  endColumn := 26
  assertId := "0_7"
  functionName := "mergesort.merge"
  kind := "invariant_preserve"
  statementHash := "ea982daad736a0c5"
}
@[vrml_obligation] theorem invariant_preserve_0_7
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort.is_sorted r_2 := by
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_43 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    rw [hr2]
    exact MergeSortHelpers.is_sorted_push r _ loop_0_iteration_17
      (fun i h0 hl => loop_0_iteration_14 i hguard.1 ⟨h0, hl⟩)
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v2 i2) := by
      rw [else_0_assume_43 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    rw [hr2]
    exact MergeSortHelpers.is_sorted_push r _ loop_0_iteration_17
      (fun i h0 hl => loop_0_iteration_15 i hguard.2 ⟨h0, hl⟩)
-- vrml:end mergesort.merge.invariant_preserve_0_7

-- vrml:begin mergesort.merge.assert_0_decreases 6de5c17a72306580
/--
Generated VC `mergesort.merge.assert_0_decreases`.

- Rust source: `case-studies/merge-sort/mergesort.rs:101:19-101:48`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `6de5c17a72306580`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push r a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a)⟩ ⟨Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i)⟩ ⟨Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 101
  startColumn := 19
  endLine := 101
  endColumn := 48
  assertId := "0_decreases"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "6de5c17a72306580"
}
@[vrml_obligation] theorem assert_0_decreases
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (tmp__2 : Int)
    (tmp__3 : Int)
    (i1_2 : Int)
    (i2_2 : Int)
    (r_2 : (Vermilion.Seq Int))
    (tmp__4 : Int)
    (tmp__post : (Vermilion.Seq Int))
    (tmp__5 : Int)
    (tmp__post_2 : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (loop_0_iteration_5 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_7 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_8 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_iteration_10 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_iteration_11 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_iteration_12 : mergesort.is_sorted v1)
    (loop_0_iteration_13 : mergesort.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_to_multiset_ensures_ensures_0 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push r a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset r) a))))
    (call_to_multiset_ensures_ensures_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove r i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset r) (Vermilion.Seq.index r i)))))
    (call_to_multiset_ensures_ensures_2 : Vermilion.Seq.len r = Vermilion.Multiset.len (Vermilion.Seq.toMultiset r))
    (call_to_multiset_ensures_ensures_3 : (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains r a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset r) a > 0)))))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_call_to_multiset_ensures_1_ensures_0 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a))))
    (then_0_call_to_multiset_ensures_1_ensures_1 : (tmp__2 < tmp__3) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v1 0 i1) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.index (Vermilion.Seq.subrange v1 0 i1) i)))))
    (then_0_call_to_multiset_ensures_1_ensures_2 : (tmp__2 < tmp__3) → (Vermilion.Seq.len (Vermilion.Seq.subrange v1 0 i1) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1))))
    (then_0_call_to_multiset_ensures_1_ensures_3 : (tmp__2 < tmp__3) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v1 0 i1) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) a > 0)))))
    (then_0_call_lemma_subrange_push_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.push (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.index v1 i1) = Vermilion.Seq.subrange v1 0 (i1 + 1)))
    (then_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (tmp__2 < tmp__3) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 (i1 + 1)) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 (i1 + 1))) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (then_0_assert_13 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_41 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_42 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_43 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_call_lemma_to_multiset_distributes_over_add_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_0 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) a) = Vermilion.Multiset.insert (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a))))
    (else_0_call_to_multiset_ensures_2_ensures_1 : (¬ (tmp__2 < tmp__3)) → (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2))) → (Vermilion.Seq.toMultiset (Vermilion.Seq.remove (Vermilion.Seq.subrange v2 0 i2) i) = Vermilion.Multiset.remove (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) (Vermilion.Seq.index (Vermilion.Seq.subrange v2 0 i2) i)))))
    (else_0_call_to_multiset_ensures_2_ensures_2 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.len (Vermilion.Seq.subrange v2 0 i2) = Vermilion.Multiset.len (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2))))
    (else_0_call_to_multiset_ensures_2_ensures_3 : (¬ (tmp__2 < tmp__3)) → (∀ (a : Int), (Vermilion.inUnsignedRange 64 a → (Vermilion.Seq.contains (Vermilion.Seq.subrange v2 0 i2) a ↔ (Vermilion.Multiset.count (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)) a > 0)))))
    (else_0_call_lemma_subrange_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.push (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.index v2 i2) = Vermilion.Seq.subrange v2 0 (i2 + 1)))
    (else_0_call_lemma_to_multiset_distributes_over_add_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 (i2 + 1))) = HAdd.hAdd (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)) (Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 (i2 + 1)))))
    (else_0_assert_20 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_41 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_42 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_43 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_59 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_60 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_61 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_62 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    ((0 ≤ (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2)) ∧ ((((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2) < (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1) - i2))) ∨ (((((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2) = (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1) - i2)) ∧ False) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_0_decreases

-- vrml:begin mergesort.merge.assert_21 95ff45bbe9c58a45
/--
Generated VC `mergesort.merge.assert_21`.

- Rust source: `case-studies/merge-sort/mergesort.rs:139:12-139:59`
- Rust/SST construct: Rust source assertion
- AssertId: `21`
- Statement hash: `95ff45bbe9c58a45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def assert_21_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 139
  startColumn := 12
  endLine := 139
  endColumn := 59
  assertId := "21"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "95ff45bbe9c58a45"
}
@[vrml_obligation] theorem assert_21
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))) :
    Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_21

-- vrml:begin mergesort.merge.assert_22 31ba65a2dd6f9704
/--
Generated VC `mergesort.merge.assert_22`.

- Rust source: `case-studies/merge-sort/mergesort.rs:140:12-140:59`
- Rust/SST construct: Rust source assertion
- AssertId: `22`
- Statement hash: `31ba65a2dd6f9704`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def assert_22_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 140
  startColumn := 12
  endLine := 140
  endColumn := 59
  assertId := "22"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "31ba65a2dd6f9704"
}
@[vrml_obligation] theorem assert_22
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1) :
    Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.assert_22

-- vrml:begin mergesort.merge.call_requires_24 ad3cdee1cbd93027
/--
Generated VC `mergesort.merge.call_requires_24`.

- Rust source: `case-studies/merge-sort/mergesort.rs:143:9-143:40`
- Rust/SST construct: call extend_from_idx
- AssertId: `24`
- Statement hash: `ad3cdee1cbd93027`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def call_requires_24_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 143
  startColumn := 9
  endLine := 143
  endColumn := 40
  assertId := "24"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "ad3cdee1cbd93027"
}
@[vrml_obligation] theorem call_requires_24
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : i1 < Vermilion.Seq.len v1)
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_29 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0)))) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_24

-- vrml:begin mergesort.merge.call_requires_25 28eeb3972e4b8aa7
/--
Generated VC `mergesort.merge.call_requires_25`.

- Rust source: `case-studies/merge-sort/mergesort.rs:145:13-145:74`
- Rust/SST construct: call lemma_subrange_add
- AssertId: `25`
- Statement hash: `28eeb3972e4b8aa7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def call_requires_25_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 145
  startColumn := 13
  endLine := 145
  endColumn := 74
  assertId := "25"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "28eeb3972e4b8aa7"
}
@[vrml_obligation] theorem call_requires_25
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : i1 < Vermilion.Seq.len v1)
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_29 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (call_extend_from_idx_ensures_0 : tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))) :
    (((0 ≤ 0) ∧ (0 ≤ i1)) ∧ (i1 ≤ Vermilion.Seq.len v1)) ∧ (Vermilion.Seq.len v1 ≤ Vermilion.Seq.len v1) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_25

-- vrml:begin mergesort.merge.assert_26 687c9311b41920e0
/--
Generated VC `mergesort.merge.assert_26`.

- Rust source: `case-studies/merge-sort/mergesort.rs:146:20-146:66`
- Rust/SST construct: Rust source assertion
- AssertId: `26`
- Statement hash: `687c9311b41920e0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def assert_26_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 146
  startColumn := 20
  endLine := 146
  endColumn := 66
  assertId := "26"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "687c9311b41920e0"
}
@[vrml_obligation] theorem assert_26
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : i1 < Vermilion.Seq.len v1)
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_29 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (call_extend_from_idx_ensures_0 : tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1)))
    (call_lemma_subrange_add_ensures_0 : Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1)) = Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1)) :
    Vermilion.Seq.toMultiset tmp__post_3 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2) := by
  have hi2 : i2 = Vermilion.Seq.len v2 := by
    have hg : ¬ (i2 < Vermilion.Seq.len v2) := by
      have h := loop_0_exit_12; rwa [Vermilion.iteP_pos branch_1] at h
    have := loop_0_exit_5.2; omega
  have hsplit1 : Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)
      + Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))
      = Vermilion.Seq.toMultiset v1 := by
    rw [← Vermilion.Seq.toMultiset_add, call_lemma_subrange_add_ensures_0, assert_21]
  rw [call_extend_from_idx_ensures_0, Vermilion.Seq.toMultiset_add, loop_0_exit_10,
    Vermilion.Seq.toMultiset_add, hi2, assert_22, Vermilion.Seq.toMultiset_add,
    ← hsplit1]
  exact Vermilion.Multiset.add_right_comm _ _ _
-- vrml:end mergesort.merge.assert_26

-- vrml:begin mergesort.merge.call_requires_28 b93cae0e0b00cd8e
/--
Generated VC `mergesort.merge.call_requires_28`.

- Rust source: `case-studies/merge-sort/mergesort.rs:149:9-149:40`
- Rust/SST construct: call extend_from_idx
- AssertId: `28`
- Statement hash: `b93cae0e0b00cd8e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩
-/
def call_requires_28_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 149
  startColumn := 9
  endLine := 149
  endColumn := 40
  assertId := "28"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "b93cae0e0b00cd8e"
}
@[vrml_obligation] theorem call_requires_28
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (r_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : (¬ (i1 < Vermilion.Seq.len v1)))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (branch_2 : i2 < Vermilion.Seq.len v2)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_28

-- vrml:begin mergesort.merge.call_requires_29 d55c28b426af9c3d
/--
Generated VC `mergesort.merge.call_requires_29`.

- Rust source: `case-studies/merge-sort/mergesort.rs:151:13-151:74`
- Rust/SST construct: call lemma_subrange_add
- AssertId: `29`
- Statement hash: `d55c28b426af9c3d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩
-/
def call_requires_29_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 151
  startColumn := 13
  endLine := 151
  endColumn := 74
  assertId := "29"
  functionName := "mergesort.merge"
  kind := "call_requires"
  statementHash := "d55c28b426af9c3d"
}
@[vrml_obligation] theorem call_requires_29
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (r_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : (¬ (i1 < Vermilion.Seq.len v1)))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (branch_2 : i2 < Vermilion.Seq.len v2)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0))))
    (call_extend_from_idx_1_ensures_0 : tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2))) :
    (((0 ≤ 0) ∧ (0 ≤ i2)) ∧ (i2 ≤ Vermilion.Seq.len v2)) ∧ (Vermilion.Seq.len v2 ≤ Vermilion.Seq.len v2) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.call_requires_29

-- vrml:begin mergesort.merge.assert_30 35ede5b1a89c6d25
/--
Generated VC `mergesort.merge.assert_30`.

- Rust source: `case-studies/merge-sort/mergesort.rs:152:20-152:66`
- Rust/SST construct: Rust source assertion
- AssertId: `30`
- Statement hash: `35ede5b1a89c6d25`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩
-/
def assert_30_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 152
  startColumn := 20
  endLine := 152
  endColumn := 66
  assertId := "30"
  functionName := "mergesort.merge"
  kind := "assert"
  statementHash := "35ede5b1a89c6d25"
}
@[vrml_obligation] theorem assert_30
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (r_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : (¬ (i1 < Vermilion.Seq.len v1)))
    (assume_28 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (branch_2 : i2 < Vermilion.Seq.len v2)
    (assume_30 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (assume_31 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0))))
    (call_extend_from_idx_1_ensures_0 : tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)))
    (call_lemma_subrange_add_1_ensures_0 : Vermilion.Seq.add (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)) = Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2)) :
    Vermilion.Seq.toMultiset tmp__post_4 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2) := by
  have hi1 : i1 = Vermilion.Seq.len v1 := by have := loop_0_exit_4.2; omega
  have hsplit2 : Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)
      + Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2))
      = Vermilion.Seq.toMultiset v2 := by
    rw [← Vermilion.Seq.toMultiset_add, call_lemma_subrange_add_1_ensures_0, assert_22]
  rw [call_extend_from_idx_1_ensures_0, Vermilion.Seq.toMultiset_add, loop_0_exit_10,
    Vermilion.Seq.toMultiset_add, hi1, assert_21, Vermilion.Seq.toMultiset_add,
    ← hsplit2]
  exact _root_.Multiset.add_assoc _ _ _
-- vrml:end mergesort.merge.assert_30

-- vrml:begin mergesort.merge.ensures_31_0 96a1a8e6e1160f82
/--
Generated VC `mergesort.merge.ensures_31_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:78:9-78:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `31_0`
- Statement hash: `96a1a8e6e1160f82`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index r_3 vrml_i0⟩ ⟨Vermilion.Seq.index r_4 vrml_i0⟩
-/
def ensures_31_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 78
  startColumn := 9
  endLine := 78
  endColumn := 54
  assertId := "31_0"
  functionName := "mergesort.merge"
  kind := "ensures"
  statementHash := "96a1a8e6e1160f82"
}
@[vrml_obligation] theorem ensures_31_0
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (then_1_assume_28 : (i1 < Vermilion.Seq.len v1) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_1_assume_29 : (i1 < Vermilion.Seq.len v1) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (then_1_call_extend_from_idx_ensures_0 : (i1 < Vermilion.Seq.len v1) → (tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))))
    (then_1_call_lemma_subrange_add_ensures_0 : (i1 < Vermilion.Seq.len v1) → (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1)) = Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1)))
    (then_1_assert_26 : (i1 < Vermilion.Seq.len v1) → (Vermilion.Seq.toMultiset tmp__post_3 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2)))
    (then_1_assume_33 : (i1 < Vermilion.Seq.len v1) → (r_4 = tmp__post_3))
    (else_1_assume_28 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (else_1_then_2_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4)))
    (else_1_then_2_assume_31 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))))
    (else_1_then_2_call_extend_from_idx_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)))))
    (else_1_then_2_call_lemma_subrange_add_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (Vermilion.Seq.add (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)) = Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2))))
    (else_1_then_2_assert_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (Vermilion.Seq.toMultiset tmp__post_4 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2))))
    (else_1_then_2_assume_35 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (r_3 = tmp__post_4)))
    (else_1_else_2_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((¬ (i2 < Vermilion.Seq.len v2)) → (r_3 = r)))
    (else_1_assume_36 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_3))
    (else_1_assume_37 : (¬ (i1 < Vermilion.Seq.len v1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_3 vrml_i0))))
    (else_1_assume_38 : (¬ (i1 < Vermilion.Seq.len v1)) → (r_4 = r_3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_4))
    (assume_45 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_4 vrml_i0)))) :
    Vermilion.Seq.toMultiset r_4 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge.ensures_31_0

-- vrml:begin mergesort.merge.ensures_31_1 a36f4397b689fc7e
/--
Generated VC `mergesort.merge.ensures_31_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:79:9-79:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `31_1`
- Statement hash: `a36f4397b689fc7e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index s1 vrml_i0⟩ ⟨Vermilion.Seq.index s2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index r_3 vrml_i0⟩ ⟨Vermilion.Seq.index r_4 vrml_i0⟩
-/
def ensures_31_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 79
  startColumn := 9
  endLine := 79
  endColumn := 22
  assertId := "31_1"
  functionName := "mergesort.merge"
  kind := "ensures"
  statementHash := "a36f4397b689fc7e"
}
@[vrml_obligation] theorem ensures_31_1
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (i1 : Int)
    (i2 : Int)
    (r_4 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r_3 : (Vermilion.Seq Int))
    (tmp__post_4 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort.is_sorted v1)
    (requires_5 : mergesort.is_sorted v2)
    (assume_6 : (∀ (s1 : (Vermilion.Seq Int)) (s2 : (Vermilion.Seq Int)), (((∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))) ∧ (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s2 vrml_i0)))) → (True → (Vermilion.Seq.toMultiset (Vermilion.Seq.add s1 s2) = HAdd.hAdd (Vermilion.Seq.toMultiset s1) (Vermilion.Seq.toMultiset s2))))))
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (assert_1 : Vermilion.Seq.subrange v1 0 0 = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort.is_sorted v1)
    (loop_0_exit_7 : mergesort.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assert_21 : Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1) = v1)
    (assert_22 : Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2) = v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (then_1_assume_28 : (i1 < Vermilion.Seq.len v1) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_1_assume_29 : (i1 < Vermilion.Seq.len v1) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (then_1_call_extend_from_idx_ensures_0 : (i1 < Vermilion.Seq.len v1) → (tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))))
    (then_1_call_lemma_subrange_add_ensures_0 : (i1 < Vermilion.Seq.len v1) → (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1)) = Vermilion.Seq.subrange v1 0 (Vermilion.Seq.len v1)))
    (then_1_assert_26 : (i1 < Vermilion.Seq.len v1) → (Vermilion.Seq.toMultiset tmp__post_3 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2)))
    (then_1_assume_33 : (i1 < Vermilion.Seq.len v1) → (r_4 = tmp__post_3))
    (else_1_assume_28 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (else_1_then_2_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4)))
    (else_1_then_2_assume_31 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))))
    (else_1_then_2_call_extend_from_idx_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)))))
    (else_1_then_2_call_lemma_subrange_add_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (Vermilion.Seq.add (Vermilion.Seq.subrange v2 0 i2) (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)) = Vermilion.Seq.subrange v2 0 (Vermilion.Seq.len v2))))
    (else_1_then_2_assert_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (Vermilion.Seq.toMultiset tmp__post_4 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2))))
    (else_1_then_2_assume_35 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (r_3 = tmp__post_4)))
    (else_1_else_2_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → ((¬ (i2 < Vermilion.Seq.len v2)) → (r_3 = r)))
    (else_1_assume_36 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_3))
    (else_1_assume_37 : (¬ (i1 < Vermilion.Seq.len v1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_3 vrml_i0))))
    (else_1_assume_38 : (¬ (i1 < Vermilion.Seq.len v1)) → (r_4 = r_3))
    (assume_44 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_4))
    (assume_45 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_4 vrml_i0)))) :
    mergesort.is_sorted r_4 := by
  -- Interactive proof: the appended remainder is sorted (a subrange of a
  -- sorted sequence) and dominates everything in `r` (the loop's bound
  -- invariant at the exhausted side), so the concatenation is sorted.
  by_cases h1 : i1 < Vermilion.Seq.len v1
  · rw [then_1_assume_33 h1, then_1_call_extend_from_idx_ensures_0 h1]
    apply MergeSortHelpers.is_sorted_add
    · exact loop_0_exit_11
    · exact MergeSortHelpers.is_sorted_subrange v1 i1 (Vermilion.Seq.len v1)
        loop_0_exit_6 loop_0_exit_4.1 (le_of_lt h1) le_rfl
    · intro a b ha hla hb hlb
      rw [Vermilion.Seq.len_subrange v1 i1 (Vermilion.Seq.len v1)
        loop_0_exit_4.1 (le_of_lt h1) le_rfl] at hlb
      rw [Vermilion.Seq.index_subrange v1 i1 (Vermilion.Seq.len v1) b
        loop_0_exit_4.1 hb (by omega)]
      have h8 := loop_0_exit_8 a h1 ⟨ha, hla⟩
      by_cases hb0 : b = 0
      · subst hb0
        simpa using h8
      · exact le_trans h8 (loop_0_exit_6 i1 (i1 + b)
          ⟨⟨loop_0_exit_4.1, by omega⟩, by omega⟩)
  · by_cases h2 : i2 < Vermilion.Seq.len v2
    · rw [else_1_assume_38 h1, else_1_then_2_assume_35 h1 h2,
        else_1_then_2_call_extend_from_idx_1_ensures_0 h1 h2]
      apply MergeSortHelpers.is_sorted_add
      · exact loop_0_exit_11
      · exact MergeSortHelpers.is_sorted_subrange v2 i2 (Vermilion.Seq.len v2)
          loop_0_exit_7 loop_0_exit_5.1 (le_of_lt h2) le_rfl
      · intro a b ha hla hb hlb
        rw [Vermilion.Seq.len_subrange v2 i2 (Vermilion.Seq.len v2)
          loop_0_exit_5.1 (le_of_lt h2) le_rfl] at hlb
        rw [Vermilion.Seq.index_subrange v2 i2 (Vermilion.Seq.len v2) b
          loop_0_exit_5.1 hb (by omega)]
        have h9 := loop_0_exit_9 a h2 ⟨ha, hla⟩
        by_cases hb0 : b = 0
        · subst hb0
          simpa using h9
        · exact le_trans h9 (loop_0_exit_7 i2 (i2 + b)
            ⟨⟨loop_0_exit_5.1, by omega⟩, by omega⟩)
    · rw [else_1_assume_38 h1, else_1_else_2_assume_30 h1 h2]
      exact loop_0_exit_11
-- vrml:end mergesort.merge.ensures_31_1

end mergesort.merge

