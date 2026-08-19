import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace count_loop_isolation.count_up

-- vrml:begin count_loop_isolation.count_up.invariant_entry_0_0 4d150efae8fd91d7
/--
Generated VC `count_loop_isolation.count_up.invariant_entry_0_0`.

- Rust source: `case-studies/dalek-lite/probes/count_loop_isolation.rs:27:13-27:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `4d150efae8fd91d7`
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/count_loop_isolation.rs"
  startLine := 27
  startColumn := 13
  endLine := 27
  endColumn := 19
  assertId := "0_0"
  functionName := "count_loop_isolation.count_up"
  kind := "invariant_entry"
  statementHash := "4d150efae8fd91d7"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : n ≤ 1000) :
    0 ≤ n := by
  vrml
-- vrml:end count_loop_isolation.count_up.invariant_entry_0_0

-- vrml:begin count_loop_isolation.count_up.assert_0 d900c3c6596dca39
/--
Generated VC `count_loop_isolation.count_up.assert_0`.

- Rust source: `case-studies/dalek-lite/probes/count_loop_isolation.rs:32:13-32:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `d900c3c6596dca39`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/count_loop_isolation.rs"
  startLine := 32
  startColumn := 13
  endLine := 32
  endColumn := 18
  assertId := "0"
  functionName := "count_loop_isolation.count_up"
  kind := "assert"
  statementHash := "d900c3c6596dca39"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : n ≤ 1000)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_2 : i ≤ n)
    (loop_0_iteration_3 : i < n) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  vrml
-- vrml:end count_loop_isolation.count_up.assert_0

-- vrml:begin count_loop_isolation.count_up.invariant_preserve_0_0 f48c10a311468ae8
/--
Generated VC `count_loop_isolation.count_up.invariant_preserve_0_0`.

- Rust source: `case-studies/dalek-lite/probes/count_loop_isolation.rs:27:13-27:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `f48c10a311468ae8`
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/count_loop_isolation.rs"
  startLine := 27
  startColumn := 13
  endLine := 27
  endColumn := 19
  assertId := "0_0"
  functionName := "count_loop_isolation.count_up"
  kind := "invariant_preserve"
  statementHash := "f48c10a311468ae8"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : n ≤ 1000)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_2 : i ≤ n)
    (loop_0_iteration_3 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((i + 1) % 18446744073709551616) ≤ n := by
  vrml
-- vrml:end count_loop_isolation.count_up.invariant_preserve_0_0

-- vrml:begin count_loop_isolation.count_up.assert_0_decreases 8082d79712497df5
/--
Generated VC `count_loop_isolation.count_up.assert_0_decreases`.

- Rust source: `case-studies/dalek-lite/probes/count_loop_isolation.rs:28:19-28:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `8082d79712497df5`
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/count_loop_isolation.rs"
  startLine := 28
  startColumn := 19
  endLine := 28
  endColumn := 24
  assertId := "0_decreases"
  functionName := "count_loop_isolation.count_up"
  kind := "assert"
  statementHash := "8082d79712497df5"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : n ≤ 1000)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_2 : i ≤ n)
    (loop_0_iteration_3 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (n - ((i + 1) % 18446744073709551616))) ∧ ((n - ((i + 1) % 18446744073709551616)) < (n - i))) ∨ (((n - ((i + 1) % 18446744073709551616)) = (n - i)) ∧ False) := by
  vrml
-- vrml:end count_loop_isolation.count_up.assert_0_decreases

-- vrml:begin count_loop_isolation.count_up.ensures_1 b286374a712ed78e
/--
Generated VC `count_loop_isolation.count_up.ensures_1`.

- Rust source: `case-studies/dalek-lite/probes/count_loop_isolation.rs:22:9-22:15`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `1`
- Statement hash: `b286374a712ed78e`
-/
def ensures_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/count_loop_isolation.rs"
  startLine := 22
  startColumn := 9
  endLine := 22
  endColumn := 15
  assertId := "1"
  functionName := "count_loop_isolation.count_up"
  kind := "ensures"
  statementHash := "b286374a712ed78e"
}
@[vrml_obligation] theorem ensures_1
    (n : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 n)
    (requires_1 : n ≤ 1000)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_1 : i ≤ n)
    (loop_0_exit_2 : (¬ (i < n))) :
    i = n := by
  vrml
-- vrml:end count_loop_isolation.count_up.ensures_1

end count_loop_isolation.count_up

