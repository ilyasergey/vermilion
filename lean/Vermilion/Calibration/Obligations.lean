import Vermilion.Prelude
import Mathlib.Tactic
import Smt

namespace Vermilion.Calibration

/-! M0 propositions, kept proof-free so each tactic can be measured independently. -/

def straightLine01 : Prop := ∀ x : Int, -16 ≤ x → x < 16 →
  let x2 := x + x
  let x4 := x2 + x2
  x4 + x4 = 8 * x

def straightLine02 : Prop := ∀ x y : Int, x ≤ y → y ≤ x + 10 → y - x ≤ 10

def straightLine03 : Prop := ∀ x y : Int,
  (if x ≤ y then x else y) ≤ x ∧ (if x ≤ y then x else y) ≤ y

def straightLine04 : Prop := ∀ old final delta : Int,
  final = old + delta → delta ≥ 0 → final ≥ old

def straightLine05 : Prop := ∀ a b c : Int,
  a = b + 1 → b = c + 1 → a = c + 2

def loop01 : Prop := ∀ i n sum : Int,
  0 ≤ i → i < n → sum = i * (i - 1) / 2 →
  sum + i = (i + 1) * i / 2

def loop02 : Prop := ∀ i n : Int, 0 ≤ i → i < n → 0 ≤ i + 1 ∧ i + 1 ≤ n

def loop03 : Prop := ∀ i n bound : Int,
  0 ≤ i → i < n → n ≤ bound → i + 1 ≤ bound

def loop04 : Prop := ∀ i n acc x : Int,
  0 ≤ i → i < n → acc ≤ i * x → 0 ≤ x → acc + x ≤ (i + 1) * x

def recursion01 : Prop := ∀ n : Nat, n ≠ 0 → n - 1 < n

def recursion02 : Prop := ∀ n t : Nat,
  t = n * (n + 1) / 2 → t + (n + 1) = (n + 1) * (n + 2) / 2

def recursion03 : Prop := ∀ i j ti tj : Int,
  i ≤ j - 1 → ti ≤ tj → tj ≤ tj + j → ti ≤ tj + j

def quantifier01 : Prop := ∀ (p q : Int → Prop),
  (∀ x, p x → q x) → (∀ x, p x) → ∀ x, q x

def quantifier02 : Prop := ∀ (m : Int → Int) k v,
  (fun k' => if k' = k then v else m k') k = v

def quantifier03 : Prop := ∀ (m : Int → Int) k₁ k₂ v,
  k₁ ≠ k₂ → (fun k' => if k' = k₁ then v else m k') k₂ = m k₂

def quantifier04 : Prop := ∀ (r : Int → Int → Prop),
  (∀ x, r x x) → (∀ x y z, r x y → r y z → r x z) →
  ∀ x y, r x y → r y x → r x x

def overflow01 : Prop := ∀ x : Int,
  -16 ≤ x → x < 16 → inSignedRange 8 (8 * x)

def overflow02 : Prop := ∀ x y : Int,
  inUnsignedRange 8 x → inUnsignedRange 8 y → x + y < 256 →
  inUnsignedRange 8 (x + y)

def collection01 : Prop := ∀ (xs : List Int) x,
  (xs ++ [x]).getLast? = some x

def collection02 : Prop := ∀ (m : Map Int Int) k v,
  (Map.insert m k v).index k = v

end Vermilion.Calibration
