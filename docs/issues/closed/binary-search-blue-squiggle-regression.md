---
title: Binary-search lost its blue "discharged interactively" squiggle
labels: [bug, vscode-extension]
state: closed
github: 8
---

Binary-search stopped showing the blue "discharged interactively" squiggle for
its interactive proof in VS Code.

**Resolution.** Regression from the twin fast path: the editor draws that blue
marker from the `covered_by_twin` diagnostics in `.vermilion/<stem>-check.json`,
and the fast path had blanked that file. New `vrml_check --twin-coverage-only`
re-emits just those markers (no Lean run); the fast path writes them to the
check file so interactive obligations keep their squiggle while auto ones stay
green.

*Ported from `docs/wrinkles.md` (Fixed).*
