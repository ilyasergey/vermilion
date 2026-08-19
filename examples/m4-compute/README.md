# m4-compute — `by (compute)` / `by (compute_only)`

Run `./run.sh`. `compute.rs` proves ground arithmetic by evaluation.

**How it works.** Verus's `by (compute)` runs its interpreter during
`ast_to_sst` — which Vermilion's middle *reruns*. A true computation
arrives pre-evaluated (the assert is discharged; the original equation
is assumed for downstream use); a **false** computation is rejected by
our own middle end at translation time, fail-closed ("expression
simplifies to `1001 == 1002`, which evaluates to false"). The
interpreter thus sits in the same trust class as the rest of the shared
Verus middle (docs/trust.md, TCB component 1) — no new trust, and no
SMT-facing machinery.

Differential guard: c111 (ground facts pass in both verifiers). A false
computation can't be a corpus case — both sides reject it, but ours at
translation rather than verification.

## generated/ vs proofs/

- `generated/compute/` (one unit module per function) is overwritten on
  every run.
- `proofs/compute/` is yours; `vrml_sync` reconciles it.
