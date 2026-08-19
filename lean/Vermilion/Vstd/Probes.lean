import Vermilion.Vstd
import Lean

/-! Registry honesty check: every Lean name the vstd mirror's registries
reference must exist in the environment, so a typo (or a renamed prelude
lemma) breaks the BUILD instead of silently weakening hint resolution.
Compile-time only — nothing here ships into the Obligations closure. -/

open Lean Elab Command in
#eval show CommandElabM Unit from do
  let env ← getEnv
  for (path, names) in Vermilion.Vstd.lemmaRegistry do
    for name in names do
      unless env.contains name.toName do
        throwError "vstd mirror: `{path}` references unknown lemma `{name}`"
  for (path, name) in Vermilion.Vstd.specFnRegistry do
    unless env.contains name.toName do
      throwError "vstd mirror: `{path}` references unknown definition `{name}`"
