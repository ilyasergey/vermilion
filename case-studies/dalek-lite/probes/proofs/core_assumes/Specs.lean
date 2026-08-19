import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive core.fmt.Formatter where
  | Formatter
deriving Inhabited

@[simp, grind] def core.fmt.Formatter.is_Formatter : core.fmt.Formatter → Prop
  | .Formatter => True
instance (x : core.fmt.Formatter) : Decidable (core.fmt.Formatter.is_Formatter x) := by
  cases x
  exact isTrue trivial

inductive core.result.Result (T : Type) (E : Type) where
  | Ok (_0 : T)
  | Err (_0 : E)
deriving Inhabited

@[simp, grind] def core.result.Result.is_Ok {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => True
  | .Err _ => False
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Ok x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.is_Err {T : Type} {E : Type} : (core.result.Result T E) → Prop
  | .Ok _ => False
  | .Err _ => True
instance {T : Type} {E : Type} (x : (core.result.Result T E)) : Decidable (core.result.Result.is_Err x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.result.Result.get_Ok__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → T
  | .Ok _0 => _0
  | .Err _ => default

@[simp, grind] def core.result.Result.get_Err__0 {T : Type} [Inhabited T] {E : Type} [Inhabited E] : (core.result.Result T E) → E
  | .Ok _ => default
  | .Err _0 => _0

inductive vermilion.tuple_0 where
  | tuple_0
deriving Inhabited

@[simp, grind] def vermilion.tuple_0.is_tuple_0 : vermilion.tuple_0 → Prop
  | .tuple_0 => True
instance (x : vermilion.tuple_0) : Decidable (vermilion.tuple_0.is_tuple_0 x) := by
  cases x
  exact isTrue trivial

inductive core.fmt.Error where
  | Error
deriving Inhabited

@[simp, grind] def core.fmt.Error.is_Error : core.fmt.Error → Prop
  | .Error => True
instance (x : core.fmt.Error) : Decidable (core.fmt.Error.is_Error x) := by
  cases x
  exact isTrue trivial

-- vrml:spec core_assumes.spec_state_after_hash case-studies/dalek-lite/probes/core_assumes.rs:52:1
noncomputable opaque core_assumes.spec_state_after_hash {H : Type} [Inhabited H] {T : Type} [Inhabited T] (N : Int) (initial_state : H) (bytes : (Vermilion.Seq T)) : H

