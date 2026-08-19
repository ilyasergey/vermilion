import Vermilion.Prelude

namespace Vermilion

/-! Initial Lean targets for VIR sequential-core types. -/

abbrev SpecInt := Int
abbrev SpecNat := Nat
abbrev MachineInt (bits : Nat) := { value : Int // inUnsignedRange bits value }

end Vermilion
