import Vermilion.Ir.Ast
import Vermilion.Ir.Naming
import Vermilion.Ir.Hygiene
import Vermilion.Vstd.Registry

/-!
# VC generation

Fold the statement list of a `FunctionView` into obligations. Assumptions and
proved assertions extend the context; call preconditions and postconditions
become obligations; call results become fresh universally quantified binders
constrained by callee contracts.

Branches follow Verus's path discipline: obligations inside an arm see the
arm's path condition as a plain hypothesis; context discovered inside an arm
reaches the continuation only as `condition → fact` (respectively
`¬ condition → fact`), so join equations assumed at the end of each arm give
the continuation exactly the guarded SSA-join semantics.

The generation relation implemented here (state `⟨Γ, H, V, B, κ⟩`, the
`processStmt` transition, `generateObligations`) is specified in conventional
judgment/inference-rule form in `docs/vcgen.md` — the normative project
policy this file must follow. Any change here updates that document in the
same slice (binding agent directive: `.claude/memory/vcgen-policy-doc.md`,
referenced from `CLAUDE.md`).

TODO(vermilion, user-requested 2026-07-12): this generator is *syntactic* —
it assembles obligation statements as data and `Render` prints them. A
future milestone should give the neutral IR (and eventually the SST
fragment) a formal semantics in Lean and derive VCs foundationally (a
verified weakest-precondition construction proved sound against that
semantics), building on Loom or a similar Lean program-logic framework. The
soundness obligations that effort must discharge are enumerated in
`docs/vcgen.md`. Tracked prominently in plans/execution-plan.md and DESIGN.md.
-/

namespace Vermilion.Ir

inductive ObligationKind where
  | assert
  | callRequires
  | ensures
  | invariantEntry
  | invariantPreserve
  | invariantBreak
  deriving Repr, BEq, Inhabited

def ObligationKind.render : ObligationKind → String
  | .assert => "assert"
  | .callRequires => "call_requires"
  | .ensures => "ensures"
  | .invariantEntry => "invariant_entry"
  | .invariantPreserve => "invariant_preserve"
  | .invariantBreak => "invariant_break"

structure Hypothesis where
  name : String
  proposition : Expr
  deriving Repr, BEq, Inhabited

structure Obligation where
  function : FunctionId
  kind : ObligationKind
  assertId : String
  span : Span
  /-- Type parameters of the enclosing function, emitted as `(T : Type)
  [Inhabited T]` binders before the value binders. -/
  typeParams : Array String
  binders : Array Binder
  hypotheses : Array Hypothesis
  goal : Expr
  origin : String
  /-- Spec-function definitions visible to the machine attempt at this
  program point, with their reveal rounds (`vrml [names…]` for
  non-recursive definitions; bounded rewriting for recursive ones). -/
  unfolds : Array (String × Nat) := #[]
  /-- Ladder-hint lemma names in scope (from `broadcast` statements),
  added to the `vrml` simp set. -/
  hints : Array String := #[]
  deriving Repr, BEq, Inhabited

/-- One argument to a generated Lean typeclass target. Keeping type and term
arguments structured lets evidence producers grow beyond `Decidable` without
smuggling Lean source strings through the generator. -/
inductive EvidenceArg where
  | type (ty : Ty)
  | term (value : Expr)
  deriving Repr, BEq, Inhabited

/-- A Lean class application required by rendered declarations. The class
name is a sequence of identifier segments (`#["Decidable"]`,
`#["Some", "Class"]`); arguments remain typed IR nodes. -/
structure EvidenceTarget where
  className : Array String
  args : Array EvidenceArg
  deriving Repr, BEq, Inhabited

/-- A first-class, marker-delimited obligation whose result is installed as a
module-local instance before the logical VCs that consume it. Evidence goals
use the same hash/twin lifecycle as ordinary obligations but may target
`Type`, not only `Prop`. -/
structure EvidenceObligation where
  function : FunctionId
  leaf : String
  span : Span
  typeParams : Array String
  binders : Array Binder
  target : EvidenceTarget
  origin : String
  dependencies : Array String := #[]
  consumers : Array String := #[]
  deriving Repr, BEq, Inhabited

partial def Expr.constructivelyDecidable
    (propVariables : List String) : Expr → Bool
  | .tt | .ff => true
  | .var name => !propVariables.contains name
  | .not value => value.constructivelyDecidable propVariables
  | .binary op lhs rhs =>
    match op with
    | .and | .or | .implies | .iff | .niff =>
      lhs.constructivelyDecidable propVariables &&
        rhs.constructivelyDecidable propVariables
    | _ => true
  -- Variant predicates have generated `Decidable` instances.
  | .isVariant .. => true
  -- Unicode scalar membership is a finite disjunction of integer comparisons.
  | .charRange _ => true
  -- Other predicate-producing applications need evidence unless a producer
  -- can establish their class dictionaries structurally.
  | _ => false

/-- Does an expression contain an `iteP` whose proposition decision cannot be
synthesized constructively from the current telescope? Nested Prop binders
from quantifiers/lambdas are tracked as Rust-bool values too. Two consumers:
the theorem layer collects module-wide `Decidable` evidence from it
(`collectEvidenceObligations`), and `renderSpecFn` — whose definitions
PRECEDE the evidence — renders an affected definition with
`open Classical in` and `noncomputable` instead (dalek-lite DL8:
`iteP (is_negative a) …` in a spec-fn body).

With `andGuards := some f` (`f` the recursive spec fn being defined), a
conjunction whose right operand calls `f` and whose left operand is not
constructively decidable counts too: recursive spec-fn bodies render such a
short-circuit `a && b` as the dependent `if _h : a then b else False`, which
needs `Decidable a` (`Expr.callsSelf`, `SpecFn.needsAndGuardDecidable`). -/
partial def Expr.needsDecidableEvidence
    (propVariables : List String) (andGuards : Option String := none) :
    Expr → Bool
  | .ite condition thenValue elseValue =>
    !condition.constructivelyDecidable propVariables ||
      condition.needsDecidableEvidence propVariables andGuards ||
      thenValue.needsDecidableEvidence propVariables andGuards ||
      elseValue.needsDecidableEvidence propVariables andGuards
  | .binary op lhs rhs =>
    (op == .and && rhs.callsSelf andGuards &&
        !lhs.constructivelyDecidable propVariables) ||
      lhs.needsDecidableEvidence propVariables andGuards ||
      rhs.needsDecidableEvidence propVariables andGuards
  | .not value => value.needsDecidableEvidence propVariables andGuards
  | .urange _ value | .srange _ value | .charRange value
  | .natClip value | .sclip _ value | .charClip value
  | .seqLen value
  | .seqToMultiset value | .fieldOf _ _ _ value | .isVariant _ _ value =>
    value.needsDecidableEvidence propVariables andGuards
  | .seqPush lhs rhs | .seqIndex lhs rhs | .seqAdd lhs rhs
  | .seqNew lhs rhs | .bitOp _ _ _ lhs rhs =>
    lhs.needsDecidableEvidence propVariables andGuards ||
      rhs.needsDecidableEvidence propVariables andGuards
  | .seqUpdate first second third | .seqSubrange first second third =>
    first.needsDecidableEvidence propVariables andGuards ||
      second.needsDecidableEvidence propVariables andGuards ||
      third.needsDecidableEvidence propVariables andGuards
  | .vstdApply _ _ args | .coll _ args | .apply _ _ args
  | .ctor _ _ _ args =>
    args.any (Expr.needsDecidableEvidence propVariables andGuards)
  | .quant _ binders triggers body =>
    let nested := binders.foldl (fun names binder =>
      if binder.ty == .prop then binder.name :: names else names) propVariables
    triggers.any (fun group =>
        group.any (Expr.needsDecidableEvidence nested andGuards)) ||
      body.needsDecidableEvidence nested andGuards
  | .lambda binders body =>
    let nested := binders.foldl (fun names binder =>
      if binder.ty == .prop then binder.name :: names else names) propVariables
    body.needsDecidableEvidence nested andGuards
  | .callFn callee args =>
    callee.needsDecidableEvidence propVariables andGuards ||
      args.any (Expr.needsDecidableEvidence propVariables andGuards)
  | _ => false

private def Obligation.needsDecidableEvidence (obligation : Obligation) : Bool :=
  let propVariables := obligation.binders.foldl (fun names binder =>
    if binder.ty == .prop then binder.name :: names else names) []
  obligation.goal.needsDecidableEvidence propVariables ||
    obligation.hypotheses.any fun hypothesis =>
      hypothesis.proposition.needsDecidableEvidence propVariables

/-- Collect and deduplicate class evidence demanded by the rendered theorem
layer. The first producer is deliberately module-wide `Decidable p`: it
bridges executable Rust booleans represented as Lean propositions and is
placed *after* spec-function definitions, so it cannot silently make those
definitions classical. Further class producers reuse this representation. -/
def collectEvidenceObligations (obligations : Array Obligation) :
    Array EvidenceObligation :=
  let consumers := obligations.filter (·.needsDecidableEvidence)
  match consumers[0]? with
  | none => #[]
  | some first => #[{
      function := first.function
      leaf := "evidence_decidable_prop"
      span := first.span
      typeParams := #[]
      binders := #[{ name := "p", ty := .prop }]
      target := {
        className := #["Decidable"]
        args := #[.term (.var "p")]
      }
      origin := "Rust `bool` represented as Lean `Prop` requires explicit decision evidence"
      consumers := consumers.map fun obligation =>
        let leaf := leanSegment (obligation.kind.render ++ "_" ++ obligation.assertId)
        obligation.function.qualified ++ "." ++ leaf
    }]

private structure GenState where
  binders : Array Binder
  hypotheses : Array Hypothesis
  obligations : Array Obligation := #[]
  /-- Per-callee ordinal so repeated calls get distinct hypothesis names. -/
  callOrdinals : List (String × Nat) := []
  /-- Per-function branch ordinal so arm-guarded names stay unique. -/
  branchOrdinal : Nat := 0
  /-- Per-function loop ordinal for iteration/exit hypothesis names. -/
  loopOrdinal : Nat := 0
  /-- Spec-fn visibility at the current program point (qualified name ↦
  rounds; `> 0` means the definition is unfoldable here). Seeded from the
  document's `specfn` defaults, adjusted by `reveal` statements. -/
  visibility : List (String × Nat) := []
  /-- Ladder-hint lemma names in scope at this program point, accumulated
  from `broadcast` statements (vstd broadcast groups resolved through
  `Vermilion.Vstd.lemmaHints`). Threaded into each obligation's `vrml`
  simp set; scopes forward like `visibility`. -/
  hints : List String := []

/-- The unfold list an obligation created in `state` carries. -/
private def GenState.unfolds (state : GenState) : Array (String × Nat) :=
  (state.visibility.filter (·.2 > 0)).toArray

private def GenState.obligation
    (state : GenState) (function : FunctionView) (kind : ObligationKind)
    (clause : Clause) (origin : String) : GenState :=
  { state with
    obligations := state.obligations.push {
      function := function.id
      kind
      assertId := clause.assertId
      span := clause.span
      typeParams := function.typeParams
      binders := state.binders
      hypotheses := state.hypotheses
      goal := clause.proposition
      origin
      unfolds := state.unfolds
      hints := state.hints.toArray
    } }

mutual

private partial def processStmt
    (function : FunctionView) (state : GenState) : Stmt → GenState
  | .assume proposition =>
    { state with
      hypotheses := state.hypotheses.push
        { name := s!"assume_{state.hypotheses.size}", proposition } }
  | .assert clause =>
    let state := state.obligation function .assert clause
      (clause.description.getD "Rust source assertion")
    { state with
      hypotheses := state.hypotheses.push
        { name := leanSegment s!"assert_{clause.assertId}"
          proposition := clause.proposition } }
  | .ensures clause =>
    state.obligation function .ensures clause
      (clause.description.getD "function postcondition (`ensures`)")
  | .fresh binder =>
    { state with binders := state.binders.push binder }
  | .reveal id rounds =>
    let name := id.qualified
    { state with
      visibility := (name, rounds) :: state.visibility.filter (·.1 != name) }
  | .broadcast path =>
    -- Resolve the vstd broadcast-group/lemma path to its proved mirror
    -- lemmas (HINTS: fail open — an unregistered path adds nothing).
    match Vermilion.Vstd.lemmaHints path with
    | some names =>
      { state with
        hints := names.foldl (fun acc n =>
          if acc.contains n then acc else n :: acc) state.hints }
    | none => state
  | .invariant phase clause =>
    match phase with
    | .entry => state.obligation function .invariantEntry clause
        (clause.description.getD "loop invariant on entry")
    | .preserve => state.obligation function .invariantPreserve clause
        (clause.description.getD "loop invariant preserved by the body")
    | .atBreak => state.obligation function .invariantBreak clause
        (clause.description.getD "loop invariant at this break")
  | .loop iteration body exit isolated =>
    let ordinal := state.loopOrdinal
    let state := { state with loopOrdinal := state.loopOrdinal + 1 }
    -- Arbitrary-iteration scope. Isolated (the default): the body sees
    -- ONLY the iteration facts (type facts + invariants + condition),
    -- never the enclosing context — Verus's spun-off loop query.
    -- Non-isolated (`#[verifier::loop_isolation(false)]`, the (NLOOP)
    -- rule): the enclosing hypotheses PERSIST in front of the iteration
    -- facts, mirroring sst_to_air's non-isolated recipe — facts about
    -- havoced variables keep referring to their pre-loop havoc symbols,
    -- which remains sound under the SSA-style `fresh` binders. Either
    -- way, everything the body introduces is discarded afterwards.
    let iterationHypotheses := iteration.mapIdx fun index proposition =>
      { name := s!"loop_{ordinal}_iteration_{index}", proposition }
    let bodyHypotheses :=
      if isolated then iterationHypotheses
      else state.hypotheses ++ iterationHypotheses
    let bodyState := processStmts function
      { state with hypotheses := bodyHypotheses }
      body
    -- Continuation: pre-loop binders (the havoc symbols were introduced by
    -- `fresh` before this statement), exit facts only; body-local reveals
    -- die with the iteration scope.
    { bodyState with
      binders := state.binders
      hypotheses := state.hypotheses ++
        exit.mapIdx fun index proposition =>
          { name := s!"loop_{ordinal}_exit_{index}", proposition }
      visibility := state.visibility }
  | .call contract => Id.run do
    let mut state := state
    for clause in contract.requires do
      state := state.obligation function .callRequires clause
        s!"call {contract.callee}"
    if let some result := contract.result then
      state := { state with binders := state.binders.push result }
    let calleeSegment := leanSegment contract.callee
    let ordinal := ((state.callOrdinals.find? (·.1 == calleeSegment)).map (·.2)).getD 0
    state := { state with
      callOrdinals := (calleeSegment, ordinal + 1) ::
        state.callOrdinals.filter (·.1 != calleeSegment) }
    let callPrefix :=
      if ordinal == 0 then s!"call_{calleeSegment}"
      else s!"call_{calleeSegment}_{ordinal}"
    return { state with
      hypotheses := state.hypotheses ++
        contract.ensures.mapIdx fun index proposition =>
          { name := s!"{callPrefix}_ensures_{index}", proposition } }
  | .scope children =>
    -- Check-and-discard: children prove in the current context; binders,
    -- facts, and reveals they introduce die with the scope (only the
    -- obligations and name counters survive).
    let inner := processStmts function state children
    { inner with
      binders := state.binders
      hypotheses := state.hypotheses
      visibility := state.visibility }
  | .branch condition thenBranch elseBranch =>
    let ordinal := state.branchOrdinal
    let state := { state with branchOrdinal := state.branchOrdinal + 1 }
    let baseBinders := state.binders.size
    let baseHypotheses := state.hypotheses.size
    let guarded (proposition : Expr) : Array Hypothesis :=
      state.hypotheses.push { name := s!"branch_{ordinal}", proposition }
    -- Then arm: path condition as a plain hypothesis.
    let thenState := processStmts function
      { state with hypotheses := guarded condition } thenBranch
    -- Else arm: continue counters from the then arm (global name
    -- uniqueness), but binders, hypotheses, and reveal visibility restart
    -- from the base scope.
    let negated := Expr.not condition
    let elseState := processStmts function
      { thenState with
        binders := state.binders
        hypotheses := guarded negated
        visibility := state.visibility }
      elseBranch
    -- Continuation: both arms' binders stay in scope; arm-discovered facts
    -- survive only under their guard; arm-local reveals die with the arm.
    let thenBinders := thenState.binders.extract baseBinders thenState.binders.size
    let elseBinders := elseState.binders.extract baseBinders elseState.binders.size
    let guard (condition : Expr) (armPrefix : String)
        (hypothesis : Hypothesis) : Hypothesis :=
      { name := s!"{armPrefix}_{ordinal}_{hypothesis.name}"
        proposition := .binary .implies condition hypothesis.proposition }
    let thenFacts := (thenState.hypotheses.extract
      (baseHypotheses + 1) thenState.hypotheses.size).map (guard condition "then")
    let elseFacts := (elseState.hypotheses.extract
      (baseHypotheses + 1) elseState.hypotheses.size).map (guard negated "else")
    { elseState with
      binders := state.binders ++ thenBinders ++ elseBinders
      hypotheses := state.hypotheses ++ thenFacts ++ elseFacts
      visibility := state.visibility }

private partial def processStmts
    (function : FunctionView) (state : GenState) (statements : Array Stmt) :
    GenState :=
  statements.foldl (processStmt function) state

end

/-- Collect the distinct `choose` terms of an expression as
(binder, guarded predicate) pairs, pre-order, deduplicated — triggers are
dropped (metadata) so two occurrences differing only in triggers coincide.
The generator injects one conditional characterizing hypothesis per pair
(docs/vcgen.md). -/
partial def Expr.collectChoose : Expr → Array (Binder × Expr)
  | .choose binder _ body =>
    #[(binder, body)] ++ body.collectChoose
  | .quant _ _ _ body | .lambda _ body => body.collectChoose
  | .callFn callee args =>
    args.foldl (fun acc arg => acc ++ arg.collectChoose) callee.collectChoose
  | .binary _ lhs rhs => lhs.collectChoose ++ rhs.collectChoose
  | .not e => e.collectChoose
  | .ite c t f => c.collectChoose ++ t.collectChoose ++ f.collectChoose
  | .urange _ e | .srange _ e | .charRange e
  | .natClip e | .sclip _ e | .charClip e => e.collectChoose
  | .seqLen e | .seqToMultiset e => e.collectChoose
  | .seqPush a b | .seqIndex a b | .seqNew a b | .seqAdd a b =>
    a.collectChoose ++ b.collectChoose
  | .seqUpdate a b c | .seqSubrange a b c =>
    a.collectChoose ++ b.collectChoose ++ c.collectChoose
  | .vstdApply _ _ args =>
    args.foldl (fun acc arg => acc ++ arg.collectChoose) #[]
  | .bitOp _ _ _ a b => a.collectChoose ++ b.collectChoose
  | .coll _ args | .apply _ _ args | .ctor _ _ _ args =>
    args.foldl (fun acc arg => acc ++ arg.collectChoose) #[]
  | .fieldOf _ _ _ e | .isVariant _ _ e => e.collectChoose
  | _ => #[]


/-- The conditional characterizing hypothesis for one `choose` term
(docs/vcgen.md `(CHOOSE)`): `(∃ x, p x) → (fun x => p x) (chooseSpec p)` —
a ground instance of the proved `Vermilion.chooseSpec_spec`, so assuming it
adds nothing to the trusted base. The consequent is a beta-redex on purpose:
no expression substitution is needed and `simp`'s beta reduction exposes the
fact to the ladder. -/
private def chooseHypothesis (index : Nat) (term : Binder × Expr) : Hypothesis :=
  let (binder, body) := term
  { name := s!"choose_spec_{index}"
    proposition := .binary .implies
      (.quant false #[binder] #[] body)
      (.callFn (.lambda #[binder] body) #[.choose binder #[] body]) }

/-- Prepend the per-occurrence `choose` characterizing facts to an
obligation: one hypothesis per distinct (binder, predicate) pair occurring
in its hypotheses or goal. -/
private def withChooseFacts (obligation : Obligation) : Obligation :=
  let terms := obligation.hypotheses.foldl
    (fun acc h => acc ++ h.proposition.collectChoose)
    obligation.goal.collectChoose
  let distinct := terms.foldl
    (fun acc term => if acc.contains term then acc else acc.push term) #[]
  if distinct.isEmpty then obligation
  else { obligation with
    hypotheses := (distinct.mapIdx chooseHypothesis) ++ obligation.hypotheses }

/-- The `(HYGIENE)` post-pass (docs/vcgen.md): the α-equivalent obligation
whose rendering is injective on every scope. Quantifier/choose/lambda
binders are renamed by `Expr.hygienic`; then the telescope
`Θ · Γ · H` is walked in rendering order and every value binder whose
rendered name repeats an earlier entry's is renamed — substituted through
`H` and the goal — and every hypothesis whose rendered name repeats one is
renamed (hypothesis names are never referenced). Fresh names render outside
every name occurring in the obligation, so no rename captures or collides.
Identity on obligations without collisions; idempotent. -/
def Obligation.hygienic (obligation : Obligation) : Obligation := Id.run do
  let hypotheses := obligation.hypotheses.map fun hypothesis =>
    { hypothesis with proposition := hypothesis.proposition.hygienic }
  let goal := obligation.goal.hygienic
  let occurring :=
    (obligation.typeParams ++ obligation.binders.map (·.name) ++ hypotheses.map (·.name) ++
      hypotheses.foldl (fun acc h => acc ++ h.proposition.names) goal.names).map leanSegment
  let mut used := obligation.typeParams.map leanSegment
  let mut binders : Array Binder := #[]
  let mut hypotheses := hypotheses
  let mut goal := goal
  for i in [0:obligation.binders.size] do
    let binder := obligation.binders[i]!
    let rendered := leanSegment binder.name
    if used.contains rendered then
      let fresh := freshRendered binder.name (used ++ occurring)
      -- A binder repeated verbatim later in Γ binds nothing here.
      let dead := (obligation.binders.extract (i + 1) obligation.binders.size).any
        (·.name == binder.name)
      unless dead do
        hypotheses := hypotheses.map fun hypothesis =>
          { hypothesis with
            proposition := hypothesis.proposition.renameFree binder.name fresh }
        goal := goal.renameFree binder.name fresh
      binders := binders.push { binder with name := fresh }
      used := used.push (leanSegment fresh)
    else
      binders := binders.push binder
      used := used.push rendered
  let mut named : Array Hypothesis := #[]
  for hypothesis in hypotheses do
    let rendered := leanSegment hypothesis.name
    if used.contains rendered then
      let fresh := freshRendered hypothesis.name (used ++ occurring)
      named := named.push { hypothesis with name := fresh }
      used := used.push (leanSegment fresh)
    else
      named := named.push hypothesis
      used := used.push rendered
  return { obligation with binders, hypotheses := named, goal }

/-- Rendering collisions in an obligation: telescope entries rendering
identically, or a captured free variable inside some proposition. Empty for
every obligation `generateObligations` returns; `vrml_gen` fails closed
otherwise, so a hygiene regression can never emit a mis-scoped theorem. -/
def Obligation.hygieneViolations (obligation : Obligation) : Array String := Id.run do
  let mut out : Array String := #[]
  let mut seen : Array (String × String) := #[]
  let entries := obligation.typeParams.map (fun p => (p, "type parameter")) ++
    obligation.binders.map (fun b => (b.name, "binder")) ++
    obligation.hypotheses.map (fun h => (h.name, "hypothesis"))
  for (name, role) in entries do
    for (earlier, earlierRole) in seen do
      if leanSegment earlier == leanSegment name then
        out := out.push s!"{earlierRole} `{earlier}` and {role} `{name}` both render as `{leanSegment name}`"
    seen := seen.push (name, role)
  for hypothesis in obligation.hypotheses do
    out := out ++ hypothesis.proposition.hygieneViolations.map (s!"{hypothesis.name}: " ++ ·)
  return out ++ obligation.goal.hygieneViolations

/-- Generate VCs from a normalized, SSA-like statement list. `specFns`
seeds the reveal-visibility defaults (ordinary spec fns visible, opaque
ones hidden until a `reveal`). -/
def generateObligations (specFns : Array SpecFn) (function : FunctionView) :
    Array Obligation :=
  let state : GenState := {
    binders := function.binders
    hypotheses := function.requires.mapIdx fun index proposition =>
      { name := s!"requires_{index}", proposition }
    visibility := specFns.toList.map fun specFn =>
      (specFn.id.qualified, if specFn.visible then 1 else 0)
  }
  ((processStmts function state function.body).obligations).map
    (Obligation.hygienic ∘ withChooseFacts)

end Vermilion.Ir
