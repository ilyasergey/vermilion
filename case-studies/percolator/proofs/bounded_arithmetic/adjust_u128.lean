import Vermilion.Obligations
import bounded_arithmetic.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace bounded_arithmetic.adjust_u128

-- vrml:begin bounded_arithmetic.adjust_u128.assert_0 ce56f0e34261e189
/--
Generated VC `bounded_arithmetic.adjust_u128.assert_0`.

- Rust source: `case-studies/percolator/bounded_arithmetic.rs:40:26-40:35`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `0`
- Statement hash: `ce56f0e34261e189`
-/
def assert_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/bounded_arithmetic.rs"
  startLine := 40
  startColumn := 26
  endLine := 40
  endColumn := 35
  assertId := "0"
  functionName := "bounded_arithmetic.adjust_u128"
  kind := "assert"
  statementHash := "ce56f0e34261e189"
}
@[vrml_obligation] theorem assert_0
    (current : Int)
    (old : Int)
    (new : Int)
    (tmp_ : (core.result.Result Int bounded_arithmetic.V16Error))
    (requires_0 : Vermilion.inUnsignedRange 128 current)
    (requires_1 : Vermilion.inUnsignedRange 128 old)
    (requires_2 : Vermilion.inUnsignedRange 128 new)
    (branch_0 : new ≥ old) :
    Vermilion.inUnsignedRange 128 (new - old) := by
  vrml
-- vrml:end bounded_arithmetic.adjust_u128.assert_0

-- vrml:begin bounded_arithmetic.adjust_u128.assert_3 892d60ad940f56a3
/--
Generated VC `bounded_arithmetic.adjust_u128.assert_3`.

- Rust source: `case-studies/percolator/bounded_arithmetic.rs:44:26-44:35`
- Rust/SST construct: possible arithmetic underflow/overflow
- AssertId: `3`
- Statement hash: `892d60ad940f56a3`
-/
def assert_3_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/bounded_arithmetic.rs"
  startLine := 44
  startColumn := 26
  endLine := 44
  endColumn := 35
  assertId := "3"
  functionName := "bounded_arithmetic.adjust_u128"
  kind := "assert"
  statementHash := "892d60ad940f56a3"
}
@[vrml_obligation] theorem assert_3
    (current : Int)
    (old : Int)
    (new : Int)
    (tmp_ : (core.result.Result Int bounded_arithmetic.V16Error))
    (requires_0 : Vermilion.inUnsignedRange 128 current)
    (requires_1 : Vermilion.inUnsignedRange 128 old)
    (requires_2 : Vermilion.inUnsignedRange 128 new)
    (branch_0 : (¬ (new ≥ old))) :
    Vermilion.inUnsignedRange 128 (old - new) := by
  vrml
-- vrml:end bounded_arithmetic.adjust_u128.assert_3

-- vrml:begin bounded_arithmetic.adjust_u128.ensures_6 1416675646c1b3d5
/--
Generated VC `bounded_arithmetic.adjust_u128.ensures_6`.

- Rust source: `case-studies/percolator/bounded_arithmetic.rs:32:13-32:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `6`
- Statement hash: `1416675646c1b3d5`
-/
def ensures_6_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/percolator/bounded_arithmetic.rs"
  startLine := 32
  startColumn := 13
  endLine := 32
  endColumn := 22
  assertId := "6"
  functionName := "bounded_arithmetic.adjust_u128"
  kind := "ensures"
  statementHash := "1416675646c1b3d5"
}
@[vrml_obligation] theorem ensures_6
    (current : Int)
    (old : Int)
    (new : Int)
    (tmp_ : (core.result.Result Int bounded_arithmetic.V16Error))
    (requires_0 : Vermilion.inUnsignedRange 128 current)
    (requires_1 : Vermilion.inUnsignedRange 128 old)
    (requires_2 : Vermilion.inUnsignedRange 128 new)
    (then_0_assert_0 : (new ≥ old) → Vermilion.inUnsignedRange 128 (new - old))
    (then_0_assume_5 : (new ≥ old) → Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 (Vermilion.iteP ((current + ((new - old) % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current + ((new - old) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))))
    (then_0_assume_6 : (new ≥ old) → Vermilion.inUnsignedRange 128 (core.result.Result.get_Ok__0 (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((current + ((new - old) % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current + ((new - old) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.result.Result.Ok (E := bounded_arithmetic.V16Error) (core.option.Option.get_Some__0 (Vermilion.iteP ((current + ((new - old) % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current + ((new - old) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))))) (core.result.Result.Err (T := Int) bounded_arithmetic.V16Error.ArithmeticOverflow))))
    (then_0_assume_7 : (new ≥ old) → (tmp_ = (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((current + ((new - old) % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current + ((new - old) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.result.Result.Ok (E := bounded_arithmetic.V16Error) (core.option.Option.get_Some__0 (Vermilion.iteP ((current + ((new - old) % 340282366920938463463374607431768211456)) > 340282366920938463463374607431768211455) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current + ((new - old) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))))) (core.result.Result.Err (T := Int) bounded_arithmetic.V16Error.ArithmeticOverflow))))
    (else_0_assert_3 : (¬ (new ≥ old)) → Vermilion.inUnsignedRange 128 (old - new))
    (else_0_assume_5 : (¬ (new ≥ old)) → Vermilion.inUnsignedRange 128 (core.option.Option.get_Some__0 (Vermilion.iteP ((current - ((old - new) % 340282366920938463463374607431768211456)) < 0) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current - ((old - new) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456)))))
    (else_0_assume_6 : (¬ (new ≥ old)) → Vermilion.inUnsignedRange 128 (core.result.Result.get_Ok__0 (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((current - ((old - new) % 340282366920938463463374607431768211456)) < 0) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current - ((old - new) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.result.Result.Ok (E := bounded_arithmetic.V16Error) (core.option.Option.get_Some__0 (Vermilion.iteP ((current - ((old - new) % 340282366920938463463374607431768211456)) < 0) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current - ((old - new) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))))) (core.result.Result.Err (T := Int) bounded_arithmetic.V16Error.CounterUnderflow))))
    (else_0_assume_7 : (¬ (new ≥ old)) → (tmp_ = (Vermilion.iteP (core.option.Option.is_Some (Vermilion.iteP ((current - ((old - new) % 340282366920938463463374607431768211456)) < 0) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current - ((old - new) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))) ∧ True) (core.result.Result.Ok (E := bounded_arithmetic.V16Error) (core.option.Option.get_Some__0 (Vermilion.iteP ((current - ((old - new) % 340282366920938463463374607431768211456)) < 0) (core.option.Option.None (V := Int)) (core.option.Option.Some ((current - ((old - new) % 340282366920938463463374607431768211456)) % 340282366920938463463374607431768211456))))) (core.result.Result.Err (T := Int) bounded_arithmetic.V16Error.CounterUnderflow))))
    (assume_11 : Vermilion.inUnsignedRange 128 (core.result.Result.get_Ok__0 tmp_)) :
    ((core.result.Result.is_Ok tmp_ ∧ True) → ((core.result.Result.get_Ok__0 tmp_ + old) = (current + new))) ∧ ((¬ (core.result.Result.is_Ok tmp_ ∧ True)) → (((core.result.Result.is_Err tmp_ ∧ bounded_arithmetic.V16Error.is_ArithmeticOverflow (core.result.Result.get_Err__0 tmp_)) → (new ≥ old)) ∧ ((¬ (core.result.Result.is_Err tmp_ ∧ bounded_arithmetic.V16Error.is_ArithmeticOverflow (core.result.Result.get_Err__0 tmp_))) → (((core.result.Result.is_Err tmp_ ∧ bounded_arithmetic.V16Error.is_CounterUnderflow (core.result.Result.get_Err__0 tmp_)) → (new < old)) ∧ ((¬ (core.result.Result.is_Err tmp_ ∧ bounded_arithmetic.V16Error.is_CounterUnderflow (core.result.Result.get_Err__0 tmp_))) → False))))) := by
  vrml
-- vrml:end bounded_arithmetic.adjust_u128.ensures_6

end bounded_arithmetic.adjust_u128

