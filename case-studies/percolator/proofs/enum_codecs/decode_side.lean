import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.decode_side

-- vrml:begin enum_codecs.decode_side.ensures_0 09017b4351ccaaa6
/--
Generated VC `enum_codecs.decode_side.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:94:9-98:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `09017b4351ccaaa6`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 94
  startColumn := 9
  endLine := 98
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.decode_side"
  kind := "ensures"
  statementHash := "09017b4351ccaaa6"
}
@[vrml_obligation] theorem ensures_0
    (value : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 value) :
    (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideV16.Long) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideV16.Short) (core.result.Result.Err (T := enum_codecs.SideV16) enum_codecs.V16Error.InvalidConfig))) = (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideV16.Long) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideV16.Short) (core.result.Result.Err (T := enum_codecs.SideV16) enum_codecs.V16Error.InvalidConfig))) := by
  vrml
-- vrml:end enum_codecs.decode_side.ensures_0

end enum_codecs.decode_side

