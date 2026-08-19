import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_asset_lifecycle

-- vrml:begin enum_codecs.encode_asset_lifecycle.ensures_0 42c4d06ad1712f52
/--
Generated VC `enum_codecs.encode_asset_lifecycle.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:141:9-148:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `42c4d06ad1712f52`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 141
  startColumn := 9
  endLine := 148
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_asset_lifecycle"
  kind := "ensures"
  statementHash := "42c4d06ad1712f52"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.AssetLifecycleV16) :
    (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Disabled value) 0 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_PendingActivation value) 1 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Active value) 2 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_DrainOnly value) 3 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Retired value) 4 5))))) = (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Disabled value) 0 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_PendingActivation value) 1 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Active value) 2 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_DrainOnly value) 3 (Vermilion.iteP (enum_codecs.AssetLifecycleV16.is_Retired value) 4 5))))) := by
  vrml
-- vrml:end enum_codecs.encode_asset_lifecycle.ensures_0

end enum_codecs.encode_asset_lifecycle

