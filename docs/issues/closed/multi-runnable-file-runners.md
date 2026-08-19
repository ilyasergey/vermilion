---
title: Runners for case studies with more than one runnable file
labels: [bug, vscode-extension]
state: closed
github: 11
---

When a case study has more than one runnable file, add runners for all of them.

**Resolution.** The runners already existed (merge-sort: `run.sh` for
`mergesort_clean.rs`, `run_verbatim.sh` for `mergesort.rs`). The bug was in the
extension: `verify()` always ran `run.sh` regardless of which file was open, so
opening `mergesort.rs` verified `mergesort_clean.rs` and the ✓/red marks never
landed on `mergesort.rs`. New `runnerForFile()` picks the runner whose
non-comment lines reference the opened file's basename (preferring `run.sh`);
handles both one-runner-per-file and one-runner-for-many (primes).

*Ported from `docs/wrinkles.md` (Fixed).*
