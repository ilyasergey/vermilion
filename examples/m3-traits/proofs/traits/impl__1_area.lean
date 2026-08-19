import Vermilion.Obligations
import traits.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace traits.impl__1.area

-- vrml:begin traits.impl__1.area.assert_0 3f346e8bf189932b
/--
Generated VC `traits.impl__1.area.assert_0`.

- Rust source: `examples/m3-traits/traits.rs:37:9-37:24`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `3f346e8bf189932b`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 24
  assertId := "0"
  functionName := "traits.impl__1.area"
  kind := "assert"
  statementHash := "3f346e8bf189932b"
}
@[vrml_obligation] theorem assert_0
    (self : traits.Rect)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w self))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h self))
    (requires_2 : traits.impl__1.wf self) :
    Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w self * traits.Rect.get_Rect_h self) := by
  -- Nonlinear: w < 100 ∧ h < 100 (from `wf`) bound w · h below 2³².
  unfold traits.impl__1.wf at requires_2
  obtain ⟨wf_w, wf_h⟩ := requires_2
  obtain ⟨w_low, _⟩ := requires_0
  obtain ⟨h_low, _⟩ := requires_1
  exact ⟨by positivity, by nlinarith⟩
-- vrml:end traits.impl__1.area.assert_0

-- vrml:begin traits.impl__1.area.ensures_1 31ae8f3d27722ee9
/--
Generated VC `traits.impl__1.area.ensures_1`.

- Rust source: `examples/m3-traits/traits.rs:15:17-15:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `31ae8f3d27722ee9`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 15
  startColumn := 17
  endLine := 15
  endColumn := 45
  assertId := "1"
  functionName := "traits.impl__1.area"
  kind := "ensures"
  statementHash := "31ae8f3d27722ee9"
}
@[vrml_obligation] theorem ensures_1
    (self : traits.Rect)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w self))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h self))
    (requires_2 : traits.impl__1.wf self)
    (assert_0 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w self * traits.Rect.get_Rect_h self)) :
    ((traits.Rect.get_Rect_w self * traits.Rect.get_Rect_h self) % 4294967296) = traits.impl__1.area_spec self := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.impl__1.area.ensures_1

end traits.impl__1.area

