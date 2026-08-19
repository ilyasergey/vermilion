import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.decode_backing_bucket_status

-- vrml:begin enum_codecs.decode_backing_bucket_status.ensures_0 8e7239dcc6a5c9dc
/--
Generated VC `enum_codecs.decode_backing_bucket_status.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:234:9-240:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `8e7239dcc6a5c9dc`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 234
  startColumn := 9
  endLine := 240
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.decode_backing_bucket_status"
  kind := "ensures"
  statementHash := "8e7239dcc6a5c9dc"
}
@[vrml_obligation] theorem ensures_0
    (value : Int)
    (requires_0 : Vermilion.inUnsignedRange 8 value) :
    (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Empty) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Fresh) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Expired) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Impaired) (core.result.Result.Err (T := enum_codecs.BackingBucketStatusV16) enum_codecs.V16Error.InvalidConfig))))) = (Vermilion.iteP (value = 0) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Empty) (Vermilion.iteP (value = 1) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Fresh) (Vermilion.iteP (value = 2) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Expired) (Vermilion.iteP (value = 3) (core.result.Result.Ok (E := enum_codecs.V16Error) enum_codecs.BackingBucketStatusV16.Impaired) (core.result.Result.Err (T := enum_codecs.BackingBucketStatusV16) enum_codecs.V16Error.InvalidConfig))))) := by
  vrml
-- vrml:end enum_codecs.decode_backing_bucket_status.ensures_0

end enum_codecs.decode_backing_bucket_status

