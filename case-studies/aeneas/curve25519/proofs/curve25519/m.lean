import Vermilion.Obligations
import curve25519.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace curve25519.m

-- vrml:begin curve25519.m.assert_0 9f64bd156d52751f
/--
Generated VC `curve25519.m.assert_0`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:44:5-44:30`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `9f64bd156d52751f`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 44
  startColumn := 5
  endLine := 44
  endColumn := 30
  assertId := "0"
  functionName := "curve25519.m"
  kind := "assert"
  statementHash := "9f64bd156d52751f"
}
@[vrml_obligation] theorem assert_0
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    Vermilion.inUnsignedRange 128 ((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456)) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.m.assert_0

-- vrml:begin curve25519.m.ensures_1 9796ee53ad3d8564
/--
Generated VC `curve25519.m.ensures_1`.

- Rust source: `case-studies/aeneas/curve25519/curve25519.rs:42:9-42:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `9796ee53ad3d8564`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/curve25519/curve25519.rs"
  startLine := 42
  startColumn := 9
  endLine := 42
  endColumn := 38
  assertId := "1"
  functionName := "curve25519.m"
  kind := "ensures"
  statementHash := "9796ee53ad3d8564"
}
@[vrml_obligation] theorem ensures_1
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (assert_0 : Vermilion.inUnsignedRange 128 ((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456))) :
    (((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) = (x * y) := by
  vrml [curve25519.impl__0.index_req]
-- vrml:end curve25519.m.ensures_1

end curve25519.m

