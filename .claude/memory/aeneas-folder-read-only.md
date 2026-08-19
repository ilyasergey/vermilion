---
name: aeneas-folder-read-only
description: "The case-studies/aeneas folder is user-owned and must not be touched without an explicit override"
metadata:
  node_type: memory
  type: feedback
---

The user directed on 2026-07-17: **do not touch `case-studies/aeneas/`.**

- Treat the entire folder as read-only and user-owned.
- Do not edit, add, delete, rename, format, generate files in, stage, or commit
  files from this folder.
- Reading it for context is allowed only when needed for a task outside the
  folder.
- An explicit later instruction naming work inside `case-studies/aeneas/` is
  required to override this directive for that task.

References to the folder from documentation elsewhere may be updated when
requested, but the folder itself remains untouched.
