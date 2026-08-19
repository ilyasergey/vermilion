import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.impl__4.default

-- vrml:begin algos.impl__4.default.ensures_1 e22576ee10ed26f6
/--
Generated VC `algos.impl__4.default.ensures_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:40:13-40:41`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `e22576ee10ed26f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (Vermilion.Seq.fill 25 0) vrml_i0⟩
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 40
  startColumn := 13
  endLine := 40
  endColumn := 41
  assertId := "1"
  functionName := "algos.impl__4.default"
  kind := "ensures"
  statementHash := "e22576ee10ed26f6"
}
@[vrml_obligation] theorem ensures_1
    (assume_0 : Vermilion.Seq.len (Vermilion.Seq.fill 25 0) = 25)
    (assume_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (Vermilion.Seq.fill 25 0))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (Vermilion.Seq.fill 25 0) vrml_i0)))) :
    algos.impl__3.view (algos.StateArray.StateArray (Vermilion.Seq.fill 25 0)) = algos.zero_state_spec 0 := by
  rfl
-- vrml:end algos.impl__4.default.ensures_1

end algos.impl__4.default

