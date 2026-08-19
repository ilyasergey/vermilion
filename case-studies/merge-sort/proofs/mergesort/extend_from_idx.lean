import Vermilion.Obligations
import mergesort.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort.extend_from_idx

-- vrml:begin mergesort.extend_from_idx.invariant_entry_0_4 0bf7dbd7612169ce
/--
Generated VC `mergesort.extend_from_idx.invariant_entry_0_4`.

- Rust source: `case-studies/merge-sort/mergesort.rs:29:13-29:65`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `0bf7dbd7612169ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 29
  startColumn := 13
  endLine := 29
  endColumn := 65
  assertId := "0_4"
  functionName := "mergesort.extend_from_idx"
  kind := "invariant_entry"
  statementHash := "0bf7dbd7612169ce"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 start)
    (requires_5 : start < Vermilion.Seq.len v)
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (assume_7 : Vermilion.inUnsignedRange 64 vrml_for_arb) :
    r = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.iteP (start ≤ Vermilion.Seq.len v) start vrml_for_arb)) := by
  vrml [vstd.seq_lib.impl__0.remove, vstd.seq_lib.impl__0.contains, vstd.seq_lib.impl__0.drop_last, mergesort.is_sorted]
-- vrml:end mergesort.extend_from_idx.invariant_entry_0_4

-- vrml:begin mergesort.extend_from_idx.call_requires_5 aaada135386645a1
/--
Generated VC `mergesort.extend_from_idx.call_requires_5`.

- Rust source: `case-studies/merge-sort/mergesort.rs:31:16-31:20`
- Rust/SST construct: call vec_index
- AssertId: `5`
- Statement hash: `aaada135386645a1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def call_requires_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 31
  startColumn := 16
  endLine := 31
  endColumn := 20
  assertId := "5"
  functionName := "mergesort.extend_from_idx"
  kind := "call_requires"
  statementHash := "aaada135386645a1"
}
@[vrml_obligation] theorem call_requires_5
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 start)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i)) :
    i < Vermilion.Seq.len v := by
  vrml [vstd.seq_lib.impl__0.remove, vstd.seq_lib.impl__0.contains, vstd.seq_lib.impl__0.drop_last, mergesort.is_sorted]
-- vrml:end mergesort.extend_from_idx.call_requires_5

-- vrml:begin mergesort.extend_from_idx.invariant_preserve_0_4 563cb16e5197e8c6
/--
Generated VC `mergesort.extend_from_idx.invariant_preserve_0_4`.

- Rust source: `case-studies/merge-sort/mergesort.rs:29:13-29:65`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `563cb16e5197e8c6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 29
  startColumn := 13
  endLine := 29
  endColumn := 65
  assertId := "0_4"
  functionName := "mergesort.extend_from_idx"
  kind := "invariant_preserve"
  statementHash := "563cb16e5197e8c6"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 start)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v i)
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r_2 tmp_) :
    tmp__post = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (i + 1)) := by
  have hs : (0:Int) ≤ start ∧ start < 2 ^ 64 := loop_0_iteration_4
  subst call_push_ensures_0 loop_0_iteration_12 call_vec_index_ensures_1
  rw [Vermilion.Seq.add_push,
    Vermilion.Seq.subrange_push v start i hs.1 loop_0_iteration_10 loop_0_iteration_11]
-- vrml:end mergesort.extend_from_idx.invariant_preserve_0_4

-- vrml:begin mergesort.extend_from_idx.assert_0_decreases f2ad082734ee0859
/--
Generated VC `mergesort.extend_from_idx.assert_0_decreases`.

- Rust source: `case-studies/merge-sort/mergesort.rs:27:5-32:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `f2ad082734ee0859`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 27
  startColumn := 5
  endLine := 32
  endColumn := 6
  assertId := "0_decreases"
  functionName := "mergesort.extend_from_idx"
  kind := "assert"
  statementHash := "f2ad082734ee0859"
}
@[vrml_obligation] theorem assert_0_decreases
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp_ : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 start)
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_6 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_7 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (loop_0_iteration_8 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_iteration_9 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_10 : start ≤ i)
    (loop_0_iteration_11 : i < Vermilion.Seq.len v)
    (loop_0_iteration_12 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start i))
    (call_vec_index_ensures_0 : Vermilion.inUnsignedRange 64 tmp_)
    (call_vec_index_ensures_1 : tmp_ = Vermilion.Seq.index v i)
    (assume_15 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_16 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_push_ensures_0 : tmp__post = Vermilion.Seq.push r_2 tmp_) :
    (0 ≤ (Vermilion.Seq.len v - (i + 1))) ∧ ((Vermilion.Seq.len v - (i + 1)) < (Vermilion.Seq.len v - i)) := by
  vrml [vstd.seq_lib.impl__0.remove, vstd.seq_lib.impl__0.contains, vstd.seq_lib.impl__0.drop_last, mergesort.is_sorted]
-- vrml:end mergesort.extend_from_idx.assert_0_decreases

-- vrml:begin mergesort.extend_from_idx.ensures_7 e054c707e4aab25c
/--
Generated VC `mergesort.extend_from_idx.ensures_7`.

- Rust source: `case-studies/merge-sort/mergesort.rs:25:9-25:73`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `7`
- Statement hash: `e054c707e4aab25c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index r_2 vrml_i0⟩
-/
def ensures_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 25
  startColumn := 9
  endLine := 25
  endColumn := 73
  assertId := "7"
  functionName := "mergesort.extend_from_idx"
  kind := "ensures"
  statementHash := "e054c707e4aab25c"
}
@[vrml_obligation] theorem ensures_7
    (r : (Vermilion.Seq Int))
    (v : (Vermilion.Seq Int))
    (start : Int)
    (vrml_for_arb : Int)
    (r_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_4 : Vermilion.inUnsignedRange 64 start)
    (requires_5 : start < Vermilion.Seq.len v)
    (assume_6 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (assume_7 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r_2))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r_2 vrml_i0))))
    (loop_0_exit_2 : r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.iteP (start ≤ Vermilion.Seq.len v) (Vermilion.Seq.len v) vrml_for_arb))) :
    r_2 = Vermilion.Seq.add r (Vermilion.Seq.subrange v start (Vermilion.Seq.len v)) := by
  vrml [vstd.seq_lib.impl__0.remove, vstd.seq_lib.impl__0.contains, vstd.seq_lib.impl__0.drop_last, mergesort.is_sorted]
-- vrml:end mergesort.extend_from_idx.ensures_7

end mergesort.extend_from_idx

