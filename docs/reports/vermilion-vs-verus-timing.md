# Vermilion vs Verus — timing and capability

This is a dated measurement record. Tool versions, counts, and timings below
apply to the recorded runs. For current setup and scope, see the
[development guide](../development.md) and [case-study registry](../../case-studies/README.md).

Measured 2026-07-14. Best-of-3 wall time, end-to-end **to verdict**, on the
same source file. Verus runs its full SMT verification (`rust_verify`,
Z3); Vermilion runs the whole pipeline (shared front end `--no-verify` →
lower → generate Lean → `vrml_check`). Both include the front-end
elaboration; the twin kernel-check is excluded (it does not affect the
verdict). Reproduce with `python3 scripts/bench_vs_verus.py`.

## Timing (examples both verifiers accept)

| Example | Exercises | Verus | Vermilion | Ratio |
|---|---|---|---|---|
| m1-pipeline | straight-line + calls | 0.88s | 3.68s | 4.2× |
| m2-branches | if/else, SSA joins | 0.89s | 3.71s | 4.2× |
| m2-recursion | recursion + `decreases` | 0.88s | 3.71s | 4.2× |
| m2-collections | Seq/Set/Map/Multiset | 1.01s | 3.82s | 3.8× |
| m3-datatypes | structs/enums | 0.87s | 3.70s | 4.2× |
| **median** | | | | **4.2×** |

## Where Vermilion's time goes

| | shared front end | Lean back end |
|---|---|---|
| typical | ~0.6s | ~3.1s |

The front end is the *same* elaboration Verus itself performs. The Lean
back end (~3.1s) is dominated by fixed startup — loading the precompiled
Mathlib `.olean`s the kernel check imports — which barely grows with
problem size (m2-collections, the largest, adds only ~0.1s). Verus's Z3
finishes in roughly the ~0.3s after its own front end. So the ~4×
end-to-end gap is a near-constant Lean/Mathlib startup cost, not an
algorithmic one: it is paid per file, amortized by the incremental
`vrml_check` (only hash-changed obligations re-judged) and the
watch-mode edit loop.

## Capability — the other side of the ledger

Two examples first sampled for timing turned out to be cases Verus's
**default prover rejects** while Vermilion proves them (kernel-checked),
so they are not timing comparisons but capability ones — the deliberate
trade the Lean-native back end makes:

| Example | Verus (default) | Vermilion |
|---|---|---|
| m2-loops — nonlinear loop-invariant bound | **fails** (needs `by (nonlinear_arith)`) | passes |
| m3-quantifiers — `exists` witness under a trigger | **fails** (trigger never fires) | passes |

These are the documented divergences (see [../ir.md](../ir.md) and
[examples/m4-beyond-verus](../../examples/m4-beyond-verus/README.md)):
Verus's SMT *discipline* — nonlinear arithmetic off by default, triggered
quantifier instantiation — rejects truths that Vermilion's `nlinarith`
rung and trigger-free instantiation discharge automatically.

## Reading

Verus is ~4× faster on the shared fragment, from a fixed Lean-startup
cost rather than anything that scales with the program. Vermilion proves
strictly more of these small examples without manual prover hints, and
every verdict is a kernel-checked Lean theorem (nothing SMT is trusted;
see [../trust.md](../trust.md)). The project trades per-file latency for
a smaller trusted base and higher default completeness.
