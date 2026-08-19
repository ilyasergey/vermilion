import Vermilion.Obligations
import isolation_driver.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace isolation_driver.double_is_even

-- vrml:begin isolation_driver.double_is_even.assert_0 a69bfe09ba2f68c3
/--
Generated VC `isolation_driver.double_is_even.assert_0`.

- Rust source: `case-studies/dalek-lite/probes/isolation_driver.rs:31:5-31:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `a69bfe09ba2f68c3`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/isolation_driver.rs"
  startLine := 31
  startColumn := 5
  endLine := 31
  endColumn := 19
  assertId := "0"
  functionName := "isolation_driver.double_is_even"
  kind := "assert"
  statementHash := "a69bfe09ba2f68c3"
}
@[vrml_obligation] theorem assert_0
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x) :
    Vermilion.inUnsignedRange 64 (2 * (x % 18446744073709551616)) := by
  vrml
-- vrml:end isolation_driver.double_is_even.assert_0

-- vrml:begin isolation_driver.double_is_even.ensures_1_0 d94f4d627aa624de
/--
Generated VC `isolation_driver.double_is_even.ensures_1_0`.

- Rust source: `case-studies/dalek-lite/probes/isolation_driver.rs:28:9-28:28`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_0`
- Statement hash: `d94f4d627aa624de`
-/
def ensures_1_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/isolation_driver.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 28
  assertId := "1_0"
  functionName := "isolation_driver.double_is_even"
  kind := "ensures"
  statementHash := "d94f4d627aa624de"
}
@[vrml_obligation] theorem ensures_1_0
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x)
    (assert_0 : Vermilion.inUnsignedRange 64 (2 * (x % 18446744073709551616))) :
    ((2 * (x % 18446744073709551616)) % 18446744073709551616) = (2 * (x % 18446744073709551616)) := by
  vrml
-- vrml:end isolation_driver.double_is_even.ensures_1_0

-- vrml:begin isolation_driver.double_is_even.ensures_1_1 ea93f4d2a3871729
/--
Generated VC `isolation_driver.double_is_even.ensures_1_1`.

- Rust source: `case-studies/dalek-lite/probes/isolation_driver.rs:29:9-29:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1_1`
- Statement hash: `ea93f4d2a3871729`
-/
def ensures_1_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/isolation_driver.rs"
  startLine := 29
  startColumn := 9
  endLine := 29
  endColumn := 19
  assertId := "1_1"
  functionName := "isolation_driver.double_is_even"
  kind := "ensures"
  statementHash := "ea93f4d2a3871729"
}
@[vrml_obligation] theorem ensures_1_1
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x)
    (assert_0 : Vermilion.inUnsignedRange 64 (2 * (x % 18446744073709551616))) :
    (((2 * (x % 18446744073709551616)) % 18446744073709551616) % 2) = 0 := by
  vrml
-- vrml:end isolation_driver.double_is_even.ensures_1_1

end isolation_driver.double_is_even

