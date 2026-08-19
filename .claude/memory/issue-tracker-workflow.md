On 2026-07-16 the user established the issue-tracker workflow: features and
bugs are tracked as per-issue Markdown files under `docs/issues/`, synced
**two-way** with GitHub issues by `scripts/sync_issues.py`.

- **`docs/issues/` is the single tracker.** It replaced and absorbed the old
  `docs/features.md` wishlist and `docs/wrinkles.md` inbox (both deleted). One
  file per issue; open issues at the top level, closed ones under
  `docs/issues/closed/`. `docs/issues/README.md` documents the format.
- **File format:** YAML front matter `title`, `labels: [feature|bug|enhancement|…]`,
  `state: open|closed`, `github: <number|null>`; the Markdown body is the
  issue body verbatim. Filenames are a stable slug of the title; the GitHub
  number lives in front matter, not the filename.
- **`scripts/sync_issues.py`** — `--push` (local→GitHub, creates `github:null`
  files and closes those authored `state: closed`), `--pull` (GitHub→local),
  default both (per-file direction from what changed since last sync;
  both-sides changes reported as a conflict, never clobbered). Change state is
  a gitignored sidecar `docs/issues/.sync-state.json` (content hash over
  title+state+body, plus GitHub `updatedAt`). After reconciling it **mirrors
  state into folder location** (open↔`closed/`). Remote discovery covers
  whatever labels the local files use; `--label a,b` overrides.
- **Labels sync additively** (not part of the content hash): a file-only label
  is pushed to GitHub, a GitHub-only label is mirrored back to the file,
  removal is manual. Labels in use: `feature`, `bug`, `enhancement`, `vcgen`
  (VC generation / IR / emitter), `vscode-extension` (editor behaviour / UX),
  `foundations` (foundational soundness / trusted-base reduction, e.g. proven-
  sound VC generation), `verus` (work in or against our Verus fork —
  `ilyasergey/verus` branch `dev`: front-end accommodations, vstd growth). `sync_issues.py`'s `LABEL_META` holds
  colors/descriptions for labels it creates.
- **Repo moved to a new GitHub home** the same
  day; the `origin` remote was repointed. Sync targets whatever `gh` resolves
  from the remote; override with `--repo`/`$GH_REPO`. The `feature`, `vcgen`,
  and `vscode-extension` labels were created by the sync; `bug`/`enhancement`
  already existed.
- Documented in `README.md` ("Issue tracker" subsection under Build and test)
  and `docs/issues/README.md`.

**Why:** The user wants the forward-looking backlog and the bug/fix log to be
first-class GitHub issues editable from the repo tree, kept in lockstep both
ways, with closed work visibly archived in a `closed/` folder rather than an
ad-hoc "## Fixed" section in a doc.

**How to apply:** Add new features/bugs as files in `docs/issues/` (leave
`github: null`) and run `scripts/sync_issues.py` to publish; never recreate
`docs/features.md` or `docs/wrinkles.md`. When workflow-visible behaviour
changes, keep `docs/issues/README.md` and the README subsection in sync, and
extend `sync_issues.py` rather than adding a parallel script (mirrors the
one-tool discipline in [[vermilion-conventions]]). Reports still live under
`docs/` per [[reports-live-in-docs]].
