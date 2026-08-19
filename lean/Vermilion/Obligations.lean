import Vermilion.Metadata
import Vermilion.Types
import Vermilion.Vstd.Rotate
import Vermilion.Vstd.Bytes
-- Deliberately NOT `import Mathlib.Tactic`: the generated modules are
-- re-elaborated by every `vrml_check`, and environment construction scales
-- with the import closure (all of Mathlib.Tactic ≈ several extra seconds
-- per run). Import only what the discharger ladder and typical manual
-- proofs use; `grind`, `omega`, `simp` are core.
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Polyrith
import Mathlib.Tactic.CasesM
import Mathlib.Tactic.IntervalCases
import Smt

namespace Vermilion

open Lean in
/-- Per-rung heartbeat budget of the `vrml` ladder, in the same "user
units" the ladder always used (each unit is 1000 raw heartbeats; Lean's
default whole-declaration budget is 200 units). The default keeps the
generous interactive tuning; sweep-scale runs (a whole-crate verdict
pass re-judging thousands of obligations) pass a tight profile via
`-Dvermilion.rungBudget=…` (`vrml_check --rung-budget`). -/
register_option vermilion.rungBudget : Nat := {
  defValue := 50000
  descr := "vrml ladder: heartbeat budget per rung (×1000 raw heartbeats)"
}

open Lean in
/-- Budget for the `scalar_saturate` rung, which legitimately spends more
than the generic rungs (kernel-checked `have` saturation before omega). -/
register_option vermilion.saturateBudget : Nat := {
  defValue := 1000000
  descr := "vrml ladder: heartbeat budget for scalar_saturate (×1000)"
}

open Lean in
/-- Budget for the final `smt` rung. `0` = uncapped — the interactive
default, safe because nothing runs after it; sweeps cap it so one
cvc5-resistant goal cannot stall a whole manifest. -/
register_option vermilion.smtBudget : Nat := {
  defValue := 0
  descr := "vrml ladder: heartbeat budget for the smt rung (×1000; 0 = uncapped)"
}

open Lean in
/-- Wall-clock timeout (seconds) handed to cvc5 by the `smt` rung.
Heartbeat budgets cannot interrupt the solver — it is native code where
heartbeats never tick (measured: DL8 sweep, two number-theory units
sitting in cvc5's JustificationStrategy for half an hour) — so bounding
the rung at all REQUIRES the solver's own timeout. `0` = none, the
interactive default. -/
register_option vermilion.smtTimeout : Nat := {
  defValue := 0
  descr := "vrml ladder: cvc5 wall-clock timeout in seconds (0 = none)"
}

def requiresVC (precondition : Prop) : Prop := precondition

def ensuresVC (context postcondition : Prop) : Prop := context → postcondition

def assertVC (context assertion : Prop) : Prop := context → assertion

def callRequiresVC (context calleeRequires : Prop) : Prop :=
  context → calleeRequires

/-- Normalization shared by every discharger rung. -/
macro "vrml_norm" : tactic =>
  `(tactic|
    (try simp only [Vermilion.inUnsignedRange, Vermilion.inSignedRange,
      Vermilion.natClip, Vermilion.sclip, Vermilion.iteP,
      Int.reducePow, Nat.reducePow] at *))

/-- Linear side-condition solver used by the collection simp rung. Unfold
cardinality models only after plain `omega` fails, keeping main expressions
abstract while exposing the nonnegativity needed by exact `nat` clips. -/
macro "vrml_side_omega" : tactic =>
  `(tactic| first
    | omega
    | (simp_all [Vermilion.Seq.len, Vermilion.Set.len,
        Vermilion.Multiset.len, Vermilion.Multiset.count]; omega))


open Lean Meta Elab Tactic in
/-- Scalar saturation (the Lean-native counterpart of Aeneas's
`scalar_tac`, issue #35): make bounded-array arithmetic linear.

1. collapse sequence updates (`index_update_*`) so ensures goals read
   through the write chain;
2. instantiate every hypothesis `∀ i, (lo ≤ i ∧ i < hi) → P i` at the
   integers `lo..hi-1`, where `hi` is a literal or a `Seq.len` pinned
   to a literal by an equation in context (contract foralls, view
   range facts) — capped, so a huge bound cannot blow up the rung;
3. for every pair of instantiated atom bounds `0 ≤ x, x < c` and
   `0 ≤ y, y < d`, add `0 ≤ x*y` and `x*y < c*d` (each a two-line
   `nlinarith`), making products of bounded limbs plain atoms;
4. finish with `omega`, which handles the remaining linear goal
   including `%`/`/` by literals (machine-width wraps).

Every added fact is kernel-checked on the spot; the rung adds no
axioms and fails like any other rung if `omega` cannot finish. -/
elab "vrml_scalar_saturate" : tactic => do
  evalTactic (← `(tactic| vrml_norm))
  evalTactic (← `(tactic|
    try simp (disch := omega) only [Vermilion.Seq.index_update_same,
      Vermilion.Seq.index_update_other, Vermilion.Seq.len_update,
      Vermilion.Seq.len_fill]))
  -- literal value of an Int numeral expression
  let intLit? (e : Expr) : Option Int := e.int?
  -- pass 1: Seq.len equations pinning lengths to literals
  let g ← getMainGoal
  let lenMap ← g.withContext do
    let mut m : Array (Expr × Int) := #[]
    for decl in ← getLCtx do
      if decl.isImplementationDetail then continue
      let ty := (← instantiateMVars decl.type).cleanupAnnotations
      match ty.getAppFnArgs with
      | (``Eq, #[_, lhs, rhs]) =>
        let lhs := lhs.cleanupAnnotations
        if lhs.isAppOf ``Vermilion.Seq.len then
          if let some n := intLit? rhs.cleanupAnnotations then m := m.push (lhs, n)
      | _ => pure ()
    pure m
  -- pass 2: instantiate bounded foralls (cap total work). Small ranges
  -- are instantiated exhaustively; every range is additionally
  -- instantiated at the literal `Seq.index` indices that occur in the
  -- goal or a hypothesis (the issue-#35 indexed-operand bridge: a
  -- 32-byte array's contract forall exceeds the exhaustive cap, but the
  -- goal names exactly the index it reads).
  let mut budget : Nat := 64
  let (hyps, occIdx) ← (← getMainGoal).withContext do
    let g ← getMainGoal
    let mut out : Array (Name × Int × Int) := #[]
    let mut roots : Array Expr := #[(← g.getType)]
    for decl in ← getLCtx do
      if decl.isImplementationDetail then continue
      let ty := (← instantiateMVars decl.type).cleanupAnnotations
      roots := roots.push ty
      if decl.userName.hasMacroScopes then continue
      match ty with
      | .forallE _ bty body _ =>
        unless bty.cleanupAnnotations.isConstOf ``Int do continue
        match body.cleanupAnnotations with
        | .forallE _ guard _ _ =>
          match guard.cleanupAnnotations.getAppFnArgs with
          | (``And, #[lhsG, rhsG]) =>
            let lo? := match lhsG.cleanupAnnotations.getAppFnArgs with
              | (``LE.le, #[_, _, l, _]) => intLit? l.cleanupAnnotations
              | _ => none
            let hi? := match rhsG.cleanupAnnotations.getAppFnArgs with
              | (``LT.lt, #[_, _, _, h]) =>
                let h := h.cleanupAnnotations
                match intLit? h with
                | some n => some n
                | none => lenMap.findSome? fun (t, n) =>
                    if t == h then some n else none
              | _ => none
            match lo?, hi? with
            | some lo, some hi =>
              if hi > lo then
                out := out.push (decl.userName, lo, hi)
            | _, _ => pure ()
          | _ => pure ()
        | _ => pure ()
      | _ => pure ()
    -- occurring literal `Seq.index` indices (explicit-stack subterm scan)
    let mut stack : Array Expr := roots
    let mut occ : Array Int := #[]
    while stack.size > 0 do
      let e := stack.back!.cleanupAnnotations
      stack := stack.pop
      match e.getAppFnArgs with
      | (``Vermilion.Seq.index, #[_, _, _, i]) =>
        if let some n := intLit? i.cleanupAnnotations then
          unless occ.contains n do occ := occ.push n
      | _ => pure ()
      match e with
      | .app f a => stack := (stack.push f).push a
      | .forallE _ t b _ => stack := (stack.push t).push b
      | .lam _ t b _ => stack := (stack.push t).push b
      | .letE _ t v b _ => stack := ((stack.push t).push v).push b
      | .mdata _ b => stack := stack.push b
      | .proj _ _ b => stack := stack.push b
      | _ => pure ()
    pure (out, occ)
  trace[vrml.ladder] "scalar_saturate: {hyps.size} bounded foralls, {lenMap.size} len pins, {occIdx.size} occurring indices"
  for (hn, lo, hi) in hyps do
    let mut targets : Array Int := #[]
    if (hi - lo).toNat ≤ 16 then
      let mut k := lo
      while k < hi do
        targets := targets.push k
        k := k + 1
    for n in occIdx do
      if lo ≤ n && n < hi && !targets.contains n then
        targets := targets.push n
    for k in targets do
      if budget == 0 then break
      let kLit := Syntax.mkNumLit (toString k)
      let hId := mkIdent hn
      evalTactic (← `(tactic|
        try have := $hId ($kLit : Int) (by omega)))
      budget := budget - 1
  -- the instantiated facts arrive as `inUnsignedRange`/conjunctions:
  -- normalize and split so pass 3 sees atom bounds
  evalTactic (← `(tactic| vrml_norm))
  evalTactic (← `(tactic| try casesm* _ ∧ _))
  -- bit↔arithmetic bridge (issue #35 / DL4): with operand ranges now in
  -- context, logical shifts rewrite to divisions by a power of two —
  -- which the final omega handles natively. The literal `toNat`/`pow`
  -- simprocs fold the divisor to a numeral. Conditional on the range
  -- hypotheses via the omega discharger, so it fires exactly where the
  -- context proves the operand in range (including `Seq.index` operands).
  evalTactic (← `(tactic|
    try simp (disch := omega) only [Vermilion.Bits.shr_eq_div,
      Int.reduceToNat, Int.reducePow] at *))
  if (← getUnsolvedGoals).isEmpty then return
  -- pass 3: bound exactly the products that occur in the goal or a
  -- hypothesis, using the NAMED atom-bound hypotheses (one cheap
  -- nlinarith over four explicit facts per product)
  let (prods, lows, ups) ← (← getMainGoal).withContext do
    let g ← getMainGoal
    let mut roots : Array Expr := #[(← g.getType)]
    let mut lows : Array (Expr × Name) := #[]
    let mut ups : Array (Expr × Int × Name) := #[]
    for decl in ← getLCtx do
      if decl.isImplementationDetail then continue
      let ty := (← instantiateMVars decl.type).cleanupAnnotations
      roots := roots.push ty
      match ty.getAppFnArgs with
      | (``LE.le, #[_, _, l, x]) =>
        if intLit? l.cleanupAnnotations == some 0 then
          lows := lows.push (x.cleanupAnnotations, decl.userName)
      | (``LT.lt, #[_, _, x, c]) =>
        if let some n := intLit? c.cleanupAnnotations then
          if n > 1 then ups := ups.push (x.cleanupAnnotations, n, decl.userName)
      | _ => pure ()
    -- explicit-stack subterm scan for Int products
    let mut stack : Array Expr := roots
    let mut prods : Array (Expr × Expr) := #[]
    while stack.size > 0 do
      let e := stack.back!.cleanupAnnotations
      stack := stack.pop
      match e.getAppFnArgs with
      | (``HMul.hMul, #[_, _, _, _, x, y]) =>
        let x := x.cleanupAnnotations
        let y := y.cleanupAnnotations
        unless prods.any (fun (a, b) => a == x && b == y) do
          prods := prods.push (x, y)
      | _ => pure ()
      match e with
      | .app f a => stack := (stack.push f).push a
      | .forallE _ t b _ => stack := (stack.push t).push b
      | .lam _ t b _ => stack := (stack.push t).push b
      | .letE _ t v b _ => stack := ((stack.push t).push v).push b
      | .mdata _ b => stack := stack.push b
      | .proj _ _ b => stack := stack.push b
      | _ => pure ()
    pure (prods, lows, ups)
  let mut pairBudget : Nat := 32
  for (x, y) in prods do
    if pairBudget == 0 then break
    let lowOf? (t : Expr) : Option Name :=
      lows.findSome? fun (a, n) => if a == t then some n else none
    let upOf? (t : Expr) : Option (Int × Name) :=
      ups.findSome? fun (a, c, n) => if a == t then some (c, n) else none
    match lowOf? x, lowOf? y, upOf? x, upOf? y with
    | some lx, some ly, some (cx, ux), some (cy, uy) =>
      let cap := Syntax.mkNumLit (toString (cx * cy))
      let xs ← (← getMainGoal).withContext do Lean.PrettyPrinter.delab x
      let ys ← (← getMainGoal).withContext do Lean.PrettyPrinter.delab y
      -- The upper bound is the closed-form product inequality
      -- (`mul_lt_mul''`), NOT `nlinarith`: nlinarith defaults to
      -- multiplying the WHOLE hypothesis context, which pass-2 forall
      -- instantiation has grown to ~100 hyps, and its O(n²) native
      -- recursion then SIGABRTs the build (dalek-lite DL8 `mul`, #51).
      -- The direct lemma needs only the four bound facts.
      evalTactic (← `(tactic|
        try have : 0 ≤ ($xs) * ($ys) ∧ ($xs) * ($ys) < $cap :=
          ⟨mul_nonneg $(mkIdent lx) $(mkIdent ly),
           mul_lt_mul'' $(mkIdent ux) $(mkIdent uy) $(mkIdent lx) $(mkIdent ly)⟩))
      pairBudget := pairBudget - 1
    | _, _, _, _ => pure ()
  evalTactic (← `(tactic| omega))

open Lean Meta Elab Tactic in
/-- Guard splitting (dalek-lite DL5): Dafny-method-style call contracts
arrive as implication pairs `G → …` / `¬G → …` over *opaque*
propositional guards — e.g. subtle's `choice_is_true c` in constant-time
`conditional_swap`/`conditional_assign` contracts. SMT backends
case-split such atoms for free at the SAT level; none of our generic
rungs will. This rung `by_cases`-splits on each distinct opaque guard
atom found as a top-level implication antecedent (arithmetic atoms and
logical structure are excluded — the arithmetic rungs own those), capped
at 3 atoms (≤ 8 branches), then closes every branch with `simp_all` and
`omega`. Purely classical reasoning, no axioms beyond `Classical.em`. -/
elab "vrml_guard_split" : tactic => do
  evalTactic (← `(tactic| vrml_norm))
  let atoms ← (← getMainGoal).withContext do
    let mut out : Array Expr := #[]
    for decl in ← getLCtx do
      if decl.isImplementationDetail then continue
      let ty := (← instantiateMVars decl.type).cleanupAnnotations
      unless ty.isArrow do continue
      match ty with
      | .forallE _ ant _ _ =>
        let atom := match ant.cleanupAnnotations.getAppFnArgs with
          | (``Not, #[p]) => p.cleanupAnnotations
          | _ => ant.cleanupAnnotations
        match atom.getAppFnArgs with
        | (``LE.le, _) | (``LT.lt, _) | (``GE.ge, _) | (``GT.gt, _)
        | (``Eq, _) | (``Ne, _) | (``And, _) | (``Or, _)
        | (``Not, _) | (``Iff, _) => pure ()
        | _ =>
          unless (← inferType atom).isProp do continue
          unless out.any (· == atom) do out := out.push atom
      | _ => pure ()
    pure out
  if atoms.isEmpty then
    throwError "guard_split: no opaque guard atoms to split on"
  let mut count : Nat := 0
  for atom in atoms do
    if count ≥ 3 then break
    let stx ← (← getMainGoal).withContext do
      Lean.PrettyPrinter.delab atom
    let hName := mkIdent (Name.mkSimple s!"vrml_guard_{count}")
    evalTactic (← `(tactic| all_goals try by_cases $hName : $stx))
    count := count + 1
  evalTactic (← `(tactic| all_goals simp_all))
  evalTactic (← `(tactic| all_goals try omega))

/-- Node count of an `Expr`, computed with an explicit heap-allocated
worklist (never native recursion) and stopped once `cap` is reached, so
measuring a pathologically deep term is itself bounded and cannot
overflow the stack. -/
partial def exprSizeCapped (root : Lean.Expr) (cap : Nat) : Nat := Id.run do
  let mut count := 0
  let mut stack : Array Lean.Expr := #[root]
  while stack.size > 0 do
    if count ≥ cap then return cap
    let e := stack.back!
    stack := stack.pop
    count := count + 1
    match e with
    | .app f a => stack := (stack.push f).push a
    | .lam _ t b _ | .forallE _ t b _ => stack := (stack.push t).push b
    | .letE _ t v b _ => stack := ((stack.push t).push v).push b
    | .mdata _ b | .proj _ _ b => stack := stack.push b
    | _ => pure ()
  return count

/-- Above this many `Expr` nodes, the automation ladder refuses a goal
outright rather than feeding it to rungs whose native-recursive traversal
(`simp`/`grind`/`whnf`) would overflow the process stack and SIGABRT the
whole build (dalek-lite DL8: `mul`/`pow2k`, issue #51). Such a goal is the
issue-#39 megabyte shape; failing fast here makes it a legible, twinnable
interactive obligation instead of a crash. Far above any goal the ladder
closes today (measured: the largest auto-closed field_u64 goals are
~10^4 nodes). -/
def vrmlGoalNodeCap : Nat := 100000

/-- Above this many hypotheses, the ladder refuses a goal rather than let
`nlinarith`'s O(n²) product generation recurse the native stack into a
SIGABRT (dalek-lite DL8 `mul`: 208 hyps, issue #51). Well above the
hypothesis telescopes of goals the ladder closes today (`sub` 66,
`reduce` 39, `add` 23). -/
def vrmlHypCap : Nat := 80

open Lean Elab Tactic in
/-- The discharger ladder. Rungs are tried in order; the first one that
closes the goal wins and its name is reported via `trace.vrml.ladder`
(machine-consumable data for the manager/caching work: run with
`set_option trace.vrml.ladder true` or `lake env lean -Dtrace.vrml.ladder=true`).
Generated statements do not depend on the ladder's shape. -/
elab "vrml_ladder" : tactic => do
  -- Fail closed on a context too large to traverse safely: rungs like
  -- `nlinarith` recurse on the native stack (its O(n²) product generation
  -- over the hypotheses) and would SIGABRT the build (#51) — worse than a
  -- clean failure. Price the WHOLE local context (goal + every hypothesis
  -- type), not just the goal, since the blowup is driven by the hypothesis
  -- telescope (dalek-lite DL8 `mul`: ~100 hyps over deep limb terms). An
  -- over-cap goal becomes a legible interactive twin obligation.
  let mut ctxSize := exprSizeCapped (← try getMainTarget catch _ => pure default)
    vrmlGoalNodeCap
  let mut hypCount := 0
  for decl in (← getLCtx) do
    unless decl.isImplementationDetail do
      hypCount := hypCount + 1
      if ctxSize < vrmlGoalNodeCap then
        ctxSize := ctxSize + exprSizeCapped decl.type (vrmlGoalNodeCap - ctxSize)
  if ctxSize ≥ vrmlGoalNodeCap then
    throwError "vrml: goal context exceeds the automation node cap \
      ({vrmlGoalNodeCap}); left for an interactive twin proof (issue #39/#51)"
  -- `nlinarith` generates pairwise products of hypotheses (O(n²)) and
  -- recurses on the native stack over them; past ~100 hypotheses that
  -- SIGABRTs (dalek-lite DL8 `mul`: 208 hyps → ~40k products → crash,
  -- #51). Refuse such a context so it becomes an interactive twin.
  if hypCount ≥ vrmlHypCap then
    throwError "vrml: goal has {hypCount} hypotheses (cap {vrmlHypCap}); \
      left for an interactive twin proof (issue #39/#51)"
  -- Cheap, deterministic rungs come first; `smt` (cvc5 + reconstruction) is
  -- a heavy fallback placed LAST. Every rung except `smt` additionally runs
  -- under its own bounded heartbeat budget (a fresh baseline plus a cap):
  -- a rung that diverges instead of failing — e.g. `grind` e-matching
  -- quantified per-element contract hypotheses into a deep case split —
  -- hits its cap and yields, rather than burning the declaration's whole
  -- budget and starving every later rung of a goal it would have closed.
  -- `smt` stays uncapped: it is last, so there is nothing left to starve.
  -- Per-rung heartbeat budgets (user units; 0 = uncapped). The
  -- saturation rung legitimately spends more than the generic rungs:
  -- it runs a couple dozen kernel-checked `have`s before its final
  -- omega, so it gets a larger — still bounded — allowance.
  let opts ← getOptions
  let rungBudget := opts.get vermilion.rungBudget.name vermilion.rungBudget.defValue
  let saturateBudget :=
    opts.get vermilion.saturateBudget.name vermilion.saturateBudget.defValue
  let smtBudget := opts.get vermilion.smtBudget.name vermilion.smtBudget.defValue
  let smtTimeout := opts.get vermilion.smtTimeout.name vermilion.smtTimeout.defValue
  let smtTactic ←
    if smtTimeout == 0 then
      `(tactic| smt (trust := false) [*])
    else
      let seconds := Syntax.mkNumLit (toString smtTimeout)
      `(tactic| smt (trust := false) (timeout := .some $seconds) [*])
  let rungs : List (String × Nat × Syntax.Tactic) := [
    ("grind", rungBudget, ← `(tactic| grind)),
    ("omega", rungBudget, ← `(tactic| omega)),
    ("simp_all", rungBudget, ← `(tactic| simp_all)),
    -- simp exposes linear arithmetic that omega finishes (e.g. the
    -- `ediv`/`emod` rewrites for nonzero literal divisors).
    ("simp_omega", rungBudget, ← `(tactic| (simp_all; omega))),
    -- Collection rewrites (`Seq.len_subrange`, `index_subrange`,
    -- `index_update_*`, `len_add`/`index_add_*`, …) are `@[simp]` but
    -- arithmetic-conditioned; simp's own discharger cannot prove `4 ≤ len s`
    -- from `len s ≥ 5`. Running simp with an `omega` discharger fires them,
    -- then omega finishes the residual linear goal. The discharger unfolds
    -- collection cardinalities only inside side conditions, so it can also
    -- prove the nonnegativity conditions introduced by exact `nat` clipping
    -- without expanding collection expressions in the main goal.
    ("simp_disch_omega", rungBudget,
      ← `(tactic| ((try simp (disch := vrml_side_omega) [*]); (try omega)))),
    -- Classical conditionals guarded by arithmetic (spec-fn `match`
    -- desugaring): split every ite, close each branch by simp (variant
    -- predicates/accessors reduce) or by the arithmetic contradiction.
    ("split_ifs", rungBudget, ← `(tactic| (split_ifs <;> simp_all <;> try omega))),
    -- The same split when the conditionals live in HYPOTHESES — branch
    -- joins of `?`/`checked_*` chains arrive as nested `iteP` facts about
    -- a call result (percolator withdrawal, dalek-lite DL5). Splitting
    -- only the goal misses them; `at *` covers both. Kept as a separate,
    -- later rung: it multiplies the context and is strictly more
    -- expensive, so goals the goal-only split closes never pay for it.
    -- Its budget matches the saturation rung's: splitting a deep `?`
    -- chain re-simplifies a large context once per branch, which is real
    -- but bounded work.
    ("split_ifs_hyps", saturateBudget,
      ← `(tactic| (split_ifs at * <;> simp_all <;> try omega))),
    -- Exact nat clips are conditionals. First let the public collection
    -- lemmas (`len_push`, `len_insert_new`, ...) simplify the operation; only
    -- then expose a cardinality model in the residual arithmetic branch.
    -- This ordering avoids unfolding `len` before those lemmas can match.
    ("split_clip_ifs", rungBudget, ← `(tactic| (
      split_ifs <;> intros <;> simp_all <;> try vrml_side_omega))),
    -- Contract-guard conditionals over opaque propositions (constant-time
    -- `Choice` guards and friends): classical case split, then the
    -- simp/arith finishers per branch (dalek-lite DL5).
    ("guard_split", rungBudget, ← `(tactic| vrml_guard_split)),
    -- Machine clips that are guarded by an `inUnsignedRange` hypothesis are
    -- identities. Ask omega only for the linear range side conditions, then
    -- leave the resulting polynomial goal to nlinarith. This is especially
    -- useful after widening casts, where VIR still emits the exact clip.
    ("clip_nlinarith", rungBudget, ← `(tactic| (
      try intros
      try casesm* _ ∧ _
      repeat' rw [Int.emod_eq_of_lt (by omega) (by omega)]
      try casesm* _ ∧ _
      repeat' apply And.intro
      all_goals nlinarith))),
    -- Nonlinear arithmetic (M4, Lean-native): products of bounded
    -- variables (overflow checks like x·N < 2⁶⁴ from x < a, N < b).
    -- The hypotheses are already in context; nlinarith gets the goal
    -- after the shared normalization.
    ("nlinarith", rungBudget, ← `(tactic| (
      -- Split conjunctive hypotheses (unfolded range facts) and goals,
      -- then close each part by nonlinear arithmetic.
      intros
      casesm* _ ∧ _
      repeat' apply And.intro
      all_goals nlinarith))),
    -- Scalar saturation (issue #35, the Aeneas `scalar_tac` counterpart):
    -- collapse update chains, instantiate bounded contract foralls,
    -- saturate pairwise product bounds, finish linear with omega. Closes
    -- the bounded-limb overflow/ensures goals of crypto arithmetic
    -- (curve25519, SymCrypt) that no single generic rung reaches.
    ("scalar_saturate", saturateBudget, ← `(tactic| vrml_scalar_saturate)),
    -- Heavy fallback (cvc5 + kernel-checked reconstruction): last, so it is
    -- reached only for goals the deterministic rungs above cannot close.
    ("smt", smtBudget, smtTactic)
  ]
  let goal ← try some <$> getMainGoal catch _ => pure none
  let some _ := goal | return  -- normalization already closed everything
  let mut failures : List String := []
  for (name, cap, rung) in rungs do
    -- A rung only counts when it CLOSES the goal: tactics like simp_all
    -- can succeed by mere progress, which would end the climb early with
    -- goals still open.
    let attempt := do
      if cap > 0 then
        -- Fresh heartbeat baseline + per-rung cap: the budget fields live in
        -- `Core.Context` (snapshotted from options at declaration start), so
        -- they are rebound here rather than through `withOptions`.
        let heartbeats ← IO.getNumHeartbeats
        withTheReader Core.Context (fun ctx =>
          { ctx with initHeartbeats := heartbeats,
                     maxHeartbeats := cap * 1000 }) do
          evalTactic rung
          unless (← getUnsolvedGoals).isEmpty do
            throwError "rung left goals open"
      else
        -- Uncapped (`0`) must still REBASE the heartbeat baseline: without
        -- this the rung runs in the declaration's original context, whose
        -- budget the earlier rungs have already burned, so the "uncapped"
        -- rung dies on the heartbeat limit before doing any work at all —
        -- the interactive default made the final `smt` rung a no-op while
        -- the budgeted sweeps (which take the branch above) let it run.
        -- `maxHeartbeats := 0` is core's "no limit", the documented meaning.
        let heartbeats ← IO.getNumHeartbeats
        withTheReader Core.Context (fun ctx =>
          { ctx with initHeartbeats := heartbeats, maxHeartbeats := 0 }) do
          evalTactic rung
          unless (← getUnsolvedGoals).isEmpty do
            throwError "rung left goals open"
    -- A rung hitting its heartbeat cap (or recursion depth) throws a
    -- *runtime* exception, which ordinary `try`/`catch` (and `tryTactic?`)
    -- deliberately rethrows; catch it here so it registers as that rung's
    -- failure — with the tactic state rolled back — instead of aborting
    -- the climb.
    let saved ← Tactic.saveState
    let outcome ← tryCatchRuntimeEx (tryTactic? attempt)
      fun _ => do saved.restore; pure none
    match outcome with
    | some _ =>
      trace[vrml.ladder] "discharged by {name}"
      return
    | none => failures := failures ++ [name]
  throwError "vrml: no ladder rung closed the goal (tried {failures})"

/-- Default automation hook: normalize, then climb the ladder on every
remaining goal. -/
macro "vrml" : tactic =>
  `(tactic| (vrml_norm; all_goals vrml_ladder))

/-- `vrml [f, g, …]` additionally unfolds the listed definitions during
normalization — the per-obligation visibility hook of the no-fuel
spec-function design (a revealed function's name is listed; a hidden one
is not). -/
macro "vrml" "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic|
    ((try simp only [Vermilion.inUnsignedRange, Vermilion.inSignedRange,
      Vermilion.iteP, $ids,*] at *); all_goals vrml_ladder))

end Vermilion
