import Vermilion.Obligations
import multiset.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace multiset.multiset_ext_eq

-- vrml:begin multiset.multiset_ext_eq.assert_0 57d6681d8eb5f1f5
/--
Generated VC `multiset.multiset_ext_eq.assert_0`.

- Rust source: `case-studies/sorting/multiset.rs:12:12-12:41`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `57d6681d8eb5f1f5`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 12
  startColumn := 12
  endLine := 12
  endColumn := 41
  assertId := "0"
  functionName := "multiset.multiset_ext_eq"
  kind := "assert"
  statementHash := "57d6681d8eb5f1f5"
}
@[vrml_obligation] theorem assert_0
    (no_param : Int) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.multiset_ext_eq.assert_0

-- vrml:begin multiset.multiset_ext_eq.assert_1 6daca4d384364a0e
/--
Generated VC `multiset.multiset_ext_eq.assert_1`.

- Rust source: `case-studies/sorting/multiset.rs:13:12-13:41`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `6daca4d384364a0e`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 13
  startColumn := 12
  endLine := 13
  endColumn := 41
  assertId := "1"
  functionName := "multiset.multiset_ext_eq"
  kind := "assert"
  statementHash := "6daca4d384364a0e"
}
@[vrml_obligation] theorem assert_1
    (no_param : Int)
    (assert_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 3) 2 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 3) 2 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.multiset_ext_eq.assert_1

-- vrml:begin multiset.multiset_ext_eq.assert_2 1c6c75e9b0101934
/--
Generated VC `multiset.multiset_ext_eq.assert_2`.

- Rust source: `case-studies/sorting/multiset.rs:14:12-14:47`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `1c6c75e9b0101934`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 14
  startColumn := 12
  endLine := 14
  endColumn := 47
  assertId := "2"
  functionName := "multiset.multiset_ext_eq"
  kind := "assert"
  statementHash := "1c6c75e9b0101934"
}
@[vrml_obligation] theorem assert_2
    (no_param : Int)
    (assert_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3)
    (assert_1 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 3) 2 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 3) 2) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 3) 2) := by
  simp only [Vermilion.Seq.toMultiset, Vermilion.Seq.push, Vermilion.Seq.empty,
    List.nil_append, List.cons_append, List.singleton_append, List.append_assoc]
  decide
-- vrml:end multiset.multiset_ext_eq.assert_2

end multiset.multiset_ext_eq

