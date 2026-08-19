import Vermilion.Obligations
import forloop.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace forloop.count_up

-- vrml:begin forloop.count_up.invariant_entry_0_4 057bc1a0c99f2afc
/--
Generated VC `forloop.count_up.invariant_entry_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:20:13-20:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_4`
- Statement hash: `057bc1a0c99f2afc`
-/
def invariant_entry_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 19
  assertId := "0_4"
  functionName := "forloop.count_up"
  kind := "invariant_entry"
  statementHash := "057bc1a0c99f2afc"
}
@[vrml_obligation] theorem invariant_entry_0_4
    (n : Int)
    (vrml_for_arb : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (assume_1 : Vermilion.inUnsignedRange 64 vrml_for_arb) :
    0 = (Vermilion.iteP (0 ≤ n) 0 vrml_for_arb) := by
  vrml
-- vrml:end forloop.count_up.invariant_entry_0_4

-- vrml:begin forloop.count_up.assert_4 f229d7edab0fa85f
/--
Generated VC `forloop.count_up.assert_4`.

- Rust source: `examples/m2-forloop/forloop.rs:22:13-22:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `4`
- Statement hash: `f229d7edab0fa85f`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 22
  startColumn := 13
  endLine := 22
  endColumn := 18
  assertId := "4"
  functionName := "forloop.count_up"
  kind := "assert"
  statementHash := "f229d7edab0fa85f"
}
@[vrml_obligation] theorem assert_4
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 c)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i) :
    Vermilion.inUnsignedRange 64 (c + 1) := by
  vrml
-- vrml:end forloop.count_up.assert_4

-- vrml:begin forloop.count_up.invariant_preserve_0_4 b46be0058f5e2ac2
/--
Generated VC `forloop.count_up.invariant_preserve_0_4`.

- Rust source: `examples/m2-forloop/forloop.rs:20:13-20:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_4`
- Statement hash: `b46be0058f5e2ac2`
-/
def invariant_preserve_0_4_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 20
  startColumn := 13
  endLine := 20
  endColumn := 19
  assertId := "0_4"
  functionName := "forloop.count_up"
  kind := "invariant_preserve"
  statementHash := "b46be0058f5e2ac2"
}
@[vrml_obligation] theorem invariant_preserve_0_4
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 c)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i)
    (assert_4 : Vermilion.inUnsignedRange 64 (c + 1)) :
    ((c + 1) % 18446744073709551616) = (i + 1) := by
  vrml
-- vrml:end forloop.count_up.invariant_preserve_0_4

-- vrml:begin forloop.count_up.assert_0_decreases 24ed2f83f642bb80
/--
Generated VC `forloop.count_up.assert_0_decreases`.

- Rust source: `examples/m2-forloop/forloop.rs:18:5-23:6`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `24ed2f83f642bb80`
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 18
  startColumn := 5
  endLine := 23
  endColumn := 6
  assertId := "0_decreases"
  functionName := "forloop.count_up"
  kind := "assert"
  statementHash := "24ed2f83f642bb80"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 c)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_4 : 0 ≤ i)
    (loop_0_iteration_5 : i < n)
    (loop_0_iteration_6 : c = i)
    (assert_4 : Vermilion.inUnsignedRange 64 (c + 1)) :
    (0 ≤ (n - (i + 1))) ∧ ((n - (i + 1)) < (n - i)) := by
  vrml
-- vrml:end forloop.count_up.assert_0_decreases

-- vrml:begin forloop.count_up.ensures_5 661ca250fcdaa8b3
/--
Generated VC `forloop.count_up.ensures_5`.

- Rust source: `examples/m2-forloop/forloop.rs:15:9-15:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `5`
- Statement hash: `661ca250fcdaa8b3`
-/
def ensures_5_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-forloop/forloop.rs"
  startLine := 15
  startColumn := 9
  endLine := 15
  endColumn := 15
  assertId := "5"
  functionName := "forloop.count_up"
  kind := "ensures"
  statementHash := "661ca250fcdaa8b3"
}
@[vrml_obligation] theorem ensures_5
    (n : Int)
    (vrml_for_arb : Int)
    (c : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (assume_1 : Vermilion.inUnsignedRange 64 vrml_for_arb)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 c)
    (loop_0_exit_1 : c = (Vermilion.iteP (0 ≤ n) n vrml_for_arb)) :
    c = n := by
  vrml
-- vrml:end forloop.count_up.ensures_5

end forloop.count_up

