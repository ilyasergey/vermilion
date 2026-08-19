import Vermilion.Obligations
import subtle_assumes.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace subtle_assumes.assign_true

-- vrml:begin subtle_assumes.assign_true.ensures_1 ec3c7c093731dd00
/--
Generated VC `subtle_assumes.assign_true.ensures_1`.

- Rust source: `case-studies/dalek-lite/probes/subtle_assumes.rs:101:9-101:20`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `ec3c7c093731dd00`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/subtle_assumes.rs"
  startLine := 101
  startColumn := 9
  endLine := 101
  endColumn := 20
  assertId := "1"
  functionName := "subtle_assumes.assign_true"
  kind := "ensures"
  statementHash := "ec3c7c093731dd00"
}
@[vrml_obligation] theorem ensures_1
    (x : Int)
    (y : Int)
    (c : subtle_assumes.subtle_stub.Choice)
    (tmp__post : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (requires_2 : subtle_assumes.choice_is_true c)
    (assume_3 : Vermilion.inUnsignedRange 64 tmp__post)
    (call_conditional_assign_ensures_0 : (¬ subtle_assumes.choice_is_true c) → (tmp__post = x))
    (call_conditional_assign_ensures_1 : subtle_assumes.choice_is_true c → (tmp__post = y)) :
    tmp__post = y := by
  vrml
-- vrml:end subtle_assumes.assign_true.ensures_1

end subtle_assumes.assign_true

