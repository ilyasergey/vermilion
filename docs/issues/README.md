# Issue tracker — synced with GitHub issues

This folder is the Vermilion issue tracker: the forward-looking feature backlog
**and** the running bug/fix log, one Markdown file per issue. Each file **is** a
GitHub issue; [`scripts/sync_issues.py`](../../scripts/sync_issues.py) keeps the
files and the issues in step **both ways**. It supersedes the old
`docs/features.md` wishlist and `docs/wrinkles.md` inbox.

Open issues live at the top level; closed ones live in
[`closed/`](closed/) — the sync moves a file between the two whenever its state
changes on either side. Design work is captured here first; items graduate into
[`plans/execution-plan.md`](../../plans/execution-plan.md) (and `WORKPLAN.md`)
when scheduled, and land in [`docs/TUTORIAL.md`](../TUTORIAL.md) once shipped.
Ordering is rough priority, not commitment.

## File format

```markdown
---
title: Formal semantics for the neutral IR
labels: [feature, vcgen]   # feature | bug | enhancement | vcgen | vscode-extension | …
state: open                # open | closed  (mirrors the folder)
github: 3              # GitHub issue number; null until first pushed
---

<markdown body — becomes the GitHub issue body>
```

- Write the issue as usual; the body is the issue body verbatim.
- Leave `github: null` on a brand-new file — the first push fills in the
  number and writes it back.
- `state` and the folder are two views of the same fact: a closed issue lives
  in `closed/`. Set `state: closed` (the sync will move the file) **or** move
  the file into `closed/` and let the sync close it — either works.
- Filenames are a slug of the title and stable across syncs; the GitHub number
  lives in the front matter, not the filename.

## Syncing

```sh
scripts/sync_issues.py --dry-run   # preview a two-way sync, change nothing
scripts/sync_issues.py             # two-way sync
scripts/sync_issues.py --push      # only publish local files -> GitHub
scripts/sync_issues.py --pull      # only fetch GitHub -> local files
```

- **push** creates issues for `github: null` files (closing right away those
  authored `state: closed`) and updates issues whose local file changed.
- **pull** rewrites local files from GitHub and creates a file for any tracked
  issue filed directly on GitHub.
- **both** (default) picks the direction per file from what changed since the
  last sync. A file changed on **both** sides is reported as a conflict and
  left untouched — resolve by hand, then re-run.
- After reconciling, every file is moved into the folder its state dictates
  (`open` → top level, `closed` → `closed/`).

Change detection is recorded in `docs/issues/.sync-state.json` (gitignored):
per issue, the content hash and GitHub `updatedAt` at the last sync. The hash
covers **title + state + body** (not labels).

Labels sync **additively**: a label in a file but not on GitHub is added there
on push, a label added on GitHub is mirrored back into the file, and new issues
are created with the file's labels. Removal is never automatic — drop a label
on GitHub directly if you need to. Labels in use:

| Label | Meaning |
| --- | --- |
| `feature` | Planned feature / design backlog item |
| `bug` | Defect |
| `enhancement` | Improvement / task |
| `vcgen` | VC generation / IR lowering / Lean emitter |
| `vscode-extension` | VS Code extension behaviour / UX |
| `foundations` | Foundational soundness / trusted-base reduction |

Remote discovery covers whatever labels the local files use; override with
`--label a,b`. The target repository is whatever `gh` resolves from the git
remote; override with `--repo owner/name` or `$GH_REPO`.
