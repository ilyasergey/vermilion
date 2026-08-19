# Chapter 2: Vermilion System Architecture

## 2.1 Component map

```
┌────────────────────────── Rust side (cargo workspace) ──────────────────────────┐
│                                                                                 │
│  verus-lang/verus crates as git dependencies (E3)                               │
│  (https://github.com/verus-lang/verus, pinned at c569645bd37b0):                │
│    builtin, builtin_macros, verus_syn   — surface syntax (unchanged)            │
│    rust_verify                          — driver, HIR→VIR, modes, erasure       │
│    vir                                  — VIR-AST → VIR-SST passes (unchanged)  │
│                                                                                 │
│  NEW: vermilion_backend (Rust crate)                                            │
│    sst_to_lean   — FunctionSst → Lean theorem statements + metadata             │
│    lean_project  — emits/updates the Lean workspace for the crate under         │
│                    verification; stable file/theorem naming                     │
│    lean_driver   — invokes lake/Lean server, collects manager results,          │
│                    maps them back to Rust spans, prints Verus-format JSON       │
└─────────────────────────────────────────────────────────────────────────────────┘
                                        │  generated .lean files + result channel
┌────────────────────────── Lean side (lake package, Lean 4.28) ──────────────────┐
│                                                                                 │
│  Vermilion/Prelude    — int/nat/machine-int theory, Seq/Set/Map/Multiset,       │
│                         overflow predicates, Euclidean div/mod  (replaces       │
│                         prelude.rs + vstd math axioms, as proved lemmas)        │
│  Vermilion/Types      — VIR TypX translation targets; datatype derivation       │
│  Vermilion/Obligations— WP-shaped Prop forms for requires/ensures/loops/calls   │
│  Vermilion/Manager    — Veil's VC manager, instantiated (E2, §2.3)              │
│  Vermilion/Dischargers— grind / lean-smt / bv_decide / nlinarith / ring /       │
│                         decide ladder; @[vermilion] interactive override        │
│  Vermilion/Ghost      — (stages 5-6) PointsTo, invariants, tokens, PCM          │
│  Vermilion/Diagnostics— result serialization: goal → AssertId → JSON            │
└─────────────────────────────────────────────────────────────────────────────────┘
```

Dependencies of the Lean package: **Veil 2.0**
([verse-lab/veil @ `veil-2.0-preview`](https://github.com/verse-lab/veil/tree/veil-2.0-preview))
for the manager and SMT stack, which transitively brings the verse-lab lean-smt fork, Loom,
lean-auto, lean-cvc5, mathlib — all already reconciled at **Lean v4.28.0** (decision E1). We inherit Veil's version-management practice (fork-by-fork
toolchain tracking) and schedule upgrades only at stage boundaries. iris-lean (4.31, new module
system) is deliberately **not** a base-camp dependency; it enters with the soundness program
([`../02-verus-architecture/05-soundness-path.md`](../02-verus-architecture/05-soundness-path.md)).

## 2.2 The emitter contract

For each Verus function, `sst_to_lean` consumes `FunctionSst` and emits into the generated Lean
workspace:

1. **Definitions** for spec functions (ordinary `def`s, with equation lemmas; `opaque`/`reveal`
   mapped to unfolding attributes — no fuel terms).
2. **One theorem statement per obligation**: postcondition-establishment, per-call `requires`,
   overflow/bounds side conditions, loop-invariant entry/preservation, decreases checks,
   recommends checks. Naming is deterministic:
   `<crate>.<module>.<fn>.<kind>_<AssertId>` — stable across runs for caching and `@[vermilion]`
   overrides.
3. **Metadata attributes** carrying the Rust span, `AssertId`, and originating SST construct —
   the hooks for diagnostics and future translation validation.
4. **Context**: imports of the callee's `%req`/`%ens` characterizations, broadcast-lemma sets as
   scoped attribute collections, and the module's revealed definitions.

Obligation statements must be *discharger-independent* and human-readable (`unveil`-style
beautification is applied at emission, not proof time): they are the auditable interface of the
whole system.

## 2.3 Veil manager reuse (decision E2)

Veil's manager (`Veil/Core/Tools/Verifier/{Manager,Server,Results,TheoremDischarger}.lean`,
~1,350 lines) is already generic over VC metadata and result types; per Pîrlea's thesis it is
explicitly designed as the reusable "evidential tool bus." The instantiation:

| Veil concept | Vermilion instantiation |
|---|---|
| Claim (VC) with metadata | one obligation theorem; metadata = Rust span + AssertId + function |
| VC DAG dependencies | SCC order from Verus's call graph (callee context before caller) |
| Primary / alternative VCs | e.g., integer-mode vs bit-vector-mode statement of one assertion; WP-shape vs call-summary-shape |
| Dischargers (ordered, async) | `grind` → `veil_smt`-style lean-smt(cvc5) → specialty (`bv_decide`/`nlinarith`/`ring`/`decide`) → timeout |
| `@[veil]` interactive override | `@[vermilion]` theorem in a user proof file, statement-checked against the generated obligation |
| Proven-theorem registration | proofs added to environment in dependency order (callee summaries usable by caller obligations) |
| Streaming results widget | reused for the Lean-side view; additionally serialized to JSON for the Rust-side CLI/IDE ([`06-ide-experience.md`](06-ide-experience.md)) |
| Counterexample rendering | lean-smt models → Rust-level values (renaming Veil's relation tables to struct fields/locals) |

**Known friction, accepted or worked around rather than rewritten:**

- Veil's manager currently lives inside the Veil package with some Veil-specific defaults
  (hypothesis filtering lists, tactic names). Preferred path: upstream a `VCManager`-as-library
  split with the Veil team (same research group) rather than fork.
- Veil's dischargers assume goals produced by its own `veil_wp` pipeline; Vermilion goals come
  from generated files. The manager's `VCStatement` (name + binders + term) fits generated
  theorems naturally, but start-up (elaborating thousands of generated statements) is a
  performance surface Veil never had at this scale — flagged in the risk register.
- cvc5-first solver choice: Verus is Z3-tuned. lean-smt can drive Z3 too; the discharger ladder
  should carry both from day one, and the differential harness will tell us which matters.

## 2.4 Execution model and CLI

`vermilion` (the user-facing binary) mirrors `verus`:

```
vermilion foo.rs [--crate-type=lib] [--emit=lean-only|verify|compile] ...
```

1. Runs the unchanged Verus front/middle end (as a library) through VIR-SST.
2. Emits/updates the generated Lean workspace (incremental: only functions whose SST hash
   changed are re-emitted — Lean's own caching handles the rest).
3. Starts the manager (via a long-lived Lean server process for interactive use; batch `lake`
   build for CI), streams results, prints Verus-format JSON diagnostics keyed by Rust spans.
4. `--compile` is untouched Verus erasure/compilation.

Two operating modes matter for UX: **batch** (CI, differential harness — exit code + JSON) and
**watch** (IDE session — persistent Lean server, incremental re-verification on save; the
foundation of the dual-view experience in [`06-ide-experience.md`](06-ide-experience.md)).

## 2.5 Trusted computing base (base camp)

rustc + Verus front/middle end (as today) + `sst_to_lean` + the Vermilion prelude's remaining
axioms + Lean kernel; solvers optionally in or out of the TCB per run (lean-smt trust vs
reconstruction). Everything else — manager, dischargers, tactics — is untrusted by construction.

## 2.6 Repository layout (target)

```
vermilion/
  crates/vermilion_backend/     # sst_to_lean, lean_project, lean_driver
  crates/vermilion_cli/         # the `vermilion` binary; cargo-vermilion later
  lean/Vermilion/               # the Lean package (Prelude, Types, Obligations, Manager, ...)
  lean/lean-toolchain           # leanprover/lean4:v4.28.0  (E1)
  tests/differential/           # harness config; see 05-testing-harness.md
  editors/vscode/               # the dual-view extension; see 06-ide-experience.md
```
