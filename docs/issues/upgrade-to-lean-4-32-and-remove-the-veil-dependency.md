---
title: Upgrade to Lean 4.32 and remove the Veil dependency
labels: [enhancement, feature]
state: open
github: 41
---

## Current status

The implementation landed on Lean **4.33.0**, superseding the originally
requested 4.32 target. `lean-toolchain`, `lakefile.lean`, and
`lake-manifest.json` now use direct Mathlib and lean-smt dependencies; Veil
and Loom are absent. See the
[migration log](../../logs/2026-08-19-lean-4.33-veil-removal.md).

The log records a successful build and extension tests, but leaves the final
suite result unfilled after discovering a false-green acquisition checker.
The current dalek-lite tree retains proof holes. This issue remains open for
a successful suite receipt and resolution or explicit accounting of the
remaining regressions; the toolchain migration itself is complete.

## Original requested scope

Move the workspace from Lean 4.28 to the then-requested 4.32, remove the Veil
carrier dependency, depend on lean-smt directly, update scripts/editor/docs,
and record the build/test outcome. The implementation selected 4.33 instead.
