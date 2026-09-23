# 2026-09-23: README and documentation consistency

Shortened the landing README and made build, first run, proof editing, and
VS Code setup explicit. Detailed support and development instructions now
live under `docs/`, reached through the expanded documentation index.

The consistency pass checked repository Markdown navigation and reconciled
current claims against the scripts, dependency pins, proof sources, closed
issues, and dated engineering logs. It fixed moved issue links, links to
missing/generated artifacts, stale feature boundaries, and distinctions
between acquisition source pins and the current verifier pin. Historical
measurements remain labeled as dated records.

The main correction is dalek-lite: the checked-in field-cone twins contain
5,215 obligation markers in 436 Lean files, with eight explicit `sorry`
bodies in four units. The earlier zero-hole claim conflicts with these files
and the false-green checker investigation in the August migration log. No
fresh verification rate is claimed. Percolator's current green-runner scope
is 31 production bodies / 118 logical-or-evidence declarations; its two
partial drivers retain the `Ord` and `BitNot` boundaries.

Validation used local Markdown target/anchor checks, checked that linked
artifacts are available in tracked or newly added files, checked documented
command paths/flags, and ran `git diff --check`. No build, kernel audit, full
suite, or external issue synchronization was run for this documentation-only
change. The open migration issue retains its missing final-suite receipt.

The user-owned `case-studies/aeneas/` tree was inspected but left untouched.
Its July checkpoint still describes SHA-3 as active and names the old fork;
the current project plan and registry record that work as paused. Those
historical hub statements remain a known exception under the read-only
directive. Append-only session logs and the planning archive retain their
historical claims; archive navigation links were repaired.

Pre-existing recursion-file deletions and the untracked root `AGENTS.md` are
outside this documentation commit.
