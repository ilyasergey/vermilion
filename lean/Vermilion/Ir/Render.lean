import Vermilion.Ir.Vcgen
import Vermilion.Ir.Print

/-!
# Rendering obligations as the generated Lean module

Produces the marker-delimited obligation blocks (`-- vrml:begin <name>
<hash>`) that `vrml_sync` reconciles into the user-editable `proofs/` twin,
plus the per-obligation records and per-function fingerprints recorded in the
module manifest.
-/

namespace Vermilion.Ir

private def leanStringLiteral (raw : String) : String :=
  raw.foldl (init := "") fun acc c =>
    match c with
    | '\\' => acc ++ "\\\\"
    | '"' => acc ++ "\\\""
    | '\n' => acc ++ "\\n"
    | other => acc.push other

def Obligation.leaf (obligation : Obligation) : String :=
  leanSegment s!"{obligation.kind.render}_{obligation.assertId}"

def Obligation.qualifiedName (obligation : Obligation) : String :=
  s!"{obligation.function.qualified}.{obligation.leaf}"

/-- The span-free canonical statement text; its FNV-1a hash keys proof-block
reconciliation and the semantic fingerprint. -/
def Obligation.canonicalStatement (obligation : Obligation) : String := Id.run do
  let mut text := ""
  for param in obligation.typeParams do
    text := text ++ s!"({leanSegment param} : Type) [Inhabited {leanSegment param}] "
  for binder in obligation.binders do
    text := text ++ s!"({leanSegment binder.name} : {binder.ty.render}) "
  for hypothesis in obligation.hypotheses do
    text := text ++ s!"({leanSegment hypothesis.name} : {hypothesis.proposition.renderTop}) "
  return text ++ s!": {obligation.goal.renderTop}"

def Obligation.statementHash (obligation : Obligation) : String :=
  fnv1a obligation.canonicalStatement

private def EvidenceArg.render : EvidenceArg → String
  | .type ty => ty.render
  | .term value => value.renderAtom

def EvidenceTarget.render (target : EvidenceTarget) : String :=
  let className := String.intercalate "." (target.className.toList.map leanSegment)
  if target.args.isEmpty then className
  else className ++ " " ++
    String.intercalate " " (target.args.toList.map EvidenceArg.render)

def EvidenceObligation.qualifiedName (evidence : EvidenceObligation) : String :=
  evidence.function.qualified ++ "." ++ leanSegment evidence.leaf

/-- A top-level, project-unique Lean identifier for the local instance. Lean
does not register a dotted `local instance` for synthesis outside the dotted
namespace, so the declaration name is flattened while the marker/manifest
identity remains source-qualified. -/
def EvidenceObligation.declarationName (evidence : EvidenceObligation) : String :=
  leanSegment (evidence.function.qualified ++ "_" ++ evidence.leaf)

def EvidenceObligation.canonicalStatement (evidence : EvidenceObligation) : String := Id.run do
  let mut text := ""
  for param in evidence.typeParams do
    text := text ++ s!"({leanSegment param} : Type) [Inhabited {leanSegment param}] "
  for binder in evidence.binders do
    text := text ++ s!"({leanSegment binder.name} : {binder.ty.render}) "
  return evidence.declarationName ++ " " ++ text ++ ": " ++ evidence.target.render

def EvidenceObligation.statementHash (evidence : EvidenceObligation) : String :=
  fnv1a evidence.canonicalStatement

/-- Render one interactive class-dictionary obligation. The generated module
contains a conspicuous placeholder so later VCs can elaborate conditionally;
`vrml_check` nevertheless reports the evidence record as unresolved until the
user-owned twin replaces this body with a kernel-checked term.

In per-file mode the declaration is a `local instance` inside the module's
evidence `section`; in per-function mode the declarations live in their own
`Evidence` unit module and must be plain `instance`s, so the units that
import the module actually see them (a `local instance` is invisible to
importers). -/
def renderEvidenceObligation (local_ : Bool) (evidence : EvidenceObligation) :
    String := Id.run do
  let name := evidence.qualifiedName
  let declarationName := evidence.declarationName
  let hash := evidence.statementHash
  let span := evidence.span
  let mut out := s!"-- vrml:begin {name} {hash}\n"
  out := out ++ "/--\n"
  out := out ++ s!"Generated typeclass evidence obligation `{name}`.\n\n"
  out := out ++ s!"- Rust source: `{span.file}:{span.startLine}:{span.startColumn}-{span.endLine}:{span.endColumn}`\n"
  out := out ++ s!"- Evidence origin: {evidence.origin}\n"
  out := out ++ s!"- Target: `{evidence.target.render}`\n"
  unless evidence.dependencies.isEmpty do
    out := out ++ s!"- Evidence dependencies: {String.intercalate ", " evidence.dependencies.toList}\n"
  unless evidence.consumers.isEmpty do
    out := out ++ s!"- Consumers: {String.intercalate ", " evidence.consumers.toList}\n"
  out := out ++ s!"- Statement hash: `{hash}`\n"
  out := out ++ "-/\n"
  out := out ++ s!"def {declarationName}_meta : Vermilion.ObligationMeta := \{\n"
  out := out ++ s!"  rustFile := \"{leanStringLiteral span.file}\"\n"
  out := out ++ s!"  startLine := {span.startLine}\n"
  out := out ++ s!"  startColumn := {span.startColumn}\n"
  out := out ++ s!"  endLine := {span.endLine}\n"
  out := out ++ s!"  endColumn := {span.endColumn}\n"
  out := out ++ "  assertId := \"typeclass-evidence\"\n"
  out := out ++ s!"  functionName := \"{evidence.function.qualified}\"\n"
  out := out ++ "  kind := \"typeclass_evidence\"\n"
  out := out ++ s!"  statementHash := \"{hash}\"\n"
  out := out ++ "}\n"
  let keyword := if local_ then "local instance" else "instance"
  out := out ++ s!"@[vrml_evidence] noncomputable {keyword} {declarationName}"
  for param in evidence.typeParams do
    out := out ++ s!"\n    ({leanSegment param} : Type) [Inhabited {leanSegment param}]"
  for binder in evidence.binders do
    out := out ++ s!"\n    ({leanSegment binder.name} : {binder.ty.render})"
  out := out ++ s!" :\n    {evidence.target.render} := by\n"
  out := out ++ "  -- TODO(vermilion): provide this class dictionary in the proofs twin.\n"
  out := out ++ "  sorry\n"
  out := out ++ s!"-- vrml:end {name}\n"
  return out

/-- Deduplicate equal evidence declarations and topologically order their
explicit dependencies. An unknown dependency, conflicting duplicate, or
cycle is a generation error rather than an ambient-instance fallback. -/
def orderEvidenceObligations (input : Array EvidenceObligation) :
    Except String (Array EvidenceObligation) := do
  let mut unique : Array EvidenceObligation := #[]
  for evidence in input do
    match unique.find? (·.qualifiedName == evidence.qualifiedName) with
    | some previous =>
      if previous.statementHash != evidence.statementHash then
        throw s!"conflicting evidence obligations named {evidence.qualifiedName}"
    | none => unique := unique.push evidence
  for evidence in unique do
    for dependency in evidence.dependencies do
      unless unique.any (·.qualifiedName == dependency) do
        throw s!"evidence {evidence.qualifiedName} has unknown dependency {dependency}"
  let mut ordered : Array EvidenceObligation := #[]
  let mut remaining := unique
  while !remaining.isEmpty do
    let ready := remaining.findIdx? fun evidence =>
      evidence.dependencies.all fun dependency =>
        ordered.any (·.qualifiedName == dependency)
    let some index := ready | do
      let names := String.intercalate ", " (remaining.toList.map (·.qualifiedName))
      throw s!"cyclic typeclass evidence dependencies: {names}"
    let some evidence := remaining[index]? |
      throw "internal error: selected typeclass evidence index is out of bounds"
    ordered := ordered.push evidence
    remaining := (remaining.toList.eraseIdx index).toArray
  return ordered

/-- One obligation block, delimited by machine-liftable markers. The
obligation's own `unfolds` (spec-fn definitions visible at its program
point) drive the machine attempt: non-recursive names go into the
`vrml [names…]` simp list; recursive ones get bounded rewriting
(`iterate N (try rw [f])` — a simp entry would loop), with N the reveal
rounds. -/
def renderObligation (recursiveNames : Array String)
    (obligation : Obligation) : String := Id.run do
  let unfolds := (obligation.unfolds.filter
    fun (name, _) => !recursiveNames.contains name).map (·.1)
  let bounded := obligation.unfolds.filter
    fun (name, _) => recursiveNames.contains name
  let leaf := obligation.leaf
  let name := obligation.qualifiedName
  let hash := obligation.statementHash
  let span := obligation.span
  let mut out := s!"-- vrml:begin {name} {hash}\n"
  out := out ++ "/--\n"
  out := out ++ s!"Generated VC `{name}`.\n\n"
  -- A path containing `/-` (or `-/`) would open/close a nested comment
  -- inside this doc comment and break the module's parse; keep the comment
  -- well-formed for any path.
  let commentSafeFile :=
    (span.file.replace "/-" "/ -").replace "-/" "- /"
  out := out ++ s!"- Rust source: `{commentSafeFile}:{span.startLine}:{span.startColumn}-\
{span.endLine}:{span.endColumn}`\n"
  out := out ++ s!"- Rust/SST construct: {obligation.origin}\n"
  out := out ++ s!"- AssertId: `{obligation.assertId}`\n"
  out := out ++ s!"- Statement hash: `{hash}`\n"
  -- Quantifier triggers, preserved from Verus for future e-matching
  -- tooling (grind patterns); not consumed by the ladder today.
  let triggerSets := (obligation.hypotheses.map (·.proposition)).foldl
    (fun acc proposition => acc ++ proposition.collectTriggers)
    obligation.goal.collectTriggers
  if !triggerSets.isEmpty then
    out := out ++ "- Triggers (Verus, for future e-matching):"
    for groups in triggerSets do
      for group in groups do
        let rendered := String.intercalate ", " (group.toList.map (·.render))
        out := out ++ s!" ⟨{rendered}⟩"
    out := out ++ "\n"
  out := out ++ "-/\n"
  out := out ++ s!"def {leaf}_meta : Vermilion.ObligationMeta := \{\n"
  out := out ++ s!"  rustFile := \"{leanStringLiteral span.file}\"\n"
  out := out ++ s!"  startLine := {span.startLine}\n"
  out := out ++ s!"  startColumn := {span.startColumn}\n"
  out := out ++ s!"  endLine := {span.endLine}\n"
  out := out ++ s!"  endColumn := {span.endColumn}\n"
  out := out ++ s!"  assertId := \"{leanStringLiteral obligation.assertId}\"\n"
  out := out ++ s!"  functionName := \"{leanStringLiteral obligation.function.qualified}\"\n"
  out := out ++ s!"  kind := \"{obligation.kind.render}\"\n"
  out := out ++ s!"  statementHash := \"{hash}\"\n"
  out := out ++ "}\n"
  out := out ++ s!"@[vrml_obligation] theorem {leaf}"
  for param in obligation.typeParams do
    out := out ++
      s!"\n    ({leanSegment param} : Type) [Inhabited {leanSegment param}]"
  for binder in obligation.binders do
    out := out ++ s!"\n    ({leanSegment binder.name} : {binder.ty.render})"
  for hypothesis in obligation.hypotheses do
    out := out ++
      s!"\n    ({leanSegment hypothesis.name} : {hypothesis.proposition.renderTop})"
  out := out ++ s!" :\n    {obligation.goal.renderTop} := by\n"
  -- One interleaved loop over ALL recursive unfolds: a mutual chain
  -- alternates definitions (`is_even 4 → is_odd 3 → …`), which separate
  -- per-function loops cannot follow. `rw` with a list rewrites with the
  -- first name that matches; iterating to the maximum rounds covers each
  -- definition up to its own bound. Normalize ground arithmetic after each
  -- rewrite: exact `nat` clipping introduces conditionals around recursive
  -- predecessors, and leaving those branches suspended makes a small
  -- concrete mutual recursion expand exponentially.
  unless bounded.isEmpty do
    let rounds := bounded.foldl (fun acc (_, n) => acc + n) 0
    let alts := String.intercalate " | " ((bounded.map (·.1)).toList.map
      fun name => s!"(rw [{name}]; try norm_num)")
    out := out ++ s!"  iterate {rounds} (try first | {alts})\n"
  -- The `vrml [...]` simp set carries both the revealed spec-fn
  -- definitions (`unfolds`) and the broadcast-use hint lemmas
  -- (`obligation.hints`, resolved from the vstd mirror registry).
  let simpNames := unfolds.toList ++ obligation.hints.toList
  if simpNames.isEmpty then
    out := out ++ "  vrml\n"
  else
    out := out ++ s!"  vrml [{String.intercalate ", " simpNames}]\n"
  out := out ++ s!"-- vrml:end {name}\n"
  return out

/-- One generated obligation's identity and location, mirrored into the
module manifest for `vrml_check` and incremental tooling. -/
structure ObligationRecord where
  name : String
  «namespace» : String
  leaf : String
  kind : String
  assertId : String
  statementHash : String
  rustSpan : Span
  /-- 1-based inclusive line range in the generated file. -/
  leanLineStart : Nat
  leanLineEnd : Nat
  /-- The emitted file this block lives in (per-function emission mode);
  empty in per-file mode, where the manifest-level `lean_file` names it. -/
  leanFile : String := ""
  deriving Repr, Inhabited

/-- Per-function incremental fingerprints. Semantic hashes the canonical
(span-free) statements — callee contracts are substituted into callers, so
contract edits propagate while body-only edits stay local. Location hashes
only the spans. -/
structure FunctionRecord where
  function : String
  semanticFingerprint : String
  locationFingerprint : String
  deriving Repr, Inhabited

private def countLines (text : String) : Nat :=
  text.foldl (fun n c => if c == '\n' then n + 1 else n) 0

/-- Render one user datatype as a real `inductive` plus `@[simp]` field
accessors (wrong-variant access yields `default`, mirroring Verus's
underspecification) and variant predicates. Structural facts —
injectivity, disjointness, exhaustiveness — come from the kernel. -/
def renderDatatype (data : DataView) : String := Id.run do
  let name := data.id.qualified
  let params := data.typeParams.toList.map leanSegment
  -- `(T : Type)` binders on the inductive header and every generated def;
  -- accessors also need `[Inhabited T]` for the wrong-variant `default`.
  let explicit := String.join (params.map (fun p => s!" ({p} : Type)"))
  let implicit := String.join (params.map (fun p => s!" \{{p} : Type}"))
  let withInhab := String.join
    (params.map (fun p => s!" \{{p} : Type} [Inhabited {p}]"))
  -- The datatype applied to its own parameters (`S T`), used wherever the
  -- self type appears.
  let self := if params.isEmpty then name
    else s!"({name} {String.intercalate " " params})"
  let mut out := s!"inductive {name}{explicit} where\n"
  for variant in data.variants do
    out := out ++ s!"  | {leanSegment variant.name}"
    for field in variant.fields do
      out := out ++ s!" ({leanSegment field.name} : {field.ty.render})"
    out := out ++ "\n"
  out := out ++ s!"deriving Inhabited\n\n"
  -- Variant predicates, each with a `Decidable` instance so they can guard
  -- a spec-level `if` (`Vermilion.iteP`) computably — the guard reduces to
  -- `True`/`False` per constructor, so `inferInstance` discharges it.
  for variant in data.variants do
    out := out ++
      s!"@[simp, grind] def {name}.is_{leanSegment variant.name}{implicit} : {self} → Prop\n"
    for candidate in data.variants do
      let wildcards := String.intercalate ""
        (candidate.fields.toList.map (fun _ => " _"))
      let verdict := if candidate.name == variant.name then "True" else "False"
      out := out ++
        s!"  | .{leanSegment candidate.name}{wildcards} => {verdict}\n"
    out := out ++
      s!"instance{implicit} (x : {self}) : \
Decidable ({name}.is_{leanSegment variant.name} x) := by\n"
    -- With a single constructor the predicate is always `True`, so the
    -- generic `first | isTrue … | isFalse …` leaves the `isFalse` branch
    -- dead and the `<;>` focuses a single goal — both trip Lean's tactic
    -- linters in the user twin. Emit the exact proof instead.
    if data.variants.size == 1 then
      out := out ++ "  cases x\n  exact isTrue trivial\n\n"
    else
      out := out ++ "  cases x <;> first | exact isTrue trivial | exact isFalse (by simp)\n\n"
  -- Field accessors.
  for variant in data.variants do
    for field in variant.fields do
      out := out ++ s!"@[simp, grind] def \
{name}.get_{leanSegment variant.name}_{leanSegment field.name}{withInhab} : \
{self} → {field.ty.render}\n"
      for candidate in data.variants do
        if candidate.name == variant.name then
          let binders := String.intercalate "" (candidate.fields.toList.map
            fun candidateField =>
              if candidateField.name == field.name then
                s!" {leanSegment candidateField.name}"
              else " _")
          out := out ++
            s!"  | .{leanSegment candidate.name}{binders} => \
{leanSegment field.name}\n"
        else
          let wildcards := String.intercalate ""
            (candidate.fields.toList.map (fun _ => " _"))
          out := out ++
            s!"  | .{leanSegment candidate.name}{wildcards} => default\n"
      out := out ++ "\n"
  return out

/-- Does this spec fn's body contain a conditional whose guard `Decidable`
synthesis cannot see through (`Expr.needsDecidableEvidence` — the same
recognizer the theorem layer's evidence closure uses, docs/vcgen.md
`(EVIDENCE-DECIDABLE-PROP)`)? Definitions precede the module's evidence
instance, so an affected one is rendered under `open Classical in` and
goes `noncomputable` instead. The fn's own Prop-typed (Rust `bool`)
parameters seed the opaque-variable telescope. -/
def SpecFn.needsPropDecidable (specFn : SpecFn) : Bool :=
  let propVariables := specFn.binders.foldl (fun names binder =>
    if binder.ty == .prop then binder.name :: names else names) []
  specFn.body.needsDecidableEvidence propVariables

/-- The qualified names of the spec fns whose emitted definitions must be
`noncomputable`: uninterpreted ones (rendered `opaque`), bodies that are
classical themselves (`chooseSpec`, possibly-zero `ediv`/`emod`), and —
transitively — bodies applying any such definition (Lean's compiler
rejects a computable `def` that calls a noncomputable one). Fixpoint over
the module's spec fns. -/
def classicalClosure (specFns : Array SpecFn) : List String := Id.run do
  -- Seed: definitions noncomputable on their own (these markers also come
  -- from `needsClassical` in `renderSpecFn` directly; the seed only feeds
  -- the propagation).
  let mut classical : List String := []
  for specFn in specFns do
    if specFn.uninterpreted || specFn.body.needsClassical ||
        specFn.needsPropDecidable then
      classical := specFn.id.qualified :: classical
  -- Propagate only into VALUE-returning definitions: a Prop-valued def is
  -- erased by the compiler, so it neither needs the marker nor infects its
  -- consumers (its applications erase with it).
  let mut changed := true
  while changed do
    changed := false
    for specFn in specFns do
      let name := specFn.id.qualified
      if specFn.ret != .prop && !classical.contains name &&
          specFn.body.applies.any (classical.contains ·) then
        classical := name :: classical
        changed := true
  return classical.filter fun name =>
    match specFns.find? (·.id.qualified == name) with
    | some specFn => specFn.ret != .prop
    | none => false

/-- Render one user spec function as a real Lean definition. Deliberately
NOT `@[simp]`: each obligation's `vrml [names…]` unfold list is the sole
visibility channel, so a hidden (`#[verifier::opaque]`, un-`reveal`ed)
definition stays invisible to every ladder rung, matching Verus's
verdicts. The simp equation applied through the list is the
per-occurrence ground defining equation of the no-fuel design. -/
def renderSpecFn (specFn : SpecFn) (forceClassical : Bool := false) :
    String := Id.run do
  -- `noncomputable` only when the body forces it (a possibly-zero
  -- `ediv`/`emod`) — otherwise generated code stays plain (user directive
  -- 2026-07-13): `iteP` is computable via its `Decidable` instance and
  -- nonzero-literal division renders native. A conditional whose condition
  -- is an OPAQUE Prop (a spec-fn application, a quantifier — anything
  -- `Decidable` synthesis cannot see through; dalek-lite DL8's
  -- `iteP (is_negative a) …`) additionally needs the classical fallback
  -- instance in scope: `open Classical in` before the definition, and the
  -- definition goes `noncomputable`. Recursive definitions render
  -- their conditionals dependently (`if _h : c then …`) so the equation
  -- compiler sees the branch hypotheses in the termination goals, with
  -- `termination_by` from the Verus-checked decreases measures.
  let recursive := specFn.isRecursive
  let propDec := specFn.needsPropDecidable
  let classical := specFn.body.needsClassical || forceClassical || propDec
  let mut out := ""
  -- Navigation marker: the editor's Lean→Rust jump (⌘⇧J) reads the
  -- definition's source position from this line.
  out := out ++ s!"-- vrml:spec {specFn.id.qualified} {specFn.span.file}:{specFn.span.startLine}:{specFn.span.startColumn}
"
  -- An uninterpreted spec fn: a fixed unknown total function, emitted as an
  -- `opaque` constant of its arrow type. No body, no unfolding; reasoning is
  -- pure congruence. `Nonempty` of the arrow follows from the inhabited
  -- codomain (every Vermilion spec type is inhabited).
  if specFn.uninterpreted then
    out := out ++ s!"noncomputable opaque {specFn.id.qualified}"
    -- Each type param carries `[Inhabited T]`: it makes the opaque's full
    -- ∀-type synthesizably inhabited even when a parameter appears only
    -- in the return type (the `spec_from` shape, #19), and every
    -- Vermilion model type is inhabited. Lean synthesizes the instance at
    -- application sites, so rendered applications are unchanged.
    for param in specFn.typeParams do
      out := out ++
        s!" \{{leanSegment param} : Type} [Inhabited {leanSegment param}]"
    for binder in specFn.binders do
      out := out ++ s!" ({leanSegment binder.name} : {binder.ty.render})"
    out := out ++ s!" : {specFn.ret.render}\n"
    return out
  if (recursive && classical) || propDec then
    out := out ++ "open Classical in\n"
  let marker := if classical then "noncomputable def" else "def"
  out := out ++ s!"{marker} {specFn.id.qualified}"
  -- Type params are implicit so applications `f x` infer them from the
  -- value arguments (call sites carry no explicit type args). Each carries
  -- an `[Inhabited T]` instance: a body that indexes (`Seq.index`,
  -- `first`/`last`) needs `default` at `T`, and every Vermilion model type
  -- is inhabited. The instance binder is invisible to applications (Lean
  -- synthesizes it — from concrete types, or from the enclosing
  -- obligation's own `[Inhabited T]` binder for a type param), so emitted
  -- statements and their hashes are unchanged.
  for param in specFn.typeParams do
    out := out ++ s!" \{{leanSegment param} : Type} [Inhabited {leanSegment param}]"
  for binder in specFn.binders do
    out := out ++ s!" ({leanSegment binder.name} : {binder.ty.render})"
  let body := if recursive then specFn.body.renderBody else specFn.body.renderTop
  -- A recursive definition must terminate on ALL Int inputs, but a
  -- Verus nat/machine-typed parameter's range is a typing fact our Int
  -- embedding does not carry into the binder types. Guard the body on the
  -- measures being nonnegative AND on the parameters' own range facts
  -- (`paramRanges` — without them a Verus-checked decrease can be
  -- unprovable off-range: dalek-lite DL8, `binomial` at `n = 0, k < 0`).
  -- Off-range falls to `default` — a valid interpretation of Verus's
  -- unconstrained off-range semantics; the guard hypothesis also hands
  -- `decreasing_by` the missing bounds.
  let body :=
    if recursive then
      let facts := specFn.decreases.toList.map
        (fun measure => s!"0 ≤ ({measure.renderTop})") ++
        specFn.paramRanges.toList.map (fun fact => s!"({fact.renderTop})")
      -- A `nat` parameter that is itself a measure contributes the same
      -- fact twice (`0 ≤ (e)` / `(0 ≤ e)`); dedupe up to parentheses so
      -- the guard stays readable.
      let key (s : String) : String :=
        ((s.replace "(" "").replace ")" "").replace " " ""
      let facts := facts.foldl (fun (acc : List String) fact =>
        if acc.any (key · == key fact) then acc else acc ++ [fact]) []
      let nonneg := String.intercalate " ∧ " facts
      s!"if _h_range : {nonneg} then\n    {body}\n  else default"
    else body
  out := out ++ s!" : {specFn.ret.render} :=\n  {body}\n"
  if recursive then
    let measures := specFn.decreases.toList.map
      fun measure => s!"({measure.renderAtom}).toNat"
    out := out ++ s!"termination_by {String.intercalate ", " measures}\n"
    -- Two DL8 rungs beyond the arithmetic base: a variable-modulus
    -- measure (`spec_gcd b (emod a b)` and kin) needs
    -- `Int.emod_lt_of_pos` — `omega` cannot bound `a % b` by a VARIABLE
    -- `b`; and a `natClip`ped measure (`binomial (natClip (n-1)) …`)
    -- surfaces an `iteP` the ladder splits before finishing with `omega`.
    out := out ++
      "decreasing_by all_goals first | omega | (simp_all; omega) | \
(simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | \
(simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all\n"
  return out

/-- Header of every generated module: imports plus linter silencing.
`boundedLints` additionally silences the linters tripped by expected-partly-
unused `first | …` alternatives (recursive definitions' `decreasing_by`, and
the bounded-rewriting `iterate … (try first | …)` obligation preambles). -/
def renderHeader (imports : Array String) (boundedLints : Bool) : String := Id.run do
  let mut out := ""
  for module in imports do
    out := out ++ s!"import {module}\n"
  -- Hypothesis names are deliberate provenance, not oversights; silence the
  -- unused-variable linter inside generated modules.
  out := out ++ "\nset_option linter.unusedVariables false\nset_option linter.style.nameCheck false\n"
  -- Generated names routinely repeat a namespace segment — a synthesized
  -- tuple and its sole Verus variant (`vermilion.tuple_0.tuple_0`), or an
  -- obligation in a function whose name equals the file stem
  -- (`binary_search.binary_search.assert_1`). Both are naming artifacts of
  -- the emission scheme, not user oversights, so silence the linter module-wide.
  out := out ++ "set_option linter.dupNamespace false\n"
  if boundedLints then
    out := out ++ "set_option linter.unusedTactic false\n"
    out := out ++ "set_option linter.unreachableTactic false\n"
  return out ++ "\n"

/-- Mutual-recursion clusters of the spec fns (indices, first-appearance
order): definitions transitively referencing each other share a cluster and
must share a Lean `mutual` block. -/
def specFnGroups (specFns : Array SpecFn) : Array (Array Nat) := Id.run do
  let names := specFns.map (·.id.qualified)
  let direct : Array (Array Nat) := specFns.map fun f =>
    (f.body.applies.filterMap names.idxOf?).qsort (· < ·)
  let reach : Nat → Nat → Bool := fun a b => Id.run do
    let mut seen : Array Bool := .replicate specFns.size false
    let mut frontier := #[a]
    while !frontier.isEmpty do
      let next := frontier.back!
      frontier := frontier.pop
      if seen[next]! then continue
      seen := seen.set! next true
      for r in direct[next]! do
        if !seen[r]! then frontier := frontier.push r
    return seen[b]!
  let mut groups : Array (Array Nat) := #[]
  let mut emitted : Array Bool := .replicate specFns.size false
  for index in [0:specFns.size] do
    if emitted[index]! then continue
    let group := (Array.range specFns.size).filter fun j =>
      j == index || (reach index j && reach j index)
    groups := groups.push group
    for j in group do
      emitted := emitted.set! j true
  return groups

/-- The shared-definitions section: datatype declarations (leaf-first
registration order), then spec-function definitions. Obligations reference
both by their qualified names; each obligation carries its own
visibility-derived unfold list. Mutually recursive definitions share a Lean
`mutual` block. -/
def renderSpecsSection (datatypes : Array DataView) (specFns : Array SpecFn) :
    String := Id.run do
  let mut out := ""
  for data in datatypes do
    out := out ++ renderDatatype data
  let classical := classicalClosure specFns
  let force := fun (specFn : SpecFn) => classical.contains specFn.id.qualified
  for group in specFnGroups specFns do
    if group.size == 1 then
      let specFn := specFns[group[0]!]!
      out := out ++ renderSpecFn specFn (force specFn) ++ "\n"
    else
      out := out ++ "mutual\n"
      for j in group do
        out := out ++ renderSpecFn specFns[j]! (force specFns[j]!) ++ "\n"
      out := out ++ "end\n\n"
  return out

/-- Append namespace-wrapped obligation blocks (contiguous per function) to
`out`, recording each block's 1-based line range in the module being built.
`leanFile` names the emitted file a block lives in — set for per-function
units, empty for the classic per-file module (where the manifest-level
`lean_file` already says it). -/
def appendObligationBlocks (recursiveNames : Array String)
    (obligations : Array Obligation) (leanFile : String) (out : String) :
    String × Array ObligationRecord := Id.run do
  let mut out := out
  let mut records := #[]
  let mut index := 0
  while h : index < obligations.size do
    let currentNamespace := obligations[index].function.qualified
    out := out ++ s!"namespace {currentNamespace}\n\n"
    while h' : index < obligations.size do
      let obligation := obligations[index]
      if obligation.function.qualified != currentNamespace then
        break
      let rendered := renderObligation recursiveNames obligation
      let startLine := countLines out + 1
      let endLine := startLine + countLines rendered - 1
      records := records.push {
        name := obligation.qualifiedName
        «namespace» := currentNamespace
        leaf := obligation.leaf
        kind := obligation.kind.render
        assertId := obligation.assertId
        statementHash := obligation.statementHash
        rustSpan := obligation.span
        leanLineStart := startLine
        leanLineEnd := endLine
        leanFile := leanFile
      }
      out := out ++ rendered ++ "\n"
      index := index + 1
    out := out ++ s!"end {currentNamespace}\n\n"
  return (out, records)

/-- Append the (ordered) evidence blocks to `out`, recording their manifest
records. `leanFile` names the emitted file (per-function mode; empty for the
per-file module). -/
def appendEvidenceBlocks (local_ : Bool)
    (evidenceObligations : Array EvidenceObligation) (leanFile : String)
    (out : String) : String × Array ObligationRecord := Id.run do
  let mut out := out
  let mut records : Array ObligationRecord := #[]
  for evidence in evidenceObligations do
    let rendered := renderEvidenceObligation local_ evidence
    let startLine := countLines out + 1
    let endLine := startLine + countLines rendered - 1
    records := records.push {
      name := evidence.qualifiedName
      «namespace» := evidence.function.qualified
      leaf := leanSegment evidence.leaf
      kind := "typeclass_evidence"
      assertId := "typeclass-evidence"
      statementHash := evidence.statementHash
      rustSpan := evidence.span
      leanLineStart := startLine
      leanLineEnd := endLine
      leanFile := leanFile
    }
    out := out ++ rendered ++ "\n"
  return (out, records)

/-- Render a whole generated module plus its manifest records (the classic
one-Lean-file-per-Rust-file emission mode). Typeclass evidence is emitted
after executable/spec definitions (so it cannot silently make them
classical) and before the logical VCs that consume it, inside a `section`
whose `local instance`s remain active for the rest of the file. -/
def renderModule (datatypes : Array DataView) (specFns : Array SpecFn)
    (obligations : Array Obligation) :
    Except String (String × Array ObligationRecord) := do
  let evidenceObligations ←
    orderEvidenceObligations (collectEvidenceObligations obligations)
  let mut out := renderHeader #["Vermilion.Obligations"] (specFns.any (·.isRecursive))
    ++ renderSpecsSection datatypes specFns
  let mut records : Array ObligationRecord := #[]
  unless evidenceObligations.isEmpty do
    out := out ++ "section\n\n"
  let (withEvidence, evidenceRecords) :=
    appendEvidenceBlocks true evidenceObligations "" out
  out := withEvidence
  records := records ++ evidenceRecords
  let recursiveNames := (specFns.filter (·.isRecursive)).map (·.id.qualified)
  let (withBlocks, blockRecords) :=
    appendObligationBlocks recursiveNames obligations "" out
  out := withBlocks
  records := records ++ blockRecords
  unless evidenceObligations.isEmpty do
    out := out ++ "end\n"
  return (out, records)

/-! ## Per-function emission mode

One Lean unit module per verified function, all sharing a single `Specs`
module (datatype declarations + spec-fn definitions, emitted exactly once
and imported — never duplicated into units). Which units import `Specs` is
decided by reference analysis over the obligations: spec-fn applications
(`Expr.applies`, which also covers callee contracts inlined at lowering
time), the visibility-derived unfold lists, and datatype mentions
(`Expr.dataRefs`/`Ty.dataRefs`). -/

/-- The emission layout: classic one-Lean-file-per-Rust-file, or
one-unit-file-per-function sharing an imported `Specs` module. -/
inductive EmissionMode where
  | perFile
  | perFunction
  deriving Repr, BEq, Inhabited

def EmissionMode.render : EmissionMode → String
  | .perFile => "per-file"
  | .perFunction => "per-function"

def EmissionMode.parse? : String → Option EmissionMode
  | "per-file" => some .perFile
  | "per-function" => some .perFunction
  | _ => none

/-- Does this obligation reference anything defined in the shared `Specs`
module — a user spec fn (applied, or listed for unfolding) or a user
datatype (in an expression or a binder type)? -/
def Obligation.referencesSpecs (obligation : Obligation) : Bool := Id.run do
  if !obligation.unfolds.isEmpty then
    return true
  if obligation.binders.any (fun binder => !binder.ty.dataRefs.isEmpty) then
    return true
  let exprs := (obligation.hypotheses.map (·.proposition)).push obligation.goal
  return exprs.any fun e => !e.applies.isEmpty || !e.dataRefs.isEmpty

/-- One per-function unit module. -/
structure UnitModule where
  /-- Qualified name of the function whose obligations the unit holds. -/
  function : String
  /-- File stem of the unit — a single Lean identifier, so the unit is the
  module `generated.<stem>.<segment>` under the example directory. -/
  segment : String
  source : String
  records : Array ObligationRecord
  deriving Repr, Inhabited

/-- File stem of a function's unit module: the qualified name flattened to
one identifier, with the crate segment dropped when it equals the enclosing
directory's stem (`specfns.double_exec` in `specfns/` → `double_exec`).
`Specs` and `Evidence` are reserved for the shared modules. -/
def unitSegment (stem : String) (function : String) : String :=
  let local_ :=
    if function.startsWith (stem ++ ".") then
      function.drop (stem.length + 1)
    else function
  let flat := leanSegment (local_.replace "." "_")
  if flat == "Specs" || flat == "Evidence" then flat ++ "_fn" else flat

/-- Render the shared `Specs` module of the per-function emission mode —
the datatype declarations and spec-fn definitions emitted exactly once and
imported by the unit modules. `none` when the file defines neither. -/
def renderSpecsModule (datatypes : Array DataView) (specFns : Array SpecFn) :
    Option String :=
  if datatypes.isEmpty && specFns.isEmpty then none
  else some (renderHeader #["Vermilion.Obligations"] (specFns.any (·.isRecursive))
    ++ renderSpecsSection datatypes specFns)

/-- Render the `Evidence` unit module of the per-function emission mode:
the (ordered) typeclass-evidence declarations, emitted once and imported by
every unit module when any exist. Unlike the per-file layout's
section-`local instance`s, these are plain `instance`s — importers must see
them for their VCs to elaborate. `none` when there is no evidence. -/
def renderEvidenceModule (specsModule : Option String)
    (evidenceObligations : Array EvidenceObligation) (leanFile : String) :
    Option (String × Array ObligationRecord) :=
  if evidenceObligations.isEmpty then none
  else
    let imports := #["Vermilion.Obligations"] ++
      (match specsModule with | some module => #[module] | none => #[])
    some (appendEvidenceBlocks false evidenceObligations leanFile
      (renderHeader imports false))

/-- Render the per-function unit modules for one Rust file. `stem` is the
(sanitized) file stem naming the unit directory; `specsModule` /
`evidenceModule` are the Lean modules the shared definitions and the
typeclass evidence were emitted into (`none` when absent — every unit
imports the evidence module, whose instances its VCs may consume);
`unitDir` is the directory the unit files land in, recorded per obligation
in the manifest. -/
def renderUnitModules (specFns : Array SpecFn) (stem : String)
    (specsModule : Option String) (evidenceModule : Option String)
    (unitDir : System.FilePath) (obligations : Array Obligation) :
    Array UnitModule := Id.run do
  let recursiveNames := (specFns.filter (·.isRecursive)).map (·.id.qualified)
  -- Group the (function-contiguous) obligations by function.
  let mut groups : Array (String × Array Obligation) := #[]
  for obligation in obligations do
    let function := obligation.function.qualified
    if let some (name, existing) := groups.back? then
      if name == function then
        groups := groups.set! (groups.size - 1) (name, existing.push obligation)
        continue
    groups := groups.push (function, #[obligation])
  let mut used : Array String := #[]
  let mut units : Array UnitModule := #[]
  for (function, group) in groups do
    -- A flattened qualified name can collide (`a.b_c` and `a.b.c` both
    -- flatten to `a_b_c`); disambiguate deterministically.
    let base := unitSegment stem function
    let mut segment := base
    let mut suffix := 2
    while used.contains segment do
      segment := s!"{base}_{suffix}"
      suffix := suffix + 1
    used := used.push segment
    let leanFile := (unitDir / (segment ++ ".lean")).toString
    let needsSpecs := specsModule.isSome && group.any (·.referencesSpecs)
    let imports := #["Vermilion.Obligations"]
      ++ (match specsModule with
          | some module => if needsSpecs then #[module] else #[]
          | none => #[])
      ++ (match evidenceModule with
          | some module => #[module]
          | none => #[])
    -- The bounded-rewriting `iterate … (try first | …)` preamble has
    -- expected-partly-unused alternatives, like `decreasing_by`.
    let bounded := group.any fun obligation =>
      obligation.unfolds.any fun (name, _) => recursiveNames.contains name
    let header := renderHeader imports bounded
    let (source, records) :=
      appendObligationBlocks recursiveNames group leanFile header
    units := units.push { function, segment, source, records }
  return units

/-- Compute per-function fingerprints (deterministic obligation order). -/
def fingerprintFunctions (obligations : Array Obligation) :
    Array FunctionRecord := Id.run do
  let mut texts : Array (String × String × String) := #[]
  for obligation in obligations do
    let function := obligation.function.qualified
    let canonical :=
      s!"{obligation.leaf}|{obligation.canonicalStatement}|{obligation.origin}\n"
    let span := obligation.span
    let location :=
      s!"{span.file}:{span.startLine}:{span.startColumn}:\
{span.endLine}:{span.endColumn}\n"
    match texts.findIdx? (·.1 == function) with
    | some position =>
      let (name, semantic, locations) := texts[position]!
      texts := texts.set! position (name, semantic ++ canonical, locations ++ location)
    | none => texts := texts.push (function, canonical, location)
  -- Evidence declarations belong to the function that owns their stable
  -- marker name. Include their complete provenance graph so incremental
  -- consumers cannot retain a fingerprint that predates a new dictionary,
  -- dependency, or consumer edge.
  for evidence in collectEvidenceObligations obligations do
    let function := evidence.function.qualified
    let canonical :=
      s!"evidence|{evidence.qualifiedName}|{evidence.canonicalStatement}|{evidence.origin}|\
dependencies={String.intercalate "," evidence.dependencies.toList}|\
consumers={String.intercalate "," evidence.consumers.toList}\n"
    let span := evidence.span
    let location :=
      s!"{span.file}:{span.startLine}:{span.startColumn}:\
{span.endLine}:{span.endColumn}\n"
    match texts.findIdx? (·.1 == function) with
    | some position =>
      let (name, semantic, locations) := texts[position]!
      texts := texts.set! position (name, semantic ++ canonical, locations ++ location)
    | none => texts := texts.push (function, canonical, location)
  return texts.map fun (function, semantic, locations) =>
    { function
      semanticFingerprint := fnv1a semantic
      locationFingerprint := fnv1a locations }

end Vermilion.Ir
