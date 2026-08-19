# 2026-07-17 — Comprehensive case-study status table

The sequential case-study report now opens immediately with a complete corpus
matrix rather than the historical `vectors.rs` narrative.

The matrix classifies every executable acquired study as verified, partially
verified, blocked, outside the current sequential gate, or an investigation
target. For every non-green study it names the concrete blockers. Percolator
records both its 28-function/97-obligation supported subset and the remaining
Vermilion/upstream-Verus boundaries; Entry API, statics, and recursion retain
their exact first unsupported features.

Aeneas-derived crypto work is labeled research-only/unmeasured because it has
no acquired `run.sh` driver and must not inflate supported coverage. Its row
summarizes the first target-specific requirements without treating research
analysis as a verification result.

No implementation or verification result changed. Validation checks the
table's relative links, Markdown whitespace, and consistency with the compact
`case-studies/README.md` registry.
