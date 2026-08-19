import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec vstd.arithmetic.power.pow vstd/arithmetic/power.rs:43:1
noncomputable opaque vstd.arithmetic.power.pow (b : Int) (e : Int) : Int

-- vrml:spec vstd.arithmetic.power2.pow2 vstd/arithmetic/power2.rs:32:1
noncomputable def vstd.arithmetic.power2.pow2 (e : Int) : Int :=
  Vermilion.natClip (vstd.arithmetic.power.pow 2 e)

-- vrml:spec montgomery_inverse_calc.montgomery_radix case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:28:1
noncomputable def montgomery_inverse_calc.montgomery_radix (no_param : Int) : Int :=
  vstd.arithmetic.power2.pow2 260

-- vrml:spec montgomery_inverse_calc.inv_montgomery_radix case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:33:1
noncomputable def montgomery_inverse_calc.inv_montgomery_radix (no_param : Int) : Int :=
  Vermilion.natClip (Vermilion.natClip (Vermilion.natClip (10269393652460441540 + Vermilion.natClip (vstd.arithmetic.power2.pow2 64 * 18097319062105074933)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 128 * 3896993926501868395)) + Vermilion.natClip (vstd.arithmetic.power2.pow2 192 * 909083665385908504))

-- vrml:spec montgomery_inverse_calc.group_order case-studies/dalek-lite/probes/montgomery_inverse_calc.rs:23:1
noncomputable def montgomery_inverse_calc.group_order (no_param : Int) : Int :=
  Vermilion.natClip (vstd.arithmetic.power2.pow2 252 + 27742317777372353535851937790883648493)

