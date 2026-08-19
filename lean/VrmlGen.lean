import Vermilion.Ir

/-!
# vrml_gen

Read one or more textual IR files (`docs/ir.md`), generate VCs, and emit the
colocated `generated/` Lean modules and JSON manifests:

```console
lake exe vrml_gen .vermilion/simple-ir.sexp
lake exe vrml_gen --mode per-function .vermilion/simple-ir.sexp
```

Two emission modes (`--mode per-file|per-function`, also `--per-file` /
`--per-function`):

- **per-function** (the default): one unit module per verified function,
  `generated/<stem>/<function>.lean`, with the datatype declarations and
  spec-fn definitions emitted exactly once into the shared module
  `generated/<stem>/Specs.lean` and *imported* (`import
  generated.<stem>.Specs`) by the units whose obligations reference them —
  never duplicated. Smaller files, and `vrml_check` judges units in
  parallel.
- **per-file** (the classic layout): one module per Rust file,
  `generated/<stem>.lean`, holding the shared definitions and every
  function's obligations.

Without an explicit flag the mode is **sticky**: whatever the existing
manifest `generated/<stem>.json` records is reused, so re-runs (watch mode,
the editor, the differential harness) keep a directory's chosen mode; a
fresh directory defaults to per-function. Switching modes cleans up the
other mode's stale artifacts.

The obligations themselves — statements, names, hashes — are identical in
both modes; only the file layout differs.
-/

open Vermilion.Ir

/-- Group each function's obligations under the Rust source file they came
from, preserving function order; files are emitted in sorted order. -/
private def groupBySourceFile (specFns : Array SpecFn)
    (views : Array FunctionView) :
    Array (String × Nat × Array Obligation) := Id.run do
  -- A function with no obligations carries no span of its own (e.g. a
  -- trivial `fn main() {}`), so attribute it to the file its siblings came
  -- from; a bare `<name>.rs` fallback would emit a stray CWD-relative
  -- `generated/` directory.
  let documentFile := views.findSome? fun view =>
    (generateObligations specFns view)[0]?.map (·.span.file)
  let mut groups : Array (String × Nat × Array Obligation) := #[]
  for view in views do
    let obligations := generateObligations specFns view
    let file :=
      match obligations[0]? with
      | some obligation => obligation.span.file
      | none => documentFile.getD s!"{view.id.name}.rs"
    match groups.findIdx? (·.1 == file) with
    | some index =>
      let (name, functions, existing) := groups[index]!
      groups := groups.set! index (name, functions + 1, existing ++ obligations)
    | none => groups := groups.push (file, 1, obligations)
  return groups.qsort (·.1 < ·.1)

/-- The emission mode recorded in an existing manifest: how this Rust file
was translated last time. A parseable manifest without a `mode` field is a
legacy (version-1) per-file manifest. -/
private def recordedMode (jsonPath : System.FilePath) : IO (Option EmissionMode) := do
  if !(← jsonPath.pathExists) then
    return none
  let text ← IO.FS.readFile jsonPath
  match Lean.Json.parse text with
  | .error _ => return none
  | .ok json =>
    match json.getObjValAs? String "mode" with
    | .ok mode => return EmissionMode.parse? mode
    | .error _ => return some .perFile

/-- Delete `path` if it exists (stale-artifact cleanup on mode switches). -/
private def removeFileIfExists (path : System.FilePath) : IO Bool := do
  if ← path.pathExists then
    IO.FS.removeFile path
    return true
  return false

/-- Emit one Rust file's obligations in per-file mode: the classic single
`generated/<stem>.lean` module. Returns (changed, bytes, detail). -/
private def emitPerFile (document : Document) (rustFile : String)
    (root : System.FilePath) (lstem : String)
    (obligations : Array Obligation) : IO (Bool × Nat × String) := do
  let leanPath := root / (lstem ++ ".lean")
  let jsonPath := root / (lstem ++ ".json")
  let (source, records) ←
    match renderModule document.datatypes document.specFns obligations with
    | .ok rendered => pure rendered
    | .error message => throw (IO.userError s!"{rustFile}: {message}")
  let emission ← emitFile leanPath source
  let manifest := renderManifest .perFile rustFile leanPath.toString none
    (fingerprintFunctions obligations) records document.refused
  let _ ← emitFile jsonPath manifest
  -- A stale per-function unit directory from an earlier `--mode
  -- per-function` run would shadow this module for every consumer.
  let unitDir := root / lstem
  if ← unitDir.isDir then
    IO.FS.removeDirAll unitDir
  return (emission.changed, emission.bytes, leanPath.toString)

/-- Emit one Rust file's obligations in per-function mode: unit modules
`generated/<stem>/<function>.lean` around the shared (imported, never
duplicated) `generated/<stem>/Specs.lean`. Returns (changed, bytes, detail). -/
private def emitPerFunction (document : Document) (rustFile : String)
    (root : System.FilePath) (lstem : String)
    (obligations : Array Obligation) : IO (Bool × Nat × String) := do
  let unitDir := root / lstem
  let jsonPath := root / (lstem ++ ".json")
  let specsSource? := renderSpecsModule document.datatypes document.specFns
  let specsModuleName := s!"generated.{lstem}.Specs"
  -- Typeclass evidence lives in its own shared unit (`Evidence.lean`),
  -- imported by every function unit — plain `instance`s there play the
  -- role of the per-file layout's section-local instances.
  let evidenceObligations ←
    match orderEvidenceObligations (collectEvidenceObligations obligations) with
    | .ok ordered => pure ordered
    | .error message => throw (IO.userError s!"{rustFile}: {message}")
  let evidenceModuleName := s!"generated.{lstem}.Evidence"
  let evidencePath := unitDir / "Evidence.lean"
  let evidence? := renderEvidenceModule
    (specsSource?.map fun _ => specsModuleName) evidenceObligations
    evidencePath.toString
  let units := renderUnitModules document.specFns lstem
    (specsSource?.map fun _ => specsModuleName)
    (evidence?.map fun _ => evidenceModuleName) unitDir obligations
  let mut changed := false
  let mut bytes := 0
  let mut keep : Array String := #[]
  let mut specs : Option (String × String) := none
  if let some specsSource := specsSource? then
    let specsPath := unitDir / "Specs.lean"
    let emission ← emitFile specsPath specsSource
    changed := changed || emission.changed
    bytes := bytes + emission.bytes
    keep := keep.push "Specs.lean"
    specs := some (specsPath.toString, specsModuleName)
  let mut records : Array ObligationRecord := #[]
  if let some (evidenceSource, evidenceRecords) := evidence? then
    let emission ← emitFile evidencePath evidenceSource
    changed := changed || emission.changed
    bytes := bytes + emission.bytes
    keep := keep.push "Evidence.lean"
    records := records ++ evidenceRecords
  for unit in units do
    let emission ← emitFile (unitDir / (unit.segment ++ ".lean")) unit.source
    changed := changed || emission.changed
    bytes := bytes + emission.bytes
    keep := keep.push (unit.segment ++ ".lean")
    records := records ++ unit.records
  let manifest := renderManifest .perFunction rustFile unitDir.toString specs
    (fingerprintFunctions obligations) records document.refused
  let _ ← emitFile jsonPath manifest
  -- Drop unit files whose function no longer exists, and the stale
  -- per-file module from an earlier per-file run.
  if ← unitDir.isDir then
    for entry in ← unitDir.readDir do
      if entry.fileName.endsWith ".lean" && !keep.contains entry.fileName then
        IO.FS.removeFile entry.path
        changed := true
  if ← removeFileIfExists (root / (lstem ++ ".lean")) then
    changed := true
  let detail := s!"{unitDir}/ ({units.size} unit modules\
{if specs.isSome then " + Specs" else ""})"
  return (changed, bytes, detail)

/-- Bare stem of a Rust source path (`…/mul_lemmas.rs` → `mul_lemmas`). -/
private def bareStemOf (rustFile : String) : String :=
  (((System.FilePath.mk rustFile).fileStem).getD "generated")

private def processIrFile (mode : Option EmissionMode)
    (generatedRoot : Option System.FilePath) (path : String) : IO Unit := do
  let input ← IO.FS.readFile path
  let document ←
    match decodeDocument input with
    | .ok document => pure document
    | .error message => throw (IO.userError s!"{path}: {message}")
  let groups := groupBySourceFile document.specFns document.functions
  -- Stems that collide across source files (e.g. `field_lemmas/mul_lemmas.rs`
  -- and `common_lemmas/mul_lemmas.rs`). Under a shared `--generated-root`
  -- every file's artifacts land in ONE directory, so a colliding stem must
  -- be qualified with its parent directory to stay a distinct folder and
  -- Lean module (issue #54). With per-file roots the parent dirs already
  -- separate them, so bare stems stay.
  let collisions : List String :=
    let stems := (groups.map (fun (rf, _, _) => bareStemOf rf)).toList
    stems.filter (fun s => (stems.filter (· == s)).length > 1) |>.eraseDups
  for (rustFile, functionCount, obligations) in groups do
    let rustPath := System.FilePath.mk rustFile
    let bare := bareStemOf rustFile
    let stem :=
      if generatedRoot.isSome && collisions.contains bare then
        let parent := (rustPath.parent.bind (·.fileName)).getD ""
        s!"{parent}_{bare}"
      else bare
    let root := generatedRoot.getD ((rustPath.parent).getD ⟨"."⟩ / "generated")
    let lstem := leanSegment stem
    let jsonPath := root / (lstem ++ ".json")
    -- Sticky mode: an unflagged run keeps whatever this Rust file was
    -- emitted with last time; fresh directories default to per-function.
    let mode ← match mode with
      | some mode => pure mode
      | none => (·.getD .perFunction) <$> recordedMode jsonPath
    let (changed, bytes, detail) ←
      match mode with
      | .perFile => emitPerFile document rustFile root lstem obligations
      | .perFunction => emitPerFunction document rustFile root lstem obligations
    IO.println s!"translated {functionCount} functions from {rustFile} into \
{obligations.size} obligations; \
{if changed then "updated" else "unchanged"} {detail} \
({bytes} bytes, {mode.render})"

def main (args : List String) : IO UInt32 := do
  let mut mode : Option EmissionMode := none
  let mut generatedRoot : Option System.FilePath := none
  let mut paths : List String := []
  let mut rest := args
  let usage := "usage: vrml_gen [--mode per-file|per-function] \
[--generated-root DIR] <ir.sexp>…"
  repeat
    match rest with
    | [] => break
    | "--mode" :: value :: tail =>
      match EmissionMode.parse? value with
      | some parsed => mode := some parsed; rest := tail
      | none =>
        IO.eprintln s!"vrml_gen: unknown mode `{value}` ({usage})"
        return (2 : UInt32)
    | "--per-file" :: tail => mode := some .perFile; rest := tail
    | "--per-function" :: tail => mode := some .perFunction; rest := tail
    -- Emit every source file's artifacts under this ONE repository-relative
    -- directory instead of a `generated/` next to each source. Required for
    -- a `#[path]`-mounted whole-crate acquisition, whose sources live in an
    -- untracked upstream clone (issue #54): the root (and its `proofs/`
    -- twin sibling) then sit in the tracked case-study tree.
    | "--generated-root" :: value :: tail =>
      generatedRoot := some (System.FilePath.mk value); rest := tail
    | path :: tail => paths := paths ++ [path]; rest := tail
  if paths.isEmpty then
    IO.eprintln usage
    return (2 : UInt32)
  try
    for path in paths do
      processIrFile mode generatedRoot path
    return (0 : UInt32)
  catch error =>
    IO.eprintln s!"vrml_gen: {error}"
    return (2 : UInt32)
