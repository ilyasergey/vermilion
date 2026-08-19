On 2026-07-19 the user directed the per-function emission refactoring and
then made it the default: **one emitted Lean file per verified function**,
with shared definitions in a separate imported module.

- Layout: `generated/<stem>/<function>.lean` per function;
  `generated/<stem>/Specs.lean` holds the datatype + spec-fn definitions
  **exactly once** — units *import* it (`import generated.<stem>.Specs`),
  they never duplicate definitions (explicit user directive). Twins mirror
  it (`proofs/<stem>/<function>.lean`, `proofs/<stem>/Specs.lean`, import
  rewritten to `proofs.…` so Lake's existing `proofs` globs build them).
- Which units import Specs comes from reference analysis over the
  function's obligations (`Expr.applies`, `Expr.dataRefs`/`Ty.dataRefs`);
  exec-call graphs surface through the contracts inlined at lowering.
- **Per-function is the default** (`vrml_gen --mode`, sticky via the
  manifest's `mode` field — that field is how every tool detects which
  mode produced existing artifacts; missing = legacy per-file). The
  per-file mode must keep working behind `--per-file`, byte-identical to
  the pre-refactor output.
- **Results must be consistent across modes**: obligations, statement
  hashes, diagnostics, and verdicts are mode-invariant.
  `scripts/test_emission_modes.sh` asserts this over every example and
  case study (run it when touching emission); the differential harness
  takes `--emit-mode`.
- **No absolute paths** anywhere in emitted artifacts or tool plumbing
  (user directive during this work) — manifests, imports, olean targets
  (a `.vermilion/olean/` shadow root prepended to our own LEAN_PATH), `--root` args are
  all repository-relative.

**Why:** Small per-function files, parallel Lean checking, and a scalable
twin workflow; repeated explicit user direction on 2026-07-19.

**How to apply:** New emission features must work in BOTH modes and keep
the mode-invariance property (extend the A/B harness when in doubt). Keep
Specs shared-and-imported — never inline or duplicate definitions into
units. Related: [[vermilion-conventions]], [[lean-side-ir-parsing]],
[[vcgen-policy-doc]], [[interactive-proofs-first-class]].
