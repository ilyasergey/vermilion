# m4-nonlinear — nonlinear arithmetic (Lean-native)

Run `./run.sh`. `nonlinear.rs` verifies products of bounded variables —
the overflow shapes (`x·N < 2⁶⁴` from `x < a, N < b`) that were beyond
the linear ladder.

**How it discharges (M4).** The `vrml` ladder gained an `nlinarith`
rung: split conjunctive range hypotheses and goals, then Mathlib's
nonlinear extension of `linarith` — ordinary kernel-checked proving, no
SMT encodings (the M4 directive). This retroactively unlocked the goals
deferred during M3 (the const-generic `x·N` example variant and the
trait example's `side²` overflow checks, previously interactive).

All 4 obligations close automatically. **Deliberate divergence:**
Verus's default prover disables nonlinear arithmetic (these very goals
need `by (nonlinear_arith)` there), so this example verifies here and
fails in stock Verus — the nonlinear twin of the trigger-starvation
divergence, documented in docs/ir.md. The corpus keeps the agreeing
negative guard (c110: a genuinely false overflow claim fails in both).

## generated/ vs proofs/

- `generated/nonlinear/` (one unit module per function) is overwritten
  on every run.
- `proofs/nonlinear/` is yours; `vrml_sync` reconciles it.
