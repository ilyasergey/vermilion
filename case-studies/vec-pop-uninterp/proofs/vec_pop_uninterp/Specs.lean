import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive core.option.Option (V : Type) where
  | None
  | Some (_0 : V)
deriving Inhabited

@[simp, grind] def core.option.Option.is_None {V : Type} : (core.option.Option V) → Prop
  | .None => True
  | .Some _ => False
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_None x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.is_Some {V : Type} : (core.option.Option V) → Prop
  | .None => False
  | .Some _ => True
instance {V : Type} (x : (core.option.Option V)) : Decidable (core.option.Option.is_Some x) := by
  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)

@[simp, grind] def core.option.Option.get_Some__0 {V : Type} [Inhabited V] : (core.option.Option V) → V
  | .None => default
  | .Some _0 => _0

-- vrml:spec vec_pop_uninterp.uninterp_fn case-studies/vec-pop-uninterp/vec_pop_uninterp.rs:8:15
noncomputable opaque vec_pop_uninterp.uninterp_fn (x : Int) : Prop

