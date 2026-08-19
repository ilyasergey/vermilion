import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace dalek_m.m

-- vrml:begin dalek_m.m.assert_0 9f64bd156d52751f
/--
Generated VC `dalek_m.m.assert_0`.

- Rust source: `case-studies/aeneas/probes/dalek_m.rs:16:5-16:30`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `9f64bd156d52751f`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/dalek_m.rs"
  startLine := 16
  startColumn := 5
  endLine := 16
  endColumn := 30
  assertId := "0"
  functionName := "dalek_m.m"
  kind := "assert"
  statementHash := "9f64bd156d52751f"
}
@[vrml_obligation] theorem assert_0
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    Vermilion.inUnsignedRange 128 ((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456)) := by
  vrml
-- vrml:end dalek_m.m.assert_0

-- vrml:begin dalek_m.m.ensures_1 9796ee53ad3d8564
/--
Generated VC `dalek_m.m.ensures_1`.

- Rust source: `case-studies/aeneas/probes/dalek_m.rs:14:9-14:38`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `9796ee53ad3d8564`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/probes/dalek_m.rs"
  startLine := 14
  startColumn := 9
  endLine := 14
  endColumn := 38
  assertId := "1"
  functionName := "dalek_m.m"
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
  vrml
-- vrml:end dalek_m.m.ensures_1

end dalek_m.m

