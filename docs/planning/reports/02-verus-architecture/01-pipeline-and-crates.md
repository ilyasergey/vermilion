# Chapter 1: The Verus Pipeline and Crate Structure

## 1.1 End-to-end pipeline

Verus is a rustc-cooperating verifier: it does not reimplement Rust's type system; it drives rustc,
reads its typed HIR, and adds verification on top. The pipeline (confirmed against
`source/CODE.md` and the code at commit `c569645bd37b0`):

```
Rust source with verus!{} macros
  → proc-macro expansion (builtin_macros + forked verus_syn parser)
  → rustc parse/expand → HIR; rustc_hir_analysis::check_crate (full type check)
  → HIR/THIR → VIR-AST            rust_verify: rust_to_vir*.rs
  → VIR passes                    well_formed, modes, ast_simplify, prune, traits
  → VIR-SST                       vir: ast_to_sst*.rs  (statements/expressions split)
  → poly (SMT boxing)             vir/src/poly.rs
  → AIR                           vir: sst_to_air*.rs
  → AIR lowering                  typecheck → var_to_const (SSA) → block_to_assert (WP)
  → SMT-LIB text                  air: pipe to Z3 (default) or cvc5
```

Verification and compilation are **two interleaved rustc invocations** (the "GHOST" and "EXEC"
passes; see the design comment at `source/rust_verify/src/driver.rs:66-116`):

- **GHOST pass**: `verus!{}` expands keeping ghost code; rustc type-checks; Verus builds VIR,
  runs its own checks, generates VCs, and talks to the solver.
- **EXEC pass** (`--compile`): `verus!{}` re-expands with token-level ghost erasure
  (`EraseGhost::Erase` in `source/builtin_macros/src/lib.rs`); stock rustc compiles the residue.
  Verified code has zero runtime overhead, and the erasure is by construction ignorant of the
  verification backend — **it survives the Lean port unchanged**.

## 1.2 Crate inventory

Workspace members under `source/` (line counts via `find`+`wc -l` on `*.rs`):

| Crate | Lines / files | Role | Backend-specific? |
|---|---|---|---|
| `rust_verify` | 32,607 / 46 | Driver; the only crate touching rustc. HIR→VIR, erasure orchestration, SMT run loop | mostly no (solver loop yes) |
| `vir` | 52,241 / 57 | VIR-AST + VIR-SST + all middle-end passes (modes, recursion, triggers, poly, sst_to_air) | mixed |
| `air` | 9,385 / 24 | Assertion IR, SMT-LIB emission, Z3/cvc5 process mgmt, WP lowering, profiler | **entirely** |
| `verus` | 1,152 / 4 | User-facing wrapper binary (locates bundled Z3/cvc5 + pinned toolchain) | partially |
| `builtin` | 2,505 / 1 | Rust-visible ghost intrinsics (`requires`, `ensures`, `Ghost<A>`, `Tracked<A>`, `int`, `nat`, …) | no |
| `builtin_macros` | 16,044 / 20 | The `verus!{}` macro; surface syntax → attributed Rust; ghost erasure. `syntax.rs` alone is 5,758 lines | no |
| `state_machines_macros` | 11,296 / 22 | `state_machine!` / `tokenized_state_machine!` | no |
| `vstd` | 52,137 / 126 | Standard library of specs + verified data structures | no (but axioms; see ch. 5) |
| `rust_verify_test` | 110,189 / 152 | ~4,117 integration tests | no — **reusable oracle** |
| `cargo-verus` | 3,273 / 16 | Cargo subcommand integration | no |
| `rustc_mir_build` (fork) | 22,777 / 39 | Builds MIR with ghost code erased, for ghost borrow-checking | no |
| `rustc_mir_build_additional_files` | 4,230 / 4 | Verus parts of that fork (erasure ctxt, time-travel prevention) | no |
| `rustc_hir_typeck` (partial fork) | 3,499 / 2 | Closure-capture analysis used by erasure | no |
| `verusdoc`, `vir_macros`, `vstd_build`, test macros | ~1,400 | Docs/build glue | no |

Vendored under `dependencies/`: the forked `syn` ("verus_syn", 83k lines) that parses Verus surface
syntax, and forked `prettyplease` (138k lines). Both are pure syntax infrastructure.

Entry points worth bookmarking:

- CLI: `source/verus/src/main.rs` → `source/rust_verify/src/main.rs` → `lib.rs`.
- rustc callbacks: `VerifierCallbacksEraseMacro` in `source/rust_verify/src/verifier.rs`
  (3,399 lines); `after_expansion()` runs the rustc type check and then
  `rust_to_vir::crate_to_vir()`.
- HIR→VIR translators: `rust_to_vir_expr.rs` (4,345), `rust_to_vir_func.rs` (3,238),
  `rust_to_vir_base.rs` (2,781), `fn_call_to_vir.rs` (2,853).
- VIR→SST: `source/vir/src/ast_to_sst_crate.rs`, `ast_to_sst.rs` (3,858).
- SST→AIR: `source/vir/src/sst_to_air_func.rs`, `sst_to_air.rs` (3,292).
- SMT: `source/air/src/context.rs`, `smt_process.rs`, `smt_verify.rs`.

## 1.3 What rustc does vs what Verus adds

**rustc provides**: parsing (of macro-expanded code), name and trait resolution, full type
inference/checking (`rustc_hir_analysis::check_crate`), and borrow checking of exec code.

**Verus adds, all on VIR**:

- structural well-formedness (`vir/src/well_formed.rs`, 2,048 lines);
- **mode checking** (`vir/src/modes.rs`, 3,868 lines): the lattice `Exec ≤ Proof ≤ Spec`, checked
  on functions, parameters, datatype fields, ghost blocks, and `Ghost<T>`/`Tracked<T>` coercions;
- trait-conflict checking via a synthetic Rust program compiled in a nested rustc invocation;
- **resolution inference** for the prophecy-based `&mut` encoding
  (`vir/src/resolution_inference.rs`, 3,842 lines — inserts `has_resolved` assumptions);
- user-defined type-invariant obligations; `--check-api-safety` checks.

**Ghost borrow checking** is a highlight: mode checking outputs per-span variable/constructor modes
(`ErasureModes`); `rust_verify/src/erase.rs` installs a `VerusErasureCtxt` into the forked
`rustc_mir_build`, the `mir_built` query is overridden so MIR is built with ghost code erased, and
then **stock `mir_borrowck` runs on every Verus-aware item** — Rust's real borrow checker validates
`tracked` ownership and lifetimes in proof code. None of this knows the verification backend exists.

## 1.4 Parallelism and query orchestration

Functions are grouped into **buckets** (`source/rust_verify/src/buckets.rs`) — one per module, plus
one per `#[verifier::spinoff_prover]` function. Each bucket gets its own Z3 process and thread
(`--num-threads`). Within a bucket, context commands (spec-function definition axioms, req/ens
declarations, broadcast axioms) and per-function queries are emitted in SCC (dependency) order by
`rust_verify/src/commands.rs::OpGenerator`.

This bucket/DAG discipline is the SMT-era ancestor of what Vermilion gets, better, from the
Veil-style verification manager: a VC DAG with topological scheduling, per-VC async dischargers,
cancellation, and caching (see [`../04-implementation-plan/02-architecture.md`](../04-implementation-plan/02-architecture.md)).

## 1.5 Observations for Vermilion

1. The pipeline has a **backend-independent waist**: everything through VIR-SST is about Rust and
   Verus's ghost language, not about SMT. The waist is where Vermilion plugs in (chapter 3).
2. Verus's rustc coupling (two forked crates + one partial fork, pinned toolchain) is the price of
   the intrinsic authoring model and is **unchanged** by the port. Vermilion inherits Verus's
   toolchain-pinning maintenance burden as-is; no new rustc work is needed.
3. The `verus` wrapper binary's job (locate solver, pinned toolchain, exec the driver) becomes
   "locate the Lean toolchain / elan and a prebuilt Vermilion Lean package" — same shape, different
   payload.
4. The test suite drives the tool through its CLI and inspects JSON diagnostics only
   (`rust_verify_test/tests/common/mod.rs`) — so the ~4,117 tests are a ready-made differential
   oracle for Vermilion provided we keep the CLI and JSON diagnostic format stable
   (see [`../04-implementation-plan/05-testing-harness.md`](../04-implementation-plan/05-testing-harness.md)).
