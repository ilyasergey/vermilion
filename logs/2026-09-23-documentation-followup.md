# 2026-09-23: remaining documentation corrections

The user authorized all six follow-up corrections, explicitly including the
previously read-only Aeneas documentation, and requested a commit and push.
This authorization covers documentation; no source/proof files were changed
and the SHA-3 verification effort remains paused.

- Trust/design now distinguish kernel proof checking from the completeness,
  freshness, and correctness of the surrounding reported verdict. The
  false-green runner incident is linked as evidence of that distinction.
- The incrementality plan separates implemented emission and watch selection,
  the opt-in checker cache, the differential harness cache, and future
  dependency invalidation/persistent workers.
- Tutorial and development instructions describe function-level watch
  rechecking, matching `vrml_watch --only` delegation.
- The SST example guide no longer presents its example as exhaustive support.
- The vstd report limits its result to the recorded symbol-resolution sweep
  and links the later acquisition accommodations.
- Aeneas hubs and study metadata distinguish the paused effort and July
  checkpoint evidence from current setup. Old verifier hashes are retained
  as provenance; current pins are read from `scripts/setup_verus.sh`. This
  resolves the read-only documentation exception recorded by the earlier audit.

Validation: local Markdown links, anchors, and tracked-target availability;
documented behavior compared with the watcher, checker, harness, and setup
scripts; `git diff --check`. No build, verification run, dependency-axiom
audit, or external issue synchronization was performed. Pre-existing recursion
file deletions and untracked `AGENTS.md` remain outside this commit.
