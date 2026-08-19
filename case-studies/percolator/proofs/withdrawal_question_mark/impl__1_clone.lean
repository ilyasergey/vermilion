import Vermilion.Obligations
import withdrawal_question_mark.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace withdrawal_question_mark.impl__1.clone

-- vrml:begin withdrawal_question_mark.impl__1.clone.ensures_0 e85112b9ebc1b940
/--
Generated VC `withdrawal_question_mark.impl__1.clone.ensures_0`.

- Rust source: `case-studies/percolator/withdrawal_question_mark.rs:12:10-12:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `e85112b9ebc1b940`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/withdrawal_question_mark.rs"
  startLine := 12
  startColumn := 10
  endLine := 12
  endColumn := 15
  assertId := "0"
  functionName := "withdrawal_question_mark.impl__1.clone"
  kind := "ensures"
  statementHash := "e85112b9ebc1b940"
}
@[vrml_obligation] theorem ensures_0
    (self : withdrawal_question_mark.V16Error) :
    self = self := by
  vrml
-- vrml:end withdrawal_question_mark.impl__1.clone.ensures_0

end withdrawal_question_mark.impl__1.clone

