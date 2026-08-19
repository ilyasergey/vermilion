/-!
# The neutral function model, Lean side

Mirror of the Rust `vermilion_backend::model` types (see `docs/ir.md`). This
is the input of VC generation; nothing here depends on Mathlib so the
`vrml_gen` executable stays lightweight.
-/

namespace Vermilion.Ir

structure FunctionId where
  crateName : String
  modules : Array String
  name : String
  deriving Repr, BEq, Inhabited

/-- Lean keywords that are legal Rust identifiers (Rust `end`, `from`,
`by`, `at`, … are ordinary variable names). Rendered verbatim they break
the parse as a binder, so `leanSegment` suffixes them with `_`. Only
GENUINE Lean keywords belong here — ordinary words like `set`/`get`/`of`
parse fine as identifiers and must NOT be escaped (doing so needlessly
renames hypotheses and shifts statement hashes). -/
def leanReservedWords : List String :=
  ["end", "by", "do", "from", "with", "then", "else", "show", "have",
   "let", "fun", "match", "where", "calc", "at", "in",
   "open", "section", "namespace", "variable", "example", "theorem",
   "def", "deriving", "instance", "class", "structure", "inductive",
   "abbrev", "axiom", "mutual", "macro", "notation", "attribute", "if"]

/-- Sanitize one name segment into a valid Lean identifier chunk. -/
def leanSegment (raw : String) : String :=
  let chars := raw.toList
  let sanitized := chars.foldl (init := "") fun acc c =>
    acc.push (if c.isAlphanum && c.toNat < 128 || c == '_' then c else '_')
  let prefixed :=
    match chars with
    | c :: _ => if c.isDigit then "_" ++ sanitized else sanitized
    | [] => sanitized
  if prefixed.isEmpty then "_anonymous"
  else if leanReservedWords.contains prefixed then prefixed ++ "_"
  else prefixed

/-- Fully qualified namespace of a function's or datatype's emissions. -/
def FunctionId.qualified (id : FunctionId) : String :=
  let segments := #[id.crateName] ++ id.modules ++ #[id.name]
  String.intercalate "." (segments.map leanSegment).toList

/-- Binder types of the current fragment. -/
inductive Ty where
  | int
  | prop
  /-- vstd `Seq<T>`, embedded as `Vermilion.Seq`. -/
  | seq (elem : Ty)
  /-- vstd `Set<T>`, embedded as `Vermilion.Set` (a `Finset`). -/
  | set (elem : Ty)
  /-- vstd `Map<K, V>`, embedded as `Vermilion.Map`. -/
  | map (key value : Ty)
  /-- vstd `Multiset<T>`, embedded as `Vermilion.Multiset`. -/
  | multiset (elem : Ty)
  /-- A user datatype applied to type arguments (empty when non-generic),
  emitted as a real `inductive`. -/
  | data (id : FunctionId) (args : Array Ty)
  /-- A type parameter in scope, emitted as a Lean type variable. -/
  | var (name : String)
  /-- A spec function value (`spec_fn(T…) -> U`), a genuine Lean arrow. -/
  | fn (params : Array Ty) (ret : Ty)
  /-- Verus `&str` (`StrSlice`), embedded as `Vermilion.StrSlice` — the
  type and its literals only; no string operations are lowered. -/
  | strSlice
  deriving Repr, BEq, Inhabited

partial def Ty.render : Ty → String
  | .int => "Int"
  | .prop => "Prop"
  | .seq elem => s!"(Vermilion.Seq {elem.render})"
  | .set elem => s!"(Vermilion.Set {elem.render})"
  | .map key value => s!"(Vermilion.Map {key.render} {value.render})"
  | .multiset elem => s!"(Vermilion.Multiset {elem.render})"
  | .data id args =>
    if args.isEmpty then id.qualified
    else s!"({id.qualified} {String.intercalate " " (args.toList.map Ty.render)})"
  | .var name => leanSegment name
  | .strSlice => "Vermilion.StrSlice"
  | .fn params ret =>
    "(" ++ String.intercalate " → " (params.toList.map Ty.render ++ [ret.render]) ++ ")"

inductive BinOp where
  | add | sub | mul
  | ediv | emod
  | lt | le | gt | ge
  | eq | ne
  | iff | niff
  | and | or | implies
  deriving Repr, BEq, Inhabited

/-- vstd collection operations with a fixed arity, applied via
`Expr.coll`. The Lean function each op renders to lives in the prelude. -/
inductive CollOp where
  | setInsert | setContains | setRemove | setLen
  | mapInsert | mapIndex | mapDom | mapContainsKey
  | multisetInsert | multisetCount | multisetLen
  deriving Repr, BEq, Inhabited

/-- (IR symbol, arity, rendered Lean function) of every collection op. -/
def CollOp.table : List (String × Nat × CollOp × String) := [
  ("setinsert", 2, .setInsert, "Vermilion.Set.insert"),
  ("setcontains", 2, .setContains, "Vermilion.Set.contains"),
  ("setremove", 2, .setRemove, "Vermilion.Set.remove"),
  ("setlen", 1, .setLen, "Vermilion.Set.len"),
  ("mapinsert", 3, .mapInsert, "Vermilion.Map.insert"),
  ("mapindex", 2, .mapIndex, "Vermilion.Map.index"),
  ("mapdom", 1, .mapDom, "Vermilion.Map.dom"),
  ("mapcontainskey", 2, .mapContainsKey, "Vermilion.Map.containsKey"),
  ("msinsert", 2, .multisetInsert, "Vermilion.Multiset.insert"),
  ("mscount", 2, .multisetCount, "Vermilion.Multiset.count"),
  ("mslen", 1, .multisetLen, "Vermilion.Multiset.len")]

def CollOp.leanFunction (op : CollOp) : String :=
  match CollOp.table.find? (fun entry => entry.2.2.1 == op) with
  | some entry => entry.2.2.2
  | none => "Vermilion.unreachableCollOp"

structure Binder where
  name : String
  ty : Ty
  deriving Repr, BEq, Inhabited

inductive Expr where
  | var (name : String)
  | int (value : Int)
  /-- A string literal (`&str` constant): `Vermilion.StrSlice.mk "…"`.
  Opaque data — no string operations are lowered. -/
  | strLit (value : String)
  | tt
  | ff
  | binary (op : BinOp) (lhs rhs : Expr)
  | not (e : Expr)
  /-- Pure `Int`-valued conditional over a `Prop` condition
  (`Vermilion.iteP`). -/
  | ite (cond thenValue elseValue : Expr)
  /-- `Vermilion.inUnsignedRange bits e` -/
  | urange (bits : Nat) (e : Expr)
  /-- `Vermilion.inSignedRange bits e` -/
  | srange (bits : Nat) (e : Expr)
  /-- `Vermilion.natClip e` — Verus `nat` clipping (saturation at zero).
  Dedicated single-occurrence form: the conditional expansion
  `iteP (e ≥ 0) e 0` restates `e`, and nested nat arithmetic then grows
  exponentially in the clip depth (dalek-lite DL8). -/
  | natClip (e : Expr)
  /-- `Vermilion.sclip bits e` — signed two's-complement clipping at the
  given width; single-occurrence for the same reason as `natClip`. -/
  | sclip (bits : Nat) (e : Expr)
  /-- `Vermilion.Seq.len s` -/
  | seqLen (s : Expr)
  /-- `Vermilion.Seq.push s x` -/
  | seqPush (s x : Expr)
  /-- `Vermilion.Seq.index s i` -/
  | seqIndex (s i : Expr)
  /-- `Vermilion.Seq.update s i x` (vstd `Seq::update`; the view of
  `Vec::set`): the sequence with position `i` replaced by `x`. -/
  | seqUpdate (s i x : Expr)
  /-- `Vermilion.Seq.subrange s i j` (vstd `Seq::subrange`): elements
  `[i, j)`. -/
  | seqSubrange (s i j : Expr)
  /-- `Vermilion.Seq.add s1 s2` (vstd `Seq::add`, spec `+`): concatenation. -/
  | seqAdd (s1 s2 : Expr)
  /-- `Vermilion.Seq.toMultiset s` (vstd `Seq::to_multiset`): the multiset of
  a sequence's elements, order forgotten. -/
  | seqToMultiset (s : Expr)
  /-- A vstd spec-fn application resolved by NAME against the shipped
  mirror registry (`Vermilion.Vstd.Registry`) at decode time: `path` is
  the canonical vstd path from the IR, `leanName` the model definition it
  resolved to. Unregistered paths fail closed in the decoder. -/
  | vstdApply (path leanName : String) (args : Array Expr)
  /-- `Vermilion.Seq.empty` at the given element type -/
  | seqEmpty (elem : Ty)
  /-- A vstd collection operation applied to its arguments. -/
  | coll (op : CollOp) (args : Array Expr)
  /-- `Vermilion.Set.empty` at the given element type -/
  | setEmpty (elem : Ty)
  /-- `Vermilion.Map.empty` at the given key/value types -/
  | mapEmpty (key value : Ty)
  /-- `Vermilion.Multiset.empty` at the given element type -/
  | multisetEmpty (elem : Ty)
  /-- A user spec function applied to arguments. The definition is emitted
  as a real Lean `def` from the file's `specfn` declarations; applications
  stay applications (no inlining, no fuel). `typeArgs` carries explicit
  named type-argument instantiations `(param, ty)` for generic
  *uninterpreted* spec fns (issue #19) — Lean cannot infer a type
  parameter of an opaque symbol that appears only in its return type;
  empty everywhere else, rendering exactly as before. -/
  | apply (id : FunctionId) (typeArgs : Array (String × Ty)) (args : Array Expr)
  /-- A datatype constructor applied to its fields (declaration order).
  `typeArgs` pins the type parameters the variant's fields cannot infer
  (issue #18, e.g. `Ok(())`'s error type); empty otherwise, rendering
  exactly as before. -/
  | ctor (id : FunctionId) (variant : String)
      (typeArgs : Array (String × Ty)) (fields : Array Expr)
  /-- Variant-field projection (`<dt>.get_<variant>_<field> e`). -/
  | fieldOf (id : FunctionId) (variant field : String) (e : Expr)
  /-- Variant test (`<dt>.is_<variant> e`, Prop). -/
  | isVariant (id : FunctionId) (variant : String) (e : Expr)
  /-- Quantifier (`∀` when the flag is set, else `∃`); range guards are
  already folded into the body. Trigger groups are preserved for future
  e-matching tooling (grind patterns); the backend does not consume them
  but documents them in the generated code. -/
  | quant (forall_ : Bool) (binders : Array Binder)
      (triggers : Array (Array Expr)) (body : Expr)
  /-- `Vermilion.Seq.new len f`. -/
  | seqNew (len f : Expr)
  /-- A machine bit operation (`Vermilion.Bits.<op>`/`s<op>` at a width). -/
  | bitOp (kind : String) (signed : Bool) (bits : Nat) (lhs rhs : Expr)
  /-- A spec closure (`|x| e`), a genuine Lean `fun`. -/
  | lambda (binders : Array Binder) (body : Expr)
  /-- Application of a spec-fn value (lambda or `spec_fn`-typed variable)
  to arguments — plain Lean application. -/
  | callFn (callee : Expr) (args : Array Expr)
  /-- Verus `choose|x| P(x)` (single binder, scalar type): rendered as
  `Vermilion.chooseSpec (fun x => P x)` — some value satisfying the
  guarded predicate when one exists, otherwise a fixed unconstrained
  value (Verus's skolem + `as_type` semantics). The generator injects the
  conditional characterizing fact per occurrence (docs/vcgen.md);
  triggers are preserved as metadata like `quant`'s. -/
  | choose (binder : Binder) (triggers : Array (Array Expr)) (body : Expr)
  deriving Repr, BEq, Inhabited

structure Span where
  file : String
  startLine : Nat
  startColumn : Nat
  endLine : Nat
  endColumn : Nat
  deriving Repr, BEq, Inhabited

/-- A checked function the adapter refused to lower: its identity, the
offending construct's span, and a one-line sanitized message. Recorded in
the manifest as a per-function disposition (never a Lean module) so one
out-of-fragment function cannot silently hide its lowered siblings, while
`vrml_check` keeps the run non-green as long as any refusal exists. -/
structure RefusedFunction where
  id : FunctionId
  span : Span
  message : String
  deriving Repr, Inhabited

structure Clause where
  assertId : String
  span : Span
  proposition : Expr
  description : Option String
  deriving Repr, BEq, Inhabited

structure CallContract where
  callee : String
  requires : Array Clause
  /-- Fresh symbol bound to the call result; obligations after the call
  quantify over it. -/
  result : Option Binder
  ensures : Array Expr
  deriving Repr, BEq, Inhabited

inductive InvariantPhase where
  | entry
  | preserve
  /-- Checked at a `break` site: the at-exit invariants (`invariant` + loop
  `ensures`) must hold there, with no decreases obligation. -/
  | atBreak
  deriving Repr, BEq, Inhabited

inductive Stmt where
  | assume (e : Expr)
  | assert (c : Clause)
  | call (c : CallContract)
  /-- Postcondition check at a (possibly early) return site. -/
  | ensures (c : Clause)
  /-- Fresh universally quantified symbol (branch joins, loop havoc). -/
  | fresh (b : Binder)
  /-- Loop invariant check; unlike `assert` it adds no hypothesis. -/
  | invariant (phase : InvariantPhase) (c : Clause)
  /-- Conditional control flow: obligations inside an arm see its path
  condition; arm-local context reaches the continuation only guarded. -/
  | branch (condition : Expr) (thenBranch elseBranch : Array Stmt)
  /-- Loop scope: the body is verified for an arbitrary iteration under the
  `iteration` facts; nothing inside escapes; the continuation assumes the
  `exit` facts over the havoc symbols introduced just before. -/
  | loop (iteration : Array Expr) (body : Array Stmt) (exit : Array Expr)
      (isolated : Bool)
  /-- `reveal(f)` / `hide(f)` / `reveal_with_fuel(f, n)`: obligations
  downstream see `f`'s definition iff `rounds > 0`. -/
  | reveal (id : FunctionId) (rounds : Nat)
  /-- `broadcast use G` of a broadcast group (or fact-less lemma): the
  canonical vstd path, resolved against `Vermilion.Vstd.lemmaHints` into
  ladder hints for downstream obligations. Fail-open: an unregistered
  path contributes no hints. -/
  | broadcast (path : String)
  /-- Check-and-discard scope (Verus's `DeadEnd`: `assert … by` blocks,
  exec-closure body checks): children are verified in the enclosing
  context; everything they introduce dies with the scope. -/
  | scope (children : Array Stmt)
  deriving Repr, BEq, Inhabited

structure FunctionView where
  id : FunctionId
  typeParams : Array String
  binders : Array Binder
  requires : Array Expr
  body : Array Stmt
  deriving Repr, BEq, Inhabited

/-- A user spec function to emit as a real Lean definition (`@[simp] def`
— the simp equation is the per-occurrence ground defining equation of the
no-fuel design). -/
structure SpecFn where
  id : FunctionId
  /-- Rust span of the `spec fn` definition (editor navigation from the
  emitted `def` back to the source). -/
  span : Span
  typeParams : Array String
  binders : Array Binder
  ret : Ty
  body : Expr
  /-- Default visibility: false for `#[verifier::opaque]` functions, whose
  definition reaches a machine attempt only under an active `reveal`. -/
  visible : Bool
  /-- Range facts of value parameters whose Verus types carry them
  (`nat`, machine widths). Conjoined into the recursive-definition guard:
  the Int embedding erases them from the binder types, and without them a
  Verus-checked decrease can be unprovable off-range (dalek-lite DL8,
  `binomial` with `k : nat`). -/
  paramRanges : Array Expr := #[]
  /-- Termination measures of a self-recursive definition (empty for
  non-recursive ones): emitted as `termination_by`, justified by the same
  decreases Verus already checked. -/
  decreases : Array Expr
  /-- An *uninterpreted* spec function (`uninterp spec fn`): a fixed but
  unknown total function with no body. Emitted as an `opaque` declaration;
  `body`/`decreases` are unused and `visible` is `false` (there is nothing
  to unfold). Congruence is free — it is ordinary Lean application. -/
  uninterpreted : Bool := false
  deriving Repr, BEq, Inhabited

/-- Recursive definitions get bounded rewriting instead of a simp entry
(simp on a recursive equation loops). -/
def SpecFn.isRecursive (specFn : SpecFn) : Bool := !specFn.decreases.isEmpty

/-- One variant of a user datatype. -/
structure DataVariant where
  name : String
  fields : Array Binder
  deriving Repr, BEq, Inhabited

/-- A user datatype, emitted as a real Lean `inductive` plus `@[simp]`
field accessors and variant predicates — structural facts come from the
kernel, never from axioms. -/
structure DataView where
  id : FunctionId
  typeParams : Array String
  variants : Array DataVariant
  deriving Repr, BEq, Inhabited

end Vermilion.Ir
