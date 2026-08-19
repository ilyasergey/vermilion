import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace looping.sum_below

-- vrml:begin looping.sum_below.invariant_entry_0_0 80a6a60041950772
/--
Generated VC `looping.sum_below.invariant_entry_0_0`.

- Rust source: `examples/m2-loops/looping.rs:43:13-43:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `80a6a60041950772`
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.sum_below"
  kind := "invariant_entry"
  statementHash := "80a6a60041950772"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 100) :
    0 ≤ n := by
  vrml
-- vrml:end looping.sum_below.invariant_entry_0_0

-- vrml:begin looping.sum_below.invariant_entry_0_1 6ccbce7601a7d6b9
/--
Generated VC `looping.sum_below.invariant_entry_0_1`.

- Rust source: `examples/m2-loops/looping.rs:44:13-44:21`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `6ccbce7601a7d6b9`
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 21
  assertId := "0_1"
  functionName := "looping.sum_below"
  kind := "invariant_entry"
  statementHash := "6ccbce7601a7d6b9"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 100) :
    n ≤ 100 := by
  vrml
-- vrml:end looping.sum_below.invariant_entry_0_1

-- vrml:begin looping.sum_below.invariant_entry_0_2 80c10f94197612cf
/--
Generated VC `looping.sum_below.invariant_entry_0_2`.

- Rust source: `examples/m2-loops/looping.rs:45:13-45:33`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `80c10f94197612cf`
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 33
  assertId := "0_2"
  functionName := "looping.sum_below"
  kind := "invariant_entry"
  statementHash := "80c10f94197612cf"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 100) :
    (2 * 0) = (0 * (0 - 1)) := by
  vrml
-- vrml:end looping.sum_below.invariant_entry_0_2

-- vrml:begin looping.sum_below.invariant_entry_0_3 1b365e305067a46b
/--
Generated VC `looping.sum_below.invariant_entry_0_3`.

- Rust source: `examples/m2-loops/looping.rs:46:13-46:23`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `1b365e305067a46b`
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 23
  assertId := "0_3"
  functionName := "looping.sum_below"
  kind := "invariant_entry"
  statementHash := "1b365e305067a46b"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 100) :
    0 ≤ 10000 := by
  vrml
-- vrml:end looping.sum_below.invariant_entry_0_3

-- vrml:begin looping.sum_below.assert_0 aa81124d28a310c6
/--
Generated VC `looping.sum_below.assert_0`.

- Rust source: `examples/m2-loops/looping.rs:48:13-48:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `aa81124d28a310c6`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 48
  startColumn := 13
  endLine := 48
  endColumn := 18
  assertId := "0"
  functionName := "looping.sum_below"
  kind := "assert"
  statementHash := "aa81124d28a310c6"
}
@[vrml_obligation] theorem assert_0
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n) :
    Vermilion.inUnsignedRange 32 (s + i) := by
  vrml
-- vrml:end looping.sum_below.assert_0

-- vrml:begin looping.sum_below.assert_1 7f4a34ba4475bbb9
/--
Generated VC `looping.sum_below.assert_1`.

- Rust source: `examples/m2-loops/looping.rs:49:13-49:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `7f4a34ba4475bbb9`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 49
  startColumn := 13
  endLine := 49
  endColumn := 18
  assertId := "1"
  functionName := "looping.sum_below"
  kind := "assert"
  statementHash := "7f4a34ba4475bbb9"
}
@[vrml_obligation] theorem assert_1
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + i)) :
    Vermilion.inUnsignedRange 32 (i + 1) := by
  vrml
-- vrml:end looping.sum_below.assert_1

-- vrml:begin looping.sum_below.invariant_preserve_0_0 44f3266c74aa85af
/--
Generated VC `looping.sum_below.invariant_preserve_0_0`.

- Rust source: `examples/m2-loops/looping.rs:43:13-43:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `44f3266c74aa85af`
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "looping.sum_below"
  kind := "invariant_preserve"
  statementHash := "44f3266c74aa85af"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + i))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    ((i + 1) % 4294967296) ≤ n := by
  vrml
-- vrml:end looping.sum_below.invariant_preserve_0_0

-- vrml:begin looping.sum_below.invariant_preserve_0_1 79c2b8685c82a586
/--
Generated VC `looping.sum_below.invariant_preserve_0_1`.

- Rust source: `examples/m2-loops/looping.rs:44:13-44:21`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `79c2b8685c82a586`
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 21
  assertId := "0_1"
  functionName := "looping.sum_below"
  kind := "invariant_preserve"
  statementHash := "79c2b8685c82a586"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + i))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    n ≤ 100 := by
  vrml
-- vrml:end looping.sum_below.invariant_preserve_0_1

-- vrml:begin looping.sum_below.invariant_preserve_0_2 d379a34c997f3cf8
/--
Generated VC `looping.sum_below.invariant_preserve_0_2`.

- Rust source: `examples/m2-loops/looping.rs:45:13-45:33`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `d379a34c997f3cf8`
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 33
  assertId := "0_2"
  functionName := "looping.sum_below"
  kind := "invariant_preserve"
  statementHash := "d379a34c997f3cf8"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + i))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    (2 * ((s + i) % 4294967296)) = (((i + 1) % 4294967296) * (((i + 1) % 4294967296) - 1)) := by
  -- The VIR clips retain machine semantics. The preceding overflow checks
  -- put both operands in range, so the two u32 clips are identities here.
  simp only [Vermilion.inUnsignedRange] at assert_0 assert_1
  norm_num at assert_0 assert_1
  have hsmod : (s + i) % 4294967296 = s + i :=
    Int.emod_eq_of_lt assert_0.1 assert_0.2
  have himod : (i + 1) % 4294967296 = i + 1 :=
    Int.emod_eq_of_lt assert_1.1 assert_1.2
  rw [hsmod, himod]
  nlinarith [loop_0_iteration_5]
-- vrml:end looping.sum_below.invariant_preserve_0_2

-- vrml:begin looping.sum_below.invariant_preserve_0_3 b42fca506815c064
/--
Generated VC `looping.sum_below.invariant_preserve_0_3`.

- Rust source: `examples/m2-loops/looping.rs:46:13-46:23`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `b42fca506815c064`
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 23
  assertId := "0_3"
  functionName := "looping.sum_below"
  kind := "invariant_preserve"
  statementHash := "b42fca506815c064"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (n : Int)
    (s : Int)
    (i : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 32 n)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 32 s)
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 32 i)
    (loop_0_iteration_3 : i ≤ n)
    (loop_0_iteration_4 : n ≤ 100)
    (loop_0_iteration_5 : (2 * s) = (i * (i - 1)))
    (loop_0_iteration_6 : s ≤ 10000)
    (loop_0_iteration_7 : i < n)
    (assert_0 : Vermilion.inUnsignedRange 32 (s + i))
    (assert_1 : Vermilion.inUnsignedRange 32 (i + 1)) :
    ((s + i) % 4294967296) ≤ 10000 := by
  -- First remove the exact u32 clip using its overflow-check hypothesis;
  -- the remaining bound is the original nonlinear invariant argument.
  simp only [Vermilion.inUnsignedRange] at assert_0
  norm_num at assert_0
  rw [Int.emod_eq_of_lt assert_0.1 assert_0.2]
  simp only [Vermilion.inUnsignedRange] at loop_0_iteration_2
  obtain ⟨hi, -⟩ := loop_0_iteration_2
  have hi99 : i ≤ 99 := by linarith
  nlinarith [loop_0_iteration_5,
    mul_nonneg (by linarith : (0:Int) ≤ 99 - i) hi]
-- vrml:end looping.sum_below.invariant_preserve_0_3

-- vrml:begin looping.sum_below.ensures_2 2e9d1baaa1127686
/--
Generated VC `looping.sum_below.ensures_2`.

- Rust source: `examples/m2-loops/looping.rs:37:9-37:29`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `2e9d1baaa1127686`
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m2-loops/looping.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 29
  assertId := "2"
  functionName := "looping.sum_below"
  kind := "ensures"
  statementHash := "2e9d1baaa1127686"
}
@[vrml_obligation] theorem ensures_2
    (n : Int)
    (s : Int)
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 32 n)
    (requires_1 : n ≤ 100)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 32 s)
    (loop_0_exit_1 : Vermilion.inUnsignedRange 32 i)
    (loop_0_exit_2 : i ≤ n)
    (loop_0_exit_3 : n ≤ 100)
    (loop_0_exit_4 : (2 * s) = (i * (i - 1)))
    (loop_0_exit_5 : s ≤ 10000)
    (loop_0_exit_6 : (¬ (i < n))) :
    (2 * s) = (n * (n - 1)) := by
  vrml
-- vrml:end looping.sum_below.ensures_2

end looping.sum_below

