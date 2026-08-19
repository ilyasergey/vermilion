---
title: Twin elaborated twice — delay before "proofs twin kernel-checked"
labels: [bug]
state: closed
github: 14
---

Considerable delay before `✓ proofs twin kernel-checked` (e.g. `binary-search`);
the editor and CLI elaborated Lean twice.

**Resolution.** With `--manual-proofs --lib` the pipeline ran `vrml_check` on
the generated module AND `lean` on the twin, but the twin is a superset of the
generated module, so the automatable obligations were elaborated twice. New
`vrml_sync --probe` detects a current & complete twin; when found,
`run_example.sh` skips the generated check and makes the twin kernel-check the
sole arbiter (falling back to the full flow if the twin doesn't check).
binary-search 5.5s → 2.8s; full suite `fail=0`.

*Ported from `docs/wrinkles.md` (Fixed).*
