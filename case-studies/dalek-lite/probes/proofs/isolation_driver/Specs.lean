import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec isolation_driver.some_even case-studies/dalek-lite/probes/isolation_driver.rs:21:1
noncomputable def isolation_driver.some_even (no_param : Int) : Int :=
  Vermilion.chooseSpec (fun (y : Int) => ((0 ≤ y) ∧ ((y % 2) = 0)))

