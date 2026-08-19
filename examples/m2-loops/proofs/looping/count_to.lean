import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace looping.count_to

-- vrml:begin looping.count_to.invariant_entry_0_0 18dbf408279ddae5
/--
Generated VC `looping.count_to.invariant_entry_0_0`.

- Rust source: `examples/m2-loops/looping.rs:19:13-19:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `18dbf408279ddae5`
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 19
  startColumn := 13
  endLine := 19
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.count_to"
  kind := "invariant_entry"
  statementHash := "18dbf408279ddae5"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n < 1000) :
    0 ≤ n := by
  vrml
-- vrml:end looping.count_to.invariant_entry_0_0

-- vrml:begin looping.count_to.assert_0 b3a1e9cb237c554d
/--
Generated VC `looping.count_to.assert_0`.

- Rust source: `examples/m2-loops/looping.rs:21:13-21:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `b3a1e9cb237c554d`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 21
  startColumn := 13
  endLine := 21
  endColumn := 18
  assertId := "0"
  functionName := "looping.count_to"
  kind := "assert"
  statementHash := "b3a1e9cb237c554d"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (c : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 c)
    (loop_0_iteration_2 : c ≤ n)
    (loop_0_iteration_3 : c < n) :
    Vermilion.inUnsignedRange 32 (c + 1) := by
  vrml
-- vrml:end looping.count_to.assert_0

-- vrml:begin looping.count_to.invariant_preserve_0_0 6bb5541d8bbc65a0
/--
Generated VC `looping.count_to.invariant_preserve_0_0`.

- Rust source: `examples/m2-loops/looping.rs:19:13-19:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `6bb5541d8bbc65a0`
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 19
  startColumn := 13
  endLine := 19
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.count_to"
  kind := "invariant_preserve"
  statementHash := "6bb5541d8bbc65a0"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (c : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 c)
    (loop_0_iteration_2 : c ≤ n)
    (loop_0_iteration_3 : c < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (c + 1)) :
    ((c + 1) % 4294967296) ≤ n := by
  vrml
-- vrml:end looping.count_to.invariant_preserve_0_0

-- vrml:begin looping.count_to.ensures_1 3a3c6f0f044d5671
/--
Generated VC `looping.count_to.ensures_1`.

- Rust source: `examples/m2-loops/looping.rs:14:9-14:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `3a3c6f0f044d5671`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 14
  startColumn := 9
  endLine := 14
  endColumn := 15
  assertId := "1"
  functionName := "looping.count_to"
  kind := "ensures"
  statementHash := "3a3c6f0f044d5671"
}
@[vrml_obligation] theorem ensures_1
    (n : Int)
    (c : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n < 1000)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 32 c)
    (loop_0_exit_1 : c ≤ n)
    (loop_0_exit_2 : (¬ (c < n))) :
    n = c := by
  vrml
-- vrml:end looping.count_to.ensures_1

end looping.count_to

