import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace vec_set.zero_prefix

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_0 cb7901fa0a5643b8
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:43:13-43:19`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `cb7901fa0a5643b8`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "cb7901fa0a5643b8"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    0 ≤ n := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_0

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_1 349fe8cf1f508523
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:44:13-44:25`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `349fe8cf1f508523`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 25
  assertId := "0_1"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "349fe8cf1f508523"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    n ≤ Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_1

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_2 d1189c7ca86de1f6
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_2`.

- Rust source: `examples/m3-vec-set/vec_set.rs:45:13-45:36`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_2`
- Statement hash: `d1189c7ca86de1f6`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 36
  assertId := "0_2"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "d1189c7ca86de1f6"
}
@[vrml_obligation] theorem invariant_entry_0_2
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    Vermilion.Seq.len v = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_2

-- vrml:begin vec_set.zero_prefix.invariant_entry_0_3 731bf8371749c584
/--
Generated VC `vec_set.zero_prefix.invariant_entry_0_3`.

- Rust source: `examples/m3-vec-set/vec_set.rs:46:13-46:52`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_3`
- Statement hash: `731bf8371749c584`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩
-/
def invariant_entry_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 52
  assertId := "0_3"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_entry"
  statementHash := "731bf8371749c584"
}
@[vrml_obligation] theorem invariant_entry_0_3
    (v : (Vermilion.Seq Int))
    (n : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < 0)) → (Vermilion.Seq.index v k = 0))) := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_entry_0_3

-- vrml:begin vec_set.zero_prefix.call_requires_0 53083252af2c8843
/--
Generated VC `vec_set.zero_prefix.call_requires_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:49:9-49:20`
- Rust/SST construct: call set
- AssertId: `0`
- Statement hash: `53083252af2c8843`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def call_requires_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 49
  startColumn := 9
  endLine := 49
  endColumn := 20
  assertId := "0"
  functionName := "vec_set.zero_prefix"
  kind := "call_requires"
  statementHash := "53083252af2c8843"
}
@[vrml_obligation] theorem call_requires_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0)))) :
    i < Vermilion.Seq.len v_2 := by
  vrml
-- vrml:end vec_set.zero_prefix.call_requires_0

-- vrml:begin vec_set.zero_prefix.assert_1 73df585005b7cd3c
/--
Generated VC `vec_set.zero_prefix.assert_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:50:13-50:18`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `73df585005b7cd3c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 50
  startColumn := 13
  endLine := 50
  endColumn := 18
  assertId := "1"
  functionName := "vec_set.zero_prefix"
  kind := "assert"
  statementHash := "73df585005b7cd3c"
}
@[vrml_obligation] theorem assert_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0) :
    Vermilion.inUnsignedRange 64 (i + 1) := by
  vrml
-- vrml:end vec_set.zero_prefix.assert_1

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_0 fe02f363a5386050
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:43:13-43:19`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `fe02f363a5386050`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 43
  startColumn := 13
  endLine := 43
  endColumn := 19
  assertId := "0_0"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "fe02f363a5386050"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((i + 1) % 18446744073709551616) ≤ n := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_0

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_1 45640b0820d45b4a
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:44:13-44:25`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `45640b0820d45b4a`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 44
  startColumn := 13
  endLine := 44
  endColumn := 25
  assertId := "0_1"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "45640b0820d45b4a"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (i + 1)) :
    n ≤ Vermilion.Seq.len tmp__post := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_1

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_2 3a85750e5bb194f7
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_2`.

- Rust source: `examples/m3-vec-set/vec_set.rs:45:13-45:36`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_2`
- Statement hash: `3a85750e5bb194f7`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_2_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 45
  startColumn := 13
  endLine := 45
  endColumn := 36
  assertId := "0_2"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "3a85750e5bb194f7"
}
@[vrml_obligation] theorem invariant_preserve_0_2
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (i + 1)) :
    Vermilion.Seq.len tmp__post = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_2

-- vrml:begin vec_set.zero_prefix.invariant_preserve_0_3 e111a8950e15e609
/--
Generated VC `vec_set.zero_prefix.invariant_preserve_0_3`.

- Rust source: `examples/m3-vec-set/vec_set.rs:46:13-46:52`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_3`
- Statement hash: `e111a8950e15e609`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index tmp__post k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def invariant_preserve_0_3_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 46
  startColumn := 13
  endLine := 46
  endColumn := 52
  assertId := "0_3"
  functionName := "vec_set.zero_prefix"
  kind := "invariant_preserve"
  statementHash := "e111a8950e15e609"
}
@[vrml_obligation] theorem invariant_preserve_0_3
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (i + 1)) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < ((i + 1) % 18446744073709551616))) → (Vermilion.Seq.index tmp__post k = 0))) := by
  -- The overflow check makes the usize clip on the next index an identity.
  simp only [Vermilion.inUnsignedRange] at assert_1
  norm_num at assert_1
  rw [Int.emod_eq_of_lt assert_1.1 assert_1.2]
  -- The written slot k = i reads back 0; k < i kept its value from the
  -- prefix invariant (index_update_other).
  subst call_set_ensures_0
  rintro k ⟨hk0, hki⟩
  by_cases hk : k = i
  · subst hk
    exact Vermilion.Seq.index_update_same v_2 k 0 hk0 (by omega)
  · rw [Vermilion.Seq.index_update_other v_2 k 0 i (by omega)]
    exact loop_0_iteration_9 k ⟨hk0, by omega⟩
-- vrml:end vec_set.zero_prefix.invariant_preserve_0_3

-- vrml:begin vec_set.zero_prefix.assert_0_decreases 7c1dc6dd82752b1d
/--
Generated VC `vec_set.zero_prefix.assert_0_decreases`.

- Rust source: `examples/m3-vec-set/vec_set.rs:47:19-47:24`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `7c1dc6dd82752b1d`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index tmp__post vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 47
  startColumn := 19
  endLine := 47
  endColumn := 24
  assertId := "0_decreases"
  functionName := "vec_set.zero_prefix"
  kind := "assert"
  statementHash := "7c1dc6dd82752b1d"
}
@[vrml_obligation] theorem assert_0_decreases
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (tmp__post : (Vermilion.Seq Int))
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (loop_0_iteration_2 : Vermilion.inUnsignedRange 64 n)
    (loop_0_iteration_3 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_iteration_4 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_iteration_5 : Vermilion.inUnsignedRange 64 i)
    (loop_0_iteration_6 : i ≤ n)
    (loop_0_iteration_7 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_iteration_8 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_iteration_9 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_iteration_10 : i < n)
    (assume_11 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len tmp__post))
    (assume_12 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len tmp__post)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index tmp__post vrml_i0))))
    (call_set_ensures_0 : tmp__post = Vermilion.Seq.update v_2 i 0)
    (assert_1 : Vermilion.inUnsignedRange 64 (i + 1)) :
    ((0 ≤ (n - ((i + 1) % 18446744073709551616))) ∧ ((n - ((i + 1) % 18446744073709551616)) < (n - i))) ∨ (((n - ((i + 1) % 18446744073709551616)) = (n - i)) ∧ False) := by
  vrml
-- vrml:end vec_set.zero_prefix.assert_0_decreases

-- vrml:begin vec_set.zero_prefix.ensures_2_0 69488e88bc4cbe6e
/--
Generated VC `vec_set.zero_prefix.ensures_2_0`.

- Rust source: `examples/m3-vec-set/vec_set.rs:37:9-37:39`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `69488e88bc4cbe6e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 37
  startColumn := 9
  endLine := 37
  endColumn := 39
  assertId := "2_0"
  functionName := "vec_set.zero_prefix"
  kind := "ensures"
  statementHash := "69488e88bc4cbe6e"
}
@[vrml_obligation] theorem ensures_2_0
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_3 : i ≤ n)
    (loop_0_exit_4 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_exit_5 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_exit_7 : (¬ (i < n))) :
    Vermilion.Seq.len v_2 = Vermilion.Seq.len v := by
  vrml
-- vrml:end vec_set.zero_prefix.ensures_2_0

-- vrml:begin vec_set.zero_prefix.ensures_2_1 7fcbcecb28f93a82
/--
Generated VC `vec_set.zero_prefix.ensures_2_1`.

- Rust source: `examples/m3-vec-set/vec_set.rs:38:9-38:55`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `7fcbcecb28f93a82`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index v_2 k⟩ ⟨Vermilion.Seq.index v vrml_i0⟩ ⟨Vermilion.Seq.index v_2 vrml_i0⟩ ⟨Vermilion.Seq.index v_2 k⟩
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "examples/m3-vec-set/vec_set.rs"
  startLine := 38
  startColumn := 9
  endLine := 38
  endColumn := 55
  assertId := "2_1"
  functionName := "vec_set.zero_prefix"
  kind := "ensures"
  statementHash := "7fcbcecb28f93a82"
}
@[vrml_obligation] theorem ensures_2_1
    (v : (Vermilion.Seq Int))
    (n : Int)
    (v_2 : (Vermilion.Seq Int))
    (i : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v))
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v vrml_i0))))
    (requires_2 : Vermilion.inUnsignedRange 64 n)
    (requires_3 : n ≤ Vermilion.Seq.len v)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 (Vermilion.Seq.len v_2))
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len v_2)) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index v_2 vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 i)
    (loop_0_exit_3 : i ≤ n)
    (loop_0_exit_4 : n ≤ Vermilion.Seq.len v_2)
    (loop_0_exit_5 : Vermilion.Seq.len v_2 = Vermilion.Seq.len v)
    (loop_0_exit_6 : (∀ (k : Int), (((0 ≤ k) ∧ (k < i)) → (Vermilion.Seq.index v_2 k = 0))))
    (loop_0_exit_7 : (¬ (i < n))) :
    (∀ (k : Int), (((0 ≤ k) ∧ (k < n)) → (Vermilion.Seq.index v_2 k = 0))) := by
  vrml
-- vrml:end vec_set.zero_prefix.ensures_2_1

end vec_set.zero_prefix

