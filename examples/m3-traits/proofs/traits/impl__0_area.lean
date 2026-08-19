import Vermilion.Obligations
import traits.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace traits.impl__0.area

-- vrml:begin traits.impl__0.area.assert_0 f74ccc7ac20f7997
/--
Generated VC `traits.impl__0.area.assert_0`.

- Rust source: `examples/m3-traits/traits.rs:27:9-27:30`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `f74ccc7ac20f7997`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 27
  startColumn := 9
  endLine := 27
  endColumn := 30
  assertId := "0"
  functionName := "traits.impl__0.area"
  kind := "assert"
  statementHash := "f74ccc7ac20f7997"
}
@[vrml_obligation] theorem assert_0
    (self : traits.Square)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side self))
    (requires_1 : traits.impl__0.wf self) :
    Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side self * traits.Square.get_Square_side self) := by
  -- Nonlinear: side < 100 (from `wf`) bounds side · side below 2³².
  unfold traits.impl__0.wf at requires_1
  obtain ⟨low, _⟩ := requires_0
  exact ⟨by positivity, by nlinarith⟩
-- vrml:end traits.impl__0.area.assert_0

-- vrml:begin traits.impl__0.area.ensures_1 fc5ea560d90cb679
/--
Generated VC `traits.impl__0.area.ensures_1`.

- Rust source: `examples/m3-traits/traits.rs:15:17-15:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `fc5ea560d90cb679`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 15
  startColumn := 17
  endLine := 15
  endColumn := 45
  assertId := "1"
  functionName := "traits.impl__0.area"
  kind := "ensures"
  statementHash := "fc5ea560d90cb679"
}
@[vrml_obligation] theorem ensures_1
    (self : traits.Square)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side self))
    (requires_1 : traits.impl__0.wf self)
    (assert_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side self * traits.Square.get_Square_side self)) :
    ((traits.Square.get_Square_side self * traits.Square.get_Square_side self) % 4294967296) = traits.impl__0.area_spec self := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.impl__0.area.ensures_1

end traits.impl__0.area

