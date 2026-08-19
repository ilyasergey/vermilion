import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace mixed_refusal.triple

-- vrml:begin mixed_refusal.triple.assert_0 b3cd49bc6f6022ec
/--
Generated VC `mixed_refusal.triple.assert_0`.

- Rust source: `tests/lowering_isolation/mixed_refusal.rs:19:5-19:19`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `b3cd49bc6f6022ec`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/lowering_isolation/mixed_refusal.rs"
  startLine := 19
  startColumn := 5
  endLine := 19
  endColumn := 19
  assertId := "0"
  functionName := "mixed_refusal.triple"
  kind := "assert"
  statementHash := "b3cd49bc6f6022ec"
}
@[vrml_obligation] theorem assert_0
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x) :
    Vermilion.inUnsignedRange 64 (3 * (x % 18446744073709551616)) := by
  vrml
-- vrml:end mixed_refusal.triple.assert_0

-- vrml:begin mixed_refusal.triple.ensures_1 1229594ef6357bcb
/--
Generated VC `mixed_refusal.triple.ensures_1`.

- Rust source: `tests/lowering_isolation/mixed_refusal.rs:17:9-17:28`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `1229594ef6357bcb`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "tests/lowering_isolation/mixed_refusal.rs"
  startLine := 17
  startColumn := 9
  endLine := 17
  endColumn := 28
  assertId := "1"
  functionName := "mixed_refusal.triple"
  kind := "ensures"
  statementHash := "1229594ef6357bcb"
}
@[vrml_obligation] theorem ensures_1
    (x : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 x)
    (assert_0 : Vermilion.inUnsignedRange 64 (3 * (x % 18446744073709551616))) :
    ((3 * (x % 18446744073709551616)) % 18446744073709551616) = (3 * (x % 18446744073709551616)) := by
  vrml
-- vrml:end mixed_refusal.triple.ensures_1

end mixed_refusal.triple

