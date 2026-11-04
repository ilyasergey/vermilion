import Vermilion.Obligations
import multiset.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace multiset.sorted_by_leq

-- vrml:begin multiset.sorted_by_leq.call_requires_0 b1055218790015d6
/--
Generated VC `multiset.sorted_by_leq.call_requires_0`.

- Rust source: `case-studies/sorting/multiset.rs:33:5-33:40`
- Rust/SST construct: call lemma_sort_by_ensures
- AssertId: `0`
- Statement hash: `b1055218790015d6`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 33
  startColumn := 5
  endLine := 33
  endColumn := 40
  assertId := "0"
  functionName := "multiset.sorted_by_leq"
  kind := "call_requires"
  statementHash := "b1055218790015d6"
}
@[vrml_obligation] theorem call_requires_0
    (no_param : Int) :
    vstd.relations.total_ordering (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_0

-- vrml:begin multiset.sorted_by_leq.assert_1 554fbf169a555ea8
/--
Generated VC `multiset.sorted_by_leq.assert_1`.

- Rust source: `case-studies/sorting/multiset.rs:35:12-35:43`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `554fbf169a555ea8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 35
  startColumn := 12
  endLine := 35
  endColumn := 43
  assertId := "1"
  functionName := "multiset.sorted_by_leq"
  kind := "assert"
  statementHash := "554fbf169a555ea8"
}
@[vrml_obligation] theorem assert_1
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0)))) :
    vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_1

-- vrml:begin multiset.sorted_by_leq.assert_2 bfc77fa99b941c96
/--
Generated VC `multiset.sorted_by_leq.assert_2`.

- Rust source: `case-studies/sorting/multiset.rs:37:12-37:64`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `bfc77fa99b941c96`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 37
  startColumn := 12
  endLine := 37
  endColumn := 64
  assertId := "2"
  functionName := "multiset.sorted_by_leq"
  kind := "assert"
  statementHash := "bfc77fa99b941c96"
}
@[vrml_obligation] theorem assert_2
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y))) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_2

-- vrml:begin multiset.sorted_by_leq.assert_3 df373af8b506387f
/--
Generated VC `multiset.sorted_by_leq.assert_3`.

- Rust source: `case-studies/sorting/multiset.rs:38:12-38:71`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `df373af8b506387f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 38
  startColumn := 12
  endLine := 38
  endColumn := 71
  assertId := "3"
  functionName := "multiset.sorted_by_leq"
  kind := "assert"
  statementHash := "df373af8b506387f"
}
@[vrml_obligation] theorem assert_3
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_3

-- vrml:begin multiset.sorted_by_leq.assert_4 1ed5ad87c0fd39a9
/--
Generated VC `multiset.sorted_by_leq.assert_4`.

- Rust source: `case-studies/sorting/multiset.rs:39:12-39:68`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `1ed5ad87c0fd39a9`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 39
  startColumn := 12
  endLine := 39
  endColumn := 68
  assertId := "4"
  functionName := "multiset.sorted_by_leq"
  kind := "assert"
  statementHash := "1ed5ad87c0fd39a9"
}
@[vrml_obligation] theorem assert_4
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) := by
  simp only [Vermilion.Seq.toMultiset, Vermilion.Seq.push, Vermilion.Seq.empty,
    List.nil_append, List.cons_append, List.singleton_append, List.append_assoc]
  decide
-- vrml:end multiset.sorted_by_leq.assert_4

-- vrml:begin multiset.sorted_by_leq.call_requires_5_0 357f61c3c0571b1e
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_0`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_0`
- Statement hash: `357f61c3c0571b1e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def call_requires_5_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 41
  startColumn := 5
  endLine := 41
  endColumn := 69
  assertId := "5_0"
  functionName := "multiset.sorted_by_leq"
  kind := "call_requires"
  statementHash := "357f61c3c0571b1e"
}
@[vrml_obligation] theorem call_requires_5_0
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_0

-- vrml:begin multiset.sorted_by_leq.call_requires_5_1 a84c91de656dc475
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_1`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_1`
- Statement hash: `a84c91de656dc475`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def call_requires_5_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 41
  startColumn := 5
  endLine := 41
  endColumn := 69
  assertId := "5_1"
  functionName := "multiset.sorted_by_leq"
  kind := "call_requires"
  statementHash := "a84c91de656dc475"
}
@[vrml_obligation] theorem call_requires_5_1
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_1

-- vrml:begin multiset.sorted_by_leq.call_requires_5_2 832d9719ef1f727f
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_2`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_2`
- Statement hash: `832d9719ef1f727f`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def call_requires_5_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 41
  startColumn := 5
  endLine := 41
  endColumn := 69
  assertId := "5_2"
  functionName := "multiset.sorted_by_leq"
  kind := "call_requires"
  statementHash := "832d9719ef1f727f"
}
@[vrml_obligation] theorem call_requires_5_2
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.total_ordering (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_2

-- vrml:begin multiset.sorted_by_leq.call_requires_5_3 e4f0ee98ff96b917
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_3`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_3`
- Statement hash: `e4f0ee98ff96b917`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def call_requires_5_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 41
  startColumn := 5
  endLine := 41
  endColumn := 69
  assertId := "5_3"
  functionName := "multiset.sorted_by_leq"
  kind := "call_requires"
  statementHash := "e4f0ee98ff96b917"
}
@[vrml_obligation] theorem call_requires_5_3
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_3

-- vrml:begin multiset.sorted_by_leq.assert_6 5b18853e9112556e
/--
Generated VC `multiset.sorted_by_leq.assert_6`.

- Rust source: `case-studies/sorting/multiset.rs:42:12-42:38`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `5b18853e9112556e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0⟩
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 42
  startColumn := 12
  endLine := 42
  endColumn := 38
  assertId := "6"
  functionName := "multiset.sorted_by_leq"
  kind := "assert"
  statementHash := "5b18853e9112556e"
}
@[vrml_obligation] theorem assert_6
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x_vrml_0 : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x_vrml_0) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x_vrml_0))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4))
    (call_lemma_sorted_unique_ensures_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) :
    Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y)) = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_6

end multiset.sorted_by_leq

