# Planning-report port

This directory is a self-contained port of the planning workspace assembled on
2026-07-12. It preserves the original report hierarchy and relative links so
architectural decisions, literature, corpus selection, and milestone rationale
are available beside the implementation.

## Imported material

- root `README.md`, `GUIDE.md`, `ROADMAP.md`, and `GLOSSARY.md`;
- all chapters under `reports/01-literature-review/`;
- all chapters under `reports/02-verus-architecture/`;
- all chapters under `reports/03-project-corpus/`;
- all chapters under `reports/04-implementation-plan/`;
- the literature bibliography and topic fragments;
- the originating planning prompt and bibliography merge script.

## Status crosswalk

Planning documents describe target architecture and gates, not necessarily
implemented behavior. Current status is authoritative in:

- [`../../README.md`](../../README.md) — concise milestone table;
- [`../../plans/execution-plan.md`](../../plans/execution-plan.md) — active plan;
- [`../../plans/incremental-computation.md`](../../plans/incremental-computation.md)
  — incremental VC-generation workstream;
- [`../reports/`](../reports/) — measured implementation reports/ledgers;
- [`../../logs/`](../../logs/) — dated engineering record.

As of the port, M0 infrastructure and the M1a single-function source slice are
complete. The formal M0 automation gate and formal M1 straight-line parity gate
are not complete.

## Maintenance policy

This is a historical baseline. New implementation decisions belong in the
local plans/reports first. If planning prose is revised, record the reason and
date rather than silently changing a locked decision or measured target.
