# 2026-07-17 — Add the new case-study programme to the README

The top-level README's case-study tour already covered the pinned IMO,
power-of-2, Entry API, statics, Percolator, sorting, vector, and merge-sort
studies. It did not include the recursion investigation or the new Aeneas
reach assessment and verified-crypto execution plan.

The README now:

- labels the tour **verified, blocked, and planned**, rather than implying
  every row is already Lean-verified;
- adds the recursion tutorial with its intentional-negative and termination-
  feature boundary;
- adds the Aeneas-derived curve25519 → Keccak/SHA-3 → SymCRust ML-KEM scalar
  programme, prominently marked research-only with no `run.sh` or support
  percentage;
- links the Aeneas assessment and same-spec execution plan from the central
  Status and roadmap index.

The compact acquired-study table remains authoritative in
`case-studies/README.md`. The new Aeneas folder is supporting research and
planning material, not an acquired green case study.
