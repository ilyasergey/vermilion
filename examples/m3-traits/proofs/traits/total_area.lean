import Vermilion.Obligations
import traits.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace traits.total_area

-- vrml:begin traits.total_area.call_requires_0 ccd2be1bf2a2883a
/--
Generated VC `traits.total_area.call_requires_0`.

- Rust source: `examples/m3-traits/traits.rs:48:13-48:21`
- Rust/SST construct: call area
- AssertId: `0`
- Statement hash: `ccd2be1bf2a2883a`
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 48
  startColumn := 13
  endLine := 48
  endColumn := 21
  assertId := "0"
  functionName := "traits.total_area"
  kind := "call_requires"
  statementHash := "ccd2be1bf2a2883a"
}
@[vrml_obligation] theorem call_requires_0
    (s : traits.Square)
    (r : traits.Rect)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side s))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w r))
    (requires_2 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h r))
    (requires_3 : traits.impl__0.wf s)
    (requires_4 : traits.impl__1.wf r) :
    traits.impl__0.wf s := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.total_area.call_requires_0

-- vrml:begin traits.total_area.call_requires_1 9926993e824b37f0
/--
Generated VC `traits.total_area.call_requires_1`.

- Rust source: `examples/m3-traits/traits.rs:49:13-49:21`
- Rust/SST construct: call area
- AssertId: `1`
- Statement hash: `9926993e824b37f0`
-/
def call_requires_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 49
  startColumn := 13
  endLine := 49
  endColumn := 21
  assertId := "1"
  functionName := "traits.total_area"
  kind := "call_requires"
  statementHash := "9926993e824b37f0"
}
@[vrml_obligation] theorem call_requires_1
    (s : traits.Square)
    (r : traits.Rect)
    (tmp_ : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side s))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w r))
    (requires_2 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h r))
    (requires_3 : traits.impl__0.wf s)
    (requires_4 : traits.impl__1.wf r)
    (call_area_ensures_0 : Vermilion.inUnsignedRange 32 tmp_)
    (call_area_ensures_1 : tmp_ = traits.impl__0.area_spec s) :
    traits.impl__1.wf r := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.total_area.call_requires_1

-- vrml:begin traits.total_area.assert_2 12021e29f0d63353
/--
Generated VC `traits.total_area.assert_2`.

- Rust source: `examples/m3-traits/traits.rs:50:5-50:28`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `2`
- Statement hash: `12021e29f0d63353`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 50
  startColumn := 5
  endLine := 50
  endColumn := 28
  assertId := "2"
  functionName := "traits.total_area"
  kind := "assert"
  statementHash := "12021e29f0d63353"
}
@[vrml_obligation] theorem assert_2
    (s : traits.Square)
    (r : traits.Rect)
    (tmp_ : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side s))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w r))
    (requires_2 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h r))
    (requires_3 : traits.impl__0.wf s)
    (requires_4 : traits.impl__1.wf r)
    (call_area_ensures_0 : Vermilion.inUnsignedRange 32 tmp_)
    (call_area_ensures_1 : tmp_ = traits.impl__0.area_spec s)
    (call_area_1_ensures_0 : Vermilion.inUnsignedRange 32 tmp__2)
    (call_area_1_ensures_1 : tmp__2 = traits.impl__1.area_spec r) :
    Vermilion.inUnsignedRange 64 ((tmp_ % 18446744073709551616) + (tmp__2 % 18446744073709551616)) := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.total_area.assert_2

-- vrml:begin traits.total_area.ensures_3 9a557adbcc9700f1
/--
Generated VC `traits.total_area.ensures_3`.

- Rust source: `examples/m3-traits/traits.rs:46:13-46:54`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3`
- Statement hash: `9a557adbcc9700f1`
-/
def ensures_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-traits/traits.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 54
  assertId := "3"
  functionName := "traits.total_area"
  kind := "ensures"
  statementHash := "9a557adbcc9700f1"
}
@[vrml_obligation] theorem ensures_3
    (s : traits.Square)
    (r : traits.Rect)
    (tmp_ : Int)
    (tmp__2 : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 (traits.Square.get_Square_side s))
    (requires_1 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_w r))
    (requires_2 : Vermilion.inUnsignedRange 32 (traits.Rect.get_Rect_h r))
    (requires_3 : traits.impl__0.wf s)
    (requires_4 : traits.impl__1.wf r)
    (call_area_ensures_0 : Vermilion.inUnsignedRange 32 tmp_)
    (call_area_ensures_1 : tmp_ = traits.impl__0.area_spec s)
    (call_area_1_ensures_0 : Vermilion.inUnsignedRange 32 tmp__2)
    (call_area_1_ensures_1 : tmp__2 = traits.impl__1.area_spec r)
    (assert_2 : Vermilion.inUnsignedRange 64 ((tmp_ % 18446744073709551616) + (tmp__2 % 18446744073709551616))) :
    (((tmp_ % 18446744073709551616) + (tmp__2 % 18446744073709551616)) % 18446744073709551616) = (traits.impl__0.area_spec s + traits.impl__1.area_spec r) := by
  vrml [traits.impl__0.wf, traits.impl__0.area_spec, traits.impl__1.wf, traits.impl__1.area_spec]
-- vrml:end traits.total_area.ensures_3

end traits.total_area

