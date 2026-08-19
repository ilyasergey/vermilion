import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec primes_exec.divides case-studies/primes/primes_exec.rs:12:6
noncomputable def primes_exec.divides (factor : Int) (candidate : Int) : Prop :=
  (Vermilion.emod candidate factor) = 0

-- vrml:spec primes_exec.is_prime case-studies/primes/primes_exec.rs:19:6
def primes_exec.is_prime (candidate : Int) : Prop :=
  (1 < candidate) ∧ (∀ (factor : Int), ((0 ≤ factor) → (((1 < factor) ∧ (factor < candidate)) → (¬ primes_exec.divides factor candidate))))

