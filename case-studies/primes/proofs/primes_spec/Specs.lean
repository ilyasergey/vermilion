import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec primes_spec.divides case-studies/primes/primes_spec.rs:11:6
noncomputable def primes_spec.divides (factor : Int) (candidate : Int) : Prop :=
  (Vermilion.emod candidate factor) = 0

-- vrml:spec primes_spec.is_prime case-studies/primes/primes_spec.rs:18:6
def primes_spec.is_prime (candidate : Int) : Prop :=
  (1 < candidate) ∧ (∀ (factor : Int), ((0 ≤ factor) → (((1 < factor) ∧ (factor < candidate)) → (¬ primes_spec.divides factor candidate))))

