---
title: Lower isolated nonlinear assertion queries
labels: [feature, vcgen, foundations]
state: closed
github: 28
---

**Resolution.** Vermilion now lowers Verus
`StmX::AssertQuery { mode: NonLinear }` nodes as isolated queries. The query
receives the enclosing type/range facts, fresh typed invariant variables, and
its explicit proof body (including query-local `requires`), but never the
enclosing logical hypotheses.

That exclusion is soundness-critical: `ast_to_sst` emits the asserted
conclusion as an outer assumption before the query node. Sharing the outer
context would therefore let a false nonlinear assertion prove itself.
Vermilion reuses the neutral IR's existing isolated `(loop …)` shape and the
normative `(LOOP)` VC rule; no new grammar node was needed. Query facts and
reveals do not escape.

Other `AssertQueryMode` variants still fail closed. Differential c141 checks
a valid query with explicit local requirements; c142 rejects `x*x == x` and
pins the no-circularity boundary. The verbatim `case-studies/imo-1988-6` and
`case-studies/power-of-2` programs now verify.
