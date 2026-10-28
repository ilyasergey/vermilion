import Vermilion.Ir.Render

/-!
Rendering hygiene (issue #59, keyword variant; docs/vcgen.md `(HYGIENE)`).

IR names are exact strings; `leanSegment` is not injective on them (`end`
and `end_` both render as `end_`). These checks pin the mechanism that keeps
the rendered theorem α-equivalent to the sequent: binders are renamed away
from the rendered names of the free variables of their scope, telescope
entries are renamed away from earlier entries, nothing else changes. Each
`#guard` below fails on a renderer that prints names verbatim.
-/

open Vermilion.Ir

private def subject : FunctionId := { crateName := "hygiene", modules := #[], name := "f" }

private def var (name : String) : Expr := .var name
private def lt (a b : Expr) : Expr := .binary .lt a b
private def eq (a b : Expr) : Expr := .binary .eq a b
private def le (a b : Expr) : Expr := .binary .le a b
private def conj (a b : Expr) : Expr := .binary .and a b
private def forallInt (name : String) (body : Expr) : Expr :=
  .quant true #[{ name, ty := .int }] #[] body

private def obligation (binders : Array Binder) (hypotheses : Array Hypothesis)
    (goal : Expr) : Obligation := {
  function := subject
  kind := .ensures
  assertId := "0"
  span := default
  typeParams := #[]
  binders
  hypotheses
  goal
  origin := "test"
}

/-! ### Quantifier binders versus free variables -/

-- `∀ end, 0 ≤ end ∧ end < end_` with `end_` free: a verbatim rendering
-- binds both occurrences. The binder moves; the free variable stays.
private def keywordCapture : Expr :=
  forallInt "end" (conj (le (.int 0) (var "end")) (lt (var "end") (var "end_")))

#guard keywordCapture.hygieneViolations ==
  #["binder `end` captures free `end_` (both render as `end_`)"]
#guard keywordCapture.hygienic.render ==
  "(∀ (end_1 : Int), ((0 ≤ end_1) ∧ (end_1 < end_)))"
#guard keywordCapture.hygienic.hygieneViolations.isEmpty
#guard keywordCapture.hygienic.freeVars == #["end_"]

-- Punctuation normalization collides the same way (`x-y` and `x_y`).
#guard (forallInt "x_y" (lt (var "x_y") (var "x-y"))).hygienic.render ==
  "(∀ (x_y_1 : Int), (x_y_1 < x_y))"

-- Triggers are part of the scope: the renamed binder is substituted there too.
private def withTrigger : Expr :=
  .quant true #[{ name := "end", ty := .int }]
    #[#[.apply subject #[] #[var "end"]]] (lt (var "end") (var "end_"))

#guard match withTrigger.hygienic with
  | .quant _ #[binder] #[#[.apply _ _ #[.var trigger]]] body =>
    binder.name == "end_1" && trigger == "end_1" && body == lt (var "end_1") (var "end_")
  | _ => false

-- The `char` range and clipping nodes are traversed like every other
-- operator: their operands are part of the scope.
#guard (forallInt "end" (conj (.charRange (var "end"))
    (eq (.charClip (var "end_")) (var "end")))).hygienic.render ==
  "(∀ (end_1 : Int), (Vermilion.isUnicodeScalar end_1 ∧ (Vermilion.charClip end_ = end_1)))"

-- `choose` and `lambda` binders are scopes of the same kind.
#guard (Expr.choose { name := "end", ty := .int } #[] (eq (var "end") (var "end_"))).hygienic ==
  .choose { name := "end_1", ty := .int } #[] (eq (var "end_1") (var "end_"))
#guard (Expr.lambda #[{ name := "end", ty := .int }] (eq (var "end") (var "end_"))).hygienic ==
  .lambda #[{ name := "end_1", ty := .int }] (eq (var "end_1") (var "end_"))

-- The fresh name avoids every name occurring below, bound ones included, so
-- the substitution cannot be captured by an inner binder.
private def innerTaken : Expr :=
  forallInt "end" (conj (forallInt "end_1" (lt (var "end_1") (var "end")))
    (lt (var "end") (var "end_")))

#guard innerTaken.hygienic.render ==
  "(∀ (end_2 : Int), ((∀ (end_1 : Int), (end_1 < end_2)) ∧ (end_2 < end_)))"
#guard innerTaken.hygienic.hygieneViolations.isEmpty

-- Two binders of one quantifier rendering alike are separated.
#guard (Expr.quant true #[{ name := "end", ty := .int }, { name := "end_", ty := .int }] #[]
    (lt (var "end") (var "end_"))).hygienic.render ==
  "(∀ (end_ : Int) (end__1 : Int), (end_ < end__1))"

/-! ### What must not change -/

-- Exact-name shadowing is Lean's shadowing: untouched (statement hashes of
-- ordinary programs depend on this).
private def shadowing : Expr := forallInt "i" (forallInt "i" (lt (var "i") (.int 3)))
#guard shadowing.hygienic == shadowing

private def plain : Obligation := obligation
  #[{ name := "i", ty := .int }, { name := "result", ty := .int }]
  #[{ name := "requires_0", proposition := eq (var "i") (.int 7) }]
  (forallInt "j" (lt (var "j") (var "result")))
#guard plain.hygienic == plain
#guard plain.hygieneViolations.isEmpty

-- Idempotent: a hygienic obligation is a fixed point.
#guard keywordCapture.hygienic.hygienic == keywordCapture.hygienic

/-! ### The telescope -/

-- Parameters `end` and `end_` (issue #59 at theorem level): rendered
-- verbatim, the second shadows the first in every hypothesis and the goal,
-- so `end = 1, end_ = 2 ⊢ end = 2` becomes the vacuous
-- `end_ = 1, end_ = 2 ⊢ end_ = 2`. The later entry is renamed and
-- substituted through hypotheses and goal; the earlier keeps its name.
private def paramPair : Obligation := obligation
  #[{ name := "end", ty := .int }, { name := "end_", ty := .int }]
  #[{ name := "requires_0", proposition := eq (var "end") (.int 1) },
    { name := "requires_1", proposition := eq (var "end_") (.int 2) }]
  (eq (var "end") (.int 2))

#guard paramPair.hygieneViolations ==
  #["binder `end` and binder `end_` both render as `end_`"]
#guard paramPair.hygienic.canonicalStatement ==
  "(end_ : Int) (end__1 : Int) (requires_0 : end_ = 1) (requires_1 : end__1 = 2) : end_ = 2"
#guard paramPair.hygienic.hygieneViolations.isEmpty

-- A call result named `end` after a parameter `end_`: the fresh symbol is
-- the later entry, so it is the one renamed.
private def callResult : Obligation := obligation
  #[{ name := "end_", ty := .int }, { name := "end", ty := .int }]
  #[{ name := "requires_0", proposition := eq (var "end_") (.int 3) },
    { name := "call_seven_0", proposition := eq (var "end") (.int 7) }]
  (eq (var "end") (var "end_"))

#guard callResult.hygienic.canonicalStatement ==
  "(end_ : Int) (end_1 : Int) (requires_0 : end_ = 3) (call_seven_0 : end_1 = 7) : end_1 = end_"

-- A type parameter is a telescope entry too.
private def typeParamClash : Obligation :=
  { paramPair with typeParams := #["T"], binders := #[{ name := "T", ty := .int }] }
#guard typeParamClash.hygienic.binders == #[{ name := "T_1", ty := .int }]

-- Hypothesis names are never referenced; a collision only renames the
-- hypothesis.
private def hypothesisClash : Obligation := obligation
  #[{ name := "requires_0", ty := .int }]
  #[{ name := "requires_0", proposition := eq (var "requires_0") (.int 1) }]
  (eq (var "requires_0") (.int 1))
#guard hypothesisClash.hygienic.hypotheses.map (·.name) == #["requires_0_1"]
#guard hypothesisClash.hygienic.goal == hypothesisClash.goal

-- Telescope renames reach into quantifier bodies without capture.
private def nestedTelescope : Obligation := obligation
  #[{ name := "end", ty := .int }, { name := "end_", ty := .int }]
  #[]
  (forallInt "end_1" (lt (var "end_1") (var "end_")))
#guard nestedTelescope.hygienic.goal == forallInt "end_1" (lt (var "end_1") (var "end__1"))
#guard nestedTelescope.hygienic.hygieneViolations.isEmpty
