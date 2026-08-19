#!/usr/bin/env python3
"""Register a verification effort's proofs tree as a named Lake library.

Every proofs tree needs exactly one `lean_lib <Name> where srcDir := <dir>`
stanza in lakefile.lean (module roots inside the tree are then discovered
automatically by `discoverProofRoots`). This script makes that step
mechanical and loud (user directive, 2026-07-20):

    # idempotently append the stanza (no-op if the srcDir is registered)
    ./scripts/register_proof_lib.py register CaseFoo case-studies/foo/proofs

    # list every proofs tree not covered by any registered srcDir; exit 1
    # if any exist (suite guard)
    ./scripts/register_proof_lib.py scan

`scan` looks for directories literally named `proofs` under case-studies/
and tests/ (any nesting), skipping `upstream/` snapshots and generated
trees. Registered srcDirs are read back from lakefile.lean itself, so the
two can never drift.
"""

import argparse
import pathlib
import re
import sys

REPO = pathlib.Path(__file__).resolve().parent.parent
LAKEFILE = REPO / "lakefile.lean"

STANZA = """
lean_lib {name} where
  srcDir := "{srcdir}"
  globs := proofGlobs (run_io discoverProofRoots "{srcdir}")
"""

SCAN_ROOTS = ["case-studies", "tests"]
SKIP_PARTS = {"upstream", "generated", ".vermilion", ".lake", "target"}


def registered_srcdirs(text: str) -> set[str]:
    return set(re.findall(r'^\s*srcDir\s*:=\s*"([^"]+)"', text, re.MULTILINE))


def lib_names(text: str) -> set[str]:
    return set(re.findall(r"^lean_lib\s+(\S+)\s+where", text, re.MULTILINE))


def cmd_register(name: str, srcdir: str) -> int:
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9_]*", name):
        print(f"invalid Lake library name: {name}", file=sys.stderr)
        return 2
    directory = REPO / srcdir
    if not directory.is_dir():
        print(f"srcDir does not exist: {srcdir}", file=sys.stderr)
        return 2
    text = LAKEFILE.read_text()
    if srcdir in registered_srcdirs(text):
        print(f"already registered: {srcdir}")
        return 0
    if name in lib_names(text):
        print(f"library name already taken: {name}", file=sys.stderr)
        return 2
    LAKEFILE.write_text(text.rstrip("\n") + "\n" + STANZA.format(name=name, srcdir=srcdir))
    print(f"registered lean_lib {name} -> {srcdir}")
    return 0


def cmd_scan() -> int:
    text = LAKEFILE.read_text()
    covered = registered_srcdirs(text)
    missing = []
    for root in SCAN_ROOTS:
        base = REPO / root
        if not base.is_dir():
            continue
        for path in base.rglob("proofs"):
            if not path.is_dir():
                continue
            relative = path.relative_to(REPO).as_posix()
            if any(part in SKIP_PARTS for part in path.relative_to(REPO).parts):
                continue
            # Nested proofs dirs inside an already-registered tree are roots
            # of that same library, not separate efforts.
            if any(relative == c or relative.startswith(c + "/") for c in covered):
                continue
            missing.append(relative)
    # Layout guard: a FLAT per-file twin `proofs/<stem>.lean` coexisting
    # with a per-function dir `proofs/<stem>/` is emission-mode residue —
    # a stale (pre-per-function-default) manifest flipped the sticky mode
    # and wrote a parallel twin (measured: DL8, power-of-2 and the aeneas
    # probes). Hand-written standalone Lean files have no dir sibling and
    # are never flagged.
    residue = []
    for root in SCAN_ROOTS:
        base = REPO / root
        if not base.is_dir():
            continue
        for path in base.rglob("proofs"):
            if not path.is_dir():
                continue
            if any(part in SKIP_PARTS for part in path.relative_to(REPO).parts):
                continue
            for flat in path.glob("*.lean"):
                if not flat.with_suffix("").is_dir():
                    continue
                if "-- vrml:begin" in flat.read_text(errors="replace"):
                    residue.append(flat.relative_to(REPO).as_posix())
    if missing:
        print("proofs trees with no registered Lake library:", file=sys.stderr)
        for entry in sorted(missing):
            print(f"  {entry}", file=sys.stderr)
        print(
            "register each with: ./scripts/register_proof_lib.py register "
            "<CaseName> <proofs-dir>",
            file=sys.stderr,
        )
        return 1
    if residue:
        print(
            "per-file twin residue shadowing per-function twin dirs "
            "(stale-manifest mode flip — delete the flat files and the "
            "stale generated/ manifests, then rerun the example):",
            file=sys.stderr,
        )
        for entry in sorted(residue):
            print(f"  {entry}", file=sys.stderr)
        return 1
    print("every proofs tree has a registered Lake library")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest="command", required=True)
    reg = sub.add_parser("register", help="idempotently add a lean_lib stanza")
    reg.add_argument("name")
    reg.add_argument("srcdir")
    sub.add_parser("scan", help="fail if any proofs tree is unregistered")
    arguments = parser.parse_args()
    if arguments.command == "register":
        return cmd_register(arguments.name, arguments.srcdir)
    return cmd_scan()


if __name__ == "__main__":
    sys.exit(main())
