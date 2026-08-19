---
title: Verification shortcut should no-op without a verus macro
labels: [bug, vscode-extension]
state: open
github: 24
---

# Verification shortcut should no-op without a `verus!` macro

## Problem

Invoking **Vermilion: Verify Current File** (the verification keyboard shortcut) on an ordinary Rust file that contains no `verus! { ... }` macro can enter the verification and highlighting path.

The command should recognize that the active Rust file is outside Vermilion's input language and return without invoking verification or producing editor highlighting.

This is related to, but distinct from, [the fixed stale-highlighting issue](closed/plain-rust-files-stuck-highlighted.md): that issue covered automatic verification and cleanup on open/save, while this issue covers an explicit invocation of the verification command.

## Expected behavior

For an active `.rs` file without a `verus! { ... }` macro, the verification shortcut should:

- not invoke the Vermilion frontend, Lean generation, build, or checking pipeline;
- not create or update per-file verification status;
- not publish verification diagnostics, gutter marks, or source highlighting; and
- leave the editor with no Vermilion-owned highlighting for that file.

Files containing a `verus! { ... }` macro must continue to verify normally.

## Suggested implementation

Reuse the same `verus!`-macro eligibility check used by verification-on-open and verification-on-save at the command entry point. Keeping one shared predicate avoids the shortcut and automatic verification paths drifting apart.

## Acceptance criteria

- An extension test opens a plain Rust file, invokes the verification command, and observes that the verification runner was not called.
- The same test observes no Vermilion diagnostics or decorations on that file.
- A companion test confirms that invoking the command on a Rust file containing `verus! { ... }` still starts verification.
- The behavior and shortcut documentation state that plain Rust files are ignored.
