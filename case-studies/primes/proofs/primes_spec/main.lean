import Vermilion.Obligations
import primes_spec.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace primes_spec.main

-- vrml:begin primes_spec.main.assert_0 2a07b2ac60604f9f
/--
Generated VC `primes_spec.main.assert_0`.

- Rust source: `case-studies/primes/primes_spec.rs:24:12-24:24`
- Rust/SST construct: Rust source assertion
- AssertId: `0`
- Statement hash: `2a07b2ac60604f9f`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 24
  startColumn := 12
  endLine := 24
  endColumn := 24
  assertId := "0"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "2a07b2ac60604f9f"
}
@[vrml_obligation] theorem assert_0
    (no_param : Int) :
    (¬ primes_spec.is_prime 0) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_0

-- vrml:begin primes_spec.main.assert_1 b7fea77db05ef083
/--
Generated VC `primes_spec.main.assert_1`.

- Rust source: `case-studies/primes/primes_spec.rs:25:12-25:24`
- Rust/SST construct: Rust source assertion
- AssertId: `1`
- Statement hash: `b7fea77db05ef083`
-/
def assert_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 25
  startColumn := 12
  endLine := 25
  endColumn := 24
  assertId := "1"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "b7fea77db05ef083"
}
@[vrml_obligation] theorem assert_1
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0)) :
    (¬ primes_spec.is_prime 1) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_1

-- vrml:begin primes_spec.main.assert_2 4aef36ac1d7eb50c
/--
Generated VC `primes_spec.main.assert_2`.

- Rust source: `case-studies/primes/primes_spec.rs:26:12-26:23`
- Rust/SST construct: Rust source assertion
- AssertId: `2`
- Statement hash: `4aef36ac1d7eb50c`
-/
def assert_2_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 26
  startColumn := 12
  endLine := 26
  endColumn := 23
  assertId := "2"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "4aef36ac1d7eb50c"
}
@[vrml_obligation] theorem assert_2
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1)) :
    primes_spec.is_prime 2 := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_2

-- vrml:begin primes_spec.main.assert_3 832b258fe96e0e8b
/--
Generated VC `primes_spec.main.assert_3`.

- Rust source: `case-studies/primes/primes_spec.rs:27:12-27:23`
- Rust/SST construct: Rust source assertion
- AssertId: `3`
- Statement hash: `832b258fe96e0e8b`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 27
  startColumn := 12
  endLine := 27
  endColumn := 23
  assertId := "3"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "832b258fe96e0e8b"
}
@[vrml_obligation] theorem assert_3
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2) :
    primes_spec.is_prime 3 := by
  simp only [primes_spec.is_prime, primes_spec.divides]
  refine ⟨by omega, fun factor _ hf => ?_⟩
  have h2 : factor = 2 := by omega
  subst h2
  rw [Vermilion.emod_of_ne_zero 3 (by norm_num)]
  norm_num
-- vrml:end primes_spec.main.assert_3

-- vrml:begin primes_spec.main.assert_4 8b2b35a726366052
/--
Generated VC `primes_spec.main.assert_4`.

- Rust source: `case-studies/primes/primes_spec.rs:28:12-28:25`
- Rust/SST construct: Rust source assertion
- AssertId: `4`
- Statement hash: `8b2b35a726366052`
-/
def assert_4_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 28
  startColumn := 12
  endLine := 28
  endColumn := 25
  assertId := "4"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "8b2b35a726366052"
}
@[vrml_obligation] theorem assert_4
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3) :
    primes_spec.divides 2 6 := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_4

-- vrml:begin primes_spec.main.assert_5 7684e4cb033b50eb
/--
Generated VC `primes_spec.main.assert_5`.

- Rust source: `case-studies/primes/primes_spec.rs:29:12-29:24`
- Rust/SST construct: Rust source assertion
- AssertId: `5`
- Statement hash: `7684e4cb033b50eb`
-/
def assert_5_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 29
  startColumn := 12
  endLine := 29
  endColumn := 24
  assertId := "5"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "7684e4cb033b50eb"
}
@[vrml_obligation] theorem assert_5
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6) :
    (¬ primes_spec.is_prime 6) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_5

-- vrml:begin primes_spec.main.assert_6 378a2325ba14f640
/--
Generated VC `primes_spec.main.assert_6`.

- Rust source: `case-studies/primes/primes_spec.rs:37:20-37:42`
- Rust/SST construct: Rust source assertion
- AssertId: `6`
- Statement hash: `378a2325ba14f640`
-/
def assert_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 37
  startColumn := 20
  endLine := 37
  endColumn := 42
  assertId := "6"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "378a2325ba14f640"
}
@[vrml_obligation] theorem assert_6
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7)) :
    (¬ primes_spec.divides 2 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_6

-- vrml:begin primes_spec.main.assert_7 b84996fddc250851
/--
Generated VC `primes_spec.main.assert_7`.

- Rust source: `case-studies/primes/primes_spec.rs:38:20-38:42`
- Rust/SST construct: Rust source assertion
- AssertId: `7`
- Statement hash: `b84996fddc250851`
-/
def assert_7_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 38
  startColumn := 20
  endLine := 38
  endColumn := 42
  assertId := "7"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "b84996fddc250851"
}
@[vrml_obligation] theorem assert_7
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7))
    (assert_6 : (¬ primes_spec.divides 2 7)) :
    (¬ primes_spec.divides 3 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_7

-- vrml:begin primes_spec.main.assert_8 39b358e5afe8b1ca
/--
Generated VC `primes_spec.main.assert_8`.

- Rust source: `case-studies/primes/primes_spec.rs:39:20-39:42`
- Rust/SST construct: Rust source assertion
- AssertId: `8`
- Statement hash: `39b358e5afe8b1ca`
-/
def assert_8_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 39
  startColumn := 20
  endLine := 39
  endColumn := 42
  assertId := "8"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "39b358e5afe8b1ca"
}
@[vrml_obligation] theorem assert_8
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7))
    (assert_6 : (¬ primes_spec.divides 2 7))
    (assert_7 : (¬ primes_spec.divides 3 7)) :
    (¬ primes_spec.divides 4 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_8

-- vrml:begin primes_spec.main.assert_9 a86aa001ade7b76f
/--
Generated VC `primes_spec.main.assert_9`.

- Rust source: `case-studies/primes/primes_spec.rs:40:20-40:42`
- Rust/SST construct: Rust source assertion
- AssertId: `9`
- Statement hash: `a86aa001ade7b76f`
-/
def assert_9_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 40
  startColumn := 20
  endLine := 40
  endColumn := 42
  assertId := "9"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "a86aa001ade7b76f"
}
@[vrml_obligation] theorem assert_9
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7))
    (assert_6 : (¬ primes_spec.divides 2 7))
    (assert_7 : (¬ primes_spec.divides 3 7))
    (assert_8 : (¬ primes_spec.divides 4 7)) :
    (¬ primes_spec.divides 5 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_9

-- vrml:begin primes_spec.main.assert_10 bce1e2393a9283fc
/--
Generated VC `primes_spec.main.assert_10`.

- Rust source: `case-studies/primes/primes_spec.rs:41:20-41:42`
- Rust/SST construct: Rust source assertion
- AssertId: `10`
- Statement hash: `bce1e2393a9283fc`
-/
def assert_10_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 41
  startColumn := 20
  endLine := 41
  endColumn := 42
  assertId := "10"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "bce1e2393a9283fc"
}
@[vrml_obligation] theorem assert_10
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7))
    (assert_6 : (¬ primes_spec.divides 2 7))
    (assert_7 : (¬ primes_spec.divides 3 7))
    (assert_8 : (¬ primes_spec.divides 4 7))
    (assert_9 : (¬ primes_spec.divides 5 7)) :
    (¬ primes_spec.divides 6 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_10

-- vrml:begin primes_spec.main.assert_11 531faa50abd9067a
/--
Generated VC `primes_spec.main.assert_11`.

- Rust source: `case-studies/primes/primes_spec.rs:36:67-36:94`
- Rust/SST construct: Rust source assertion
- AssertId: `11`
- Statement hash: `531faa50abd9067a`
-/
def assert_11_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 36
  startColumn := 67
  endLine := 36
  endColumn := 94
  assertId := "11"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "531faa50abd9067a"
}
@[vrml_obligation] theorem assert_11
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : 0 ≤ factor)
    (assume_7 : (1 < factor) ∧ (factor < 7))
    (assert_6 : (¬ primes_spec.divides 2 7))
    (assert_7 : (¬ primes_spec.divides 3 7))
    (assert_8 : (¬ primes_spec.divides 4 7))
    (assert_9 : (¬ primes_spec.divides 5 7))
    (assert_10 : (¬ primes_spec.divides 6 7)) :
    (¬ primes_spec.divides factor 7) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_11

-- vrml:begin primes_spec.main.assert_12 8a27746467ff5e83
/--
Generated VC `primes_spec.main.assert_12`.

- Rust source: `case-studies/primes/primes_spec.rs:44:12-44:23`
- Rust/SST construct: Rust source assertion
- AssertId: `12`
- Statement hash: `8a27746467ff5e83`
- Triggers (Verus, for future e-matching): ⟨primes_spec.divides factor 7⟩
-/
def assert_12_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 44
  startColumn := 12
  endLine := 44
  endColumn := 23
  assertId := "12"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "8a27746467ff5e83"
}
@[vrml_obligation] theorem assert_12
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : (∀ (factor : Int), ((0 ≤ factor) → (((1 < factor) ∧ (factor < 7)) → (¬ primes_spec.divides factor 7))))) :
    primes_spec.is_prime 7 := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_12

-- vrml:begin primes_spec.main.assert_13 63e6501fdf69b55c
/--
Generated VC `primes_spec.main.assert_13`.

- Rust source: `case-studies/primes/primes_spec.rs:45:12-45:25`
- Rust/SST construct: Rust source assertion
- AssertId: `13`
- Statement hash: `63e6501fdf69b55c`
- Triggers (Verus, for future e-matching): ⟨primes_spec.divides factor 7⟩
-/
def assert_13_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 45
  startColumn := 12
  endLine := 45
  endColumn := 25
  assertId := "13"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "63e6501fdf69b55c"
}
@[vrml_obligation] theorem assert_13
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : (∀ (factor : Int), ((0 ≤ factor) → (((1 < factor) ∧ (factor < 7)) → (¬ primes_spec.divides factor 7)))))
    (assert_12 : primes_spec.is_prime 7) :
    primes_spec.divides 3 9 := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_13

-- vrml:begin primes_spec.main.assert_14 ed1851cbe92e95dc
/--
Generated VC `primes_spec.main.assert_14`.

- Rust source: `case-studies/primes/primes_spec.rs:46:12-46:24`
- Rust/SST construct: Rust source assertion
- AssertId: `14`
- Statement hash: `ed1851cbe92e95dc`
- Triggers (Verus, for future e-matching): ⟨primes_spec.divides factor 7⟩
-/
def assert_14_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/primes/primes_spec.rs"
  startLine := 46
  startColumn := 12
  endLine := 46
  endColumn := 24
  assertId := "14"
  functionName := "primes_spec.main"
  kind := "assert"
  statementHash := "ed1851cbe92e95dc"
}
@[vrml_obligation] theorem assert_14
    (no_param : Int)
    (assert_0 : (¬ primes_spec.is_prime 0))
    (assert_1 : (¬ primes_spec.is_prime 1))
    (assert_2 : primes_spec.is_prime 2)
    (assert_3 : primes_spec.is_prime 3)
    (assert_4 : primes_spec.divides 2 6)
    (assert_5 : (¬ primes_spec.is_prime 6))
    (assume_6 : (∀ (factor : Int), ((0 ≤ factor) → (((1 < factor) ∧ (factor < 7)) → (¬ primes_spec.divides factor 7)))))
    (assert_12 : primes_spec.is_prime 7)
    (assert_13 : primes_spec.divides 3 9) :
    (¬ primes_spec.is_prime 9) := by
  vrml [primes_spec.divides, primes_spec.is_prime]
-- vrml:end primes_spec.main.assert_14

end primes_spec.main

