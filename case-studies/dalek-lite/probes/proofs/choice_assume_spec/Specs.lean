import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive choice_assume_spec.subtle_stub.Choice where
  | Choice
deriving Inhabited

@[simp, grind] def choice_assume_spec.subtle_stub.Choice.is_Choice : choice_assume_spec.subtle_stub.Choice → Prop
  | .Choice => True
instance (x : choice_assume_spec.subtle_stub.Choice) : Decidable (choice_assume_spec.subtle_stub.Choice.is_Choice x) := by
  cases x
  exact isTrue trivial

-- vrml:spec choice_assume_spec.choice_is_true case-studies/dalek-lite/probes/choice_assume_spec.rs:45:1
noncomputable opaque choice_assume_spec.choice_is_true (c : choice_assume_spec.subtle_stub.Choice) : Prop

