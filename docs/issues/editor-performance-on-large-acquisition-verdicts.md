---
title: Editor performance on large acquisition verdicts (dalek-lite field_u64.rs)
labels: [enhancement, vscode-extension]
state: open
github: 58
---

Opening or switching to `case-studies/dalek-lite/field_u64.rs` is noticeably
sluggish once the Layer Set A acquisition has been judged. The file carries
297 of the sweep's 337 recorded diagnostics, and the extension's global
refresh redoes a lot of work on the extension-host thread every time it
fires.

Measured on 2026-08-19 (extension 0.9.12, after the 0.9.11 fixes that removed
the O(n²) twin scans and added the mtime-keyed text/goal-index caches):

- `.vermilion/` holds **99 `*-check.json` files, 5.3 MB / 3,633 diagnostics**
  of JSONL; `JSON.parse` alone over all of them costs **~150 ms**, and
  `refresh()` pays it — plus `vscode.Diagnostic` construction, twin-link
  resolution, and stale-mtime stats — on **every** debounced refresh.
  `readTextCached` caches file bytes, not parse results.
- `refresh()` is global and fires on every document open/close and on every
  watcher burst (`extension.js`: `requestRefresh`). Any editor navigation
  re-derives all 99 check files' diagnostics even when nothing changed.
- `collectFunctionMarks` walks every obligation record of every reachable
  manifest per refresh — the dalek-lite manifests alone carry **5,215
  records** — and re-reads/re-parses each source file's function ranges.
- `manifestsByStem` is rebuilt per refresh by running
  `resolveManifestContext` for every open Rust document (directory walk +
  `readdirSync` of each `generated/`).
- The per-function twins for `field_u64` total **18 MB** across 19 units;
  their goal indexes rebuild whenever a sweep rewrites them, all in one
  refresh burst.

Ideas, in rough order of value:

1. **Cache parsed diagnostics per check file** keyed by `(path, mtimeMs)` —
   the JSONL → `vscode.Diagnostic[]` step is pure. This turns the steady-state
   refresh into map merges.
2. **Incremental refresh**: only re-collect check files whose mtime changed
   since the last pass; document open/close only needs to re-filter which
   diagnostics are *displayed*, not re-derive them.
3. **Cache function marks** per manifest mtime + source mtime instead of
   re-walking 5k records and re-parsing sources.
4. **Cache the manifest context per document** (it is already re-resolved on
   navigation paths; one map keyed by document path + generated-dir mtimes
   would do).
5. **Verification granularity**: ⌘⇧R on a mounted source now re-runs the
   whole acquisition (`run.sh` → ~35 min sweep). A fast path that re-judges
   just the file's own manifest (`vrml_check generated/field_u64.json` +
   `vrml_sync`) when the front end and lowering are unchanged would give
   per-file latency on par with the ordinary examples.

Related: the diagnostic *volume* itself (297 red squiggles on one file) is a
UX question more than a performance one — grouping per function or per
obligation kind in the Problems panel could fall out of the
"why did this fail" explanations work.
