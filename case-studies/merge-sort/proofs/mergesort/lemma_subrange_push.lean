import Vermilion.Obligations
import mergesort.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mergesort.lemma_subrange_push

-- vrml:begin mergesort.lemma_subrange_push.ensures_0 8bc51f539e928869
/--
Generated VC `mergesort.lemma_subrange_push.ensures_0`.

- Rust source: `case-studies/merge-sort/mergesort.rs:60:9-60:78`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `8bc51f539e928869`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index s1 vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/merge-sort/mergesort.rs"
  startLine := 60
  startColumn := 9
  endLine := 60
  endColumn := 78
  assertId := "0"
  functionName := "mergesort.lemma_subrange_push"
  kind := "ensures"
  statementHash := "8bc51f539e928869"
}
@[vrml_obligation] theorem ensures_0
    (s1 : (Vermilion.Seq Int))
    (start : Int)
    (end_ : Int)
    (requires_0 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len s1)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index s1 vrml_i0))))
    (requires_1 : ((0 ≤ start) ∧ (start ≤ end_)) ∧ (end_ < Vermilion.Seq.len s1)) :
    Vermilion.Seq.push (Vermilion.Seq.subrange s1 start end_) (Vermilion.Seq.index s1 end_) = Vermilion.Seq.subrange s1 start (end_ + 1) := by
  exact Vermilion.Seq.subrange_push s1 start end_ (by omega) (by omega) (by omega)
-- vrml:end mergesort.lemma_subrange_push.ensures_0

end mergesort.lemma_subrange_push

