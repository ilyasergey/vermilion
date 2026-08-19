---
title: Fast-fail Rust highlighting when the twin proof fails to type-check
labels: [bug, vscode-extension]
state: open
github: 15
---

If the twin proof file (`proofs/<stem>.lean`) fails to type-check, quickly fail
the highlighting in the corresponding Rust file and report that in the status —
rather than leaving stale green/verified marks while the twin is broken.

*Ported from `docs/wrinkles.md` (open).*
