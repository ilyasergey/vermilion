# 2026-07-16 — Issue tracker synced with GitHub

User asked to turn the feature wishlist into GitHub issues from the command
line and to be able to fetch issues back for local implementation, then grew
the ask into a full two-way-synced, file-per-issue tracker under `docs/issues/`.
The repository also moved to a new GitHub home (origin repointed).

## What changed

- **`docs/features.md` and `docs/wrinkles.md` removed**, absorbed into a single
  tracker: one Markdown file per issue under `docs/issues/`, closed issues in
  `docs/issues/closed/`. Each file carries front matter (`title`, `labels`,
  `state`, `github`) and a body that is the issue body verbatim.
- **`scripts/sync_issues.py`** — two-way sync with GitHub issues via `gh`:
  - `--push` (local→GitHub: create `github:null` files, close those authored
    `state: closed`, update changed ones), `--pull` (GitHub→local), default
    both (per-file direction from a gitignored `.sync-state.json` recording a
    content hash + `updatedAt`; both-sides changes → conflict, left untouched).
  - Remote discovery covers whatever labels the local files use; `--label a,b`
    overrides. Repo auto-resolved from the `gh` remote; `--repo`/`$GH_REPO`
    override.
  - After reconciling, mirrors state into folder location (open↔`closed/`).
- **Ported content → issues** (created live on the GitHub repository):
  - Feature wishlist → `feature` issues `#1`–`#7`.
  - `wrinkles.md`: 2 open items → `#12` (`enhancement`), `#15` (`bug`); 7
    "Fixed" items → `bug` issues `#8`–`#11`, `#13`, `#14`, `#16`, created and
    immediately closed, files moved to `closed/`.
- Created the `feature` label (green); `bug`/`enhancement` already existed.
- Docs: README "Issue tracker" subsection under Build and test;
  `docs/issues/README.md` (format + mechanics). Memory:
  `.claude/memory/issue-tracker-workflow.md`, referenced from `CLAUDE.md`.

## Verification

```console
./scripts/sync_issues.py --dry-run     # preview, no writes
./scripts/sync_issues.py               # created #1–#16, moved closed → closed/
./scripts/sync_issues.py               # re-run: "nothing to do — everything in sync"
# round-trip: gh issue close 12 → --pull moved file to closed/;
#             gh issue reopen 12 → --pull moved it back to top level.
```

No Lean/Rust sources touched; suite not re-run (docs + tooling only).

## Follow-up — vcgen / vscode-extension tags

Added two labels and made the sync push labels (previously labels were
GitHub-authoritative only). `sync_issues.py` now reconciles labels
**additively**: a file-only label is created + added on GitHub, a GitHub-only
label is mirrored back to the file; removal stays manual. `LABEL_META` carries
colors/descriptions for labels the sync creates.

- `vcgen` (VC generation / IR / emitter): #3, #9.
- `vscode-extension` (editor behaviour / UX): #1, #4, #5, #7, #8, #10, #11,
  #13, #15, #16.
- Left untagged (neither fits cleanly): #2 batch-assist, #6 proof-caching,
  #12 per-case-study test/harness, #14 twin double-elaboration delay.
