import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

inductive keccak_iota.StateArray where
  | StateArray (_0 : (Vermilion.Seq Int))
deriving Inhabited

@[simp, grind] def keccak_iota.StateArray.is_StateArray : keccak_iota.StateArray → Prop
  | .StateArray _ => True
instance (x : keccak_iota.StateArray) : Decidable (keccak_iota.StateArray.is_StateArray x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def keccak_iota.StateArray.get_StateArray__0 : keccak_iota.StateArray → (Vermilion.Seq Int)
  | .StateArray _0 => _0

inductive vermilion.tuple_2 (T_0 : Type) (T_1 : Type) where
  | tuple_2 (_0 : T_0) (_1 : T_1)
deriving Inhabited

@[simp, grind] def vermilion.tuple_2.is_tuple_2 {T_0 : Type} {T_1 : Type} : (vermilion.tuple_2 T_0 T_1) → Prop
  | .tuple_2 _ _ => True
instance {T_0 : Type} {T_1 : Type} (x : (vermilion.tuple_2 T_0 T_1)) : Decidable (vermilion.tuple_2.is_tuple_2 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def vermilion.tuple_2.get_tuple_2__0 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_0
  | .tuple_2 _0 _ => _0

@[simp, grind] def vermilion.tuple_2.get_tuple_2__1 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_1
  | .tuple_2 _ _1 => _1

-- vrml:spec keccak_iota.IOTA_RC case-studies/aeneas/probes/keccak_iota.rs:47:1
def keccak_iota.IOTA_RC : (Vermilion.Seq Int) :=
  Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 32898) 9223372036854808714) 9223372039002292224) 32907) 2147483649) 9223372039002292353) 9223372036854808585) 138) 136) 2147516425) 2147483658) 2147516555) 9223372036854775947) 9223372036854808713) 9223372036854808579) 9223372036854808578) 9223372036854775936) 32778) 9223372039002259466) 9223372039002292353) 9223372036854808704) 2147483649) 9223372039002292232

