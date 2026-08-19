import Vermilion.Obligations
import multiset.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace multiset.multiset_ext_eq2

-- vrml:begin multiset.multiset_ext_eq2.assert_0 e665643ef0cd5025
/--
Generated VC `multiset.multiset_ext_eq2.assert_0`.

- Rust source: `case-studies/sorting/multiset.rs:22:12-22:65`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `e665643ef0cd5025`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 22
  startColumn := 12
  endLine := 22
  endColumn := 65
  assertId := "0"
  functionName := "multiset.multiset_ext_eq2"
  kind := "assert"
  statementHash := "e665643ef0cd5025"
}
@[vrml_obligation] theorem assert_0
    (no_param : Int) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.multiset_ext_eq2.assert_0

-- vrml:begin multiset.multiset_ext_eq2.assert_1 09daa4e66a5deafa
/--
Generated VC `multiset.multiset_ext_eq2.assert_1`.

- Rust source: `case-studies/sorting/multiset.rs:23:12-23:65`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `09daa4e66a5deafa`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 23
  startColumn := 12
  endLine := 23
  endColumn := 65
  assertId := "1"
  functionName := "multiset.multiset_ext_eq2"
  kind := "assert"
  statementHash := "09daa4e66a5deafa"
}
@[vrml_obligation] theorem assert_1
    (no_param : Int)
    (assert_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3) :
    Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 1) 2) 3 := by
  vrml [vstd.relations.reflexive, vstd.relations.antisymmetric, vstd.relations.transitive, vstd.relations.strongly_connected, vstd.relations.total_ordering, vstd.relations.sorted_by, Vermilion.Seq.toMultiset_add, Vermilion.Seq.toMultiset_contains, Vermilion.Seq.toMultiset_len, Vermilion.Seq.toMultiset_push]
-- vrml:end multiset.multiset_ext_eq2.assert_1

-- vrml:begin multiset.multiset_ext_eq2.assert_2 caae77b60879506e
/--
Generated VC `multiset.multiset_ext_eq2.assert_2`.

- Rust source: `case-studies/sorting/multiset.rs:24:12-24:47`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `caae77b60879506e`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/sorting/multiset.rs"
  startLine := 24
  startColumn := 12
  endLine := 24
  endColumn := 47
  assertId := "2"
  functionName := "multiset.multiset_ext_eq2"
  kind := "assert"
  statementHash := "caae77b60879506e"
}
@[vrml_obligation] theorem assert_2
    (no_param : Int)
    (assert_0 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3)
    (assert_1 : Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 1) 2) 3 = Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 1) 2) 3) :
    Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 3) 2) 1) 1) 2) 3) = Vermilion.Seq.toMultiset (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 2) 3) 1) 2) 3) := by
  simp only [Vermilion.Seq.toMultiset, Vermilion.Seq.push, Vermilion.Seq.empty,
    List.nil_append, List.cons_append, List.singleton_append, List.append_assoc]
  decide
-- vrml:end multiset.multiset_ext_eq2.assert_2

end multiset.multiset_ext_eq2

