import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace looping.triple

-- vrml:begin looping.triple.invariant_entry_0_0 7f39e7814eda8256
/--
Generated VC `looping.triple.invariant_entry_0_0`.

- Rust source: `examples/m2-loops/looping.rs:67:13-67:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `7f39e7814eda8256`
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 67
  startColumn := 13
  endLine := 67
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.triple"
  kind := "invariant_entry"
  statementHash := "7f39e7814eda8256"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 1000) :
    0 ≤ n := by
  vrml
-- vrml:end looping.triple.invariant_entry_0_0

-- vrml:begin looping.triple.invariant_entry_0_1 dc929c1f0c45baa7
/--
Generated VC `looping.triple.invariant_entry_0_1`.

- Rust source: `examples/m2-loops/looping.rs:68:13-68:22`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `dc929c1f0c45baa7`
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 68
  startColumn := 13
  endLine := 68
  endColumn := 22
  assertId := "0_1"
  functionName := "looping.triple"
  kind := "invariant_entry"
  statementHash := "dc929c1f0c45baa7"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 1000) :
    n ≤ 1000 := by
  vrml
-- vrml:end looping.triple.invariant_entry_0_1

-- vrml:begin looping.triple.invariant_entry_0_2 00997c4f50cd6d8a
/--
Generated VC `looping.triple.invariant_entry_0_2`.

- Rust source: `examples/m2-loops/looping.rs:69:13-69:23`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `00997c4f50cd6d8a`
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 69
  startColumn := 13
  endLine := 69
  endColumn := 23
  assertId := "0_2"
  functionName := "looping.triple"
  kind := "invariant_entry"
  statementHash := "00997c4f50cd6d8a"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 1000) :
    0 = (3 * 0) := by
  vrml
-- vrml:end looping.triple.invariant_entry_0_2

-- vrml:begin looping.triple.assert_0 23f64fabd5aadd6d
/--
Generated VC `looping.triple.assert_0`.

- Rust source: `examples/m2-loops/looping.rs:72:13-72:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `23f64fabd5aadd6d`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 72
  startColumn := 13
  endLine := 72
  endColumn := 18
  assertId := "0"
  functionName := "looping.triple"
  kind := "assert"
  statementHash := "23f64fabd5aadd6d"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n) :
    Vermilion.inUnsignedRange 32 (s + 3) := by
  vrml
-- vrml:end looping.triple.assert_0

-- vrml:begin looping.triple.assert_1 d2f0ac4300c4f796
/--
Generated VC `looping.triple.assert_1`.

- Rust source: `examples/m2-loops/looping.rs:73:13-73:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `d2f0ac4300c4f796`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 73
  startColumn := 13
  endLine := 73
  endColumn := 18
  assertId := "1"
  functionName := "looping.triple"
  kind := "assert"
  statementHash := "d2f0ac4300c4f796"
}
@[vrml_obligation] theorem assert_1
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + 3)) :
    Vermilion.inUnsignedRange 32 (i + 1) := by
  vrml
-- vrml:end looping.triple.assert_1

-- vrml:begin looping.triple.invariant_preserve_0_0 5dff0fa7b59b1958
/--
Generated VC `looping.triple.invariant_preserve_0_0`.

- Rust source: `examples/m2-loops/looping.rs:67:13-67:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `5dff0fa7b59b1958`
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 67
  startColumn := 13
  endLine := 67
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.triple"
  kind := "invariant_preserve"
  statementHash := "5dff0fa7b59b1958"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + 3))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    ((i + 1) % 4294967296) ≤ n := by
  vrml
-- vrml:end looping.triple.invariant_preserve_0_0

-- vrml:begin looping.triple.invariant_preserve_0_1 0730e3e114dbb491
/--
Generated VC `looping.triple.invariant_preserve_0_1`.

- Rust source: `examples/m2-loops/looping.rs:68:13-68:22`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `0730e3e114dbb491`
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 68
  startColumn := 13
  endLine := 68
  endColumn := 22
  assertId := "0_1"
  functionName := "looping.triple"
  kind := "invariant_preserve"
  statementHash := "0730e3e114dbb491"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + 3))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    n ≤ 1000 := by
  vrml
-- vrml:end looping.triple.invariant_preserve_0_1

-- vrml:begin looping.triple.invariant_preserve_0_2 b93bc4d1b776f588
/--
Generated VC `looping.triple.invariant_preserve_0_2`.

- Rust source: `examples/m2-loops/looping.rs:69:13-69:23`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `b93bc4d1b776f588`
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 69
  startColumn := 13
  endLine := 69
  endColumn := 23
  assertId := "0_2"
  functionName := "looping.triple"
  kind := "invariant_preserve"
  statementHash := "b93bc4d1b776f588"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + 3))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    ((s + 3) % 4294967296) = (3 * ((i + 1) % 4294967296)) := by
  vrml
-- vrml:end looping.triple.invariant_preserve_0_2

-- vrml:begin looping.triple.assert_0_decreases 00141eceef562dc5
/--
Generated VC `looping.triple.assert_0_decreases`.

- Rust source: `examples/m2-loops/looping.rs:70:19-70:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `00141eceef562dc5`
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 70
  startColumn := 19
  endLine := 70
  endColumn := 24
  assertId := "0_decreases"
  functionName := "looping.triple"
  kind := "assert"
  statementHash := "00141eceef562dc5"
}
@[vrml_obligation] theorem assert_0_decreases
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 1000)
    (loop_0_iteration_5 : s = (3 * i))
    (loop_0_iteration_6 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + 3))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    ((0 ≤ (n - ((i + 1) % 4294967296))) ∧ ((n - ((i + 1) % 4294967296)) < (n - i))) ∨ (((n - ((i + 1) % 4294967296)) = (n - i)) ∧ False) := by
  vrml
-- vrml:end looping.triple.assert_0_decreases

-- vrml:begin looping.triple.ensures_2 4fca8bf76a5ddf82
/--
Generated VC `looping.triple.ensures_2`.

- Rust source: `examples/m2-loops/looping.rs:61:9-61:19`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `4fca8bf76a5ddf82`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 61
  startColumn := 9
  endLine := 61
  endColumn := 19
  assertId := "2"
  functionName := "looping.triple"
  kind := "ensures"
  statementHash := "4fca8bf76a5ddf82"
}
@[vrml_obligation] theorem ensures_2
    (n : Int)
    (s : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 1000)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 32 s)
    (loop_0_exit_1 : Vermilion.inUnsignedRange 32 i)
    (loop_0_exit_2 : i ≤ n)
    (loop_0_exit_3 : n ≤ 1000)
    (loop_0_exit_4 : s = (3 * i))
    (loop_0_exit_5 : (¬ (i < n))) :
    s = (3 * n) := by
  vrml
-- vrml:end looping.triple.ensures_2

end looping.triple

