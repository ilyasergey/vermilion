# From Verus source to Lean theorems

```text
simple.rs
  │ pinned Verus: rustc + macros + HIR→VIR + mode/ghost checks
  ▼
finalized VIR crate (`VERUS_VIR_EXPORT` bincode handoff in the pinned fork)
  │ vermilion_direct/middle.rs → pinned vir simplify → prune → ast_to_sst_krate
  ▼
pre-poly vir::sst::FunctionSst (real values, in process)
  │ vermilion_direct/lower.rs → normalized FunctionView (structured trees)
  ▼
textual IR, .vermilion/<stem>-ir.sexp  (docs/ir.md — the Rust/Lean contract)
  │ lake exe vrml_gen: Vermilion.Ir lexes/parses, generates VCs, renders
  ▼
generated/simple/increment.lean + simple.json  (machine output, one unit module per function, regenerated per run)
  ├─ obligation theorems + default-automation proofs (kernel-checked)
  └─ vrml_sync maintains the user-editable proofs/ twin (TUTORIAL §3)
```

Verus owns parsing, Rust typing, HIR→VIR, mode checking, overflow insertion,
and SST normalization. The Rust half of Vermilion owns the lowering to the
neutral model and its serialization; the Lean half (`Vermilion.Ir`) owns IR
parsing, VC generation, naming/metadata, rendering, manifests, and emission.
See [DESIGN.md](../../DESIGN.md) for the full architecture and TCB.

Only `crates/vermilion_direct` may know SST details. It deserializes the
finalized VIR crate exported by the patched pinned Verus and runs the pinned
`vir` crate's own middle-end passes, so Vermilion consumes genuine
`FunctionSst` values. In the example pipelines Verus runs under
`--no-verify`: it is a front end, and **Lean is the only verifier**. Verus's
own SMT verdict is consulted solely by `scripts/run_differential.py`, which
measures verdict parity between the two.

Each VC is a theorem `<kind>_<AssertId>` with one named hypothesis per line;
the goal follows the `:`. `@[vrml_obligation]` enables discovery only; Lean
still kernel-checks every proof. The statement hash (over the span-free
canonical statement) keys proof-staleness checks, and `vrml_check` maps Lean
failures back to Rust spans through the colocated module manifests.

Run any example with its own script (`examples/<name>/run.sh`), or everything
with `./scripts/run_suite.sh`; the first run bootstraps the pinned
Verus checkout automatically.
