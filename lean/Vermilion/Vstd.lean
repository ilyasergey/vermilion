import Vermilion.Vstd.Registry
import Vermilion.Vstd.Seq
import Vermilion.Vstd.SeqLib
import Vermilion.Vstd.Set
import Vermilion.Vstd.Map
import Vermilion.Vstd.Multiset
import Vermilion.Vstd.Wrapping
import Vermilion.Vstd.Rotate
import Vermilion.Vstd.Bytes

/-! # The vstd mirror (plans/execution-plan.md §V-series)

Lean libraries of the vstd specifications and (interactively proved)
theorems Verus programs import, shipped with Vermilion and structured to
mirror the vstd module tree: `Vermilion.Vstd.<Module>` ↔ `vstd::<module>`.

- The machine-readable registries (`specFnRegistry` — semantics, fail
  closed; `lemmaRegistry` — hints, fail open) live in
  `Vermilion.Vstd.Registry`, import-free so the Mathlib-free `vrml_gen`
  closure resolves `(vstdapply "path" …)` IR nodes against it at
  generation time.
- `Vermilion/Vstd/<Module>.lean` files document each vstd module's mirror
  and host the (V3) interactively proved mirrored theorems.
- `Vermilion/Vstd/Probes.lean` fails the BUILD if a registry entry
  references a Lean name that does not exist.

Everything referenced is ordinary proved Lean code over the `Vermilion.*`
model; nothing enters the trusted base (docs/trust.md). -/
