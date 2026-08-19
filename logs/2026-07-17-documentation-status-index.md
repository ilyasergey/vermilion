# 2026-07-17 — One status-and-roadmap entry point

The repository already maintained distinct authoritative documents for the
case-study registry, detailed sequential gaps, future acquisition ladder,
active execution queue, completed feature ledger, and synchronized issues.
They were linked from the top-level README only through two dense prose
paragraphs, which made the intended division of responsibility hard to scan.

The README now has a prominent **Status and roadmap** table near
the top. Each common question maps directly to its authoritative document:

- current study support and blockers → `case-studies/README.md`;
- function-level corpus findings → `docs/reports/sequential-case-studies.md`;
- future case-study order → `docs/reports/target-projects.md`;
- next implementation work → `plans/execution-plan.md`;
- completed features → `docs/reports/progress.md`;
- open bugs/features → `docs/issues/README.md`;
- architecture/trust and reproducibility → design, pipeline, trust, and logs.

The later case-study overview links back to this index instead of repeating
the same document list in prose. No ownership changed: the index only makes
the existing authority boundaries discoverable from one place.
