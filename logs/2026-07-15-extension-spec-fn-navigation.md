# 2026-07-15 — Extension: navigate/mark `pub open spec fn` (and friends)

User report: in VSCode, jumping (`⌘⇧J`) from
`pub open spec fn is_sorted(v: &Vec<u64>) -> bool {` in `mergesort.rs` did
nothing.

## Root cause

The jump machinery was fine: `vermilion.openFunctionProofs` already lands on
an emitted `def`/`inductive`/`opaque` for a spec fn / datatype, and the
reverse jump reads `-- vrml:spec NAME FILE:LINE:COL` markers. What failed was
*enclosing-function detection*: `parseFunctionRanges`' declaration regex was

```
/^\s*(?:pub\s+)?(?:uninterp\s+)?(?:proof\s+|spec\s+|exec\s+)?fn\s+[A-Za-z0-9_]+/
```

which has no slot for the `open`/`closed` spec-fn modifiers nor `broadcast`.
So `pub open spec fn …` and `pub broadcast proof fn …` were not recognised as
functions at all — the cursor was "not inside a function", so both navigation
and the gutter ✓/✗ marks silently skipped them.

## Fix

Widened the regex to: optional `pub` (with optional `(crate)`/`(in …)`),
then any run — in any order — of the modifiers
`open|closed|uninterp|broadcast|proof|spec|exec|axiom`, each with an optional
parenthesised argument (`spec(checked)`), then `fn NAME`. Verified against the
corpus's declaration forms plus negatives (`let fn_ptr`, `// fn`). Single
source of truth: `parseFunctionRanges` is the only definition of this regex,
used by the zigzag, the checkmarks, and both jump commands.

`editor/vscode-vermilion/extension.js` only (no build step — `extension.js`
is the extension `main`).

Moved wrinkle "jump for `pub open spec fn`" to Fixed in `docs/wrinkles.md`.
