---
title: Surface dependency-level lowering refusals in VS Code
labels: [bug, vscode-extension]
state: closed
github: 32
---

# Surface dependency-level lowering refusals in VS Code

## Problem

Verifying `case-studies/entry-api/entry_api.rs` stops fail-closed while the
adapter collects vstd declarations:

```text
outside the supported fragment: uninterpreted spec function view has type parameters
  --> vstd/std_specs/hash.rs:631:9
```

The pipeline correctly writes `phase: lowering`, but the diagnostic span is
in the imported vstd declaration rather than `entry_api.rs`. The extension
therefore had no source-local error from which to build gutter marks. Its
direct warning status was also not retained in the per-file result map, so a
later editor refresh could replace it with the neutral “vermilion” status.

## Incomplete resolution

VS Code extension 0.9.6 preserves refusals in a dedicated per-file result and
gutter-mark cache. A source-local refusal still marks only its enclosing
function. When lowering stops in an imported declaration before per-function
obligations exist, the extension adds a module-level diagnostic to the opened
Rust file and marks every function unsupported; the fragment warning then
survives refresh and focus changes.

The pure source-range/refusal mapping lives in
`editor/vscode-vermilion/core.js`. Three Node unit tests cover Verus function
range parsing, source-local refusal mapping, and dependency-level module
mapping, and now run in phase 2 of `scripts/run_suite.sh`. The full suite is
green, including the exact `entry_api.rs` expected-refusal runner.

## Reopened: highlight the active-source fragment

The module-level fallback is too imprecise: it puts a one-character diagnostic
on the first `fn` keyword even though that function is not the construct that
introduced the unsupported declaration. In Entry API, the active source has a
better attribution target:

```rust
use vstd::std_specs::hash::*;
```

For a dependency-level refusal, the extension should highlight the matching
`use` target in the opened Rust file and attach the dependency's exact span as
related information. If no matching import can be identified, the existing
module-level fallback remains sound. Every function stays marked unsupported
because lowering stopped before any per-function obligations were emitted.

## Acceptance criteria

- `entry_api.rs` highlights `vstd::std_specs::hash::*`, not an arbitrary `fn`.
- The diagnostic links to the exact unsupported span in the pinned vstd tree.
- Source-local refusals remain attached to their exact original spans.
- Dependency refusals without a recognizable import retain the conservative
  module-level fallback.
- Pure editor tests cover exact, grouped, and absent import mappings.

## Resolution (0.9.7)

Dependency-level lowering diagnostics now resolve relative vstd paths into
the pinned checkout, find the most specific importing `use` declaration, and
underline that target in the active Rust file. The Problems entry carries the
external diagnostic as clickable related information. Exact, ancestor-glob,
item, and grouped imports are supported; an unrecognized dependency retains
the conservative first-function fallback. All functions still receive red
gutter marks because no obligation was emitted for any of them.

The editor unit suite now has six tests, including exact, grouped, and absent
import mappings. `case-studies/entry-api/explore.sh` preserves the expected
fail-closed boundary, and the full six-phase suite passes with 144/144
differential verdict parity and 69/69 failure-span agreement.
