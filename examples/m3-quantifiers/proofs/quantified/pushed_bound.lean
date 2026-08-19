import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace quantified.pushed_bound

-- vrml:begin quantified.pushed_bound.ensures_0 1778c43424616e11
/--
Generated VC `quantified.pushed_bound.ensures_0`.

- Rust source: `examples/m3-quantifiers/quantified.rs:14:9-14:91`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `1778c43424616e11`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-quantifiers/quantified.rs"
  startLine := 14
  startColumn := 9
  endLine := 14
  endColumn := 91
  assertId := "0"
  functionName := "quantified.pushed_bound"
  kind := "ensures"
  statementHash := "1778c43424616e11"
}
@[vrml_obligation] theorem ensures_0
    (s : (Vermilion.Seq Int))
    (x : Int)
    (bound : Int)
    (requires_0 : x ≤ bound)
    (requires_1 : (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len s)) → (Vermilion.Seq.index s i ≤ bound)))) :
    (∀ (i : Int), (((0 ≤ i) ∧ (i < Vermilion.Seq.len (Vermilion.Seq.push s x))) → (Vermilion.Seq.index (Vermilion.Seq.push s x) i ≤ bound))) := by
  intro i bounds
  rcases bounds with ⟨low, high⟩
  simp only [Vermilion.Seq.len_push] at high
  rcases lt_or_eq_of_le (Int.lt_add_one_iff.mp high) with strict | last
  · rw [Vermilion.Seq.index_push_prefix s x i low strict]
    exact requires_1 i ⟨low, strict⟩
  · rw [last, Vermilion.Seq.index_push_last]
    exact requires_0
-- vrml:end quantified.pushed_bound.ensures_0

end quantified.pushed_bound

