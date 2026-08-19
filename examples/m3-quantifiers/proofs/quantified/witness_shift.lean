import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace quantified.witness_shift

-- vrml:begin quantified.witness_shift.ensures_0 fb9678492d197914
/--
Generated VC `quantified.witness_shift.ensures_0`.

- Rust source: `examples/m3-quantifiers/quantified.rs:23:9-23:51`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `fb9678492d197914`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-quantifiers/quantified.rs"
  startLine := 23
  startColumn := 9
  endLine := 23
  endColumn := 51
  assertId := "0"
  functionName := "quantified.witness_shift"
  kind := "ensures"
  statementHash := "fb9678492d197914"
}
@[vrml_obligation] theorem ensures_0
    (y : Int)
    (requires_0 : (∃ (x : Int), ((x + x) = y))) :
    (∃ (x : Int), ((x + x) = (y + 2))) := by
  obtain ⟨x, hx⟩ := requires_0
  exact ⟨x + 1, by omega⟩
-- vrml:end quantified.witness_shift.ensures_0

end quantified.witness_shift

