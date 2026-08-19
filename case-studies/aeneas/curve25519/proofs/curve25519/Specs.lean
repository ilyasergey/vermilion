import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive curve25519.Scalar52 where
  | Scalar52 (_0 : (Vermilion.Seq Int))
deriving Inhabited

@[simp, grind] def curve25519.Scalar52.is_Scalar52 : curve25519.Scalar52 → Prop
  | .Scalar52 _ => True
instance (x : curve25519.Scalar52) : Decidable (curve25519.Scalar52.is_Scalar52 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def curve25519.Scalar52.get_Scalar52__0 : curve25519.Scalar52 → (Vermilion.Seq Int)
  | .Scalar52 _0 => _0

-- vrml:spec curve25519.impl__0.index_req case-studies/aeneas/curve25519/curve25519.rs:25:15
def curve25519.impl__0.index_req (self : curve25519.Scalar52) (i : Int) : Prop :=
  i < 5

