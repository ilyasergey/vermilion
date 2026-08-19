import Vermilion.Obligations
import mergesort_clean.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort_clean.merge

-- vrml:begin mergesort_clean.merge.invariant_entry_0_0 69f647670f126616
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:51:13-51:32`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `69f647670f126616`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 51
  startColumn := 13
  endLine := 51
  endColumn := 32
  assertId := "0_0"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "69f647670f126616"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len v1) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_0

-- vrml:begin mergesort_clean.merge.invariant_entry_0_1 69f9af670f154ca5
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:52:13-52:32`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `69f9af670f154ca5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 52
  startColumn := 13
  endLine := 52
  endColumn := 32
  assertId := "0_1"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "69f9af670f154ca5"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (0 ≤ 0) ∧ (0 ≤ Vermilion.Seq.len v2) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_1

-- vrml:begin mergesort_clean.merge.invariant_entry_0_2 b17dbc07c6e884e6
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_2`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:53:13-53:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `b17dbc07c6e884e6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 53
  startColumn := 13
  endLine := 53
  endColumn := 26
  assertId := "0_2"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "b17dbc07c6e884e6"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort_clean.is_sorted v1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_2

-- vrml:begin mergesort_clean.merge.invariant_entry_0_3 b17dbb07c6e88333
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_3`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:54:13-54:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `b17dbb07c6e88333`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 54
  startColumn := 13
  endLine := 54
  endColumn := 26
  assertId := "0_3"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "b17dbb07c6e88333"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort_clean.is_sorted v2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_3

-- vrml:begin mergesort_clean.merge.invariant_entry_0_4 bd2580edaf3e52a4
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_4`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:55:13-55:88`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `bd2580edaf3e52a4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 55
  startColumn := 13
  endLine := 55
  endColumn := 88
  assertId := "0_4"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "bd2580edaf3e52a4"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (∀ (i : Int), ((0 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp_)) → (Vermilion.Seq.index tmp_ i ≤ Vermilion.Seq.index v1 0)))) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_4

-- vrml:begin mergesort_clean.merge.invariant_entry_0_5 d4d9b64f91b52740
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_5`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:56:13-56:88`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_5`
- Statement hash: `d4d9b64f91b52740`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp_ i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 56
  startColumn := 13
  endLine := 56
  endColumn := 88
  assertId := "0_5"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "d4d9b64f91b52740"
}
@[vrml_obligation] theorem invariant_entry_0_5
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    (∀ (i : Int), ((0 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len tmp_)) → (Vermilion.Seq.index tmp_ i ≤ Vermilion.Seq.index v2 0)))) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_5

-- vrml:begin mergesort_clean.merge.invariant_entry_0_6 7d6472eccfa29e2d
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_6`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:57:13-60:29`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_6`
- Statement hash: `7d6472eccfa29e2d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 57
  startColumn := 13
  endLine := 60
  endColumn := 29
  assertId := "0_6"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "7d6472eccfa29e2d"
}
@[vrml_obligation] theorem invariant_entry_0_6
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    Vermilion.Seq.toMultiset tmp_ = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 0) (Vermilion.Seq.subrange v2 0 0)) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_6

-- vrml:begin mergesort_clean.merge.invariant_entry_0_7 944807836f138a21
/--
Generated VC `mergesort_clean.merge.invariant_entry_0_7`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:61:13-61:26`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_7`
- Statement hash: `944807836f138a21`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def invariant_entry_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 61
  startColumn := 13
  endLine := 61
  endColumn := 26
  assertId := "0_7"
  functionName := "mergesort_clean.merge"
  kind := "invariant_entry"
  statementHash := "944807836f138a21"
}
@[vrml_obligation] theorem invariant_entry_0_7
    (v1 : (Vermilion.Seq Int))
    (v2 : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v2 vrml_i0))))
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int)) :
    mergesort_clean.is_sorted tmp_ := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_entry_0_7

-- vrml:begin mergesort_clean.merge.call_requires_3 0cb7c70a5f4be170
/--
Generated VC `mergesort_clean.merge.call_requires_3`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:64:12-64:18`
- Rust/SST construct: call vec_index
- AssertId: `3`
- Statement hash: `0cb7c70a5f4be170`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 64
  startColumn := 12
  endLine := 64
  endColumn := 18
  assertId := "3"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "0cb7c70a5f4be170"
}
@[vrml_obligation] theorem call_requires_3
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_3

-- vrml:begin mergesort_clean.merge.call_requires_4 d2195c622562a77c
/--
Generated VC `mergesort_clean.merge.call_requires_4`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:64:21-64:27`
- Rust/SST construct: call vec_index
- AssertId: `4`
- Statement hash: `d2195c622562a77c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def call_requires_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 64
  startColumn := 21
  endLine := 64
  endColumn := 27
  assertId := "4"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "d2195c622562a77c"
}
@[vrml_obligation] theorem call_requires_4
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_4

-- vrml:begin mergesort_clean.merge.call_requires_5 d575da2c214503c1
/--
Generated VC `mergesort_clean.merge.call_requires_5`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:65:20-65:26`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `d575da2c214503c1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 65
  startColumn := 20
  endLine := 65
  endColumn := 26
  assertId := "5"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "d575da2c214503c1"
}
@[vrml_obligation] theorem call_requires_5
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : tmp__2 < tmp__3) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_5

-- vrml:begin mergesort_clean.merge.assert_7 85a5a55de05b1bb5
/--
Generated VC `mergesort_clean.merge.assert_7`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:66:13-66:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `7`
- Statement hash: `85a5a55de05b1bb5`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 66
  startColumn := 13
  endLine := 66
  endColumn := 20
  assertId := "7"
  functionName := "mergesort_clean.merge"
  kind := "assert"
  statementHash := "85a5a55de05b1bb5"
}
@[vrml_obligation] theorem assert_7
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : tmp__2 < tmp__3)
    (call_vec_index_2_ensures_0 : Vermilion.inUnsignedRange 64 tmp__4)
    (call_vec_index_2_ensures_1 : tmp__4 = Vermilion.Seq.index v1 i1)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_27 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r tmp__4) :
    Vermilion.inUnsignedRange 64 (i1 + 1) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.assert_7

-- vrml:begin mergesort_clean.merge.call_requires_8 576b0ef222fcf2b1
/--
Generated VC `mergesort_clean.merge.call_requires_8`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:68:20-68:26`
- Rust/SST construct: call vec_index
- AssertId: `8`
- Statement hash: `576b0ef222fcf2b1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩
-/
def call_requires_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 68
  startColumn := 20
  endLine := 68
  endColumn := 26
  assertId := "8"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "576b0ef222fcf2b1"
}
@[vrml_obligation] theorem call_requires_8
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : (¬ (tmp__2 < tmp__3))) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_8

-- vrml:begin mergesort_clean.merge.assert_10 2f7c66ed385e9d43
/--
Generated VC `mergesort_clean.merge.assert_10`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:69:13-69:20`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `10`
- Statement hash: `2f7c66ed385e9d43`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 69
  startColumn := 13
  endLine := 69
  endColumn := 20
  assertId := "10"
  functionName := "mergesort_clean.merge"
  kind := "assert"
  statementHash := "2f7c66ed385e9d43"
}
@[vrml_obligation] theorem assert_10
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (branch_0 : (¬ (tmp__2 < tmp__3)))
    (call_vec_index_3_ensures_0 : Vermilion.inUnsignedRange 64 tmp__5)
    (call_vec_index_3_ensures_1 : tmp__5 = Vermilion.Seq.index v2 i2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_27 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (call_push_1_ensures_0 : tmp__post_2 = Vermilion.Seq.push r tmp__5) :
    Vermilion.inUnsignedRange 64 (i2 + 1) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.assert_10

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_0 fd8720a14074caa6
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:53:13-53:32`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `fd8720a14074caa6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 53
  startColumn := 13
  endLine := 53
  endColumn := 32
  assertId := "0_0"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "fd8720a14074caa6"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (0 ≤ i1_2) ∧ (i1_2 ≤ Vermilion.Seq.len v1) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_preserve_0_0

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_1 115a5c2b97d9606b
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:54:13-54:32`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `115a5c2b97d9606b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 54
  startColumn := 13
  endLine := 54
  endColumn := 32
  assertId := "0_1"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "115a5c2b97d9606b"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (0 ≤ i2_2) ∧ (i2_2 ≤ Vermilion.Seq.len v2) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_preserve_0_1

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_2 6e1ee5665a8e3a3c
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_2`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:55:13-55:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `6e1ee5665a8e3a3c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 55
  startColumn := 13
  endLine := 55
  endColumn := 26
  assertId := "0_2"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "6e1ee5665a8e3a3c"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort_clean.is_sorted v1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_preserve_0_2

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_3 6e1ee8665a8e3f55
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_3`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:56:13-56:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `6e1ee8665a8e3f55`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 56
  startColumn := 13
  endLine := 56
  endColumn := 26
  assertId := "0_3"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "6e1ee8665a8e3f55"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort_clean.is_sorted v2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.invariant_preserve_0_3

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_4 c8471e93f955f0f0
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_4`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:57:13-57:88`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `c8471e93f955f0f0`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r_2 i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 57
  startColumn := 13
  endLine := 57
  endColumn := 88
  assertId := "0_4"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "c8471e93f955f0f0"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (∀ (i : Int), ((i1_2 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r_2)) → (Vermilion.Seq.index r_2 i ≤ Vermilion.Seq.index v1 i1_2)))) := by
  -- Interactive proof: every element of the extended result stays bounded
  -- by the next left candidate — old elements via the old bound (plus v1's
  -- sortedness when i1 advanced), the pushed element likewise.
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  intro i hlt hi
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_32 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    have hinc := then_0_assert_7 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i1 + 1) % 18446744073709551616 = i1 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [then_0_assume_30 hbr, hmod] at hlt ⊢
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
      rw [else_0_assume_32 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    rw [else_0_assume_30 hbr] at hlt ⊢
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
-- vrml:end mergesort_clean.merge.invariant_preserve_0_4

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_5 294b2c4f58d49bf4
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_5`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:58:13-58:88`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_5`
- Statement hash: `294b2c4f58d49bf4`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r_2 i⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 58
  startColumn := 13
  endLine := 58
  endColumn := 88
  assertId := "0_5"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "294b2c4f58d49bf4"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    (∀ (i : Int), ((i2_2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r_2)) → (Vermilion.Seq.index r_2 i ≤ Vermilion.Seq.index v2 i2_2)))) := by
  -- Interactive proof: mirror image of the previous invariant, for the
  -- right-hand bound.
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  intro i hlt hi
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_32 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    rw [then_0_assume_31 hbr] at hlt ⊢
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
      rw [else_0_assume_32 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    have hinc := else_0_assert_10 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i2 + 1) % 18446744073709551616 = i2 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [else_0_assume_31 hbr, hmod] at hlt ⊢
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
-- vrml:end mergesort_clean.merge.invariant_preserve_0_5

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_6 3a4f8492ae693611
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_6`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:59:13-62:29`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_6`
- Statement hash: `3a4f8492ae693611`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 59
  startColumn := 13
  endLine := 62
  endColumn := 29
  assertId := "0_6"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "3a4f8492ae693611"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    Vermilion.Seq.toMultiset r_2 = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1_2) (Vermilion.Seq.subrange v2 0 i2_2)) := by
  -- Interactive proof: the multiset invariant, via the helper step lemmas
  -- (which fold `subrange_push` and Mathlib's multiset algebra).
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  by_cases hbr : tmp__2 < tmp__3
  · have hinc := then_0_assert_7 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i1 + 1) % 18446744073709551616 = i1 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [then_0_assume_32 hbr, then_0_call_push_ensures_0 hbr,
      then_0_call_vec_index_2_ensures_1 hbr, then_0_assume_30 hbr, hmod,
      then_0_assume_31 hbr]
    exact MergeSortHelpers.multiset_step_left v1 v2 r i1 i2 loop_0_iteration_16
      loop_0_iteration_10.1 hguard.1
  · have hinc := else_0_assert_10 hbr
    simp only [Vermilion.inUnsignedRange] at hinc
    have hmod : (i2 + 1) % 18446744073709551616 = i2 + 1 :=
      Int.emod_eq_of_lt hinc.1 hinc.2
    rw [else_0_assume_32 hbr, else_0_call_push_1_ensures_0 hbr,
      else_0_call_vec_index_3_ensures_1 hbr, else_0_assume_30 hbr,
      else_0_assume_31 hbr, hmod]
    exact MergeSortHelpers.multiset_step_right v1 v2 r i1 i2 loop_0_iteration_16
      loop_0_iteration_11.1 hguard.2
-- vrml:end mergesort_clean.merge.invariant_preserve_0_6

-- vrml:begin mergesort_clean.merge.invariant_preserve_0_7 8ae69eebccbfa840
/--
Generated VC `mergesort_clean.merge.invariant_preserve_0_7`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:63:13-63:26`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_7`
- Statement hash: `8ae69eebccbfa840`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def invariant_preserve_0_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 63
  startColumn := 13
  endLine := 63
  endColumn := 26
  assertId := "0_7"
  functionName := "mergesort_clean.merge"
  kind := "invariant_preserve"
  statementHash := "8ae69eebccbfa840"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    mergesort_clean.is_sorted r_2 := by
  -- Interactive proof: the pushed element dominates everything already in
  -- `r` (that is exactly the bound invariants), so sortedness persists.
  have hguard : i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2 := by
    have h := loop_0_iteration_18
    simp only [Vermilion.iteP] at h
    split_ifs at h with hc
    exact ⟨hc, h⟩
  by_cases hbr : tmp__2 < tmp__3
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v1 i1) := by
      rw [then_0_assume_32 hbr, then_0_call_push_ensures_0 hbr,
        then_0_call_vec_index_2_ensures_1 hbr]
    rw [hr2]
    exact MergeSortHelpers.is_sorted_push r _ loop_0_iteration_17
      (fun i h0 hl => loop_0_iteration_14 i hguard.1 ⟨h0, hl⟩)
  · have hr2 : r_2 = Vermilion.Seq.push r (Vermilion.Seq.index v2 i2) := by
      rw [else_0_assume_32 hbr, else_0_call_push_1_ensures_0 hbr,
        else_0_call_vec_index_3_ensures_1 hbr]
    rw [hr2]
    exact MergeSortHelpers.is_sorted_push r _ loop_0_iteration_17
      (fun i h0 hl => loop_0_iteration_15 i hguard.2 ⟨h0, hl⟩)
-- vrml:end mergesort_clean.merge.invariant_preserve_0_7

-- vrml:begin mergesort_clean.merge.assert_0_decreases 7326ea06852a595b
/--
Generated VC `mergesort_clean.merge.assert_0_decreases`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:64:19-64:48`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `7326ea06852a595b`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 64
  startColumn := 19
  endLine := 64
  endColumn := 48
  assertId := "0_decreases"
  functionName := "mergesort_clean.merge"
  kind := "assert"
  statementHash := "7326ea06852a595b"
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
    (loop_0_iteration_12 : mergesort_clean.is_sorted v1)
    (loop_0_iteration_13 : mergesort_clean.is_sorted v2)
    (loop_0_iteration_14 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_iteration_15 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_iteration_16 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_iteration_17 : mergesort_clean.is_sorted r)
    (loop_0_iteration_18 : (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp__2)
    (call_vec_index_ensures_1 : tmp__2 = Vermilion.Seq.index v1 i1)
    (call_vec_index_1_ensures_0 : Vermilion.inUnsignedRange 64 tmp__3)
    (call_vec_index_1_ensures_1 : tmp__3 = Vermilion.Seq.index v2 i2)
    (then_0_call_vec_index_2_ensures_0 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 tmp__4)
    (then_0_call_vec_index_2_ensures_1 : (tmp__2 < tmp__3) → (tmp__4 = Vermilion.Seq.index v1 i1))
    (then_0_assume_26 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (then_0_assume_27 : (tmp__2 < tmp__3) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (then_0_call_push_ensures_0 : (tmp__2 < tmp__3) → (tmp__post = Vermilion.Seq.push r tmp__4))
    (then_0_assert_7 : (tmp__2 < tmp__3) → Vermilion.inUnsignedRange 64 (i1 + 1))
    (then_0_assume_30 : (tmp__2 < tmp__3) → (i1_2 = ((i1 + 1) % 18446744073709551616)))
    (then_0_assume_31 : (tmp__2 < tmp__3) → (i2_2 = i2))
    (then_0_assume_32 : (tmp__2 < tmp__3) → (r_2 = tmp__post))
    (else_0_call_vec_index_3_ensures_0 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 tmp__5)
    (else_0_call_vec_index_3_ensures_1 : (¬ (tmp__2 < tmp__3)) → (tmp__5 = Vermilion.Seq.index v2 i2))
    (else_0_assume_26 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_27 : (¬ (tmp__2 < tmp__3)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_call_push_1_ensures_0 : (¬ (tmp__2 < tmp__3)) → (tmp__post_2 = Vermilion.Seq.push r tmp__5))
    (else_0_assert_10 : (¬ (tmp__2 < tmp__3)) → Vermilion.inUnsignedRange 64 (i2 + 1))
    (else_0_assume_30 : (¬ (tmp__2 < tmp__3)) → (i1_2 = i1))
    (else_0_assume_31 : (¬ (tmp__2 < tmp__3)) → (i2_2 = ((i2 + 1) % 18446744073709551616)))
    (else_0_assume_32 : (¬ (tmp__2 < tmp__3)) → (r_2 = tmp__post_2))
    (assume_41 : Vermilion.inUnsignedRange 64 i1_2)
    (assume_42 : Vermilion.inUnsignedRange 64 i2_2)
    (assume_43 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (assume_44 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0)))) :
    ((0 ≤ (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2)) ∧ ((((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2) < (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1) - i2))) ∨ (((((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1_2) - i2_2) = (((Vermilion.Seq.len v1 + Vermilion.Seq.len v2) - i1) - i2)) ∧ False) := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.assert_0_decreases

-- vrml:begin mergesort_clean.merge.call_requires_12 b253f0f07203bbe8
/--
Generated VC `mergesort_clean.merge.call_requires_12`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:74:9-74:40`
- Rust/SST construct: call extend_from_idx
- AssertId: `12`
- Statement hash: `b253f0f07203bbe8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def call_requires_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 74
  startColumn := 9
  endLine := 74
  endColumn := 40
  assertId := "12"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "b253f0f07203bbe8"
}
@[vrml_obligation] theorem call_requires_12
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
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort_clean.is_sorted v1)
    (loop_0_exit_7 : mergesort_clean.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort_clean.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assume_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : i1 < Vermilion.Seq.len v1)
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_25 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0)))) :
    i1 < Vermilion.Seq.len v1 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_12

-- vrml:begin mergesort_clean.merge.call_requires_14 0fccad796ca4ae63
/--
Generated VC `mergesort_clean.merge.call_requires_14`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:76:9-76:40`
- Rust/SST construct: call extend_from_idx
- AssertId: `14`
- Statement hash: `0fccad796ca4ae63`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩
-/
def call_requires_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 76
  startColumn := 9
  endLine := 76
  endColumn := 40
  assertId := "14"
  functionName := "mergesort_clean.merge"
  kind := "call_requires"
  statementHash := "0fccad796ca4ae63"
}
@[vrml_obligation] theorem call_requires_14
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
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort_clean.is_sorted v1)
    (loop_0_exit_7 : mergesort_clean.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort_clean.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assume_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (branch_1 : (¬ (i1 < Vermilion.Seq.len v1)))
    (assume_24 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (branch_2 : i2 < Vermilion.Seq.len v2)
    (assume_26 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4))
    (assume_27 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))) :
    i2 < Vermilion.Seq.len v2 := by
  vrml [mergesort_clean.is_sorted]
-- vrml:end mergesort_clean.merge.call_requires_14

-- vrml:begin mergesort_clean.merge.ensures_15_0 f10a3a1f16c54c7d
/--
Generated VC `mergesort_clean.merge.ensures_15_0`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:42:9-42:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `15_0`
- Statement hash: `f10a3a1f16c54c7d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index r_3 vrml_i0⟩ ⟨Vermilion.Seq.index r_4 vrml_i0⟩
-/
def ensures_15_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 42
  startColumn := 9
  endLine := 42
  endColumn := 54
  assertId := "15_0"
  functionName := "mergesort_clean.merge"
  kind := "ensures"
  statementHash := "f10a3a1f16c54c7d"
}
@[vrml_obligation] theorem ensures_15_0
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
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort_clean.is_sorted v1)
    (loop_0_exit_7 : mergesort_clean.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort_clean.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assume_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (then_1_assume_24 : (i1 < Vermilion.Seq.len v1) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_1_assume_25 : (i1 < Vermilion.Seq.len v1) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (then_1_call_extend_from_idx_ensures_0 : (i1 < Vermilion.Seq.len v1) → (tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))))
    (then_1_assume_27 : (i1 < Vermilion.Seq.len v1) → (r_4 = tmp__post_3))
    (else_1_assume_24 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (else_1_then_2_assume_26 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4)))
    (else_1_then_2_assume_27 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))))
    (else_1_then_2_call_extend_from_idx_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)))))
    (else_1_then_2_assume_29 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (r_3 = tmp__post_4)))
    (else_1_else_2_assume_26 : (¬ (i1 < Vermilion.Seq.len v1)) → ((¬ (i2 < Vermilion.Seq.len v2)) → (r_3 = r)))
    (else_1_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_3))
    (else_1_assume_31 : (¬ (i1 < Vermilion.Seq.len v1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_3 vrml_i0))))
    (else_1_assume_32 : (¬ (i1 < Vermilion.Seq.len v1)) → (r_4 = r_3))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_4))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_4 vrml_i0)))) :
    Vermilion.Seq.toMultiset r_4 = Vermilion.Seq.toMultiset (Vermilion.Seq.add v1 v2) := by
  -- Interactive proof: at exit one side is exhausted; the appended
  -- remainder completes that side's subrange to the whole sequence
  -- (`subrange_add_subrange` + `subrange_all`), and the multiset invariant
  -- does the rest.
  have hexit : ¬ (i1 < Vermilion.Seq.len v1 ∧ i2 < Vermilion.Seq.len v2) := by
    intro hboth
    apply loop_0_exit_12
    simp only [Vermilion.iteP]
    split_ifs with hc
    · exact hboth.2
    · exact hc hboth.1
  have hsplit1 : Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 0 i1)
      + Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))
      = Vermilion.Seq.toMultiset v1 := by
    rw [← Vermilion.Seq.toMultiset_add,
      Vermilion.Seq.subrange_add_subrange v1 0 i1 (Vermilion.Seq.len v1)
        le_rfl loop_0_exit_4.1 loop_0_exit_4.2,
      Vermilion.Seq.subrange_all]
  have hsplit2 : Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 0 i2)
      + Vermilion.Seq.toMultiset (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2))
      = Vermilion.Seq.toMultiset v2 := by
    rw [← Vermilion.Seq.toMultiset_add,
      Vermilion.Seq.subrange_add_subrange v2 0 i2 (Vermilion.Seq.len v2)
        le_rfl loop_0_exit_5.1 loop_0_exit_5.2,
      Vermilion.Seq.subrange_all]
  by_cases h1 : i1 < Vermilion.Seq.len v1
  · have h2 : i2 = Vermilion.Seq.len v2 := by
      have hb := loop_0_exit_5.2
      have hn2 : ¬ i2 < Vermilion.Seq.len v2 := fun h => hexit ⟨h1, h⟩
      omega
    rw [then_1_assume_27 h1, then_1_call_extend_from_idx_ensures_0 h1,
      Vermilion.Seq.toMultiset_add, loop_0_exit_10, Vermilion.Seq.toMultiset_add,
      Vermilion.Seq.toMultiset_add, h2, Vermilion.Seq.subrange_all, ← hsplit1]
    exact Vermilion.Multiset.add_right_comm _ _ _
  · by_cases h2 : i2 < Vermilion.Seq.len v2
    · have h1e : i1 = Vermilion.Seq.len v1 := by
        have hb := loop_0_exit_4.2
        omega
      rw [else_1_assume_32 h1, else_1_then_2_assume_29 h1 h2,
        else_1_then_2_call_extend_from_idx_1_ensures_0 h1 h2,
        Vermilion.Seq.toMultiset_add, loop_0_exit_10, Vermilion.Seq.toMultiset_add,
        Vermilion.Seq.toMultiset_add, h1e, Vermilion.Seq.subrange_all, ← hsplit2]
      exact _root_.Multiset.add_assoc _ _ _
    · have h1e : i1 = Vermilion.Seq.len v1 := by
        have hb := loop_0_exit_4.2
        omega
      have h2e : i2 = Vermilion.Seq.len v2 := by
        have hb := loop_0_exit_5.2
        omega
      rw [else_1_assume_32 h1, else_1_else_2_assume_26 h1 h2, loop_0_exit_10,
        h1e, h2e, Vermilion.Seq.subrange_all, Vermilion.Seq.subrange_all]
-- vrml:end mergesort_clean.merge.ensures_15_0

-- vrml:begin mergesort_clean.merge.ensures_15_1 4c812de864ae232f
/--
Generated VC `mergesort_clean.merge.ensures_15_1`.

- Rust source: `case-studies/merge-sort/mergesort_clean.rs:43:9-43:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `15_1`
- Statement hash: `4c812de864ae232f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v1 vrml_i0⟩ ⟨Vermilion.Seq.index v2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index r i⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_4 vrml_i0⟩ ⟨Vermilion.Seq.index r_3 vrml_i0⟩ ⟨Vermilion.Seq.index r_4 vrml_i0⟩
-/
def ensures_15_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort_clean.rs"
  startLine := 43
  startColumn := 9
  endLine := 43
  endColumn := 22
  assertId := "15_1"
  functionName := "mergesort_clean.merge"
  kind := "ensures"
  statementHash := "4c812de864ae232f"
}
@[vrml_obligation] theorem ensures_15_1
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
    (requires_4 : mergesort_clean.is_sorted v1)
    (requires_5 : mergesort_clean.is_sorted v2)
    (call_new_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_new_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_new_ensures_2 : tmp_ = (Vermilion.Seq.empty : Vermilion.Seq Int))
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i1)
    (loop_0_exit_3 : Vermilion.inUnsignedRange 64 i2)
    (loop_0_exit_4 : (0 ≤ i1) ∧ (i1 ≤ Vermilion.Seq.len v1))
    (loop_0_exit_5 : (0 ≤ i2) ∧ (i2 ≤ Vermilion.Seq.len v2))
    (loop_0_exit_6 : mergesort_clean.is_sorted v1)
    (loop_0_exit_7 : mergesort_clean.is_sorted v2)
    (loop_0_exit_8 : (∀ (i : Int), ((i1 < Vermilion.Seq.len v1) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v1 i1)))))
    (loop_0_exit_9 : (∀ (i : Int), ((i2 < Vermilion.Seq.len v2) → (((0 ≤ i) ∧ (i < Vermilion.Seq.len r)) → (Vermilion.Seq.index r i ≤ Vermilion.Seq.index v2 i2)))))
    (loop_0_exit_10 : Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add (Vermilion.Seq.subrange v1 0 i1) (Vermilion.Seq.subrange v2 0 i2)))
    (loop_0_exit_11 : mergesort_clean.is_sorted r)
    (loop_0_exit_12 : (¬ (Vermilion.iteP (i1 < Vermilion.Seq.len v1) (i2 < Vermilion.Seq.len v2) False)))
    (assume_22 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (then_1_assume_24 : (i1 < Vermilion.Seq.len v1) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (then_1_assume_25 : (i1 < Vermilion.Seq.len v1) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (then_1_call_extend_from_idx_ensures_0 : (i1 < Vermilion.Seq.len v1) → (tmp__post_3 = Vermilion.Seq.add r (Vermilion.Seq.subrange v1 i1 (Vermilion.Seq.len v1))))
    (then_1_assume_27 : (i1 < Vermilion.Seq.len v1) → (r_4 = tmp__post_3))
    (else_1_assume_24 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v2))
    (else_1_then_2_assume_26 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_4)))
    (else_1_then_2_assume_27 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_4 vrml_i0)))))
    (else_1_then_2_call_extend_from_idx_1_ensures_0 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (tmp__post_4 = Vermilion.Seq.add r (Vermilion.Seq.subrange v2 i2 (Vermilion.Seq.len v2)))))
    (else_1_then_2_assume_29 : (¬ (i1 < Vermilion.Seq.len v1)) → ((i2 < Vermilion.Seq.len v2) → (r_3 = tmp__post_4)))
    (else_1_else_2_assume_26 : (¬ (i1 < Vermilion.Seq.len v1)) → ((¬ (i2 < Vermilion.Seq.len v2)) → (r_3 = r)))
    (else_1_assume_30 : (¬ (i1 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_3))
    (else_1_assume_31 : (¬ (i1 < Vermilion.Seq.len v1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_3 vrml_i0))))
    (else_1_assume_32 : (¬ (i1 < Vermilion.Seq.len v1)) → (r_4 = r_3))
    (assume_36 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_4))
    (assume_37 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_4)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_4 vrml_i0)))) :
    mergesort_clean.is_sorted r_4 := by
  -- Interactive proof: the appended remainder is sorted (a subrange of a
  -- sorted sequence) and dominates everything in `r` (the loop's bound
  -- invariant at the exhausted side), so the concatenation is sorted.
  by_cases h1 : i1 < Vermilion.Seq.len v1
  · rw [then_1_assume_27 h1, then_1_call_extend_from_idx_ensures_0 h1]
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
    · rw [else_1_assume_32 h1, else_1_then_2_assume_29 h1 h2,
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
    · rw [else_1_assume_32 h1, else_1_else_2_assume_26 h1 h2]
      exact loop_0_exit_11
-- vrml:end mergesort_clean.merge.ensures_15_1

end mergesort_clean.merge

