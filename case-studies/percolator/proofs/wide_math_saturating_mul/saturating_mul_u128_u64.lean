import Vermilion.Obligations
import wide_math_saturating_mul.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace wide_math_saturating_mul.saturating_mul_u128_u64

-- vrml:begin wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_0 a0b46703a21a1899
/--
Generated VC `wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_0`.

- Rust source: `case-studies/percolator/wide_math_saturating_mul.rs:14:9-15:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_0`
- Statement hash: `a0b46703a21a1899`
-/
def ensures_0_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_saturating_mul.rs"
  startLine := 14
  startColumn := 9
  endLine := 15
  endColumn := 53
  assertId := "0_0"
  functionName := "wide_math_saturating_mul.saturating_mul_u128_u64"
  kind := "ensures"
  statementHash := "a0b46703a21a1899"
}
@[vrml_obligation] theorem ensures_0_0
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (branch_0 : (a = 0) ∨ (b = 0)) :
    ((a * b) ≤ 340282366920938463463374607431768211455) → (0 = (a * b)) := by
  vrml
-- vrml:end wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_0

-- vrml:begin wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_1 5940252210f1943b
/--
Generated VC `wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_1`.

- Rust source: `case-studies/percolator/wide_math_saturating_mul.rs:16:9-17:32`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `0_1`
- Statement hash: `5940252210f1943b`
-/
def ensures_0_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_saturating_mul.rs"
  startLine := 16
  startColumn := 9
  endLine := 17
  endColumn := 32
  assertId := "0_1"
  functionName := "wide_math_saturating_mul.saturating_mul_u128_u64"
  kind := "ensures"
  statementHash := "5940252210f1943b"
}
@[vrml_obligation] theorem ensures_0_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (branch_0 : (a = 0) ∨ (b = 0)) :
    ((a * b) > 340282366920938463463374607431768211455) → (0 = 340282366920938463463374607431768211455) := by
  vrml
-- vrml:end wide_math_saturating_mul.saturating_mul_u128_u64.ensures_0_1

-- vrml:begin wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_0 0e9386d44a2a23bc
/--
Generated VC `wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_0`.

- Rust source: `case-studies/percolator/wide_math_saturating_mul.rs:14:9-15:53`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_0`
- Statement hash: `0e9386d44a2a23bc`
-/
def ensures_3_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_saturating_mul.rs"
  startLine := 14
  startColumn := 9
  endLine := 15
  endColumn := 53
  assertId := "3_0"
  functionName := "wide_math_saturating_mul.saturating_mul_u128_u64"
  kind := "ensures"
  statementHash := "0e9386d44a2a23bc"
}
@[vrml_obligation] theorem ensures_3_0
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (then_0_assume_3 : ((a = 0) ∨ (b = 0)) → False)
    (then_0_assume_4 : ((a = 0) ∨ (b = 0)) → False)
    (assume_4 : Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))) 340282366920938463463374607431768211455)) :
    ((a * b) ≤ 340282366920938463463374607431768211455) → ((Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))) 340282366920938463463374607431768211455) = (a * b)) := by
  -- Interactive discharge (restored after the #18 constructor
  -- type-ascription made `Option.None`'s value type explicit — the
  -- statement text changed, the reasoning did not).
  intro hproduct
  simp only [Vermilion.inUnsignedRange] at requires_0 requires_1
  have hbmod : b % 340282366920938463463374607431768211456 = b :=
    Int.emod_eq_of_lt (by omega) (by omega)
  have hnonneg : 0 ≤ a * b := mul_nonneg requires_0.1 requires_1.1
  have habmod : (a * b) % 340282366920938463463374607431768211456 = a * b :=
    Int.emod_eq_of_lt hnonneg (by omega)
  have hnooverflow : ¬ a * b > 340282366920938463463374607431768211455 := by
    omega
  rw [hbmod]
  simp [Vermilion.iteP, hnooverflow, habmod]
-- vrml:end wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_0

-- vrml:begin wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_1 cc9b69aa01b8eade
/--
Generated VC `wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_1`.

- Rust source: `case-studies/percolator/wide_math_saturating_mul.rs:16:9-17:32`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `3_1`
- Statement hash: `cc9b69aa01b8eade`
-/
def ensures_3_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/wide_math_saturating_mul.rs"
  startLine := 16
  startColumn := 9
  endLine := 17
  endColumn := 32
  assertId := "3_1"
  functionName := "wide_math_saturating_mul.saturating_mul_u128_u64"
  kind := "ensures"
  statementHash := "cc9b69aa01b8eade"
}
@[vrml_obligation] theorem ensures_3_1
    (a : Int)
    (b : Int)
    (requires_0 : Vermilion.inUnsignedRange 128 a)
    (requires_1 : Vermilion.inUnsignedRange 64 b)
    (then_0_assume_3 : ((a = 0) ∨ (b = 0)) → False)
    (then_0_assume_4 : ((a = 0) ∨ (b = 0)) → False)
    (assume_4 : Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))))
    (assume_5 : Vermilion.inUnsignedRange 128 (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))) 340282366920938463463374607431768211455)) :
    ((a * b) > 340282366920938463463374607431768211455) → ((Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.option.Option.get_Some__0 (Vermilion.iteP ((a * (b % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((a * (b % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))) 340282366920938463463374607431768211455) = 340282366920938463463374607431768211455) := by
  vrml
-- vrml:end wide_math_saturating_mul.saturating_mul_u128_u64.ensures_3_1

end wide_math_saturating_mul.saturating_mul_u128_u64

