import Vermilion.Obligations
import algos.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace algos.keccak_p

-- vrml:begin algos.keccak_p.invariant_entry_0_0 e1a4c0edbd2f2d1c
/--
Generated VC `algos.keccak_p.invariant_entry_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:791:13-791:21`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `e1a4c0edbd2f2d1c`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 791
  startColumn := 13
  endLine := 791
  endColumn := 21
  assertId := "0_0"
  functionName := "algos.keccak_p"
  kind := "invariant_entry"
  statementHash := "e1a4c0edbd2f2d1c"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (s : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0)))) :
    0 ≤ 24 := by
  omega
-- vrml:end algos.keccak_p.invariant_entry_0_0

-- vrml:begin algos.keccak_p.invariant_entry_0_1 a6cd4dfa021b96ce
/--
Generated VC `algos.keccak_p.invariant_entry_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:792:13-793:50`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `a6cd4dfa021b96ce`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 792
  startColumn := 13
  endLine := 793
  endColumn := 50
  assertId := "0_1"
  functionName := "algos.keccak_p"
  kind := "invariant_entry"
  statementHash := "a6cd4dfa021b96ce"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (s : algos.StateArray)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0)))) :
    algos.keccak_p_loop_spec (algos.impl__3.view s) 0 = algos.keccak_p_loop_spec (algos.impl__3.view s) 0 := by
  rfl
-- vrml:end algos.keccak_p.invariant_entry_0_1

-- vrml:begin algos.keccak_p.call_requires_0_0 d9eb1998417a89f3
/--
Generated VC `algos.keccak_p.call_requires_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:797:9-797:21`
- Rust/SST construct: call round
- AssertId: `0_0`
- Statement hash: `d9eb1998417a89f3`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 797
  startColumn := 9
  endLine := 797
  endColumn := 21
  assertId := "0_0"
  functionName := "algos.keccak_p"
  kind := "call_requires"
  statementHash := "d9eb1998417a89f3"
}
@[vrml_obligation] theorem call_requires_0_0
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    Vermilion.Seq.len (algos.impl__3.view s_2) = 25 := by
  simpa [algos.impl__3.view] using loop_0_iteration_2
-- vrml:end algos.keccak_p.call_requires_0_0

-- vrml:begin algos.keccak_p.call_requires_0_1 8839b1cb013d3312
/--
Generated VC `algos.keccak_p.call_requires_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:797:9-797:21`
- Rust/SST construct: call round
- AssertId: `0_1`
- Statement hash: `8839b1cb013d3312`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def call_requires_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 797
  startColumn := 9
  endLine := 797
  endColumn := 21
  assertId := "0_1"
  functionName := "algos.keccak_p"
  kind := "call_requires"
  statementHash := "8839b1cb013d3312"
}
@[vrml_obligation] theorem call_requires_0_1
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0)))) :
    ir < 24 := by
  exact loop_0_iteration_7
-- vrml:end algos.keccak_p.call_requires_0_1

-- vrml:begin algos.keccak_p.assert_1 8ad922e94957f01e
/--
Generated VC `algos.keccak_p.assert_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:798:9-798:16`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `1`
- Statement hash: `8ad922e94957f01e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 798
  startColumn := 9
  endLine := 798
  endColumn := 16
  assertId := "1"
  functionName := "algos.keccak_p"
  kind := "assert"
  statementHash := "8ad922e94957f01e"
}
@[vrml_obligation] theorem assert_1
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_round_ensures_0 : algos.impl__3.view tmp__post = algos.round_spec (algos.impl__3.view s_2) ir) :
    Vermilion.inUnsignedRange 64 (ir + 1) := by
  simp_all [Vermilion.inUnsignedRange]
  omega
-- vrml:end algos.keccak_p.assert_1

-- vrml:begin algos.keccak_p.invariant_preserve_0_0 ed4f2cad0b73a130
/--
Generated VC `algos.keccak_p.invariant_preserve_0_0`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:791:13-791:21`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `ed4f2cad0b73a130`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 791
  startColumn := 13
  endLine := 791
  endColumn := 21
  assertId := "0_0"
  functionName := "algos.keccak_p"
  kind := "invariant_preserve"
  statementHash := "ed4f2cad0b73a130"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_round_ensures_0 : algos.impl__3.view tmp__post = algos.round_spec (algos.impl__3.view s_2) ir)
    (assert_1 : Vermilion.inUnsignedRange 64 (ir + 1)) :
    ((ir + 1) % 18446744073709551616) ≤ 24 := by
  have hir1_clip : (ir + 1) % 18446744073709551616 = ir + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  omega
-- vrml:end algos.keccak_p.invariant_preserve_0_0

-- vrml:begin algos.keccak_p.invariant_preserve_0_1 d9e67c8aac6ea39e
/--
Generated VC `algos.keccak_p.invariant_preserve_0_1`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:792:13-793:50`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `d9e67c8aac6ea39e`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 792
  startColumn := 13
  endLine := 793
  endColumn := 50
  assertId := "0_1"
  functionName := "algos.keccak_p"
  kind := "invariant_preserve"
  statementHash := "d9e67c8aac6ea39e"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_round_ensures_0 : algos.impl__3.view tmp__post = algos.round_spec (algos.impl__3.view s_2) ir)
    (assert_1 : Vermilion.inUnsignedRange 64 (ir + 1)) :
    algos.keccak_p_loop_spec (algos.impl__3.view tmp__post) ((ir + 1) % 18446744073709551616) = algos.keccak_p_loop_spec (algos.impl__3.view s) 0 := by
  have hir1_clip : (ir + 1) % 18446744073709551616 = ir + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  rw [algos.keccak_p_loop_spec] at loop_0_iteration_6
  simpa [show 0 ≤ 24 - ir by omega, loop_0_iteration_5,
    loop_0_iteration_7, hir1_clip, call_round_ensures_0] using
    loop_0_iteration_6
-- vrml:end algos.keccak_p.invariant_preserve_0_1

-- vrml:begin algos.keccak_p.assert_0_decreases dd0d2aab54a27569
/--
Generated VC `algos.keccak_p.assert_0_decreases`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:794:19-794:26`
- Rust/SST construct: loop termination measure must decrease
- AssertId: `0_decreases`
- Statement hash: `dd0d2aab54a27569`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0⟩
-/
def assert_0_decreases_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 794
  startColumn := 19
  endLine := 794
  endColumn := 26
  assertId := "0_decreases"
  functionName := "algos.keccak_p"
  kind := "assert"
  statementHash := "dd0d2aab54a27569"
}
@[vrml_obligation] theorem assert_0_decreases
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (tmp__post : algos.StateArray)
    (loop_0_iteration_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (loop_0_iteration_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_iteration_2 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_iteration_3 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_iteration_4 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_iteration_5 : ir ≤ 24)
    (loop_0_iteration_6 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_iteration_7 : ir < 24)
    (assume_8 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post) = 25)
    (assume_9 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 tmp__post))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 tmp__post) vrml_i0))))
    (call_round_ensures_0 : algos.impl__3.view tmp__post = algos.round_spec (algos.impl__3.view s_2) ir)
    (assert_1 : Vermilion.inUnsignedRange 64 (ir + 1)) :
    ((0 ≤ (24 - ((ir + 1) % 18446744073709551616))) ∧ ((24 - ((ir + 1) % 18446744073709551616)) < (24 - ir))) ∨ (((24 - ((ir + 1) % 18446744073709551616)) = (24 - ir)) ∧ False) := by
  have hir1_clip : (ir + 1) % 18446744073709551616 = ir + 1 := by
    apply Int.emod_eq_of_lt <;> simp_all [Vermilion.inUnsignedRange] <;> omega
  omega
-- vrml:end algos.keccak_p.assert_0_decreases

-- vrml:begin algos.keccak_p.ensures_2 bd7c12754874b426
/--
Generated VC `algos.keccak_p.ensures_2`.

- Rust source: `case-studies/aeneas/sha3/verification/src/algos.rs:784:9-784:52`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `bd7c12754874b426`
- Triggers (Verus, for future e-matching): ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0⟩ ⟨Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/aeneas/sha3/verification/src/algos.rs"
  startLine := 784
  startColumn := 9
  endLine := 784
  endColumn := 52
  assertId := "2"
  functionName := "algos.keccak_p"
  kind := "ensures"
  statementHash := "bd7c12754874b426"
}
@[vrml_obligation] theorem ensures_2
    (s : algos.StateArray)
    (s_2 : algos.StateArray)
    (ir : Int)
    (requires_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s) = 25)
    (requires_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s) vrml_i0))))
    (loop_0_exit_0 : Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2) = 25)
    (loop_0_exit_1 : (∀ (vrml_i0 : Int), (((0 ≤ vrml_i0) ∧ (vrml_i0 < Vermilion.Seq.len (algos.StateArray.get_StateArray__0 s_2))) → Vermilion.inUnsignedRange 64 (Vermilion.Seq.index (algos.StateArray.get_StateArray__0 s_2) vrml_i0))))
    (loop_0_exit_2 : Vermilion.inUnsignedRange 64 ir)
    (loop_0_exit_3 : ir ≤ 24)
    (loop_0_exit_4 : algos.keccak_p_loop_spec (algos.impl__3.view s_2) ir = algos.keccak_p_loop_spec (algos.impl__3.view s) 0)
    (loop_0_exit_5 : (¬ (ir < 24))) :
    algos.impl__3.view s_2 = algos.keccak_p_loop_spec (algos.impl__3.view s) 0 := by
  rw [← loop_0_exit_4]
  rw [algos.keccak_p_loop_spec]
  simp_all
-- vrml:end algos.keccak_p.ensures_2

end algos.keccak_p

