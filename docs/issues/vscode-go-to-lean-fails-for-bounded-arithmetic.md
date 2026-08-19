---
title: Go to Lean shortcut fails for bounded_arithmetic.rs
labels: [bug, vscode-extension]
state: open
github: 26
---

# Go to Lean shortcut fails for `bounded_arithmetic.rs`

## Problem

In `case-studies/percolator/bounded_arithmetic.rs`, invoking **Vermilion: Go
to Lean (proof or definition)** with `⌘⇧J` / `Ctrl+Shift+J` does not navigate
to the Lean VCs for `adjust_u128`.

The command currently discovers navigation targets only through the colocated
`generated/bounded_arithmetic.json` manifest and a
`proofs/bounded_arithmetic.lean` or `generated/bounded_arithmetic.lean` file.
If an artifact is absent, stale, or unreadable, manifest parsing silently
falls back to an empty obligation list and then to generic function
navigation. This loses the distinction between “the cursor is not on a VC”
and “verification did not leave navigable artifacts.”

`bounded_arithmetic.rs` is particularly important because its standalone Lean
path has exposed elaboration/typeclass-context failures. Navigation must
remain useful when verification reports such a failure: either a VC/twin
exists and the shortcut opens it, or the editor explains precisely which
artifact was not produced and why.

## Reproduction

1. Open `case-studies/percolator/bounded_arithmetic.rs`.
2. Run Vermilion verification for the file.
3. Place the cursor on an `ensures` clause or inside `adjust_u128`.
4. Invoke `⌘⇧J` / `Ctrl+Shift+J`.
5. Observe that the corresponding Lean obligation is not opened.

## Expected behavior

- On an `ensures` span, jump to that obligation's proof body in the persistent
  twin (or the generated fallback), offering the existing picker if several
  VCs share the span.
- Elsewhere inside `adjust_u128`, jump to its first emitted Lean obligation.
- Resolve paths from the recorded verification result/manifest rather than
  assuming that a stem-local artifact exists without checking the run phase.
- If generation or twin elaboration failed before a navigable Lean block was
  emitted, show an actionable message naming the failed phase and expected
  artifact; do not silently behave as though the cursor matched no VC.
- Preserve the existing forward/back navigation behavior for working files.

## Acceptance criteria

- An extension regression test verifies `bounded_arithmetic.rs` (or a fixture
  with the same artifact/failure shape), invokes `vermilion.goToLean` on an
  `ensures` span, and observes the expected Lean proof location.
- A companion test invokes the command inside the function but outside a
  clause span and reaches the function's first obligation.
- Missing/stale-manifest and pre-emission-failure tests produce an actionable
  editor message rather than an empty-target fallback.
- A normal generated/proofs pair still navigates in both directions with the
  documented shortcut.
