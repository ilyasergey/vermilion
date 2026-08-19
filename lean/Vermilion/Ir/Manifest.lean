import Lean.Data.Json
import Vermilion.Ir.Render

/-!
# Module manifests

JSON manifests colocated with each generated module; consumed by
`vrml_check`, `vrml_sync`, and the incremental tooling. Field names are the
Rust `vermilion_backend::project` serde contract — change both together.
-/

namespace Vermilion.Ir

open Lean (Json)

private def Span.toJson (span : Span) : Json :=
  Json.mkObj [
    ("file", Json.str span.file),
    ("start_line", Json.num span.startLine),
    ("start_column", Json.num span.startColumn),
    ("end_line", Json.num span.endLine),
    ("end_column", Json.num span.endColumn)
  ]

private def ObligationRecord.toJson (record : ObligationRecord) : Json :=
  Json.mkObj <| [
    ("name", Json.str record.name),
    ("namespace", Json.str record.namespace),
    ("leaf", Json.str record.leaf),
    ("kind", Json.str record.kind),
    ("assert_id", Json.str record.assertId),
    ("statement_hash", Json.str record.statementHash),
    ("rust_span", record.rustSpan.toJson),
    ("lean_line_start", Json.num record.leanLineStart),
    ("lean_line_end", Json.num record.leanLineEnd)
  ] ++ (if record.leanFile.isEmpty then []
        else [("lean_file", Json.str record.leanFile)])

private def FunctionRecord.toJson (record : FunctionRecord) : Json :=
  Json.mkObj [
    ("function", Json.str record.function),
    ("semantic_fingerprint", Json.str record.semanticFingerprint),
    ("location_fingerprint", Json.str record.locationFingerprint)
  ]

private def RefusedFunction.toJson (refusal : RefusedFunction) : Json :=
  Json.mkObj [
    ("function", Json.str refusal.id.qualified),
    ("message", Json.str refusal.message),
    ("rust_span", refusal.span.toJson)
  ]

/-- Render the manifest for one Rust file's generated modules.

In per-file mode (`specs := none` and per-record `leanFile` empty),
`lean_file` is the single generated module, exactly the version-1 layout.
In per-function mode (version 2), `lean_file` is the unit *directory*,
`specs_lean`/`specs_module` name the shared definitions module when one was
emitted, and every obligation record carries the unit file it lives in. -/
def renderManifest (mode : EmissionMode) (rustFile leanFile : String)
    (specs : Option (String × String))
    (functions : Array FunctionRecord) (obligations : Array ObligationRecord)
    (refused : Array RefusedFunction := #[]) :
    String :=
  let version : Nat := match mode with | .perFile => 1 | .perFunction => 2
  let json := Json.mkObj <| [
    ("version", Json.num version),
    ("mode", Json.str mode.render),
    ("rust_file", Json.str rustFile),
    ("lean_file", Json.str leanFile)
  ] ++ (match specs with
    | some (specsLean, specsModule) =>
      [("specs_lean", Json.str specsLean), ("specs_module", Json.str specsModule)]
    | none => []) ++ [
    ("functions", Json.arr (functions.map FunctionRecord.toJson)),
    ("obligations", Json.arr (obligations.map ObligationRecord.toJson))
  ] ++ (if refused.isEmpty then []
        else [("refused", Json.arr (refused.map RefusedFunction.toJson))])
  json.pretty ++ "\n"

end Vermilion.Ir
