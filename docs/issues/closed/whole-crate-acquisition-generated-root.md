---
title: Whole-crate acquisition needs a generated-root override and aggregated checking
labels: [feature, vcgen]
state: closed
github: 54
---

`vrml_gen` writes each source file's artifacts to `generated/` NEXT TO
that file (`VrmlGen.lean`: `root := rustPath.parent / "generated"`), and
`scripts/run_example.sh` Lean-checks only the manifest of the stem it
drives. Both assumptions break for a whole-crate acquisition root that
mounts sources with `#[path]` (dalek-lite Layer Set A, DL8):

- Obligations for the mounted cone (5,215 across 27 manifests at DL8)
  land inside the **untracked upstream clone**
  (`upstream/**/generated/…`) — lost on every refetch, invisible to the
  runner, never kernel-checked by the pipeline (`run.sh` judged only the
  5 root-file obligations and reported success).
- The `proofs/` twins for those files would land in the clone too, where
  user proofs cannot live.

Wanted:

1. `vrml_gen --generated-root <dir>` (repository-relative, sticky via
   the manifests): all groups emit under
   `<dir>/<stem>/…` with `<dir>/<stem>.json` manifests, regardless of
   where the source file lives. The acquisition then keeps everything
   under `case-studies/dalek-lite/generated/`.
2. Group stems must stay collision-free when two mounted files share a
   basename (qualify with the module path on collision).
3. `run_example.sh` (or a sibling `run_crate.sh`) drives the CHECK over
   every manifest the emission produced, aggregates verdicts, and
   reconciles every twin — today's per-stem flow reports "all N
   obligations verified" for the root stem while thousands of emitted
   obligations were never judged (silently, which is the bug's sharp
   edge).

Interim workaround used for the DL8 scoreboard: loop `vrml_check` over
all 27 manifests out-of-band and aggregate the check JSONs.


---

**Resolved (DL8, #54):** `vrml_gen --generated-root DIR` routes every mounted source file's artifacts into one repository-relative directory (colliding stems qualified by parent dir); `run_example.sh --generated-root` adds a multi-manifest check/sync branch so all manifests are judged and every twin lands in the tracked `proofs/` sibling. dalek-lite `run.sh` uses it; the field cone's 27 manifests + twins are now tracked, not in the upstream clone.
