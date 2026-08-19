import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_side_mode

-- vrml:begin enum_codecs.encode_side_mode.ensures_0 0c2cb8f0d46c2a00
/--
Generated VC `enum_codecs.encode_side_mode.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:109:9-113:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `0c2cb8f0d46c2a00`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 109
  startColumn := 9
  endLine := 113
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_side_mode"
  kind := "ensures"
  statementHash := "0c2cb8f0d46c2a00"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.SideModeV16) :
    (Vermilion.iteP (enum_codecs.SideModeV16.is_Normal value) 0 (Vermilion.iteP (enum_codecs.SideModeV16.is_DrainOnly value) 1 2)) = (Vermilion.iteP (enum_codecs.SideModeV16.is_Normal value) 0 (Vermilion.iteP (enum_codecs.SideModeV16.is_DrainOnly value) 1 2)) := by
  vrml
-- vrml:end enum_codecs.encode_side_mode.ensures_0

end enum_codecs.encode_side_mode

