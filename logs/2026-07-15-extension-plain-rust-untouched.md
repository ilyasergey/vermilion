# 2026-07-15 — Extension: leave plain Rust files alone

User report (wrinkle): plain Rust files get analysed by Vermilion and stay
red-highlighted with no way to make them normal again. Directive: only run
the Vermilion check on files that carry the `verus!{ … }` macro.

## Root cause

Verify-on-*open* was already guarded (`verifyIfVerus` skips files without a
`verus!` macro). Verify-on-*save* was not: `onDidSaveTextDocument` called
`verify()` on **any** saved Rust file. So a plain Rust file (or one whose
macro had been removed) was pushed through the pipeline on save, and its
resulting diagnostics / gutter marks then lingered.

## Fix

The save handler now:
- skips non-`file` (diff/virtual) documents;
- for a Rust file **without** a `verus!` macro, clears its Vermilion
  diagnostics, front-end diagnostics, gutter marks and cached result, repaints
  and returns — so the file looks like a normal Rust file again;
- only runs `verify()` for files that do carry the macro.

The manual command (`⌘⇧R`) is left permissive — it is an explicit user action.

`editor/vscode-vermilion/extension.js` only. Wrinkle moved to Fixed.
