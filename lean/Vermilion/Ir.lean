import Vermilion.Ir.Sexp
import Vermilion.Ir.Ast
import Vermilion.Ir.Decode
import Vermilion.Ir.Naming
import Vermilion.Ir.Print
import Vermilion.Ir.Vcgen
import Vermilion.Ir.Render
import Vermilion.Ir.Manifest
import Vermilion.Ir.Emit

/-!
# Vermilion.Ir

The Lean half of the pipeline (`docs/ir.md`): lex and parse the textual IR
produced by `vermilion_direct`, generate verification conditions, and emit
the colocated `generated/<stem>.lean` modules and `generated/<stem>.json`
manifests. Deliberately Mathlib-free so `lake exe vrml_gen` stays fast.
-/
