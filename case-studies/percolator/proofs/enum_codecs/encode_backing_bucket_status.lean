import Vermilion.Obligations
import enum_codecs.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace enum_codecs.encode_backing_bucket_status

-- vrml:begin enum_codecs.encode_backing_bucket_status.ensures_0 6f5b0632f3cb2443
/--
Generated VC `enum_codecs.encode_backing_bucket_status.ensures_0`.

- Rust source: `case-studies/percolator/enum_codecs.rs:217:9-222:10`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0`
- Statement hash: `6f5b0632f3cb2443`
-/
def ensures_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/enum_codecs.rs"
  startLine := 217
  startColumn := 9
  endLine := 222
  endColumn := 10
  assertId := "0"
  functionName := "enum_codecs.encode_backing_bucket_status"
  kind := "ensures"
  statementHash := "6f5b0632f3cb2443"
}
@[vrml_obligation] theorem ensures_0
    (value : enum_codecs.BackingBucketStatusV16) :
    (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Empty value) 0 (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Fresh value) 1 (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Expired value) 2 3))) = (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Empty value) 0 (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Fresh value) 1 (Vermilion.iteP (enum_codecs.BackingBucketStatusV16.is_Expired value) 2 3))) := by
  vrml
-- vrml:end enum_codecs.encode_backing_bucket_status.ensures_0

end enum_codecs.encode_backing_bucket_status

