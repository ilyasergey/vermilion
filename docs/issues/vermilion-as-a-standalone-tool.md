---
title: Vermilion as a standalone tool (reproduce proofs outside this repo)
labels: [feature]
state: open
github: 50
---

User request (2026-07-20, during the dalek-lite DL8 acquisition): it
should be possible to reproduce Vermilion verification runs on a
standalone copy of a target project, in a separate folder — using
Vermilion **as a tool**, not from inside this development repository.

Today everything is repo-hosted: `run_example.sh` resolves this repo's
root, twins build through the monolithic `lakefile.lean` (automatic
proof-root discovery), and `.vermilion/` state sits at the repo root.
Two standing disciplines already point the right way: **no absolute
paths** anywhere in manifests/imports/plumbing (everything
repository-relative), and the pinned Verus installs to
`~/.cache/vermilion/verus`, never into the repo.

Missing pieces (packaging, not architecture):

1. **Installable distribution**: the four binaries (`vermilion_direct`,
   `vrml_gen`, `vrml_check`, `vrml_sync`), the Vermilion Lean library as
   a prebuilt **olean cache** (it depends on Mathlib — consumers must
   not rebuild it), and `setup_verus.sh`, all keyed to
   `~/.cache/vermilion/<version>`.
2. **`vrml init`**: materialize in any target folder the scaffold this
   repo provides implicitly — a project-local lakefile template
   importing the prebuilt library and globbing `proofs/`, plus
   project-local `.vermilion/` state.
3. **`--project-root`**: factor `run_example.sh`'s repo-root assumptions
   behind an explicit root (mechanical, given the no-absolute-paths
   discipline).

Acceptance: in a fresh directory outside this repo, `vrml init`, copy
`case-studies/dalek-lite/` (or any example), run its `run.sh`, and get
the identical verdicts, generated modules, statement hashes, and twin
reconciliation — Lean as the only verifier, interactive proofs riding in
`proofs/` twins. The per-function emission A/B and differential
harnesses stay in this repo (they are development tools, not user
surface). Update `docs/TUTORIAL.md` in the same slice that lands the
user-visible workflow.
