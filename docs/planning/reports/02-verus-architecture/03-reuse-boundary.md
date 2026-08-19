# Chapter 3: The Reuse Boundary — What to Port, What to Keep, What to Drop

This chapter draws the port/don't-port line component by component and fixes the order in which the
kept components get their Lean counterparts. It is the normative reference; the staged plan in
[`../04-implementation-plan/`](../04-implementation-plan/) sequences the same decisions in time.

## 3.1 The architecture decision

**Vermilion = Verus's front/middle end (unchanged, Rust) + a new backend from VIR-SST into Lean 4
(the `sst_to_lean` emitter) + a Lean-side package (semantics library, vstd theory, verification
manager, dischargers).**

The alternatives we considered and rejected:

1. **Re-parse Verus source in Lean** (a Lean frontend for Rust): re-does rustc's type inference,
   trait resolution, and borrow checking — years of work, permanently chasing rustc. Rejected.
2. **Translate at HIR/MIR level, Aeneas-style**: produces a *different tool* (extrinsic,
   functional translation), loses Verus's spec language, ghost types, and its ecosystem of
   already-verified Rust projects. Aeneas already occupies this design point well. Rejected —
   though Vermilion should interoperate with Aeneas-style purification where useful.
3. **Translate at AIR level** (emit Lean from AIR instead of SST): tempting because AIR is tiny,
   but AIR is *after* poly boxing, fuel encoding, and trigger commitment — exactly the SMT baggage
   a Lean backend wants to avoid. It would make Lean prove theorems about `Poly`-boxed terms with
   fuel parameters. Rejected, with one caveat: an AIR→Lean printer is a cheap **bring-up hack**
   for week-one experiments, useful to calibrate lean-smt/`grind` on real Verus obligations before
   `sst_to_lean` exists (see the plan's Stage 0).
4. **The chosen point — translate at VIR-SST**: after mode checking, trigger resolution, loop
   normalization, prophecy insertion; before any SMT-specific encoding. Function-level bundles
   (`FunctionSst`) are self-contained; spans and `AssertId`s survive for diagnostics.

This makes Vermilion a **mixed deep/shallow embedding**:

- **Deep where Verus is deep**: the *specification and obligation structure* arrives in Lean as
  explicitly represented data (each obligation an inspectable Lean theorem statement; Rust/Verus
  types mapped to a defined type-translation function). The emitted statements are the auditable
  contract between the Rust side and the Lean side.
- **Shallow where Lean is strong**: spec expressions become ordinary Lean terms (`int` ↦ `Int`,
  `Seq<T>` ↦ a `Seq` theory over `List`/`Array`, spec closures ↦ Lean functions), so mathlib and
  Lean automation apply directly, Veil-style. Exec-code semantics at base camp is captured by the
  WP-shaped obligations themselves (Verus's own semantics of record); a deeper semantic embedding
  (Loom monads, and later Iris) enters only when the soundness program starts
  ([`05-soundness-path.md`](05-soundness-path.md)).

## 3.2 Component-by-component verdicts

Verdicts: **KEEP** (use unchanged, Rust side) · **PORT** (needs a Lean counterpart) ·
**REPLACE** (different mechanism, same job) · **DROP** (no counterpart needed).

### Rust side (Verus repo)

| Component | Verdict | Notes |
|---|---|---|
| `verus_syn`, `builtin`, `builtin_macros` (surface syntax) | KEEP | No SMT knowledge. |
| rustc driving, HIR→VIR (`rust_to_vir*.rs`) | KEEP | The hard-won rustc coupling. |
| Mode checking (`modes.rs`), well-formedness, trait checks | KEEP | Backend-independent. |
| Erasure + ghost borrow-check (forked `rustc_mir_build`) | KEEP | Compilation path untouched. |
| `state_machines_macros` | KEEP | Expands to VIR before the backend; Lean sees ordinary obligations. |
| VIR-AST → VIR-SST passes (`ast_to_sst*`, `recursion.rs`, `resolution_inference.rs`) | KEEP | |
| `sst_to_air*.rs`, `poly.rs`, `prelude.rs`, `datatype_to_air.rs`, etc. | REPLACE | By `sst_to_lean` (new crate, mirrors `sst_to_air`'s structure). |
| `air` crate: AST, WP lowering, SMT-LIB emission | REPLACE | By Lean goals + manager. |
| `air`: Z3/cvc5 process mgmt, rlimit, spinoff, z3 restart | DROP | Lean-side dischargers own resource control. |
| `air/src/profiler.rs` (Z3 trace / smt-scope) | DROP | Replaced by per-goal timing + Lean profiling. |
| Singular integration (`by(integer_ring)`) | REPLACE | `ring`/`linear_combination`/`polyrith` in Lean (mathlib). |
| VIR interpreter (`by(compute)`) | REPLACE (phased) | Lean `decide`/`native_decide`/`simp` with fuel-free unfolding; keep the Rust interpreter as a fallback initially. |
| Trigger inference (`triggers_auto.rs`) | DROP → repurpose | See chapter 4; selected triggers may still be emitted as instantiation *hints* for `grind`/lean-smt. |
| Error machinery: `AssertId`, spans, JSON diagnostics | KEEP | The differential-testing contract. `expand_errors` becomes goal decomposition. |
| `--debugger` (SMT-model REPL) | DROP | Lean-side counterexamples (lean-smt models, Veil-style rendering) replace it. |
| CLI/driver (`verifier.rs` SMT run loop, buckets) | REPLACE | Same orchestration shape, target = Lean build/manager invocations. |
| `cargo-verus`, `verusdoc`, `line_count` | KEEP | Cosmetic changes only. |
| Inline AIR (`ExprX::AirStmt`, `--allow-inline-air`) | DROP | Rare, explicitly unstable; offer inline-Lean instead (late). |
| Test suite (`rust_verify_test`, 4,117 tests) | KEEP | The oracle. See the testing-harness chapter. |

### Lean side (new, in build order)

| # | Component | Job | Analogue |
|---|---|---|---|
| L1 | **Prelude theory**: `int`/`nat`/machine-int clipping, Euclidean div/mod, overflow predicates, `Seq`/`Set`/`Map`/`Multiset` theories with Verus's axiom names as *proved lemmas* | Replaces `prelude.rs` + vstd axioms | mathlib + new |
| L2 | **Type translation**: VIR `TypX` → Lean types; datatypes → inductives; traits → typeclass-or-dictionary encoding (decision recorded in plan ch. 2) | Replaces poly/datatype_to_air | new |
| L3 | **Obligation shapes**: WP-shaped `Prop` forms for requires/ensures/loops/calls, mirroring §2.4's per-construct encodings | Replaces sst_to_air's logic | Loom-informed |
| L4 | **Verification manager**: VC DAG, async dischargers, caching, `@[vermilion]` interactive override, JSON results | Veil's Manager, generalized | port of Veil code |
| L5 | **Discharger ladder**: `grind` → lean-smt (cvc5/Z3) → `omega`/`bv_decide`/`ring` islands → interactive | Replaces Z3 monoculture | Veil/Velvet pattern |
| L6 | **Diagnostics bridge**: Lean goal results → Rust spans → Verus-format JSON | Replaces labels/model-probing | new |
| L7 | **vstd-in-Lean**: models for `PointsTo`, `PCell`, invariants, tokens (late stages) | Gives meaning to ghost APIs | Iris-Lean-informed |

## 3.3 Porting order (dependency-driven)

The order below is forced by dependencies, not preference; the staged plan attaches milestones.

1. **L1 prelude + L2 type translation for the sequential core** (ints, bools, datatypes, `Seq`,
   spec functions). Without these nothing type-checks in Lean.
2. **L3 obligation shapes for straight-line code**: requires/ensures/assert/assume/calls; then
   loops+invariants; then recursion/decreases (Verus's decreases checks are ordinary VCs — port
   them as such; do **not** try to reuse Lean's own termination checker for user functions at base
   camp — that idea, "let Lean's `termination_by` subsume Verus decreases", is attractive but
   couples user-facing semantics to Lean elaboration internals; revisit post-base-camp).
3. **`sst_to_lean` emitter** (Rust crate) implementing L2/L3 as printing, with `AssertId`/span
   metadata carried into theorem attributes.
4. **L4 manager + L5 dischargers**, adapted from Veil (this is where the lean-smt fork, cvc5 FFI,
   and `grind` config arrive). Minimal viable version: sequential discharge, no DAG — the DAG and
   async orchestration can arrive with scale.
5. **L6 diagnostics bridge + CLI integration** — at this point the differential harness runs.
6. **Broadcast lemmas / reveal-hide replacements** (chapter 4's mechanisms) — needed for vstd.
7. **vstd port in dependency order**: `Seq/Set/Map/Multiset` → arithmetic lemma libraries →
   `std_specs` → `View` machinery → collections (`hash_map` etc.).
8. **Ghost-state features** (L7): `PCell`/`PPtr`/`raw_ptr` `PointsTo`; `LocalInvariant`/
   `AtomicInvariant` + masks; `tokens`/PCM/`storage_protocol`; tokenized state machines; atomics.
   Each is meaningful only after the sequential core is solid.
9. **Specialty provers**: `by(bit_vector)` ↦ `bv_decide` bridge; `by(nonlinear_arith)` ↦
   `nlinarith`/`polyrith` islands; `by(integer_ring)` ↦ `ring`; `by(compute)` ↦ `decide`/
   `native_decide`. These unlock specific corpus projects (page table, allocators, crypto), not
   the base camp.
10. **Prophecy-based `&mut`** (`TypX::MutRef`, resolution inference): KEEP the Rust-side machinery
    from day one (it's in SST anyway), but give prophecies a Lean encoding only when the corpus
    demands general `&mut` — base camp restricts to `&mut`-as-parameter, exactly like Verus did
    for years. VerusBelt's stratified prophecy model is the reference when we get there.

## 3.4 What is genuinely new

To make the reuse/new boundary unmistakable — everything Vermilion *adds* to the world, none of
which exists in Verus, Veil, or anywhere else:

1. **The `sst_to_lean` emitter** (new Rust crate): VIR-SST → Lean theorem statements with
   span/AssertId metadata — the first backend for Verus that is not SMT, and the first
   Rust-verifier backend that emits proof-assistant obligations from an *intrinsic* pipeline.
2. **The Vermilion Lean package**: the prelude that turns vstd's ~176 trusted axioms into proved
   lemmas under the same names; the type-translation and obligation-shape libraries; the
   discharger ladder tuned to Verus-shaped goals. (The manager inside it is reused from Veil —
   that's the point — but its instantiation for a rustc-driven external frontend is new.)
3. **The `verus2vermilion` translator**: deterministic annotation migration defining the
   Vermilion spec dialect (Verus minus SMT scripting) — no analogue exists.
4. **The dual-view IDE experience** (plan ch. 6): live Rust verification status coupled to
   ordinary Lean proving with statement-stability contracts — no Rust verifier has an interactive
   escape hatch at all today.
5. **The Veil↔Vermilion refinement bridge** (plan ch. 7): protocol-level EPR-style reasoning and
   implementation-level VCs under one kernel — replacing Verus's second trusted solver mode with
   a foundational pattern.
6. **The research claims** that come with the above: that Verus's query-economy discipline
   survives retargeting to Lean automation (measured at M0/M3); that the Verus spec language
   admits a semantics-preserving shallow embedding (ch. 6); and, later, the Loom/Iris-Lean
   soundness program (ch. 5) — none previously demonstrated.

Everything else — front end, mode system, erasure, ghost borrow checking, VIR/SST passes, test
suite, vstd's Rust surface — is Verus, reused as a dependency; and the orchestration/SMT-tactic
stack is Veil, reused as a library.

## 3.5 Effort split

Of the ~95k lines across `rust_verify` + `vir` + `air`: roughly **60–65% is kept unchanged**,
~35–40% (air, sst_to_air, poly/prelude/triggers/bitvector, solver orchestration in `verifier.rs`)
is replaced by: one new Rust crate (`sst_to_lean`, expect a few kloc), and the Lean package (the
dominant new effort — the Veil-derived manager and prelude/vstd theories, tens of kloc over the
project's life, front-loaded by reusing Veil's ~1,350-line manager and Loom).

Two exogenous costs the estimates must carry:

- **Toolchain reconciliation**: Veil pins Lean 4.28 (with a lean-smt fork), iris-lean tracks 4.31
  with the new module system. Vermilion needs one toolchain; budget for porting the lean-smt fork
  forward (the Veil maintainers already do this fork-by-fork).
- **Performance engineering**: every embedded-verifier datapoint (Velvet 3.67× vs Dafny; Veil >10×
  vs Ivy on easy goals; lean-smt reconstruction 3–5×) says the naive port will be slower than
  Verus's sub-second module verification. The plan treats performance as a first-class milestone
  gate, not a cleanup task.
