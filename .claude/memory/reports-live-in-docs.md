---
name: reports-live-in-docs
description: "Curated reports and ledgers live under docs/reports/, not a root reports/ directory"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6f7b4393-71c0-4e9e-aafc-4b4a1fad4626
---

On 2026-07-12 the user asked to move the root `reports/` directory into
`docs/`. Curated reports, the axiom/performance ledgers, and generated matrix
artifacts now live under `docs/reports/` (generated output in
`docs/reports/generated/`, gitignored).

**Why:** The user wants all documentation-like artifacts consolidated under
`docs/`.

**How to apply:** Write any new report, ledger, or measurement summary to
`docs/reports/`; never recreate a root-level `reports/` directory. Related:
[[m1-user-tutorial-deliverable]].
