# M0 calibration status

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md).

Status: **infrastructure complete; exhaustive run deferred** on 2026-07-12 in
favor of M1 VC-generation infrastructure.

## Delivered

- 20 proof-free propositions in the required 5/4/3/4/2/2 category split;
- a named List-backed `Seq`, extensional `Map`, checked-integer range predicates,
  and opaque-at-zero Euclidean division/remainder conventions;
- seven executable semantic probes;
- an isolated runner that records pass/fail, wall time, and diagnostics for
  every case/tactic pair without allowing one failed proof to mask later cases.

Run `python3 scripts/run_calibration.py` to regenerate the ignored JSON and
Markdown artifacts under `reports/generated/`.

## Findings relevant to architecture

1. The pinned Veil/lean-smt tactic is wired to cvc5. Although lean-smt contains
   a generic Z3 process API, there is no Z3 tactic path with reconstruction.
   The runner reports both requested Z3 cells as unavailable rather than
   mislabelling cvc5 results.
2. Direct Lean runs need Lake's generated plugin setup to load the native cvc5
   bindings. The runner supplies it explicitly.
3. Pulling Veil currently builds its full lean-auto/SMT graph. Before M1 CI is
   scaled, Vermilion should consume or upstream a manager-only library target.
4. The inherited lean-smt bit-vector reconstruction module declares one
   `sorry`. Vermilion source itself contains no Lean `axiom` or `sorry`.

## Gate

No go/no-go claim is made from a partial matrix. This is deliberate: user
direction prioritized the discharger-independent VC interface. The M0 corpus
and runner remain ready for a later automation pass without blocking M1.
