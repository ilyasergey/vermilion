import Vermilion.Obligations
import primes_exec.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace primes_exec.test_prime

-- vrml:begin primes_exec.test_prime.invariant_entry_0_0 0009e5c8db53ca05
/--
Generated VC `primes_exec.test_prime.invariant_entry_0_0`.

- Rust source: `case-studies/primes/primes_exec.rs:33:13-33:23`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_0`
- Statement hash: `0009e5c8db53ca05`
-/
def invariant_entry_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 33
  startColumn := 13
  endLine := 33
  endColumn := 23
  assertId := "0_0"
  functionName := "primes_exec.test_prime"
  kind := "invariant_entry"
  statementHash := "0009e5c8db53ca05"
}
@[vrml_obligation] theorem invariant_entry_0_0
    (candidate : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 candidate)
    (requires_1 : 1 < candidate) :
    1 < 2 := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.invariant_entry_0_0

-- vrml:begin primes_exec.test_prime.invariant_entry_0_1 95983adb66536ec1
/--
Generated VC `primes_exec.test_prime.invariant_entry_0_1`.

- Rust source: `case-studies/primes/primes_exec.rs:34:13-35:89`
- Rust/SST construct: loop invariant on entry
- AssertId: `0_1`
- Statement hash: `95983adb66536ec1`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def invariant_entry_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 34
  startColumn := 13
  endLine := 35
  endColumn := 89
  assertId := "0_1"
  functionName := "primes_exec.test_prime"
  kind := "invariant_entry"
  statementHash := "95983adb66536ec1"
}
@[vrml_obligation] theorem invariant_entry_0_1
    (candidate : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 candidate)
    (requires_1 : 1 < candidate) :
    (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < 2)) → (¬ primes_exec.divides smallerfactor candidate)))) := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.invariant_entry_0_1

-- vrml:begin primes_exec.test_prime.assert_0 77fc716496ec1e70
/--
Generated VC `primes_exec.test_prime.assert_0`.

- Rust source: `case-studies/primes/primes_exec.rs:37:12-37:30`
- Rust/SST construct: possible division by zero
- AssertId: `0`
- Statement hash: `77fc716496ec1e70`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 37
  startColumn := 12
  endLine := 37
  endColumn := 30
  assertId := "0"
  functionName := "primes_exec.test_prime"
  kind := "assert"
  statementHash := "77fc716496ec1e70"
}
@[vrml_obligation] theorem assert_0
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate) :
    factor ≠ 0 := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.assert_0

-- vrml:begin primes_exec.test_prime.assert_1 7c9c9b0b1caf6420
/--
Generated VC `primes_exec.test_prime.assert_1`.

- Rust source: `case-studies/primes/primes_exec.rs:38:20-38:60`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `7c9c9b0b1caf6420`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 38
  startColumn := 20
  endLine := 38
  endColumn := 60
  assertId := "1"
  functionName := "primes_exec.test_prime"
  kind := "assert"
  statementHash := "7c9c9b0b1caf6420"
}
@[vrml_obligation] theorem assert_1
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate)
    (assert_0 : factor ≠ 0)
    (branch_0 : ((Vermilion.emod candidate factor) % 18446744073709551616) = 0) :
    primes_exec.divides factor candidate := by
  rw [Vermilion.emod_of_ne_zero candidate assert_0] at branch_0
  have hrem_nonneg : 0 ≤ candidate % factor :=
    Int.emod_nonneg candidate assert_0
  have hrem_lt : candidate % factor < factor :=
    Int.emod_lt_of_pos candidate (by omega)
  have hclip : (candidate % factor) % 18446744073709551616 =
      candidate % factor := Int.emod_eq_of_lt hrem_nonneg (by
        simp only [Vermilion.inUnsignedRange] at loop_0_iteration_0
        omega)
  rw [hclip] at branch_0
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.assert_1

-- vrml:begin primes_exec.test_prime.ensures_2 54a1a72ca6cc451f
/--
Generated VC `primes_exec.test_prime.ensures_2`.

- Rust source: `case-studies/primes/primes_exec.rs:28:9-28:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2`
- Statement hash: `54a1a72ca6cc451f`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def ensures_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 45
  assertId := "2"
  functionName := "primes_exec.test_prime"
  kind := "ensures"
  statementHash := "54a1a72ca6cc451f"
}
@[vrml_obligation] theorem ensures_2
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate)
    (assert_0 : factor ≠ 0)
    (branch_0 : ((Vermilion.emod candidate factor) % 18446744073709551616) = 0)
    (assert_1 : primes_exec.divides factor candidate) :
    False ↔ primes_exec.is_prime candidate := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.ensures_2

-- vrml:begin primes_exec.test_prime.assert_3 7de86374e23379e6
/--
Generated VC `primes_exec.test_prime.assert_3`.

- Rust source: `case-studies/primes/primes_exec.rs:41:18-41:28`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `7de86374e23379e6`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 41
  startColumn := 18
  endLine := 41
  endColumn := 28
  assertId := "3"
  functionName := "primes_exec.test_prime"
  kind := "assert"
  statementHash := "7de86374e23379e6"
}
@[vrml_obligation] theorem assert_3
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate)
    (assert_0 : factor ≠ 0)
    (then_0_assert_1 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → primes_exec.divides factor candidate)
    (then_0_assume_8 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False)
    (then_0_assume_9 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False) :
    Vermilion.inUnsignedRange 64 (factor + 1) := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.assert_3

-- vrml:begin primes_exec.test_prime.invariant_preserve_0_0 5c5be4e74fa49c78
/--
Generated VC `primes_exec.test_prime.invariant_preserve_0_0`.

- Rust source: `case-studies/primes/primes_exec.rs:33:13-33:23`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_0`
- Statement hash: `5c5be4e74fa49c78`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def invariant_preserve_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 33
  startColumn := 13
  endLine := 33
  endColumn := 23
  assertId := "0_0"
  functionName := "primes_exec.test_prime"
  kind := "invariant_preserve"
  statementHash := "5c5be4e74fa49c78"
}
@[vrml_obligation] theorem invariant_preserve_0_0
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate)
    (assert_0 : factor ≠ 0)
    (then_0_assert_1 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → primes_exec.divides factor candidate)
    (then_0_assume_8 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False)
    (then_0_assume_9 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False)
    (assert_3 : Vermilion.inUnsignedRange 64 (factor + 1)) :
    1 < ((factor + 1) % 18446744073709551616) := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.invariant_preserve_0_0

-- vrml:begin primes_exec.test_prime.invariant_preserve_0_1 b8e64963b46fbe78
/--
Generated VC `primes_exec.test_prime.invariant_preserve_0_1`.

- Rust source: `case-studies/primes/primes_exec.rs:34:13-35:89`
- Rust/SST construct: loop invariant preserved by the body
- AssertId: `0_1`
- Statement hash: `b8e64963b46fbe78`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩ ⟨primes_exec.divides smallerfactor candidate⟩
-/
def invariant_preserve_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 34
  startColumn := 13
  endLine := 35
  endColumn := 89
  assertId := "0_1"
  functionName := "primes_exec.test_prime"
  kind := "invariant_preserve"
  statementHash := "b8e64963b46fbe78"
}
@[vrml_obligation] theorem invariant_preserve_0_1
    (candidate : Int)
    (factor : Int)
    (loop_0_iteration_0 : Vermilion.inUnsignedRange 64 candidate)
    (loop_0_iteration_1 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_iteration_2 : 1 < factor)
    (loop_0_iteration_3 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_iteration_4 : factor < candidate)
    (assert_0 : factor ≠ 0)
    (then_0_assert_1 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → primes_exec.divides factor candidate)
    (then_0_assume_8 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False)
    (then_0_assume_9 : (((Vermilion.emod candidate factor) % 18446744073709551616) = 0) → False)
    (assert_3 : Vermilion.inUnsignedRange 64 (factor + 1)) :
    (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < ((factor + 1) % 18446744073709551616))) → (¬ primes_exec.divides smallerfactor candidate)))) := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.invariant_preserve_0_1

-- vrml:begin primes_exec.test_prime.ensures_4 103288749bf2bb99
/--
Generated VC `primes_exec.test_prime.ensures_4`.

- Rust source: `case-studies/primes/primes_exec.rs:28:9-28:45`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `4`
- Statement hash: `103288749bf2bb99`
- Triggers (Verus, for future e-matching): ⟨primes_exec.divides smallerfactor candidate⟩
-/
def ensures_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_exec.rs"
  startLine := 28
  startColumn := 9
  endLine := 28
  endColumn := 45
  assertId := "4"
  functionName := "primes_exec.test_prime"
  kind := "ensures"
  statementHash := "103288749bf2bb99"
}
@[vrml_obligation] theorem ensures_4
    (candidate : Int)
    (factor : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 candidate)
    (requires_1 : 1 < candidate)
    (loop_0_exit_0 : Vermilion.inUnsignedRange 64 factor)
    (loop_0_exit_1 : 1 < factor)
    (loop_0_exit_2 : (∀ (smallerfactor : Int), ((0 ≤ smallerfactor) → (((1 < smallerfactor) ∧ (smallerfactor < factor)) → (¬ primes_exec.divides smallerfactor candidate)))))
    (loop_0_exit_3 : (¬ (factor < candidate))) :
    True ↔ primes_exec.is_prime candidate := by
  vrml [primes_exec.divides, primes_exec.is_prime]
-- vrml:end primes_exec.test_prime.ensures_4

end primes_exec.test_prime

