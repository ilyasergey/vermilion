import Vermilion.Obligations
import encode_bool_decidable.Evidence

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace encode_bool_decidable.encode_bool

-- vrml:begin encode_bool_decidable.encode_bool.ensures_0_0 abae8e62b18aa844
/--
Generated VC `encode_bool_decidable.encode_bool.ensures_0_0`.

- Rust source: `case-studies/percolator/encode_bool_decidable.rs:15:9-15:32`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `abae8e62b18aa844`
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/encode_bool_decidable.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 32
  assertId := "0_0"
  functionName := "encode_bool_decidable.encode_bool"
  kind := "ensures"
  statementHash := "abae8e62b18aa844"
}
@[vrml_obligation] theorem ensures_0_0
    (value : Prop) :
    value → ((Vermilion.iteP value 1 0) = 1) := by
  vrml
-- vrml:end encode_bool_decidable.encode_bool.ensures_0_0

-- vrml:begin encode_bool_decidable.encode_bool.ensures_0_1 79e274596ebc3fe0
/--
Generated VC `encode_bool_decidable.encode_bool.ensures_0_1`.

- Rust source: `case-studies/percolator/encode_bool_decidable.rs:16:9-16:33`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `79e274596ebc3fe0`
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/encode_bool_decidable.rs"
  startLine := 16
  startColumn := 9
  endLine := 16
  endColumn := 33
  assertId := "0_1"
  functionName := "encode_bool_decidable.encode_bool"
  kind := "ensures"
  statementHash := "79e274596ebc3fe0"
}
@[vrml_obligation] theorem ensures_0_1
    (value : Prop) :
    (¬ value) → ((Vermilion.iteP value 1 0) = 0) := by
  vrml
-- vrml:end encode_bool_decidable.encode_bool.ensures_0_1

end encode_bool_decidable.encode_bool

