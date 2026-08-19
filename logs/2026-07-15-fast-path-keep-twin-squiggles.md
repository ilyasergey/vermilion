# 2026-07-15 — Fast path: keep the blue "discharged interactively" squiggles

Regression from the twin fast path (same day): binary-search stopped showing
the blue squiggle on its one interactively-proven obligation in VS Code.

## Cause

The editor draws that blue (Information) squiggle from the `covered_by_twin`
diagnostics `vrml_check` writes into `.vermilion/<stem>-check.json`. The fast
path skipped `vrml_check` and blanked the check file (`: > …`), so those
markers vanished. (The extension depends on `run_example.sh`'s outputs — it
spawns the case study's runner, which delegates to `run_example.sh`, and reads
its check/run/manifest files.)

## Fix

- **`vrml_check --twin-coverage-only`** (new): emits ONLY the static
  `covered_by_twin` info diagnostics for the obligations the twin proves by
  hand (recognised by the existing `twin_covers`, no Lean run); auto
  obligations emit nothing and simply show green. stdout only.
- **`run_example.sh` fast path**: instead of blanking the check file, run
  `vrml_check … --twin-coverage-only > <stem>-check.json`, so interactive
  obligations keep their blue "discharged interactively" squiggles even though
  the generated-module check is skipped.

Verified: after `binary-search/run.sh`, `.vermilion/binary_search-check.json`
holds the `covered_by_twin: true` entry at `binary_search.rs:23:13` (the
invariant), which the extension renders as the blue squiggle.
