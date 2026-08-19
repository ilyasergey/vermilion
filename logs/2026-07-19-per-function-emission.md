# 2026-07-19 — Per-function Lean emission (new default), branch `per-function-emission`

User asked for one emitted Lean file per verified function — smaller files,
parallel checking — with shared spec definitions in a separate imported
module, call-graph-driven imports, editor-view synchronization, a flag to
switch between the old (per-file) and new layout, mode detection from
existing artifacts, vigorous testing against the original mode, and
(mid-session) adopting the per-function layout as the default and
regenerating all proofs in it.

## Design

- **Layout.** `generated/<stem>/<function>.lean` per function;
  `generated/<stem>/Specs.lean` holds datatype + spec-fn definitions
  exactly once (never duplicated) and is imported as
  `generated.<stem>.Specs` by units whose obligations reference them.
  The import decision is a reference analysis over each function's
  obligations: `Expr.applies` (spec-fn applications — callee contracts are
  already inlined into caller obligations by the lowering, so the exec call
  graph surfaces there), the visibility-derived unfold lists, and new
  datatype collectors `Expr.dataRefs`/`Ty.dataRefs` (`Ir/Print.lean`).
- **Import resolution without Lake round trips (batch).** `vrml_check`
  compiles the Specs module once into a `.vermilion/olean/<root>` shadow
  root (`lean --root=… -o …`, temp+rename, freshness stamped by source
  path + FNV hash in a `.vrml-src` sibling) and prepends that root to its
  own Lean invocations' LEAN_PATH. Deliberately NOT Lake's build dir: Lake
  owns its artifacts (traces, multi-part oleans), and writing there
  produced editor-visible inconsistencies. All paths repo-relative (user
  directive).
- **Twins.** `proofs/<stem>/<function>.lean` + machine-mirrored
  `proofs/<stem>/Specs.lean`; the generated `import generated.…Specs` line
  is rewritten to `import <stem>.Specs` on sync. Each example's Lake lib
  roots its twin modules at the unique file stem (`srcDir := "<dir>/proofs"`,
  `globs := #[.andSubmodules `<stem>]`): the original shared `proofs.*`
  root made EVERY lib claim every twin module, and Lake resolved
  `proofs.x.Specs` to the last lib in the lakefile (found via the editor's
  `setup-file`, which also only reports modules Lake built itself — hence
  the `editor/bin/lake` shim now drops `--no-build` for twin files so Lake
  builds their Specs closure with proper traces, and invalidates cached
  setups when a twin's `Specs.lean` is newer than Lake's build of it).
  Shared helper lemmas go in the Specs twin's user sections (visible to
  every unit through the import). Hash-keyed blocks migrate across mode
  switches and unit renames; stale machine-managed twin files are dropped
  with warnings, user helper files (no vrml blocks) are never touched.
- **Manifest.** Single `generated/<stem>.json` in both modes; per-function
  adds `mode: per-function` (version 2), `specs_lean`/`specs_module`,
  `lean_file` = the unit directory, and per-obligation `lean_file`. Missing
  `mode` = legacy per-file. This is how "which mode was used" is detected
  everywhere (vrml_gen sticky mode, checker, sync, extension).
- **Checker.** `vrml_check` groups obligations by unit, builds one delta
  module per unit (reusing the unit preamble, so the Specs import comes
  along), and runs the Lean processes in parallel
  (`available_parallelism`). New flags: `--only <function>` (watch mode's
  delta now delegates here — also fixes the old watch delta's missing
  spec-fn preamble), `--twin-check` (kernel-check the twins, per-function
  ones in parallel, compiling the proofs Specs olean first),
  `--skip-identical` (twin == generated modulo the rewritten import ⇒
  skip). Twin-coverage detection falls back to the *other* mode's twin when
  the expected twin file doesn't exist yet, so the first run after a mode
  switch reports identical diagnostics.
- **Modes.** `vrml_gen --mode per-function|per-file` (+ shorthands);
  default per-function (user directive), sticky via the recorded manifest
  mode; switching cleans the other layout's stale artifacts.
  `run_example.sh --per-function/--per-file` (or `VERMILION_EMIT_MODE`);
  `run_differential.py --emit-mode` (default per-function).

## Testing

- `scripts/test_emission_modes.sh`: every example + case study runs twice
  through its own `run.sh` (per-file baseline first — including the
  currently-failing ones — then per-function); asserts equal exit codes,
  identical (name, statement-hash) obligation sets, identical
  failed/covered diagnostics, and that the requested mode was actually
  applied. Caught one real bug (twin coverage lost on the first run after
  a mode switch → the fallback above).
- Differential corpus run in both modes via `--emit-mode`.
- Lesson: never rebuild the tools while the sweep is running — a mid-sweep
  `lake build`/`cargo build` produced a cascade of spurious exit-101
  mismatches that disappeared on a clean rerun.

## Docs

README (principles + artifacts), docs/TUTORIAL.md (layout, twin rules,
mode flag), docs/vcgen.md (layout invariance note), docs/ir.md, DESIGN.md
(pipeline), editor README, plans/execution-plan.md (dated section),
docs/issues/closed/per-function-lean-emission.md.
