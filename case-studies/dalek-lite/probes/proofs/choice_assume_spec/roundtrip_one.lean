import Vermilion.Obligations
import choice_assume_spec.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace choice_assume_spec.roundtrip_one

-- vrml:begin choice_assume_spec.roundtrip_one.ensures_2 541c0fd6cb5134f8
/--
Generated VC `choice_assume_spec.roundtrip_one.ensures_2`.

- Rust source: `case-studies/dalek-lite/choice_assume_spec.rs:61:9-61:17`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `541c0fd6cb5134f8`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/choice_assume_spec.rs"
  startLine := 61
  startColumn := 9
  endLine := 61
  endColumn := 17
  assertId := "2"
  functionName := "choice_assume_spec.roundtrip_one"
  kind := "ensures"
  statementHash := "541c0fd6cb5134f8"
}
@[vrml_obligation] theorem ensures_2
    (no_param : Int)
    (tmp_ : choice_assume_spec.subtle_stub.Choice)
    (tmp__2 : Int)
    (call_from_u8_ensures_0 : (1 = 1) ↔ choice_assume_spec.choice_is_true tmp_)
    (call_unwrap_u8_ensures_0 : Vermilion.inUnsignedRange 8 tmp__2)
    (call_unwrap_u8_ensures_1 : choice_assume_spec.choice_is_true tmp_ → (tmp__2 = 1))
    (call_unwrap_u8_ensures_2 : (¬ choice_assume_spec.choice_is_true tmp_) → (tmp__2 = 0)) :
    tmp__2 = 1 := by
  vrml
-- vrml:end choice_assume_spec.roundtrip_one.ensures_2

end choice_assume_spec.roundtrip_one

