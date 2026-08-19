# 2026-07-12 — planning report port

Ported the full report corpus from the `verus-lean-planning` planning
repository into `docs/planning/`.
The import includes all literature, architecture, corpus, and implementation
chapters plus the root roadmap/guide/glossary, bibliography, originating prompt,
and merge script.

Added `docs/planning/PORTING.md` to distinguish the preserved planning baseline
from current implementation status. No architecture decisions or report prose
were silently rewritten; only a snapshot banner was added to the imported
planning README.

Updated `docs/planning/GUIDE.md` with the current M0/M1 completion audit, green
verification commands, known limitations, and a prioritized seven-step handoff
for the next agent. Checked all relative links across the 36 Markdown files;
none are broken.
