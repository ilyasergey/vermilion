import Vermilion.Obligations
import subtle_assumes.Specs

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

namespace subtle_assumes.swap_twice

-- vrml:begin subtle_assumes.swap_twice.ensures_2_0 9a64c9beb0f0828a
/--
Generated VC `subtle_assumes.swap_twice.ensures_2_0`.

- Rust source: `case-studies/dalek-lite/probes/subtle_assumes.rs:86:9-86:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_0`
- Statement hash: `9a64c9beb0f0828a`
-/
def ensures_2_0_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/subtle_assumes.rs"
  startLine := 86
  startColumn := 9
  endLine := 86
  endColumn := 22
  assertId := "2_0"
  functionName := "subtle_assumes.swap_twice"
  kind := "ensures"
  statementHash := "9a64c9beb0f0828a"
}
@[vrml_obligation] theorem ensures_2_0
    (x : Int)
    (y : Int)
    (c : subtle_assumes.subtle_stub.Choice)
    (tmp__post : Int)
    (tmp__post_2 : Int)
    (tmp__post_3 : Int)
    (tmp__post_4 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (assume_2 : Vermilion.inUnsignedRange 64 tmp__post)
    (assume_3 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_conditional_swap_ensures_0 : (¬ subtle_assumes.choice_is_true c) → ((tmp__post = x) ∧ (tmp__post_2 = y)))
    (call_conditional_swap_ensures_1 : subtle_assumes.choice_is_true c → ((tmp__post = y) ∧ (tmp__post_2 = x)))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_3)
    (assume_7 : Vermilion.inUnsignedRange 64 tmp__post_4)
    (call_conditional_swap_1_ensures_0 : (¬ subtle_assumes.choice_is_true c) → ((tmp__post_3 = tmp__post) ∧ (tmp__post_4 = tmp__post_2)))
    (call_conditional_swap_1_ensures_1 : subtle_assumes.choice_is_true c → ((tmp__post_3 = tmp__post_2) ∧ (tmp__post_4 = tmp__post))) :
    vermilion.tuple_2.get_tuple_2__0 (vermilion.tuple_2.tuple_2 tmp__post_3 tmp__post_4) = x := by
  vrml
-- vrml:end subtle_assumes.swap_twice.ensures_2_0

-- vrml:begin subtle_assumes.swap_twice.ensures_2_1 b3435f11309718c6
/--
Generated VC `subtle_assumes.swap_twice.ensures_2_1`.

- Rust source: `case-studies/dalek-lite/probes/subtle_assumes.rs:87:9-87:22`
- Rust/SST construct: function postcondition (`ensures`)
- AssertId: `2_1`
- Statement hash: `b3435f11309718c6`
-/
def ensures_2_1_meta : Vermilion.ObligationMeta := {
  rustFile := "case-studies/dalek-lite/probes/subtle_assumes.rs"
  startLine := 87
  startColumn := 9
  endLine := 87
  endColumn := 22
  assertId := "2_1"
  functionName := "subtle_assumes.swap_twice"
  kind := "ensures"
  statementHash := "b3435f11309718c6"
}
@[vrml_obligation] theorem ensures_2_1
    (x : Int)
    (y : Int)
    (c : subtle_assumes.subtle_stub.Choice)
    (tmp__post : Int)
    (tmp__post_2 : Int)
    (tmp__post_3 : Int)
    (tmp__post_4 : Int)
    (requires_0 : Vermilion.inUnsignedRange 64 x)
    (requires_1 : Vermilion.inUnsignedRange 64 y)
    (assume_2 : Vermilion.inUnsignedRange 64 tmp__post)
    (assume_3 : Vermilion.inUnsignedRange 64 tmp__post_2)
    (call_conditional_swap_ensures_0 : (¬ subtle_assumes.choice_is_true c) → ((tmp__post = x) ∧ (tmp__post_2 = y)))
    (call_conditional_swap_ensures_1 : subtle_assumes.choice_is_true c → ((tmp__post = y) ∧ (tmp__post_2 = x)))
    (assume_6 : Vermilion.inUnsignedRange 64 tmp__post_3)
    (assume_7 : Vermilion.inUnsignedRange 64 tmp__post_4)
    (call_conditional_swap_1_ensures_0 : (¬ subtle_assumes.choice_is_true c) → ((tmp__post_3 = tmp__post) ∧ (tmp__post_4 = tmp__post_2)))
    (call_conditional_swap_1_ensures_1 : subtle_assumes.choice_is_true c → ((tmp__post_3 = tmp__post_2) ∧ (tmp__post_4 = tmp__post))) :
    vermilion.tuple_2.get_tuple_2__1 (vermilion.tuple_2.tuple_2 tmp__post_3 tmp__post_4) = y := by
  vrml
-- vrml:end subtle_assumes.swap_twice.ensures_2_1

end subtle_assumes.swap_twice

