import Vermilion.Ir.Ast

/-!
# Vermilion.Ir.Hygiene

Rendering hygiene for IR expressions (docs/vcgen.md, "Rendering hygiene").

IR names are exact strings. The lowering (`vermilion_direct`) keeps
substitution capture-free and the obligation telescope's names pairwise
distinct *as strings*. Rendering then maps every name through `leanSegment`
(keyword escaping, punctuation normalization), which is not injective: Rust
`end` and `end_` both render as `end_`. Without further care a binder whose
rendered name coincides with the rendered name of a *different* variable
free in its scope captures that variable in the Lean text — the keyword
variant of issue #59 — and a telescope entry rendering like an earlier one
shadows it for every later hypothesis and the goal.

This module α-renames binders so that, within every scope, rendering is
injective on the names that occur there. Only the Lean side knows how it
renders, so the fix lives here rather than as a mirrored keyword list in
Rust. The pass is the identity on expressions without such collisions, so
statement hashes of ordinary programs are unaffected, and it is idempotent.
-/

namespace Vermilion.Ir

/-- Apply `f` to every immediate subexpression (trigger groups included);
binders are left as they are. -/
def Expr.mapChildren (f : Expr → Expr) : Expr → Expr
  | .binary op lhs rhs => .binary op (f lhs) (f rhs)
  | .not e => .not (f e)
  | .ite c t e => .ite (f c) (f t) (f e)
  | .urange bits e => .urange bits (f e)
  | .srange bits e => .srange bits (f e)
  | .charRange e => .charRange (f e)
  | .natClip e => .natClip (f e)
  | .sclip bits e => .sclip bits (f e)
  | .charClip e => .charClip (f e)
  | .seqLen s => .seqLen (f s)
  | .seqPush s x => .seqPush (f s) (f x)
  | .seqIndex s i => .seqIndex (f s) (f i)
  | .seqUpdate s i x => .seqUpdate (f s) (f i) (f x)
  | .seqSubrange s i j => .seqSubrange (f s) (f i) (f j)
  | .seqAdd s1 s2 => .seqAdd (f s1) (f s2)
  | .seqToMultiset s => .seqToMultiset (f s)
  | .vstdApply path leanName args => .vstdApply path leanName (args.map f)
  | .coll op args => .coll op (args.map f)
  | .apply id typeArgs args => .apply id typeArgs (args.map f)
  | .ctor id variant typeArgs fields => .ctor id variant typeArgs (fields.map f)
  | .fieldOf id variant field e => .fieldOf id variant field (f e)
  | .isVariant id variant e => .isVariant id variant (f e)
  | .quant forall_ binders triggers body =>
    .quant forall_ binders (triggers.map (·.map f)) (f body)
  | .seqNew len g => .seqNew (f len) (f g)
  | .bitOp kind signed bits lhs rhs => .bitOp kind signed bits (f lhs) (f rhs)
  | .lambda binders body => .lambda binders (f body)
  | .callFn callee args => .callFn (f callee) (args.map f)
  | .choose binder triggers body => .choose binder (triggers.map (·.map f)) (f body)
  | e => e

/-- Fold `f` over every immediate subexpression (trigger groups included). -/
def Expr.foldChildren {α : Type} (f : α → Expr → α) (init : α) : Expr → α
  | .binary _ lhs rhs => f (f init lhs) rhs
  | .not e | .urange _ e | .srange _ e | .charRange e | .natClip e | .sclip _ e
  | .charClip e => f init e
  | .ite c t e => f (f (f init c) t) e
  | .seqLen s | .seqToMultiset s => f init s
  | .seqPush a b | .seqIndex a b | .seqAdd a b | .seqNew a b => f (f init a) b
  | .seqUpdate a b c | .seqSubrange a b c => f (f (f init a) b) c
  | .vstdApply _ _ args | .coll _ args | .apply _ _ args | .ctor _ _ _ args =>
    args.foldl f init
  | .fieldOf _ _ _ e | .isVariant _ _ e => f init e
  | .quant _ _ triggers body | .choose _ triggers body =>
    f (triggers.foldl (fun acc group => group.foldl f acc) init) body
  | .bitOp _ _ _ lhs rhs => f (f init lhs) rhs
  | .lambda _ body => f init body
  | .callFn callee args => args.foldl f (f init callee)
  | _ => init

/-- Does `e` or any of its subexpressions (trigger groups included)
satisfy `p`? -/
partial def Expr.anySubterm (p : Expr → Bool) (e : Expr) : Bool :=
  p e || e.foldChildren (fun found child => found || child.anySubterm p) false

/-- The names bound by the construct at the root of `e` (their scope is
every child: body and trigger groups alike); empty for non-binders. -/
def Expr.rootBinders : Expr → Array String
  | .quant _ binders _ _ | .lambda binders _ => binders.map (·.name)
  | .choose binder _ _ => #[binder.name]
  | _ => #[]

/-- Every variable name occurring in `e`, bound or free (with repeats). -/
partial def Expr.names (e : Expr) : Array String :=
  match e with
  | .var name => #[name]
  | _ => e.foldChildren (fun acc child => acc ++ child.names) e.rootBinders

/-- The variables free in `e`, by exact name (with repeats). -/
partial def Expr.freeVars (e : Expr) : Array String :=
  go [] e
where
  go (bound : List String) (e : Expr) : Array String :=
    match e with
    | .var name => if bound.contains name then #[] else #[name]
    | _ =>
      let bound := e.rootBinders.toList ++ bound
      e.foldChildren (fun acc child => acc ++ go bound child) #[]

/-- Rename the free occurrences of `old` to `new`, stopping at binders of
`old`. Capture-free provided `new` is bound nowhere in `e` — which every
caller in this module guarantees by choosing `new` outside `e.names`. -/
partial def Expr.renameFree (old new : String) (e : Expr) : Expr :=
  match e with
  | .var name => if name == old then .var new else e
  | _ => if e.rootBinders.contains old then e else e.mapChildren (renameFree old new)

/-- The first of `base`, `base_1`, `base_2`, … whose rendering is not in
`avoid` (a set of rendered names). -/
def freshRendered (base : String) (avoid : Array String) : String := Id.run do
  if !avoid.contains (leanSegment base) then return base
  -- `avoid.size + 1` candidates render pairwise distinctly (the suffix
  -- survives `leanSegment` verbatim), so one of them is free.
  for k in [1:avoid.size + 2] do
    let candidate := s!"{base}_{k}"
    if !avoid.contains (leanSegment candidate) then return candidate
  return s!"{base}_{avoid.size + 2}"

/-- Rename, in order, the binders of one construct whose rendered name
collides with the rendered name of a free variable of the scope (`body`
and `triggers`) or of an earlier binder of the same construct, substituting
the new name through the scope. A binder shadowed by a later binder of the
same exact name binds nothing, so it is renamed without substitution. The
fresh name renders outside every name occurring in the scope, so the
substitution cannot capture and cannot create a new collision. -/
def hygienicBinders (binders : Array Binder) (triggers : Array (Array Expr))
    (body : Expr) : Array Binder × Array (Array Expr) × Expr := Id.run do
  let scope := triggers.foldl (· ++ ·) #[body]
  let bound := binders.map (·.name)
  let free := (scope.foldl (fun acc e => acc ++ e.freeVars) #[]).filter (!bound.contains ·)
  let freeRendered := free.map leanSegment
  let occurring := (scope.foldl (fun acc e => acc ++ e.names) bound).map leanSegment
  let mut out : Array Binder := #[]
  let mut seen : Array String := #[]
  let mut triggers := triggers
  let mut body := body
  for i in [0:binders.size] do
    let binder := binders[i]!
    let rendered := leanSegment binder.name
    if freeRendered.contains rendered || seen.contains rendered then
      let fresh := freshRendered binder.name (freeRendered ++ seen ++ occurring)
      let dead := (binders.extract (i + 1) binders.size).any (·.name == binder.name)
      unless dead do
        triggers := triggers.map (·.map (·.renameFree binder.name fresh))
        body := body.renameFree binder.name fresh
      out := out.push { binder with name := fresh }
      seen := seen.push (leanSegment fresh)
    else
      out := out.push binder
      seen := seen.push rendered
  return (out, triggers, body)

/-- The rendering-hygienic form of `e`: at every binder construct, the
rendered binder names are pairwise distinct and distinct from the rendered
names of the variables free in its scope. Identity when that already holds;
idempotent. -/
partial def Expr.hygienic (e : Expr) : Expr :=
  match e with
  | .quant forall_ binders triggers body =>
    let (binders, triggers, body) := hygienicBinders binders triggers body
    .quant forall_ binders (triggers.map (·.map Expr.hygienic)) body.hygienic
  | .lambda binders body =>
    let (binders, _, body) := hygienicBinders binders #[] body
    .lambda binders body.hygienic
  | .choose binder triggers body =>
    let (binders, triggers, body) := hygienicBinders #[binder] triggers body
    .choose binders[0]! (triggers.map (·.map Expr.hygienic)) body.hygienic
  | _ => e.mapChildren Expr.hygienic

/-- Rendering collisions inside `e`: binder constructs where two distinct
names in scope render identically. Empty exactly when `e` is in hygienic
form; `vrml_gen` fails closed on a non-empty result. -/
partial def Expr.hygieneViolations (e : Expr) : Array String :=
  let here :=
    match e with
    | .quant _ _ triggers body | .choose _ triggers body =>
      violationsAt e.rootBinders (triggers.foldl (· ++ ·) #[body])
    | .lambda _ body => violationsAt e.rootBinders #[body]
    | _ => #[]
  e.foldChildren (fun acc child => acc ++ child.hygieneViolations) here
where
  violationsAt (bound : Array String) (scope : Array Expr) : Array String := Id.run do
    let free := (scope.foldl (fun acc e => acc ++ e.freeVars) #[]).filter (!bound.contains ·)
    let mut out := #[]
    for i in [0:bound.size] do
      let name := bound[i]!
      for other in free do
        if leanSegment other == leanSegment name then
          out := out.push s!"binder `{name}` captures free `{other}` (both render as `{leanSegment name}`)"
      for j in [0:i] do
        if bound[j]! != name && leanSegment bound[j]! == leanSegment name then
          out := out.push s!"binders `{bound[j]!}` and `{name}` both render as `{leanSegment name}`"
    return out

end Vermilion.Ir
