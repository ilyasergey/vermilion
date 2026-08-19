---
title: Upgrade to Lean 4.32 and remove the Veil dependency
labels: [enhancement, feature]
state: open
github: 41
---

Vermilion is still pinned to Lean 4.28.0, and the root Lake package still
depends directly on Veil:

- `lean-toolchain` is `leanprover/lean4:v4.28.0`.
- `lakefile.lean` has a top-level `require veil from git ...`.
- `lake-manifest.json` still resolves the Veil checkout and its 4.28-era
  dependency graph.

That pin made sense for the initial bring-up, but it now blocks moving the
project forward with the current Lean ecosystem. The next step is to upgrade
the project to Lean 4.32 and stop depending on Veil as a root package
dependency.

This issue tracks the upgrade slice:

1. Move the workspace toolchain and Lake dependency set to Lean 4.32.
2. Remove the direct `require veil` dependency from the root package.
3. Import Lean-SMT for Lean 4.32 and use where needed: https://github.com/ufmg-smite/lean-smt
4. Update build scripts, editor shims, and docs that still assume the 4.28
   toolchain or Veil-managed dependency graph.
5. Rebuild the suite and record any proof or tactic regressions introduced by
   the upgrade.

Definition of done: `lean-toolchain`, `lakefile.lean`, and `lake-manifest.json`
all reflect Lean 4.32 without a direct Veil dependency, and the documented
build/test workflow is back to green.
