import Vermilion.Ir.Sexp
import Vermilion.Ir.Ast
import Vermilion.Vstd.Registry

/-!
# Decoding parsed S-expressions into the neutral model

Every decoder fails closed with the offending line and form; an IR produced
by a newer Rust serializer than this parser is an explicit error.
-/

namespace Vermilion.Ir

/-- The IR version this parser understands (`docs/ir.md`). -/
def supportedVersion : Int := 1

abbrev Decode (α : Type) := Except String α

private def fail (sexp : Sexp) (message : String) : Decode α :=
  .error s!"IR error at {sexp.pos}: {message} (got {sexp.describe})"

private def expectStr : Sexp → Decode String
  | .str s _ => .ok s
  | other => fail other "expected a string"

private def expectNat : Sexp → Decode Nat
  | .int v _ =>
    if v < 0 then .error s!"IR error: expected a nonnegative integer, got {v}"
    else .ok v.toNat
  | other => fail other "expected an integer"

private def expectList (head : String) : Sexp → Decode (Array Sexp)
  | list@(.list items _) =>
    match items[0]? with
    | some (Sexp.sym s _) =>
      if s == head then .ok (items.extract 1 items.size)
      else fail list s!"expected a `({head} …)` form"
    | _ => fail list s!"expected a `({head} …)` form"
  | other => fail other s!"expected a `({head} …)` form"

def decodeFunctionId (sexp : Sexp) : Decode FunctionId := do
  let items ← expectList "id" sexp
  if items.size != 3 then fail sexp "expected `(id CRATE (MODULES) NAME)`" else
  let modules ← match items[1]! with
    | .list moduleItems _ => moduleItems.mapM expectStr
    | other => fail other "expected a module list"
  return { crateName := ← expectStr items[0]!, modules, name := ← expectStr items[2]! }

partial def decodeTy : Sexp → Decode Ty
  | .sym "Int" _ => .ok .int
  | .sym "Prop" _ => .ok .prop
  | .sym "str" _ => .ok .strSlice
  | list@(.list items _) => do
    match items[0]? with
    | some (Sexp.sym "seq" _) =>
      if items.size == 2 then .seq <$> decodeTy items[1]!
      else fail list "expected `(seq TYPE)`"
    | some (Sexp.sym "set" _) =>
      if items.size == 2 then .set <$> decodeTy items[1]!
      else fail list "expected `(set TYPE)`"
    | some (Sexp.sym "map" _) =>
      if items.size == 3 then
        return .map (← decodeTy items[1]!) (← decodeTy items[2]!)
      else fail list "expected `(map KEY VALUE)`"
    | some (Sexp.sym "multiset" _) =>
      if items.size == 2 then .multiset <$> decodeTy items[1]!
      else fail list "expected `(multiset TYPE)`"
    | some (Sexp.sym "data" _) =>
      if items.size ≥ 2 then
        return .data (← decodeFunctionId items[1]!)
          (← (items.extract 2 items.size).mapM decodeTy)
      else fail list "expected `(data ID type*)`"
    | some (Sexp.sym "tyvar" _) =>
      match items[1]? with
      | some (Sexp.sym name _) => return .var name
      | some (Sexp.str name _) => return .var name
      | _ => fail list "expected `(tyvar NAME)`"
    | some (Sexp.sym "fnspec" _) =>
      if items.size == 3 then
        match items[1]! with
        | .list paramItems _ =>
          return .fn (← paramItems.mapM decodeTy) (← decodeTy items[2]!)
        | other => fail other "expected `(fnspec (type*) type)`"
      else fail list "expected `(fnspec (type*) type)`"
    | _ => fail list "expected a type (`Int`, `Prop`, or a collection form)"
  | other => fail other "expected a type (`Int`, `Prop`, or a collection form)"

def decodeBinder : Sexp → Decode Binder
  | list@(.list items _) => do
    if items.size != 2 then fail list "expected a `(NAME TYPE)` binder" else
    .ok { name := ← expectStr items[0]!, ty := ← decodeTy items[1]! }
  | other => fail other "expected a `(NAME TYPE)` binder"

def binOp? : String → Option BinOp
  | "add" => some .add
  | "sub" => some .sub
  | "mul" => some .mul
  | "ediv" => some .ediv
  | "emod" => some .emod
  | "lt" => some .lt
  | "le" => some .le
  | "gt" => some .gt
  | "ge" => some .ge
  | "eq" => some .eq
  | "ne" => some .ne
  | "iff" => some .iff
  | "niff" => some .niff
  | "and" => some .and
  | "or" => some .or
  | "implies" => some .implies
  | _ => none

mutual

partial def decodeTriggers (sexp : Sexp) : Decode (Array (Array Expr)) := do
  let groups ← expectList "triggers" sexp
  groups.mapM fun group => do
    (← expectList "trigger" group).mapM decodeExpr

partial def decodeExpr (sexp : Sexp) : Decode Expr := do
  match sexp with
  | .sym "true" _ => return .tt
  | .sym "false" _ => return .ff
  | .list items _ =>
    let some (Sexp.sym head _) := items[0]?
      | fail sexp "expected an expression form"
    let args := items.extract 1 items.size
    match head, args.size with
    | "var", 1 => return .var (← expectStr args[0]!)
    | "strlit", 1 => return .strLit (← expectStr args[0]!)
    | "int", 1 =>
      match args[0]! with
      | .int v _ => return .int v
      | other => fail other "expected an integer literal"
    | "not", 1 => return .not (← decodeExpr args[0]!)
    | "ite", 3 =>
      return .ite (← decodeExpr args[0]!) (← decodeExpr args[1]!)
        (← decodeExpr args[2]!)
    | "urange", 2 => return .urange (← expectNat args[0]!) (← decodeExpr args[1]!)
    | "srange", 2 => return .srange (← expectNat args[0]!) (← decodeExpr args[1]!)
    | "natclip", 1 => return .natClip (← decodeExpr args[0]!)
    | "sclip", 2 => return .sclip (← expectNat args[0]!) (← decodeExpr args[1]!)
    | "seqempty", 1 => return .seqEmpty (← decodeTy args[0]!)
    | "seqlen", 1 => return .seqLen (← decodeExpr args[0]!)
    | "seqpush", 2 => return .seqPush (← decodeExpr args[0]!) (← decodeExpr args[1]!)
    | "sequpdate", 3 =>
      return .seqUpdate (← decodeExpr args[0]!) (← decodeExpr args[1]!) (← decodeExpr args[2]!)
    | "seqsubrange", 3 =>
      return .seqSubrange (← decodeExpr args[0]!) (← decodeExpr args[1]!) (← decodeExpr args[2]!)
    | "seqadd", 2 => return .seqAdd (← decodeExpr args[0]!) (← decodeExpr args[1]!)
    | "seqtomultiset", 1 => return .seqToMultiset (← decodeExpr args[0]!)
    | "vstdapply", arity =>
      if arity < 1 then fail sexp "expected `(vstdapply PATH EXPR*)`" else do
      let path ← expectStr args[0]!
      -- Name resolution against the shipped mirror (SEMANTICS: fail
      -- closed). Growing this part of the fragment is a Lean-library-only
      -- change: add the model definition + lemmas + registry entry.
      match Vermilion.Vstd.specFn path with
      | some leanName =>
        return .vstdApply path leanName
          (← (args.extract 1 args.size).mapM decodeExpr)
      | none => fail sexp s!"outside the supported fragment: vstd \
          `{path}` has no Lean mirror yet — add its model definition and \
          registry entry in lean/Vermilion/Vstd/ (see Registry.lean)"
    | "seqindex", 2 => return .seqIndex (← decodeExpr args[0]!) (← decodeExpr args[1]!)
    | "seqnew", 2 => return .seqNew (← decodeExpr args[0]!) (← decodeExpr args[1]!)
    | "bitop", 5 =>
      match args[0]!, args[1]! with
      | .sym kind _, .sym sign _ =>
        if kind ∈ ["and", "or", "xor", "shl", "shr"] && sign ∈ ["u", "s"] then
          return .bitOp kind (sign == "s") (← expectNat args[2]!)
            (← decodeExpr args[3]!) (← decodeExpr args[4]!)
        else fail sexp "expected `(bitop and|or|xor|shl|shr u|s BITS E E)`"
      | _, _ => fail sexp "expected `(bitop KIND SIGN BITS E E)`"
    | "ctor", arity =>
      if arity < 2 then fail sexp "expected `(ctor ID VARIANT (typs …)? EXPR*)`" else do
      let id ← decodeFunctionId args[0]!
      let variant ← expectStr args[1]!
      -- Optional underdetermined type-parameter group (issue #18), the
      -- same `(typs (NAME TY)*)` form the apply node carries.
      let hasTyps :=
        match args[2]? with
        | some (Sexp.list items _) =>
          match items[0]? with
          | some (Sexp.sym "typs" _) => true
          | _ => false
        | _ => false
      if hasTyps then
        let items ← expectList "typs" args[2]!
        let typeArgs ← items.mapM fun item => do
          match item with
          | Sexp.list pair _ =>
            if h : pair.size = 2 then
              return (← expectStr pair[0], ← decodeTy pair[1])
            else fail item "expected a `(NAME TYPE)` type argument"
          | other => fail other "expected a `(NAME TYPE)` type argument"
        return .ctor id variant typeArgs
          (← (args.extract 3 args.size).mapM decodeExpr)
      else
        return .ctor id variant #[]
          (← (args.extract 2 args.size).mapM decodeExpr)
    | "fieldof", 4 =>
      return .fieldOf (← decodeFunctionId args[0]!) (← expectStr args[1]!)
        (← expectStr args[2]!) (← decodeExpr args[3]!)
    | "isvariant", 3 =>
      return .isVariant (← decodeFunctionId args[0]!) (← expectStr args[1]!)
        (← decodeExpr args[2]!)
    | "lambda", 2 =>
      match args[0]! with
      | .list binderItems _ =>
        return .lambda (← binderItems.mapM decodeBinder) (← decodeExpr args[1]!)
      | other => fail other "expected a binder list"
    | "applyfn", arity =>
      if arity < 1 then fail sexp "expected `(applyfn CALLEE EXPR*)`" else
      return .callFn (← decodeExpr args[0]!)
        (← (args.extract 1 args.size).mapM decodeExpr)
    | "forall", 3 =>
      match args[0]! with
      | .list binderItems _ =>
        return .quant true (← binderItems.mapM decodeBinder)
          (← decodeTriggers args[1]!) (← decodeExpr args[2]!)
      | other => fail other "expected a binder list"
    | "exists", 3 =>
      match args[0]! with
      | .list binderItems _ =>
        return .quant false (← binderItems.mapM decodeBinder)
          (← decodeTriggers args[1]!) (← decodeExpr args[2]!)
      | other => fail other "expected a binder list"
    | "choose", 3 =>
      match args[0]! with
      | .list binderItems _ =>
        if h : binderItems.size = 1 then
          return .choose (← decodeBinder binderItems[0])
            (← decodeTriggers args[1]!) (← decodeExpr args[2]!)
        else fail sexp "expected exactly one choose binder"
      | other => fail other "expected a binder list"
    | "apply", arity =>
      if arity < 1 then fail sexp "expected `(apply ID (typs …)? EXPR*)`" else do
      let id ← decodeFunctionId args[0]!
      -- Optional explicit type-argument group `(typs (NAME TY)*)` —
      -- generic uninterp spec fn applications (issue #19). Its head
      -- symbol cannot collide with an expression form.
      let hasTyps :=
        match args[1]? with
        | some (Sexp.list items _) =>
          match items[0]? with
          | some (Sexp.sym "typs" _) => true
          | _ => false
        | _ => false
      if hasTyps then
        let items ← expectList "typs" args[1]!
        let typeArgs ← items.mapM fun item => do
          match item with
          | Sexp.list pair _ =>
            if h : pair.size = 2 then
              return (← expectStr pair[0], ← decodeTy pair[1])
            else fail item "expected a `(NAME TYPE)` type argument"
          | other => fail other "expected a `(NAME TYPE)` type argument"
        return .apply id typeArgs
          (← (args.extract 2 args.size).mapM decodeExpr)
      else
        return .apply id #[]
          (← (args.extract 1 args.size).mapM decodeExpr)
    | "setempty", 1 => return .setEmpty (← decodeTy args[0]!)
    | "mapempty", 2 => return .mapEmpty (← decodeTy args[0]!) (← decodeTy args[1]!)
    | "msempty", 1 => return .multisetEmpty (← decodeTy args[0]!)
    | _, arity =>
      match CollOp.table.find? (fun entry => entry.1 == head && entry.2.1 == arity) with
      | some entry => return .coll entry.2.2.1 (← args.mapM decodeExpr)
      | none =>
        if arity == 2 then
          match binOp? head with
          | some op =>
            return .binary op (← decodeExpr args[0]!) (← decodeExpr args[1]!)
          | none => fail sexp s!"unknown expression head `{head}`"
        else fail sexp s!"unknown or malformed `{head}` expression"
  | other => fail other "expected an expression"

end

def decodeSpan (sexp : Sexp) : Decode Span := do
  let items ← expectList "span" sexp
  if items.size != 5 then fail sexp "expected `(span FILE L C L C)`" else
  return {
    file := ← expectStr items[0]!
    startLine := ← expectNat items[1]!
    startColumn := ← expectNat items[2]!
    endLine := ← expectNat items[3]!
    endColumn := ← expectNat items[4]!
  }

def decodeClause (sexp : Sexp) : Decode Clause := do
  let items ← expectList "clause" sexp
  if items.size != 3 && items.size != 4 then
    fail sexp "expected `(clause ID SPAN EXPR DESCRIPTION?)`" else
  return {
    assertId := ← expectStr items[0]!
    span := ← decodeSpan items[1]!
    proposition := ← decodeExpr items[2]!
    description := ← match items[3]? with
      | some description => some <$> expectStr description
      | none => pure none
  }

partial def decodeStmt (sexp : Sexp) : Decode Stmt := do
  match sexp.head? with
  | some "reveal" => do
    let items ← expectList "reveal" sexp
    if items.size != 2 then
      fail sexp "expected `(reveal ID ROUNDS)`" else
    return .reveal (← decodeFunctionId items[0]!) (← expectNat items[1]!)
  | some "broadcast" => do
    let items ← expectList "broadcast" sexp
    if items.size != 1 then fail sexp "expected `(broadcast PATH)`" else
    return .broadcast (← expectStr items[0]!)
  | some "fresh" => do
    let items ← expectList "fresh" sexp
    if items.size != 1 then fail sexp "expected `(fresh BINDER)`" else
    return .fresh (← decodeBinder items[0]!)
  | some "scope" => do
    let items ← expectList "scope" sexp
    return .scope (← items.mapM decodeStmt)
  | some "branch" => do
    let items ← expectList "branch" sexp
    if items.size != 3 then
      fail sexp "expected `(branch EXPR (then …) (else …))`" else
    return .branch (← decodeExpr items[0]!)
      (← (← expectList "then" items[1]!).mapM decodeStmt)
      (← (← expectList "else" items[2]!).mapM decodeStmt)
  | some "invariant" => do
    let items ← expectList "invariant" sexp
    if items.size != 2 then
      fail sexp "expected `(invariant PHASE CLAUSE)`" else
    let phase ← match items[0]! with
      | .sym "entry" _ => pure InvariantPhase.entry
      | .sym "preserve" _ => pure InvariantPhase.preserve
      | .sym "break" _ => pure InvariantPhase.atBreak
      | other => fail other "expected `entry`, `preserve`, or `break`"
    return .invariant phase (← decodeClause items[1]!)
  | some "loop" => do
    let items ← expectList "loop" sexp
    -- Optional leading `noniso` marker: #[verifier::loop_isolation(false)]
    -- (DL6) — the body keeps the enclosing hypotheses across the havoc.
    let (isolated, items) :=
      match items[0]? with
      | some (Sexp.sym "noniso" _) => (false, items.extract 1 items.size)
      | _ => (true, items)
    if items.size != 3 then
      fail sexp "expected `(loop noniso? (iteration …) (body …) (exit …))`" else
    return .loop
      (← (← expectList "iteration" items[0]!).mapM decodeExpr)
      (← (← expectList "body" items[1]!).mapM decodeStmt)
      (← (← expectList "exit" items[2]!).mapM decodeExpr)
      isolated
  | some "assume" => do
    let items ← expectList "assume" sexp
    if items.size != 1 then fail sexp "expected `(assume EXPR)`" else
    return .assume (← decodeExpr items[0]!)
  | some "assert" => do
    let items ← expectList "assert" sexp
    if items.size != 1 then fail sexp "expected `(assert CLAUSE)`" else
    return .assert (← decodeClause items[0]!)
  | some "ensures" => do
    let items ← expectList "ensures" sexp
    if items.size != 1 then fail sexp "expected `(ensures CLAUSE)`" else
    return .ensures (← decodeClause items[0]!)
  | some "call" => do
    let items ← expectList "call" sexp
    if items.size < 3 then
      fail sexp "expected `(call NAME (requires …) (result B)? (ensures …))`" else
    let callee ← expectStr items[0]!
    let requires ← (← expectList "requires" items[1]!).mapM decodeClause
    let (result, ensuresAt) ←
      if items.size == 4 then do
        let resultItems ← expectList "result" items[2]!
        if h : resultItems.size = 1 then
          pure (some (← decodeBinder resultItems[0]), 3)
        else fail items[2]! "expected `(result BINDER)`"
      else pure (none, 2)
    if items.size != ensuresAt + 1 then fail sexp "malformed `call` form" else
    let ensures ← (← expectList "ensures" items[ensuresAt]!).mapM decodeExpr
    return .call { callee, requires, result, ensures }
  | some other => fail sexp s!"unknown statement head `{other}`"
  | none => fail sexp "expected a statement"

def decodeTypeParams (sexp : Sexp) : Decode (Array String) := do
  (← expectList "typarams" sexp).mapM expectStr

def decodeFunction (sexp : Sexp) : Decode FunctionView := do
  let items ← expectList "function" sexp
  if items.size != 5 then
    fail sexp "expected `(function ID typarams (binders …) (requires …) (body …))`" else
  return {
    id := ← decodeFunctionId items[0]!
    typeParams := ← decodeTypeParams items[1]!
    binders := ← (← expectList "binders" items[2]!).mapM decodeBinder
    requires := ← (← expectList "requires" items[3]!).mapM decodeExpr
    body := ← (← expectList "body" items[4]!).mapM decodeStmt
  }

/-- Decode `(specfn-opaque ID typarams SPAN (binders …) (ret TYPE))` — an
uninterpreted spec function (no body/decreases/visibility). -/
def decodeSpecFnOpaque (sexp : Sexp) : Decode SpecFn := do
  let items ← expectList "specfn-opaque" sexp
  if items.size != 5 then
    fail sexp "expected `(specfn-opaque ID typarams SPAN (binders …) (ret TYPE))`" else
  let retItems ← expectList "ret" items[4]!
  if retItems.size != 1 then fail items[4]! "expected `(ret TYPE)`" else
  return {
    id := ← decodeFunctionId items[0]!
    typeParams := ← decodeTypeParams items[1]!
    span := ← decodeSpan items[2]!
    binders := ← (← expectList "binders" items[3]!).mapM decodeBinder
    ret := ← decodeTy retItems[0]!
    body := default
    visible := false
    decreases := #[]
    uninterpreted := true
  }

def decodeSpecFn (sexp : Sexp) : Decode SpecFn := do
  let items ← expectList "specfn" sexp
  if items.size != 9 then
    fail sexp "expected `(specfn ID typarams SPAN (binders …) (ret TYPE) \
(visible 0|1) (decreases EXPR*) (ranges EXPR*) (body EXPR))`" else
  let retItems ← expectList "ret" items[4]!
  if retItems.size != 1 then fail items[4]! "expected `(ret TYPE)`" else
  let visibleItems ← expectList "visible" items[5]!
  let visible ← match visibleItems[0]? with
    | some (Sexp.int 0 _) => pure false
    | some (Sexp.int 1 _) => pure true
    | _ => fail items[5]! "expected `(visible 0|1)`"
  let bodyItems ← expectList "body" items[8]!
  if bodyItems.size != 1 then fail items[8]! "expected `(body EXPR)`" else
  return {
    id := ← decodeFunctionId items[0]!
    typeParams := ← decodeTypeParams items[1]!
    span := ← decodeSpan items[2]!
    binders := ← (← expectList "binders" items[3]!).mapM decodeBinder
    ret := ← decodeTy retItems[0]!
    body := ← decodeExpr bodyItems[0]!
    visible
    decreases := ← (← expectList "decreases" items[6]!).mapM decodeExpr
    paramRanges := ← (← expectList "ranges" items[7]!).mapM decodeExpr
  }

def decodeDataVariant (sexp : Sexp) : Decode DataVariant := do
  let items ← expectList "variant" sexp
  if items.size < 1 then fail sexp "expected `(variant NAME (field NAME TYPE)*)`" else
  let mut fields : Array Binder := #[]
  for item in items.extract 1 items.size do
    let fieldItems ← expectList "field" item
    if fieldItems.size != 2 then
      fail item "expected `(field NAME TYPE)`" else
    fields := fields.push
      { name := ← expectStr fieldItems[0]!, ty := ← decodeTy fieldItems[1]! }
  return { name := ← expectStr items[0]!, fields }

def decodeDatatype (sexp : Sexp) : Decode DataView := do
  let items ← expectList "datatype" sexp
  if items.size < 3 then
    fail sexp "expected `(datatype ID typarams (variant …)+)`" else
  return {
    id := ← decodeFunctionId items[0]!
    typeParams := ← decodeTypeParams items[1]!
    variants := ← (items.extract 2 items.size).mapM decodeDataVariant
  }

/-- Decode `(refused (id …) (span …) "message")`. -/
def decodeRefused (sexp : Sexp) : Decode RefusedFunction := do
  let items ← expectList "refused" sexp
  if items.size != 3 then
    fail sexp "expected `(refused (id …) (span …) MESSAGE)`" else
  return {
    id := ← decodeFunctionId items[0]!
    span := ← decodeSpan items[1]!
    message := ← expectStr items[2]!
  }

/-- A decoded IR document: the datatype and spec-function definitions the
obligations reference, every checked function that lowered, and the
per-function refusal dispositions for those that did not. -/
structure Document where
  datatypes : Array DataView
  specFns : Array SpecFn
  functions : Array FunctionView
  refused : Array RefusedFunction := #[]
  deriving Repr, Inhabited

/-- Decode a whole IR document: `(vrml-ir VERSION (specfn …)* FUNCTION*)`. -/
def decodeDocument (input : String) : Decode Document := do
  let sexps ← readSexps input
  let some document := sexps[0]?
    | .error "IR error: empty document"
  if sexps.size != 1 then
    .error "IR error: expected a single top-level `(vrml-ir …)` form" else
  let items ← expectList "vrml-ir" document
  let some versionSexp := items[0]?
    | fail document "missing IR version"
  let version ← match versionSexp with
    | .int v _ => pure v
    | other => fail other "expected the IR version number"
  if version != supportedVersion then
    .error s!"IR error: version {version} is not supported \
      (this parser understands {supportedVersion})" else
  let mut datatypes : Array DataView := #[]
  let mut specFns : Array SpecFn := #[]
  let mut functions : Array FunctionView := #[]
  let mut refused : Array RefusedFunction := #[]
  for item in items.extract 1 items.size do
    match item with
    | .list inner _ =>
      match inner[0]? with
      | some (Sexp.sym "datatype" _) =>
        datatypes := datatypes.push (← decodeDatatype item)
      | some (Sexp.sym "specfn" _) => specFns := specFns.push (← decodeSpecFn item)
      | some (Sexp.sym "specfn-opaque" _) =>
        specFns := specFns.push (← decodeSpecFnOpaque item)
      | some (Sexp.sym "function" _) =>
        functions := functions.push (← decodeFunction item)
      | some (Sexp.sym "refused" _) =>
        refused := refused.push (← decodeRefused item)
      | _ => fail item "expected a `(datatype …)`, `(specfn …)`, `(specfn-opaque …)`, `(function …)`, or `(refused …)` form"
    | other => fail other "expected a `(datatype …)`, `(specfn …)`, `(specfn-opaque …)`, `(function …)`, or `(refused …)` form"
  return { datatypes, specFns, functions, refused }

end Vermilion.Ir
