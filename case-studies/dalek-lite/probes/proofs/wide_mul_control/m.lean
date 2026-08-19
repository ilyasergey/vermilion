import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_mul_control.m

-- vrml:begin wide_mul_control.m.call_requires_0_0 f4de578602ae3d96
/--
Generated VC `wide_mul_control.m.call_requires_0_0`.

- Rust source: `case-studies/dalek-lite/wide_mul_control.rs:28:9-28:84`
- Rust/SST construct: call lemma_mul_upper_bound
- AssertId: `0_0`
- Statement hash: `f4de578602ae3d96`
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/wide_mul_control.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 84
  assertId := "0_0"
  functionName := "wide_mul_control.m"
  kind := "call_requires"
  statementHash := "f4de578602ae3d96"
}
@[vrml_obligation] theorem call_requires_0_0
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    x ≤ 18446744073709551615 := by
  vrml
-- vrml:end wide_mul_control.m.call_requires_0_0

-- vrml:begin wide_mul_control.m.call_requires_0_1 a7109d1cf8f27823
/--
Generated VC `wide_mul_control.m.call_requires_0_1`.

- Rust source: `case-studies/dalek-lite/wide_mul_control.rs:28:9-28:84`
- Rust/SST construct: call lemma_mul_upper_bound
- AssertId: `0_1`
- Statement hash: `a7109d1cf8f27823`
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/wide_mul_control.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 84
  assertId := "0_1"
  functionName := "wide_mul_control.m"
  kind := "call_requires"
  statementHash := "a7109d1cf8f27823"
}
@[vrml_obligation] theorem call_requires_0_1
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    y ≤ 18446744073709551615 := by
  vrml
-- vrml:end wide_mul_control.m.call_requires_0_1

-- vrml:begin wide_mul_control.m.call_requires_0_2 6c0a479a4246b18d
/--
Generated VC `wide_mul_control.m.call_requires_0_2`.

- Rust source: `case-studies/dalek-lite/wide_mul_control.rs:28:9-28:84`
- Rust/SST construct: call lemma_mul_upper_bound
- AssertId: `0_2`
- Statement hash: `6c0a479a4246b18d`
-/
def call_requires_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/wide_mul_control.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 84
  assertId := "0_2"
  functionName := "wide_mul_control.m"
  kind := "call_requires"
  statementHash := "6c0a479a4246b18d"
}
@[vrml_obligation] theorem call_requires_0_2
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    0 ≤ x := by
  vrml
-- vrml:end wide_mul_control.m.call_requires_0_2

-- vrml:begin wide_mul_control.m.call_requires_0_3 6c0a469a4246afda
/--
Generated VC `wide_mul_control.m.call_requires_0_3`.

- Rust source: `case-studies/dalek-lite/wide_mul_control.rs:28:9-28:84`
- Rust/SST construct: call lemma_mul_upper_bound
- AssertId: `0_3`
- Statement hash: `6c0a469a4246afda`
-/
def call_requires_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/wide_mul_control.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 84
  assertId := "0_3"
  functionName := "wide_mul_control.m"
  kind := "call_requires"
  statementHash := "6c0a469a4246afda"
}
@[vrml_obligation] theorem call_requires_0_3
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y) :
    0 ≤ y := by
  vrml
-- vrml:end wide_mul_control.m.call_requires_0_3

-- vrml:begin wide_mul_control.m.assert_1 3ff04043b0c3c04d
/--
Generated VC `wide_mul_control.m.assert_1`.

- Rust source: `case-studies/dalek-lite/wide_mul_control.rs:31:5-31:30`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `3ff04043b0c3c04d`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/wide_mul_control.rs"
  startLine := 31
  startColumn := 5
  endLine := 31
  endColumn := 30
  assertId := "1"
  functionName := "wide_mul_control.m"
  kind := "assert"
  statementHash := "3ff04043b0c3c04d"
}
@[vrml_obligation] theorem assert_1
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (call_lemma_mul_upper_bound_ensures_0 : (x * y) ≤ (18446744073709551615 * 18446744073709551615)) :
    Vermilion.inUnsignedRange 128 ((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456)) := by
  vrml
-- vrml:end wide_mul_control.m.assert_1

-- vrml:begin wide_mul_control.m.ensures_2 ad28ce6441f472cd
/--
Generated VC `wide_mul_control.m.ensures_2`.

- Rust source: `case-studies/dalek-lite/probes/wide_mul_control.rs:20:9-20:46`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `ad28ce6441f472cd`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/wide_mul_control.rs"
  startLine := 20
  startColumn := 9
  endLine := 20
  endColumn := 46
  assertId := "2"
  functionName := "wide_mul_control.m"
  kind := "ensures"
  statementHash := "ad28ce6441f472cd"
}
@[vrml_obligation] theorem ensures_2
    (x : Int)
    (y : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (call_lemma_mul_upper_bound_ensures_0 : (x * y) ≤ (18446744073709551615 * 18446744073709551615))
    (assert_1 : Vermilion.inUnsignedRange 128 ((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456))) :
    (((x % 340282366920938463463374607431768211456) * (y % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456) = Vermilion.natClip (x * y) := by
  vrml
-- vrml:end wide_mul_control.m.ensures_2

end wide_mul_control.m

