import Vermilion.Obligations
import mergesort.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort.lemma_subrange_add

-- vrml:begin mergesort.lemma_subrange_add.ensures_0 b1a844bea8bacd53
/--
Generated VC `mergesort.lemma_subrange_add.ensures_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:68:9-68:84`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `b1a844bea8bacd53`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index s1 vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 68
  startColumn := 9
  endLine := 68
  endColumn := 84
  assertId := "0"
  functionName := "mergesort.lemma_subrange_add"
  kind := "ensures"
  statementHash := "b1a844bea8bacd53"
}
@[vrml_obligation] theorem ensures_0
    (s1 : (Vermilion.Seq Int))
    (start : Int)
    (mid : Int)
    (end_ : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))))
    (requires_1 : (((0 ≤ start) ∧ (start ≤ mid)) ∧ (mid ≤ end_)) ∧ (end_ ≤ Vermilion.Seq.len s1)) :
    Vermilion.Seq.add (Vermilion.Seq.subrange s1 start mid) (Vermilion.Seq.subrange s1 mid end_) = Vermilion.Seq.subrange s1 start end_ := by
  exact Vermilion.Seq.subrange_add_subrange s1 start mid end_ (by omega) (by omega) (by omega)
-- vrml:end mergesort.lemma_subrange_add.ensures_0

end mergesort.lemma_subrange_add

