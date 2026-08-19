import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec vstd.arithmetic.power.pow vstd/arithmetic/power.rs:43:1
noncomputable opaque vstd.arithmetic.power.pow (b : Int) (e : Int) : Int

-- vrml:spec vstd.arithmetic.power2.pow2 vstd/arithmetic/power2.rs:32:1
noncomputable def vstd.arithmetic.power2.pow2 (e : Int) : Int :=
  Vermilion.natClip (vstd.arithmetic.power.pow 2 e)

-- vrml:spec field_sqrt_choose.p case-studies/dalek-lite/probes/field_sqrt_choose.rs:21:1
noncomputable def field_sqrt_choose.p (no_param : Int) : Int :=
  Vermilion.natClip (vstd.arithmetic.power2.pow2 255 - 19)

-- vrml:spec field_sqrt_choose.field_canonical case-studies/dalek-lite/probes/field_sqrt_choose.rs:25:1
noncomputable def field_sqrt_choose.field_canonical (n : Int) : Int :=
  (Vermilion.emod n (field_sqrt_choose.p 0))

-- vrml:spec field_sqrt_choose.field_mul case-studies/dalek-lite/probes/field_sqrt_choose.rs:30:1
noncomputable def field_sqrt_choose.field_mul (a : Int) (b : Int) : Int :=
  field_sqrt_choose.field_canonical (Vermilion.natClip (a * b))

-- vrml:spec field_sqrt_choose.field_sqrt case-studies/dalek-lite/probes/field_sqrt_choose.rs:43:1
noncomputable def field_sqrt_choose.field_sqrt (a : Int) : Int :=
  Vermilion.chooseSpec (fun (y : Int) => ((0 ≤ y) ∧ ((y < field_sqrt_choose.p 0) ∧ (field_sqrt_choose.field_mul y y = field_sqrt_choose.field_canonical a))))

