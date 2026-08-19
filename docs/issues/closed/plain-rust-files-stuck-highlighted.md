---
title: Plain Rust files stayed read-highlighted with no way back
labels: [bug, vscode-extension]
state: closed
github: 13
---

Plain Rust files were analysed by Vermilion and remained read-highlighted with
no way to make them normal again. Intended fix: only run the Vermilion check on
files that contain the `verus!{...}` macro.

**Resolution.** Verify-on-*open* was already macro-guarded; verify-on-*save*
was not, so any Rust save ran the pipeline. Save now runs only for files with a
`verus!` macro; a plain file (or one whose macro was removed) instead sheds its
Vermilion diagnostics and gutter marks on save, returning to a normal-looking
Rust file.

*Ported from `docs/wrinkles.md` (Fixed).*
