import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__1.clone

-- vrml:begin algos.impl__1.clone.ensures_0 51f0b293af0a1dd2
/--
Generated VC `algos.impl__1.clone.ensures_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:13:10-13:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `51f0b293af0a1dd2`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0⟩
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 13
  startColumn := 10
  endLine := 13
  endColumn := 15
  assertId := "0"
  functionName := "algos.impl__1.clone"
  kind := "ensures"
  statementHash := "51f0b293af0a1dd2"
}
@[vrml_obligation] theorem ensures_0
    (self : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 self))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 self) vrml_i0)))) :
    self = self := by
  vrml [algos.impl__8.index_req, algos.impl__3.view, algos.IOTA_RC]
-- vrml:end algos.impl__1.clone.ensures_0

end algos.impl__1.clone

