# 2026-07-17 — Execution-plan actionable-first refactor

## Goal

Make `plans/execution-plan.md` answer “what do we do next?” before preserving
the chronological record of what has already landed.

## Result

The document now begins with:

1. the current verified baseline;
2. an ordered queue: per-function project measurement, S2 recursive heap
   datatypes, S3 choice/search, independent S4 gaps, and S5 external projects;
3. explicit M3/M4 measurement gates;
4. foundational VC-generation, proof-evolution, performance, and editor-kit
   work that must precede M5;
5. M5--M8 future milestones;
6. locked execution rules and the definition of done.

Completed M0--M4, F-series, hint, vstd-mirror, and audit material now lives in
an appendix. Stale historical labels such as “Active milestone: M1”, “NEXT UP
— S1”, and “V-series in progress” were replaced by their completed status.
Duplicate future M5--M8 and performance plans were removed from the appendix
because the front matter is now their single authoritative location.

No implementation, IR, VC-generation rule, or generated theorem changed, so
no test corpus, issue, `docs/ir.md`, or `docs/vcgen.md` update is required.
Validation is limited to Markdown structure, relative-link existence, and
whitespace/diff checks.
