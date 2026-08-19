import Vermilion.Ir.Ast
import Vermilion.Ir.Naming

/-!
# Rendering neutral expressions as Lean syntax

The only place Lean source text is produced from expression trees. Binary
forms parenthesize themselves, so nesting is unambiguous without a
precedence table; applications (`Vermilion.ediv`, the range predicates)
parenthesize non-atomic arguments.
-/

namespace Vermilion.Ir

/-- Lean operator symbol for the infix binary operators. `ediv`/`emod`/`niff`
are rendered specially. -/
private def BinOp.leanSymbol : BinOp → Option String
  | .add => some "+"
  | .sub => some "-"
  | .mul => some "*"
  | .lt => some "<"
  | .le => some "≤"
  | .gt => some ">"
  | .ge => some "≥"
  | .eq => some "="
  | .ne => some "≠"
  | .iff => some "↔"
  | .and => some "∧"
  | .or => some "∨"
  | .implies => some "→"
  | .ediv | .emod | .niff => none

mutual

/-- Render an expression. Self-delimiting forms come out wrapped in
parentheses; atoms come out bare. `dite` switches spec-level conditionals
from `Vermilion.iteP` to dependent `if _h : c then … else …` — used only
inside recursive spec-function bodies, where the equation compiler needs
the branch hypothesis for the termination goals. -/
partial def Expr.renderD (dite : Bool) : Expr → String
  | .var name => leanSegment name
  | .int value => if value < 0 then s!"({value})" else s!"{value}"
  | .tt => "True"
  | .ff => "False"
  -- A nonzero literal divisor renders as native `/`/`%`: `Vermilion.ediv`
  -- already reduces to those away from zero, so this is the same term —
  -- and native operators are computable, so the containing definition
  -- needs no `noncomputable`. A non-literal (possibly-zero) divisor keeps
  -- the opaque-at-zero `Vermilion.ediv`/`emod` for Verus parity.
  | .binary .ediv lhs (.int v) =>
    if v != 0 then s!"({lhs.renderAtomD dite} / {(Expr.int v).renderAtomD dite})"
    else s!"(Vermilion.ediv {lhs.renderAtomD dite} {(Expr.int v).renderAtomD dite})"
  | .binary .emod lhs (.int v) =>
    if v != 0 then s!"({lhs.renderAtomD dite} % {(Expr.int v).renderAtomD dite})"
    else s!"(Vermilion.emod {lhs.renderAtomD dite} {(Expr.int v).renderAtomD dite})"
  | .binary .ediv lhs rhs =>
    s!"(Vermilion.ediv {lhs.renderAtomD dite} {rhs.renderAtomD dite})"
  | .binary .emod lhs rhs =>
    s!"(Vermilion.emod {lhs.renderAtomD dite} {rhs.renderAtomD dite})"
  | .binary .niff lhs rhs =>
    s!"({lhs.renderD dite} ↔ ¬ {rhs.renderD dite})"
  | .binary op lhs rhs =>
    let symbol := (op.leanSymbol).getD "?"
    s!"({lhs.renderD dite} {symbol} {rhs.renderD dite})"
  | .not e => s!"(¬ {e.renderD dite})"
  | .ite cond thenValue elseValue =>
    if dite then
      s!"(if _h : {cond.renderD dite} then {thenValue.renderD dite} \
else {elseValue.renderD dite})"
    else
      s!"(Vermilion.iteP {cond.renderAtomD dite} {thenValue.renderAtomD dite} \
{elseValue.renderAtomD dite})"
  | .urange bits e => s!"Vermilion.inUnsignedRange {bits} {e.renderAtomD dite}"
  | .srange bits e => s!"Vermilion.inSignedRange {bits} {e.renderAtomD dite}"
  | .natClip e => s!"Vermilion.natClip {e.renderAtomD dite}"
  | .sclip bits e => s!"Vermilion.sclip {bits} {e.renderAtomD dite}"
  | .seqLen s => s!"Vermilion.Seq.len {s.renderAtomD dite}"
  | .seqPush s x => s!"Vermilion.Seq.push {s.renderAtomD dite} {x.renderAtomD dite}"
  | .seqIndex s i => s!"Vermilion.Seq.index {s.renderAtomD dite} {i.renderAtomD dite}"
  | .seqUpdate s i x =>
    s!"Vermilion.Seq.update {s.renderAtomD dite} {i.renderAtomD dite} {x.renderAtomD dite}"
  | .seqSubrange s i j =>
    s!"Vermilion.Seq.subrange {s.renderAtomD dite} {i.renderAtomD dite} {j.renderAtomD dite}"
  | .seqAdd s1 s2 =>
    s!"Vermilion.Seq.add {s1.renderAtomD dite} {s2.renderAtomD dite}"
  | .seqToMultiset s =>
    s!"Vermilion.Seq.toMultiset {s.renderAtomD dite}"
  | .vstdApply _ leanName args =>
    if args.isEmpty then leanName
    else
      let rendered := String.intercalate " " (args.toList.map (Expr.renderAtomD dite))
      s!"{leanName} {rendered}"
  | .strLit value => s!"Vermilion.StrSlice.mk {value.quote}"
  | .seqEmpty elem => s!"(Vermilion.Seq.empty : Vermilion.Seq {elem.render})"
  | .coll op args =>
    let rendered := String.intercalate " " (args.toList.map (Expr.renderAtomD dite))
    s!"{op.leanFunction} {rendered}"
  | .setEmpty elem => s!"(Vermilion.Set.empty : Vermilion.Set {elem.render})"
  | .mapEmpty key value =>
    s!"(Vermilion.Map.empty : Vermilion.Map {key.render} {value.render})"
  | .multisetEmpty elem =>
    s!"(Vermilion.Multiset.empty : Vermilion.Multiset {elem.render})"
  | .apply id typeArgs args =>
    -- Explicit named type arguments (generic uninterp spec fns, #19):
    -- `(T := τ)` against the emitted declaration's binder names.
    let typed := String.intercalate " " (typeArgs.toList.map
      fun (param, ty) => s!"({leanSegment param} := {ty.render})")
    let rendered := String.intercalate " " (args.toList.map (Expr.renderAtomD dite))
    match typeArgs.isEmpty, args.isEmpty with
    | true, true => id.qualified
    | true, false => s!"{id.qualified} {rendered}"
    | false, true => s!"{id.qualified} {typed}"
    | false, false => s!"{id.qualified} {typed} {rendered}"
  | .ctor id variant typeArgs fields =>
    let name := s!"{id.qualified}.{leanSegment variant}"
    let typed := String.intercalate " " (typeArgs.toList.map
      fun (param, ty) => s!"({leanSegment param} := {ty.render})")
    let rendered := String.intercalate " " (fields.toList.map (Expr.renderAtomD dite))
    match typeArgs.isEmpty, fields.isEmpty with
    | true, true => name
    | true, false => s!"{name} {rendered}"
    | false, true => s!"{name} {typed}"
    | false, false => s!"{name} {typed} {rendered}"
  | .fieldOf id variant field e =>
    s!"{id.qualified}.get_{leanSegment variant}_{leanSegment field} {e.renderAtomD dite}"
  | .isVariant id variant e =>
    s!"{id.qualified}.is_{leanSegment variant} {e.renderAtomD dite}"
  | .quant forall_ binders _triggers body =>
    let symbol := if forall_ then "∀" else "∃"
    let bound := String.intercalate " " (binders.toList.map
      fun binder => s!"({leanSegment binder.name} : {binder.ty.render})")
    s!"({symbol} {bound}, {body.renderD dite})"
  | .bitOp kind signed bits lhs rhs =>
    let name := (if signed then "s" else "") ++
      (match kind with
       | "and" => "band" | "or" => "bor" | "xor" => "bxor"
       | "shl" => "shl" | _ => "shr")
    s!"Vermilion.Bits.{name} {bits} {lhs.renderAtomD dite} {rhs.renderAtomD dite}"
  | .seqNew len f =>
    s!"Vermilion.Seq.new {len.renderAtomD dite} {f.renderAtomD dite}"
  | .lambda binders body =>
    let bound := String.intercalate " " (binders.toList.map
      fun binder => s!"({leanSegment binder.name} : {binder.ty.render})")
    s!"(fun {bound} => {body.renderD dite})"
  | .choose binder _triggers body =>
    s!"Vermilion.chooseSpec (fun ({leanSegment binder.name} : {binder.ty.render}) => \
{body.renderD dite})"
  | .callFn callee args =>
    let rendered := String.intercalate " " (args.toList.map (Expr.renderAtomD dite))
    s!"{callee.renderAtomD dite} {rendered}"

/-- Render an expression in argument position: parenthesized unless it is
already self-delimiting. -/
partial def Expr.renderAtomD (dite : Bool) (e : Expr) : String :=
  match e with
  | .var _ | .tt | .ff => e.renderD dite
  | .strLit _ => s!"({e.renderD dite})"
  | .seqEmpty _ | .setEmpty _ | .mapEmpty .. | .multisetEmpty _ => e.renderD dite
  | .int value => if value < 0 then e.renderD dite else s!"{value}"
  | .binary .. | .not _ | .ite .. => e.renderD dite
  | .urange .. | .srange .. | .natClip _ | .sclip .. | .seqLen _
  | .seqPush .. | .seqIndex ..
  | .seqUpdate .. | .seqSubrange .. | .seqAdd .. | .seqToMultiset ..
  | .seqNew .. | .bitOp .. | .coll .. =>
    s!"({e.renderD dite})"
  | .vstdApply _ _ args =>
    if args.isEmpty then e.renderD dite else s!"({e.renderD dite})"
  | .apply _ typeArgs args =>
    if typeArgs.isEmpty && args.isEmpty then e.renderD dite else s!"({e.renderD dite})"
  | .ctor _ _ typeArgs fields =>
    if typeArgs.isEmpty && fields.isEmpty then e.renderD dite
    else s!"({e.renderD dite})"
  | .fieldOf .. | .isVariant .. => s!"({e.renderD dite})"
  | .quant .. => e.renderD dite
  | .lambda .. => e.renderD dite
  | .callFn .. => s!"({e.renderD dite})"
  | .choose .. => s!"({e.renderD dite})"

end

/-- Statement/goal rendering (the iteP form). -/
def Expr.render (e : Expr) : String := e.renderD false

def Expr.renderAtom (e : Expr) : String := e.renderAtomD false

/-- Top-level rendering for hypotheses/goals: like `render`, but without the
outermost parentheses on binary forms, matching the M1 output style. -/
def Expr.renderTop (e : Expr) : String :=
  match e with
  | .binary .ediv .. | .binary .emod .. => e.render
  | .binary .niff lhs rhs => s!"{lhs.render} ↔ ¬ {rhs.render}"
  | .binary op lhs rhs =>
    let symbol := (BinOp.leanSymbol op).getD "?"
    s!"{lhs.render} {symbol} {rhs.render}"
  | other => other.render

/-- Recursive spec-function body rendering: dependent conditionals so the
equation compiler sees the branch hypotheses in termination goals. -/
def Expr.renderBody (e : Expr) : String := e.renderD true

/-- Does this expression force `noncomputable` on a definition containing
it? Only a possibly-zero (`non-literal`) `ediv`/`emod` does now: it keeps
the opaque-at-zero `Vermilion.ediv`/`emod`. `iteP` is computable (it takes
the condition's `Decidable` instance) and nonzero-literal division renders
to native `/`/`%`, so neither forces it. -/
partial def Expr.needsClassical : Expr → Bool
  | .binary .ediv _ (.int v) => v == 0
  | .binary .emod _ (.int v) => v == 0
  | .binary .ediv _ _ | .binary .emod _ _ => true
  | .ite c t f => c.needsClassical || t.needsClassical || f.needsClassical
  | .binary _ lhs rhs => lhs.needsClassical || rhs.needsClassical
  | .not e => e.needsClassical
  | .urange _ e | .srange _ e | .natClip e | .sclip _ e => e.needsClassical
  | .seqLen e | .seqToMultiset e => e.needsClassical
  | .seqPush a b | .seqIndex a b | .seqNew a b | .seqAdd a b =>
    a.needsClassical || b.needsClassical
  | .seqUpdate a b c | .seqSubrange a b c =>
    a.needsClassical || b.needsClassical || c.needsClassical
  | .vstdApply _ _ args => args.any Expr.needsClassical
  | .bitOp _ _ _ a b => a.needsClassical || b.needsClassical
  | .coll _ args | .apply _ _ args | .ctor _ _ _ args =>
    args.any Expr.needsClassical
  | .fieldOf _ _ _ e | .isVariant _ _ e => e.needsClassical
  | .quant _ _ _ body => body.needsClassical
  | .lambda _ body => body.needsClassical
  | .callFn callee args => callee.needsClassical || args.any Expr.needsClassical
  -- `chooseSpec` is Hilbert choice: classical by construction.
  | .choose .. => true
  | _ => false

/-- Qualified names of the spec fns an expression applies (pre-order). -/
partial def Expr.applies : Expr → Array String
  | .apply id _ args =>
    args.foldl (fun acc arg => acc ++ arg.applies) #[id.qualified]
  | .quant _ _ _ body => body.applies
  | .lambda _ body => body.applies
  | .choose _ _ body => body.applies
  | .callFn callee args =>
    args.foldl (fun acc arg => acc ++ arg.applies) callee.applies
  | .binary _ lhs rhs => lhs.applies ++ rhs.applies
  | .not e => e.applies
  | .ite c t f => c.applies ++ t.applies ++ f.applies
  | .urange _ e | .srange _ e | .natClip e | .sclip _ e => e.applies
  | .seqLen e | .seqToMultiset e => e.applies
  | .seqPush a b | .seqIndex a b | .seqNew a b | .seqAdd a b => a.applies ++ b.applies
  | .seqUpdate a b c | .seqSubrange a b c => a.applies ++ b.applies ++ c.applies
  | .vstdApply _ _ args => args.foldl (fun acc arg => acc ++ arg.applies) #[]
  | .bitOp _ _ _ a b => a.applies ++ b.applies
  | .coll _ args | .ctor _ _ _ args =>
    args.foldl (fun acc arg => acc ++ arg.applies) #[]
  | .fieldOf _ _ _ e | .isVariant _ _ e => e.applies
  | _ => #[]

/-- Qualified names of the user datatypes a type mentions (pre-order). -/
partial def Ty.dataRefs : Ty → Array String
  | .data id args =>
    args.foldl (fun acc arg => acc ++ arg.dataRefs) #[id.qualified]
  | .seq elem | .set elem | .multiset elem => elem.dataRefs
  | .map key value => key.dataRefs ++ value.dataRefs
  | .fn params ret =>
    params.foldl (fun acc param => acc ++ param.dataRefs) ret.dataRefs
  | _ => #[]

/-- Qualified names of the user datatypes an expression mentions —
constructors, projections, variant tests, and the element types of empty
collections and binders (pre-order). Together with `Expr.applies` this is
the reference analysis behind per-function emission: a unit module imports
the shared `Specs` module iff its obligations mention a spec fn or a
datatype defined there. -/
partial def Expr.dataRefs : Expr → Array String
  | .ctor id _ typeArgs fields =>
    typeArgs.foldl (fun acc (_, ty) => acc ++ ty.dataRefs)
      (fields.foldl (fun acc field => acc ++ field.dataRefs) #[id.qualified])
  | .fieldOf id _ _ e | .isVariant id _ e => #[id.qualified] ++ e.dataRefs
  | .quant _ binders _ body | .lambda binders body =>
    binders.foldl (fun acc binder => acc ++ binder.ty.dataRefs) body.dataRefs
  | .choose binder _ body => binder.ty.dataRefs ++ body.dataRefs
  | .callFn callee args =>
    args.foldl (fun acc arg => acc ++ arg.dataRefs) callee.dataRefs
  | .binary _ lhs rhs => lhs.dataRefs ++ rhs.dataRefs
  | .not e => e.dataRefs
  | .ite c t f => c.dataRefs ++ t.dataRefs ++ f.dataRefs
  | .urange _ e | .srange _ e | .natClip e | .sclip _ e => e.dataRefs
  | .seqLen e | .seqToMultiset e => e.dataRefs
  | .seqPush a b | .seqIndex a b | .seqNew a b | .seqAdd a b =>
    a.dataRefs ++ b.dataRefs
  | .seqUpdate a b c | .seqSubrange a b c =>
    a.dataRefs ++ b.dataRefs ++ c.dataRefs
  | .vstdApply _ _ args | .coll _ args =>
    args.foldl (fun acc arg => acc ++ arg.dataRefs) #[]
  -- Type-argument instantiations can reference emitted datatypes: count
  -- them, so consuming units import the shared Specs module.
  | .apply _ typeArgs args =>
    typeArgs.foldl (fun acc (_, ty) => acc ++ ty.dataRefs)
      (args.foldl (fun acc arg => acc ++ arg.dataRefs) #[])
  | .seqEmpty elem | .setEmpty elem | .multisetEmpty elem => elem.dataRefs
  | .mapEmpty key value => key.dataRefs ++ value.dataRefs
  | .bitOp _ _ _ a b => a.dataRefs ++ b.dataRefs
  | _ => #[]

/-- Collect every quantifier's trigger groups (preserved from Verus for
future e-matching tooling), pre-order. -/
partial def Expr.collectTriggers : Expr → Array (Array (Array Expr))
  | .quant _ _ triggers body =>
    (if triggers.isEmpty then #[] else #[triggers]) ++ body.collectTriggers
  | .choose _ triggers body =>
    (if triggers.isEmpty then #[] else #[triggers]) ++ body.collectTriggers
  | .lambda _ body => body.collectTriggers
  | .callFn callee args =>
    args.foldl (fun acc arg => acc ++ arg.collectTriggers) callee.collectTriggers
  | .binary _ lhs rhs => lhs.collectTriggers ++ rhs.collectTriggers
  | .not e => e.collectTriggers
  | .ite c t f => c.collectTriggers ++ t.collectTriggers ++ f.collectTriggers
  | .urange _ e | .srange _ e | .natClip e | .sclip _ e => e.collectTriggers
  | .seqLen e | .seqToMultiset e => e.collectTriggers
  | .seqPush a b | .seqIndex a b | .seqNew a b | .seqAdd a b =>
    a.collectTriggers ++ b.collectTriggers
  | .seqUpdate a b c | .seqSubrange a b c =>
    a.collectTriggers ++ b.collectTriggers ++ c.collectTriggers
  | .vstdApply _ _ args =>
    args.foldl (fun acc arg => acc ++ arg.collectTriggers) #[]
  | .bitOp _ _ _ a b => a.collectTriggers ++ b.collectTriggers
  | .coll _ args | .apply _ _ args | .ctor _ _ _ args =>
    args.foldl (fun acc arg => acc ++ arg.collectTriggers) #[]
  | .fieldOf _ _ _ e | .isVariant _ _ e => e.collectTriggers
  | _ => #[]

end Vermilion.Ir
