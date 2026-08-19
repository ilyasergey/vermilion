import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.decode_side_mode

-- vrml:begin enum_codecs.decode_side_mode.ensures_0 37ee9c10209d6726
/--
Generated VC `enum_codecs.decode_side_mode.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:124:9-129:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `37ee9c10209d6726`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 124
  startColumn := 9
  endLine := 129
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.decode_side_mode"
  kind := "ensures"
  statementHash := "37ee9c10209d6726"
}
@[vrml_obligation] theorem ensures_0
    (value : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 value) :
    (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.Normal) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.DrainOnly) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.ResetPending) (core.result.Result.Err (T := enum_codecs.SideModeV16) enum_codecs.V16Error.InvalidConfig)))) = (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.Normal) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.DrainOnly) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.SideModeV16.ResetPending) (core.result.Result.Err (T := enum_codecs.SideModeV16) enum_codecs.V16Error.InvalidConfig)))) := by
  vrml
-- vrml:end enum_codecs.decode_side_mode.ensures_0

end enum_codecs.decode_side_mode

