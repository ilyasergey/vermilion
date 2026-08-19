import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.decode_asset_lifecycle

-- vrml:begin enum_codecs.decode_asset_lifecycle.ensures_0 39e8ece6e6bb0216
/--
Generated VC `enum_codecs.decode_asset_lifecycle.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:162:9-170:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `39e8ece6e6bb0216`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 162
  startColumn := 9
  endLine := 170
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.decode_asset_lifecycle"
  kind := "ensures"
  statementHash := "39e8ece6e6bb0216"
}
@[vrml_obligation] theorem ensures_0
    (value : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 value) :
    (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Disabled) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.PendingActivation) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Active) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.DrainOnly) (Vermilion.iteP (value = 4) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Retired) (Vermilion.iteP (value = 5) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Recovery) (core.result.Result.Err (T := enum_codecs.AssetLifecycleV16) enum_codecs.V16Error.InvalidConfig))))))) = (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Disabled) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.PendingActivation) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Active) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.DrainOnly) (Vermilion.iteP (value = 4) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Retired) (Vermilion.iteP (value = 5) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.AssetLifecycleV16.Recovery) (core.result.Result.Err (T := enum_codecs.AssetLifecycleV16) enum_codecs.V16Error.InvalidConfig))))))) := by
  vrml
-- vrml:end enum_codecs.decode_asset_lifecycle.ensures_0

end enum_codecs.decode_asset_lifecycle

