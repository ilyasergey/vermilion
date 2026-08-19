#!/usr/bin/env python3
"""Two-way sync between the per-feature files in `docs/issues/` and GitHub
issues labeled `feature`.

Each `docs/issues/<slug>.md` file is one feature = one GitHub issue. A file
carries YAML front matter:

    ---
    title: Formal semantics for the neutral IR
    labels: [feature]
    state: open            # open | closed
    github: null           # issue number once pushed; null before
    ---
    <markdown body = the issue body>

Directions:
  --push   local files  -> GitHub   (create new issues, update changed ones)
  --pull   GitHub        -> local   (write files for issues, incl. ones filed
                                      directly on GitHub)
  (default: both)        bidirectional, with conflict detection

Change detection uses a gitignored sidecar `docs/issues/.sync-state.json`
recording, per issue, the content hash and the GitHub `updatedAt` at the last
sync. In bidirectional mode, if BOTH sides changed since that point the file is
reported as a conflict and left untouched — neither side is clobbered.

The content hash covers title + state + body (the human-authored content).
Labels are mirrored GitHub -> file on every touch and used verbatim when
creating an issue; a push never removes labels added on GitHub.

Repo defaults to whatever `gh` resolves from the git remote; override
with --repo or $GH_REPO.

Examples:
  scripts/sync_issues.py --dry-run          # preview a full two-way sync
  scripts/sync_issues.py                     # do the two-way sync
  scripts/sync_issues.py --push              # only publish local changes
  scripts/sync_issues.py --pull              # only fetch remote changes
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
import tempfile
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
ISSUES_DIR = REPO_ROOT / "docs" / "issues"
# Closed issues live in a `closed/` subfolder; the folder mirrors issue state
# and is maintained by the sync (open <-> closed moves the file).
CLOSED_DIR = ISSUES_DIR / "closed"
STATE_FILE = ISSUES_DIR / ".sync-state.json"
DEFAULT_LABEL = "feature"

# Color + description used when the sync has to create a label that the repo
# does not have yet. Labels not listed here are created with a neutral color.
LABEL_META = {
    "feature": ("0e8a16", "Planned feature / design backlog item"),
    "vcgen": ("5319e7", "VC generation / IR lowering / Lean emitter"),
    "vscode-extension": ("1d76db", "VS Code extension behaviour / UX"),
    "foundations": ("fbca04", "Foundational soundness / trusted-base reduction"),
}
FALLBACK_LABEL_COLOR = "ededed"


# --------------------------------------------------------------------------- #
# Front-matter parsing (a tiny, dependency-free subset of YAML)
# --------------------------------------------------------------------------- #

def _parse_scalar(raw: str):
    raw = raw.strip()
    if raw in ("null", "~", ""):
        return None
    if raw.startswith("[") and raw.endswith("]"):
        inner = raw[1:-1].strip()
        if not inner:
            return []
        return [_parse_scalar(x) for x in inner.split(",")]
    if (raw.startswith('"') and raw.endswith('"')) or (
        raw.startswith("'") and raw.endswith("'")
    ):
        return raw[1:-1]
    if re.fullmatch(r"-?\d+", raw):
        return int(raw)
    return raw


def parse_file(path: Path) -> tuple[dict, str]:
    text = path.read_text(encoding="utf-8")
    if not text.startswith("---"):
        raise ValueError(f"{path}: missing front matter (must start with '---')")
    _, fm, body = text.split("---", 2)
    meta: dict = {}
    for line in fm.strip().splitlines():
        if not line.strip() or line.strip().startswith("#"):
            continue
        key, _, value = line.partition(":")
        meta[key.strip()] = _parse_scalar(value)
    return meta, body.lstrip("\n")


def _dump_scalar(value) -> str:
    if value is None:
        return "null"
    if isinstance(value, list):
        return "[" + ", ".join(str(v) for v in value) + "]"
    return str(value)


def write_file(path: Path, meta: dict, body: str) -> None:
    lines = ["---"]
    for key in ("title", "labels", "state", "github"):
        if key in meta:
            lines.append(f"{key}: {_dump_scalar(meta[key])}")
    lines.append("---")
    lines.append("")
    text = "\n".join(lines) + "\n" + body.strip("\n") + "\n"
    path.write_text(text, encoding="utf-8")


# --------------------------------------------------------------------------- #
# Content hashing & slugs
# --------------------------------------------------------------------------- #

def content_hash(title: str, state: str, body: str) -> str:
    canon = f"{title}\n{state}\n{body.strip()}"
    return hashlib.sha256(canon.encode("utf-8")).hexdigest()


def slugify(title: str) -> str:
    slug = re.sub(r"[^a-z0-9]+", "-", title.lower()).strip("-")
    return slug or "issue"


# --------------------------------------------------------------------------- #
# gh wrappers
# --------------------------------------------------------------------------- #

class Gh:
    def __init__(self, repo: str | None):
        self.repo_args = ["--repo", repo] if repo else []

    def _run(self, args: list[str], capture=True) -> str:
        cmd = ["gh", *args]
        proc = subprocess.run(
            cmd, capture_output=capture, text=True
        )
        if proc.returncode != 0:
            sys.stderr.write(proc.stderr)
            raise SystemExit(f"gh failed: {' '.join(cmd)}")
        return proc.stdout

    def ensure_label(self, label: str) -> None:
        existing = json.loads(
            self._run(["label", "list", *self.repo_args, "--json", "name", "--limit", "500"])
        )
        if any(l["name"] == label for l in existing):
            return
        color, desc = LABEL_META.get(label, (FALLBACK_LABEL_COLOR, ""))
        self._run([
            "label", "create", label, *self.repo_args,
            "--color", color, "--description", desc,
        ])
        print(f"  + created label '{label}'")

    def add_labels(self, number: int, labels: list[str]) -> None:
        args = ["issue", "edit", str(number), *self.repo_args]
        for label in labels:
            args += ["--add-label", label]
        self._run(args)

    def list_issues(self, labels: list[str]) -> list[dict]:
        # `gh --label A --label B` means "has all of A and B"; to get the union
        # we query each label separately and merge by number.
        merged: dict[int, dict] = {}
        for label in labels:
            out = self._run([
                "issue", "list", *self.repo_args, "--label", label, "--state", "all",
                "--limit", "1000",
                "--json", "number,title,body,state,labels,updatedAt,url",
            ])
            for it in json.loads(out):
                it["state"] = it["state"].lower()
                it["labels"] = [l["name"] for l in it.get("labels", [])]
                merged[it["number"]] = it
        return list(merged.values())

    def create_issue(self, title: str, body: str, labels: list[str]) -> int:
        with tempfile.NamedTemporaryFile("w", suffix=".md", delete=False) as fh:
            fh.write(body)
            body_path = fh.name
        args = ["issue", "create", *self.repo_args, "--title", title, "--body-file", body_path]
        for lab in labels:
            args += ["--label", lab]
        url = self._run(args).strip()
        Path(body_path).unlink(missing_ok=True)
        return int(url.rstrip("/").split("/")[-1])

    def edit_issue(self, number: int, title: str, body: str) -> None:
        with tempfile.NamedTemporaryFile("w", suffix=".md", delete=False) as fh:
            fh.write(body)
            body_path = fh.name
        self._run([
            "issue", "edit", str(number), *self.repo_args,
            "--title", title, "--body-file", body_path,
        ])
        Path(body_path).unlink(missing_ok=True)

    def set_state(self, number: int, state: str) -> None:
        verb = "close" if state == "closed" else "reopen"
        self._run(["issue", verb, str(number), *self.repo_args])

    def refetch(self, number: int) -> dict:
        out = self._run([
            "issue", "view", str(number), *self.repo_args,
            "--json", "number,title,body,state,labels,updatedAt,url",
        ])
        it = json.loads(out)
        it["state"] = it["state"].lower()
        it["labels"] = [l["name"] for l in it.get("labels", [])]
        return it


# --------------------------------------------------------------------------- #
# Sync
# --------------------------------------------------------------------------- #

def load_state() -> dict:
    if STATE_FILE.exists():
        return json.loads(STATE_FILE.read_text(encoding="utf-8"))
    return {}


def save_state(state: dict, dry_run: bool) -> None:
    if dry_run:
        return
    STATE_FILE.write_text(json.dumps(state, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def local_files() -> list[Path]:
    """Every issue file: open ones at the top level, closed ones under
    `closed/`. README.md (top level only) is not an issue."""
    top = [p for p in ISSUES_DIR.glob("*.md") if p.name.lower() != "readme.md"]
    closed = list(CLOSED_DIR.glob("*.md")) if CLOSED_DIR.exists() else []
    return sorted(top + closed, key=lambda p: p.name)


def desired_dir(state: str) -> Path:
    return CLOSED_DIR if state == "closed" else ISSUES_DIR


def relocate(path: Path, state: str, dry_run: bool) -> tuple[Path, str | None]:
    """Move `path` into the folder its state dictates. Returns the (possibly
    new) path and a report line if a move happened."""
    target_dir = desired_dir(state)
    if path.parent == target_dir:
        return path, None
    dest = target_dir / path.name
    verb = "-> closed/" if target_dir == CLOSED_DIR else "-> open"
    line = f"MOVE    {path.name:45} {verb}"
    if dry_run:
        return path, line
    target_dir.mkdir(parents=True, exist_ok=True)
    path.rename(dest)
    return dest, line


def sync(gh: Gh, label_arg: str | None, direction: str, dry_run: bool) -> int:
    state = load_state()
    conflicts: list[str] = []
    actions: list[str] = []

    # Index local files by github number and collect the "not yet pushed" ones.
    files: dict[int, tuple[Path, dict, str]] = {}
    new_local: list[tuple[Path, dict, str]] = []
    local_labels: set[str] = set()
    for path in local_files():
        meta, body = parse_file(path)
        for lab in meta.get("labels") or []:
            local_labels.add(lab)
        num = meta.get("github")
        if num is None:
            new_local.append((path, meta, body))
        else:
            files[int(num)] = (path, meta, body)

    # Discovery labels: an explicit --label wins; otherwise sync whatever
    # labels the local files use (so `feature`, `bug`, … are all covered),
    # falling back to `feature` for an empty tree.
    if label_arg:
        labels = [l.strip() for l in label_arg.split(",") if l.strip()]
    else:
        labels = sorted(local_labels) or [DEFAULT_LABEL]

    remote = {it["number"]: it for it in gh.list_issues(labels)}

    # 1. New local files -> create GitHub issues (push / both).
    if direction in ("push", "both"):
        if new_local and not dry_run:
            for lab in sorted({l for _, m, _ in new_local for l in (m.get("labels") or [DEFAULT_LABEL])}):
                gh.ensure_label(lab)
        for path, meta, body in new_local:
            labels_for_file = meta.get("labels") or [DEFAULT_LABEL]
            title = meta["title"]
            intended_state = meta.get("state", "open")
            if dry_run:
                suffix = " (then close)" if intended_state == "closed" else ""
                actions.append(f"CREATE  {path.name!s:45} -> new issue titled {title!r}{suffix}")
                continue
            number = gh.create_issue(title, body, labels_for_file)
            if intended_state == "closed":
                gh.set_state(number, "closed")
            issue = gh.refetch(number)
            meta["github"] = number
            meta["labels"] = issue["labels"]
            meta["state"] = issue["state"]
            write_file(path, meta, body)
            state[str(number)] = {
                "sha": content_hash(title, issue["state"], body),
                "updatedAt": issue["updatedAt"],
            }
            actions.append(f"CREATE  {path.name:45} -> #{number} ({issue['state']})")

    # 2. Reconcile matched pairs.
    for number, (path, meta, body) in sorted(files.items()):
        issue = remote.get(number)
        if issue is None:
            actions.append(
                f"WARN    {path.name:45} references #{number}, absent on GitHub (skipped)"
            )
            continue
        title = meta["title"]
        cur_state = meta.get("state", "open")
        local_sha = content_hash(title, cur_state, body)
        remote_sha = content_hash(issue["title"], issue["state"], issue["body"] or "")
        st = state.get(str(number))
        local_changed = st is None or st.get("sha") != local_sha
        remote_changed = st is None or st.get("updatedAt") != issue["updatedAt"]

        # If nothing textual differs, only refresh bookkeeping.
        identical = local_sha == remote_sha

        do_push = do_pull = False
        if direction == "push":
            do_push = local_changed and not identical
        elif direction == "pull":
            do_pull = remote_changed and not identical
        else:  # both
            if identical:
                pass
            elif local_changed and remote_changed:
                conflicts.append(
                    f"CONFLICT {path.name:44} #{number}: changed on BOTH sides "
                    f"since last sync — resolve by hand, then re-run"
                )
                continue
            elif local_changed:
                do_push = True
            elif remote_changed:
                do_pull = True

        # `record` = this pair reached agreement this run (a side was
        # reconciled, or both were already identical). Only then do we refresh
        # the file/labels/state; a pending opposite-direction change in a
        # one-way run is left for a later reconciling run to pick up.
        record = do_push or do_pull or identical
        current_body = body

        if do_push:
            if dry_run:
                actions.append(f"PUSH    {path.name:45} -> #{number}")
            else:
                if issue["title"] != title or (issue["body"] or "").strip() != body.strip():
                    gh.edit_issue(number, title, body)
                if issue["state"] != cur_state:
                    gh.set_state(number, cur_state)
                issue = gh.refetch(number)
                actions.append(f"PUSH    {path.name:45} -> #{number}")
        elif do_pull:
            if dry_run:
                actions.append(f"PULL    #{number:<6} -> {path.name}")
            else:
                meta["title"] = issue["title"]
                meta["state"] = issue["state"]
                current_body = issue["body"] or ""
                actions.append(f"PULL    #{number:<6} -> {path.name}")

        # Additive label sync: a label present in the file but not on GitHub is
        # pushed (push/both). Removal is never done automatically — drop a
        # label on GitHub directly if you need to. The file then mirrors the
        # resulting remote label set.
        if record and direction in ("push", "both"):
            missing = [l for l in (meta.get("labels") or []) if l not in issue["labels"]]
            if missing:
                if dry_run:
                    actions.append(f"LABEL   #{number:<6} + {', '.join(missing)}")
                else:
                    for lab in missing:
                        gh.ensure_label(lab)
                    gh.add_labels(number, missing)
                    issue = gh.refetch(number)
                    actions.append(f"LABEL   #{number:<6} + {', '.join(missing)}")

        if record and not dry_run:
            meta["labels"] = issue["labels"]
            write_file(path, meta, current_body)
            state[str(number)] = {
                "sha": content_hash(meta["title"], meta.get("state", "open"), current_body),
                "updatedAt": issue["updatedAt"],
            }

    # 3. Remote-only issues -> new local files (pull / both).
    if direction in ("pull", "both"):
        known = set(files.keys())
        for number, issue in sorted(remote.items()):
            if number in known:
                continue
            slug = slugify(issue["title"])
            path = ISSUES_DIR / f"{slug}.md"
            if path.exists():
                path = ISSUES_DIR / f"{slug}-{number}.md"
            body = issue["body"] or ""
            meta = {
                "title": issue["title"],
                "labels": issue["labels"],
                "state": issue["state"],
                "github": number,
            }
            if dry_run:
                actions.append(f"PULL    #{number:<6} -> {path.name} (new local file)")
                continue
            write_file(path, meta, body)
            state[str(number)] = {
                "sha": content_hash(issue["title"], issue["state"], body),
                "updatedAt": issue["updatedAt"],
            }
            actions.append(f"PULL    #{number:<6} -> {path.name} (new local file)")

    # 4. Mirror state into folder location: open at top level, closed under
    # `closed/`. Runs for every file so a state change (either direction) or a
    # freshly created closed issue lands in the right folder.
    for path in local_files():
        meta, _ = parse_file(path)
        _, line = relocate(path, meta.get("state", "open"), dry_run)
        if line:
            actions.append(line)

    save_state(state, dry_run)

    # Report.
    header = "Would apply" if dry_run else "Applied"
    print(f"\n{header} ({direction} sync, repo={gh.repo_args[1] if gh.repo_args else 'auto'}):")
    if not actions and not conflicts:
        print("  (nothing to do — everything in sync)")
    for line in actions:
        print(f"  {line}")
    for line in conflicts:
        print(f"  {line}")
    if conflicts:
        print(f"\n{len(conflicts)} conflict(s) left untouched.")
        return 2
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    grp = ap.add_mutually_exclusive_group()
    grp.add_argument("--push", action="store_true", help="only local -> GitHub")
    grp.add_argument("--pull", action="store_true", help="only GitHub -> local")
    ap.add_argument("--repo", default=None, help="owner/name (default: gh remote, or $GH_REPO)")
    ap.add_argument("--label", default=None,
                    help="comma-separated issue label(s) to sync for remote discovery "
                         "(default: whatever labels the local files use)")
    ap.add_argument("--dry-run", action="store_true", help="print planned actions, change nothing")
    args = ap.parse_args()

    import os
    repo = args.repo or os.environ.get("GH_REPO")
    direction = "push" if args.push else "pull" if args.pull else "both"

    if not ISSUES_DIR.exists():
        raise SystemExit(f"no issues dir at {ISSUES_DIR}")

    gh = Gh(repo)
    return sync(gh, args.label, direction, args.dry_run)


if __name__ == "__main__":
    raise SystemExit(main())
