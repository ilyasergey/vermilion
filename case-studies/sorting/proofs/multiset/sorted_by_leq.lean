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

-- vrml:begin multiset.sorted_by_leq.assert_1 a7db120ee902eb55
/--
Generated VC `multiset.sorted_by_leq.assert_1`.

- Rust source: `case-studies/sorting/multiset.rs:35:12-35:43`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `a7db120ee902eb55`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "a7db120ee902eb55"
}
@[vrml_obligation] theorem assert_1
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x)))) :
    vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  simp only [vstd.relations.sorted_by, Vermilion.Seq.push, Vermilion.Seq.empty,
    Vermilion.Seq.len, List.nil_append, List.cons_append, List.singleton_append,
    List.append_assoc, List.length_cons, List.length_nil]
  intro i j hij
  obtain ⟨⟨hi, hij'⟩, hj⟩ := hij
  have hiu : i < 5 := by omega
  interval_cases i <;> interval_cases j <;>
    simp_all [Vermilion.Seq.index, Vermilion.Seq.push, Vermilion.Seq.empty]
-- vrml:end multiset.sorted_by_leq.assert_1

-- vrml:begin multiset.sorted_by_leq.assert_2 033a8c96d4618135
/--
Generated VC `multiset.sorted_by_leq.assert_2`.

- Rust source: `case-studies/sorting/multiset.rs:37:12-37:64`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `033a8c96d4618135`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "033a8c96d4618135"
}
@[vrml_obligation] theorem assert_2
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y))) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_2

-- vrml:begin multiset.sorted_by_leq.assert_3 b452e3125405c13e
/--
Generated VC `multiset.sorted_by_leq.assert_3`.

- Rust source: `case-studies/sorting/multiset.rs:38:12-38:71`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `b452e3125405c13e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "b452e3125405c13e"
}
@[vrml_obligation] theorem assert_3
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_3

-- vrml:begin multiset.sorted_by_leq.assert_4 808ec17e611d2dd6
/--
Generated VC `multiset.sorted_by_leq.assert_4`.

- Rust source: `case-studies/sorting/multiset.rs:39:12-39:68`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `808ec17e611d2dd6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "808ec17e611d2dd6"
}
@[vrml_obligation] theorem assert_4
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) := by
  simp only [Vermilion.Seq.toMultiset, Vermilion.Seq.push, Vermilion.Seq.empty,
    List.nil_append, List.cons_append, List.singleton_append, List.append_assoc]
  decide
-- vrml:end multiset.sorted_by_leq.assert_4

-- vrml:begin multiset.sorted_by_leq.call_requires_5_0 1fc507301001c015
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_0`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_0`
- Statement hash: `1fc507301001c015`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "1fc507301001c015"
}
@[vrml_obligation] theorem call_requires_5_0
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_0

-- vrml:begin multiset.sorted_by_leq.call_requires_5_1 8de8c3eef1acd9ba
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_1`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_1`
- Statement hash: `8de8c3eef1acd9ba`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "8de8c3eef1acd9ba"
}
@[vrml_obligation] theorem call_requires_5_1
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_1

-- vrml:begin multiset.sorted_by_leq.call_requires_5_2 1934e8553bf4b514
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_2`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_2`
- Statement hash: `1934e8553bf4b514`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "1934e8553bf4b514"
}
@[vrml_obligation] theorem call_requires_5_2
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    vstd.relations.total_ordering (fun (x : Int) (y : Int) => (x ≤ y)) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_2

-- vrml:begin multiset.sorted_by_leq.call_requires_5_3 662e72903fb4872e
/--
Generated VC `multiset.sorted_by_leq.call_requires_5_3`.

- Rust source: `case-studies/sorting/multiset.rs:41:5-41:69`
- Rust/SST construct: call lemma_sorted_unique
- AssertId: `5_3`
- Statement hash: `662e72903fb4872e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "662e72903fb4872e"
}
@[vrml_obligation] theorem call_requires_5_3
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.call_requires_5_3

-- vrml:begin multiset.sorted_by_leq.assert_6 e2fbc2d536931a45
/--
Generated VC `multiset.sorted_by_leq.assert_6`.

- Rust source: `case-studies/sorting/multiset.rs:42:12-42:38`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `e2fbc2d536931a45`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x⟩
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
  statementHash := "e2fbc2d536931a45"
}
@[vrml_obligation] theorem assert_6
    (no_param : Int)
    (call_lemma_sort_by_ensures_ensures_0 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) = Vermilion.Seq.toMultiset (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))))
    (call_lemma_sort_by_ensures_ensures_1 : vstd.relations.sorted_by (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) (fun (x : Int) (y : Int) => (x ≤ y)))
    (call_lemma_sort_by_ensures_ensures_2 : (∀ (x : Int), ((¬ Vermilion.Seq.contains (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) x) → (¬ Vermilion.Seq.contains (Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) x))))
    (assert_1 : vstd.relations.sorted_by (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) (fun (x : Int) (y : Int) => (x ≤ y)))
    (assert_2 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4)
    (assert_3 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5)
    (assert_4 : Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4))
    (call_lemma_sorted_unique_ensures_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 = Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y))) :
    Vermilion.Seq.sortBy (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 1) 5) 2) 4) (fun (x : Int) (y : Int) => (x ≤ y)) = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 4) 5 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.sorted_by_leq.assert_6

end multiset.sorted_by_leq

