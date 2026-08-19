import Vermilion.Obligations
import mergesort.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort.merge_sort

-- vrml:begin mergesort.merge_sort.assert_2 7c4c8ef0e8de20cb
/--
Generated VC `mergesort.merge_sort.assert_2`.

- Rust source: `case-studies/merge-sort/mergesort.rs:168:35-168:40`
- Rust/SST construct: possible division by zero
- AssertId: `2`
- Statement hash: `7c4c8ef0e8de20cb`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 168
  startColumn := 35
  endLine := 168
  endColumn := 40
  assertId := "2"
  functionName := "mergesort.merge_sort"
  kind := "assert"
  statementHash := "7c4c8ef0e8de20cb"
}
@[vrml_obligation] theorem assert_2
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1))) :
    2 ≠ 0 := by
  vrml [vstd.seq_lib.impl__0.remove, vstd.seq_lib.impl__0.contains, vstd.seq_lib.impl__0.drop_last, mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.assert_2

-- vrml:begin mergesort.merge_sort.call_requires_3 a9990ef36049381c
/--
Generated VC `mergesort.merge_sort.call_requires_3`.

- Rust source: `case-studies/merge-sort/mergesort.rs:169:22-169:41`
- Rust/SST construct: call split_off
- AssertId: `3`
- Statement hash: `a9990ef36049381c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 169
  startColumn := 22
  endLine := 169
  endColumn := 41
  assertId := "3"
  functionName := "mergesort.merge_sort"
  kind := "call_requires"
  statementHash := "a9990ef36049381c"
}
@[vrml_obligation] theorem call_requires_3
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    (((Vermilion.Seq.len v) / 2) % 18446744073709551616) ≤ Vermilion.Seq.len tmp_ := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.call_requires_3

-- vrml:begin mergesort.merge_sort.assert_4 7ad358bea12593fa
/--
Generated VC `mergesort.merge_sort.assert_4`.

- Rust source: `case-studies/merge-sort/mergesort.rs:170:16-170:31`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `7ad358bea12593fa`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 170
  startColumn := 16
  endLine := 170
  endColumn := 31
  assertId := "4"
  functionName := "mergesort.merge_sort"
  kind := "assert"
  statementHash := "7ad358bea12593fa"
}
@[vrml_obligation] theorem assert_4
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_)) :
    Vermilion.Seq.add tmp__post tmp__2 = v := by
  have hnn := Vermilion.Seq.len_nonneg v
  have hlen := requires_0
  simp only [Vermilion.inUnsignedRange] at hlen
  have hhalf : (Vermilion.Seq.len v / 2) % 18446744073709551616 =
      Vermilion.Seq.len v / 2 := Int.emod_eq_of_lt (by omega) (by omega)
  rw [call_split_off_ensures_2, call_split_off_ensures_3, hhalf,
    call_Vec__clone_ensures_2]
  rw [Vermilion.Seq.subrange_add_subrange v 0 (Vermilion.Seq.len v / 2)
      (Vermilion.Seq.len v) (by omega) (by omega) (by omega),
    Vermilion.Seq.subrange_all]
-- vrml:end mergesort.merge_sort.assert_4

-- vrml:begin mergesort.merge_sort.assert_anonymous_0 1b083a68ec277275
/--
Generated VC `mergesort.merge_sort.assert_anonymous_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:174:18-174:37`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_0`
- Statement hash: `1b083a68ec277275`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩
-/
def assert_anonymous_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 174
  startColumn := 18
  endLine := 174
  endColumn := 37
  assertId := "anonymous_0"
  functionName := "mergesort.merge_sort"
  kind := "assert"
  statementHash := "1b083a68ec277275"
}
@[vrml_obligation] theorem assert_anonymous_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_))
    (assert_4 : Vermilion.Seq.add tmp__post tmp__2 = v)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_17 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0)))) :
    ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.assert_anonymous_0

-- vrml:begin mergesort.merge_sort.assert_anonymous_1 c916b26201f390a2
/--
Generated VC `mergesort.merge_sort.assert_anonymous_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:175:18-175:37`
- Rust/SST construct: could not prove termination
- AssertId: `anonymous_1`
- Statement hash: `c916b26201f390a2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩
-/
def assert_anonymous_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 175
  startColumn := 18
  endLine := 175
  endColumn := 37
  assertId := "anonymous_1"
  functionName := "mergesort.merge_sort"
  kind := "assert"
  statementHash := "c916b26201f390a2"
}
@[vrml_obligation] theorem assert_anonymous_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_))
    (assert_4 : Vermilion.Seq.add tmp__post tmp__2 = v)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_17 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r1))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort.is_sorted r1)
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_24 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0)))) :
    ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False) := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.assert_anonymous_1

-- vrml:begin mergesort.merge_sort.call_requires_9_0 a0b4d0d93f5bf83a
/--
Generated VC `mergesort.merge_sort.call_requires_9_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:179:17-179:32`
- Rust/SST construct: call merge
- AssertId: `9_0`
- Statement hash: `a0b4d0d93f5bf83a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩
-/
def call_requires_9_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 179
  startColumn := 17
  endLine := 179
  endColumn := 32
  assertId := "9_0"
  functionName := "mergesort.merge_sort"
  kind := "call_requires"
  statementHash := "a0b4d0d93f5bf83a"
}
@[vrml_obligation] theorem call_requires_9_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_))
    (assert_4 : Vermilion.Seq.add tmp__post tmp__2 = v)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_17 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r1))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort.is_sorted r1)
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_24 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_anonymous_1 : ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r2))
    (call_merge_sort_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (call_merge_sort_1_ensures_2 : Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2)
    (call_merge_sort_1_ensures_3 : mergesort.is_sorted r2)
    (call_lemma_to_multiset_distributes_over_add_1_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2) = HAdd.hAdd (Vermilion.Seq.toMultiset r1) (Vermilion.Seq.toMultiset r2)) :
    mergesort.is_sorted r1 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.call_requires_9_0

-- vrml:begin mergesort.merge_sort.call_requires_9_1 a0b4cfd93f5bf687
/--
Generated VC `mergesort.merge_sort.call_requires_9_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:179:17-179:32`
- Rust/SST construct: call merge
- AssertId: `9_1`
- Statement hash: `a0b4cfd93f5bf687`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩
-/
def call_requires_9_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 179
  startColumn := 17
  endLine := 179
  endColumn := 32
  assertId := "9_1"
  functionName := "mergesort.merge_sort"
  kind := "call_requires"
  statementHash := "a0b4cfd93f5bf687"
}
@[vrml_obligation] theorem call_requires_9_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (branch_0 : (¬ (Vermilion.Seq.len v ≤ 1)))
    (assert_2 : 2 ≠ 0)
    (assume_8 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_split_off_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (call_split_off_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (call_split_off_ensures_2 : tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616))
    (call_split_off_ensures_3 : tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_))
    (assert_4 : Vermilion.Seq.add tmp__post tmp__2 = v)
    (call_lemma_to_multiset_distributes_over_add_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2))
    (assume_16 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (assume_17 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (assert_anonymous_0 : ((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r1))
    (call_merge_sort_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (call_merge_sort_ensures_2 : Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post)
    (call_merge_sort_ensures_3 : mergesort.is_sorted r1)
    (assume_23 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (assume_24 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (assert_anonymous_1 : ((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False))
    (call_merge_sort_1_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r2))
    (call_merge_sort_1_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (call_merge_sort_1_ensures_2 : Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2)
    (call_merge_sort_1_ensures_3 : mergesort.is_sorted r2)
    (call_lemma_to_multiset_distributes_over_add_1_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2) = HAdd.hAdd (Vermilion.Seq.toMultiset r1) (Vermilion.Seq.toMultiset r2)) :
    mergesort.is_sorted r2 := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.call_requires_9_1

-- vrml:begin mergesort.merge_sort.ensures_10_0 dbdc47aa99b79bb1
/--
Generated VC `mergesort.merge_sort.ensures_10_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:160:9-160:48`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_0`
- Statement hash: `dbdc47aa99b79bb1`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩
-/
def ensures_10_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 160
  startColumn := 9
  endLine := 160
  endColumn := 48
  assertId := "10_0"
  functionName := "mergesort.merge_sort"
  kind := "ensures"
  statementHash := "dbdc47aa99b79bb1"
}
@[vrml_obligation] theorem ensures_10_0
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (then_0_assume_7 : (Vermilion.Seq.len v ≤ 1) → (tmp__3 = tmp_))
    (then_0_assume_8 : (Vermilion.Seq.len v ≤ 1) → (v1 = tmp_))
    (else_0_assert_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (2 ≠ 0))
    (else_0_assume_8 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (else_0_assume_9 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (else_0_call_split_off_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (else_0_call_split_off_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (else_0_call_split_off_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616)))
    (else_0_call_split_off_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_)))
    (else_0_assert_4 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.add tmp__post tmp__2 = v))
    (else_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2)))
    (else_0_assume_16 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_17 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_assert_anonymous_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r1))
    (else_0_call_merge_sort_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (else_0_call_merge_sort_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post))
    (else_0_call_merge_sort_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r1)
    (else_0_assume_23 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (else_0_assume_24 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (else_0_assert_anonymous_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r2))
    (else_0_call_merge_sort_1_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (else_0_call_merge_sort_1_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2))
    (else_0_call_merge_sort_1_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r2)
    (else_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2) = HAdd.hAdd (Vermilion.Seq.toMultiset r1) (Vermilion.Seq.toMultiset r2)))
    (else_0_call_merge_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (else_0_call_merge_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (else_0_call_merge_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2)))
    (else_0_call_merge_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r)
    (else_0_assume_35 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__3 = r))
    (else_0_assume_36 : (¬ (Vermilion.Seq.len v ≤ 1)) → (v1 = tmp__post_2))
    (assume_38 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (assume_39 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (assume_41 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0)))) :
    Vermilion.Seq.toMultiset tmp__3 = Vermilion.Seq.toMultiset v := by
  vrml [mergesort.is_sorted]
-- vrml:end mergesort.merge_sort.ensures_10_0

-- vrml:begin mergesort.merge_sort.ensures_10_1 641d70399f34a708
/--
Generated VC `mergesort.merge_sort.ensures_10_1`.

- Rust source: `case-studies/merge-sort/mergesort.rs:161:9-161:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `10_1`
- Statement hash: `641d70399f34a708`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index tmp_ vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩ ⟨Vermilion.Seq.index tmp__2 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_2 vrml_i0⟩ ⟨Vermilion.Seq.index r1 vrml_i0⟩ ⟨Vermilion.Seq.index tmp__post_3 vrml_i0⟩ ⟨Vermilion.Seq.index r2 vrml_i0⟩ ⟨Vermilion.Seq.index r vrml_i0⟩ ⟨Vermilion.Seq.index tmp__3 vrml_i0⟩ ⟨Vermilion.Seq.index v1 vrml_i0⟩
-/
def ensures_10_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 161
  startColumn := 9
  endLine := 161
  endColumn := 22
  assertId := "10_1"
  functionName := "mergesort.merge_sort"
  kind := "ensures"
  statementHash := "641d70399f34a708"
}
@[vrml_obligation] theorem ensures_10_1
    (v : (Vermilion.Seq Int))
    (tmp_ : (Vermilion.Seq Int))
    (tmp__3 : (Vermilion.Seq Int))
    (v1 : (Vermilion.Seq Int))
    (tmp__post : (Vermilion.Seq Int))
    (tmp__2 : (Vermilion.Seq Int))
    (tmp__post_2 : (Vermilion.Seq Int))
    (r1 : (Vermilion.Seq Int))
    (tmp__post_3 : (Vermilion.Seq Int))
    (r2 : (Vermilion.Seq Int))
    (r : (Vermilion.Seq Int))
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (assume_2 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (call_Vec__clone_ensures_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp_))
    (call_Vec__clone_ensures_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp_)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp_ vrml_i0))))
    (call_Vec__clone_ensures_2 : tmp_ = v)
    (then_0_assume_7 : (Vermilion.Seq.len v ≤ 1) → (tmp__3 = tmp_))
    (then_0_assume_8 : (Vermilion.Seq.len v ≤ 1) → (v1 = tmp_))
    (else_0_assert_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (2 ≠ 0))
    (else_0_assume_8 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (else_0_assume_9 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (else_0_call_split_off_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__2))
    (else_0_call_split_off_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__2 vrml_i0))))
    (else_0_call_split_off_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__post = Vermilion.Seq.subrange tmp_ 0 (((Vermilion.Seq.len v) / 2) % 18446744073709551616)))
    (else_0_call_split_off_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__2 = Vermilion.Seq.subrange tmp_ (((Vermilion.Seq.len v) / 2) % 18446744073709551616) (Vermilion.Seq.len tmp_)))
    (else_0_assert_4 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.add tmp__post tmp__2 = v))
    (else_0_call_lemma_to_multiset_distributes_over_add_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add tmp__post tmp__2) = HAdd.hAdd (Vermilion.Seq.toMultiset tmp__post) (Vermilion.Seq.toMultiset tmp__2)))
    (else_0_assume_16 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_2))
    (else_0_assume_17 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_2 vrml_i0))))
    (else_0_assert_anonymous_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__post) ∧ (Vermilion.Seq.len tmp__post < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__post = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r1))
    (else_0_call_merge_sort_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r1 vrml_i0))))
    (else_0_call_merge_sort_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r1 = Vermilion.Seq.toMultiset tmp__post))
    (else_0_call_merge_sort_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r1)
    (else_0_assume_23 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post_3))
    (else_0_assume_24 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post_3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post_3 vrml_i0))))
    (else_0_assert_anonymous_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (((0 ≤ Vermilion.Seq.len tmp__2) ∧ (Vermilion.Seq.len tmp__2 < Vermilion.Seq.len v)) ∨ ((Vermilion.Seq.len tmp__2 = Vermilion.Seq.len v) ∧ False)))
    (else_0_call_merge_sort_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r2))
    (else_0_call_merge_sort_1_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r2 vrml_i0))))
    (else_0_call_merge_sort_1_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r2 = Vermilion.Seq.toMultiset tmp__2))
    (else_0_call_merge_sort_1_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r2)
    (else_0_call_lemma_to_multiset_distributes_over_add_1_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2) = HAdd.hAdd (Vermilion.Seq.toMultiset r1) (Vermilion.Seq.toMultiset r2)))
    (else_0_call_merge_ensures_0 : (¬ (Vermilion.Seq.len v ≤ 1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.len r))
    (else_0_call_merge_ensures_1 : (¬ (Vermilion.Seq.len v ≤ 1)) → (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len r)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index r vrml_i0))))
    (else_0_call_merge_ensures_2 : (¬ (Vermilion.Seq.len v ≤ 1)) → (Vermilion.Seq.toMultiset r = Vermilion.Seq.toMultiset (Vermilion.Seq.add r1 r2)))
    (else_0_call_merge_ensures_3 : (¬ (Vermilion.Seq.len v ≤ 1)) → mergesort.is_sorted r)
    (else_0_assume_35 : (¬ (Vermilion.Seq.len v ≤ 1)) → (tmp__3 = r))
    (else_0_assume_36 : (¬ (Vermilion.Seq.len v ≤ 1)) → (v1 = tmp__post_2))
    (assume_38 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__3))
    (assume_39 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__3)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__3 vrml_i0))))
    (assume_40 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v1))
    (assume_41 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v1 vrml_i0)))) :
    mergesort.is_sorted tmp__3 := by
  by_cases hle : Vermilion.Seq.len v ≤ 1
  · rw [then_0_assume_7 hle, call_Vec__clone_ensures_2]
    intro i j hij
    obtain ⟨⟨hi, hij'⟩, hj⟩ := hij
    exfalso; omega
  · rw [else_0_assume_35 hle]
    exact else_0_call_merge_ensures_3 hle
-- vrml:end mergesort.merge_sort.ensures_10_1

end mergesort.merge_sort

