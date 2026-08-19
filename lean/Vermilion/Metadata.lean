import Lean.Attributes

open Lean

namespace Vermilion

/-- Stable Rust-side provenance for one generated verification condition. -/
structure ObligationMeta where
  rustFile : String
  startLine : Nat
  startColumn : Nat
  endLine : Nat
  endColumn : Nat
  assertId : String
  functionName : String
  kind : String
  statementHash : String
deriving Repr, Inhabited, BEq

/-- Tags generated declarations; the companion `<name>_meta` value carries data. -/
initialize vermilionObligationAttr : TagAttribute ←
  registerTagAttribute `vrml_obligation "generated Vermilion verification condition"

/-- Tags a generated Lean typeclass-evidence declaration. Its proof body is
owned by the persistent twin just like a logical VC, but its target lives in
`Type` (for example `Decidable p`) rather than `Prop`. -/
initialize vermilionEvidenceAttr : TagAttribute ←
  registerTagAttribute `vrml_evidence "generated Vermilion typeclass evidence obligation"

/-- Marks a kernel-checked companion proof of an emitted statement. -/
initialize vermilionProofAttr : TagAttribute ←
  registerTagAttribute `vrml "interactive Vermilion proof"

/-- Trace class for the discharger ladder: which rung closed each goal. -/
initialize registerTraceClass `vrml.ladder

end Vermilion
