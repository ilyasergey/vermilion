# Verus, Explained for Verifier Builders

A distillation of chapters 01–06 in this folder, written for someone who builds verifiers and
wants the mechanism, the trust boundary, and the improvement surface in one read. A running
example is traced through every stage; the example and its artifacts are real and live in this
repository (`examples/m1-pipeline/`, captured from Verus at commit `c569645bd37b0`).

## The one-paragraph picture

Verus is an *intrinsic*, SMT-backed verifier for Rust: specifications and proofs are written
inside the Rust source (in a `verus!{}` macro), type-checked by rustc itself, and discharged by
Z3. Architecturally it is two tools stapled together. The front/middle end — rustc integration,
the mode system (`spec`/`proof`/`exec`), ghost erasure, and a chain of intermediate
representations ending at VIR-SST — knows nothing about SMT; it is about Rust and Verus's ghost
language. The back end — poly boxing, fuel encoding, trigger selection, AIR, weakest-precondition
lowering, Z3 orchestration — exists *only* to phrase obligations a first-order, essentially
unityped solver can digest. The seam between the two is clean, and roughly 60–65% of the ~95k
lines of verifier code sit on the backend-independent side. That seam is where Vermilion inserts
a Lean backend.

## The running example

```rust
// examples/m1-pipeline/simple.rs
verus! {
fn increment(x: u32) -> (y: u32)
    requires x < 100,
    ensures  y == x + 1,
{
    let y = x + 1;
    assert(y > 0);
    y
}
}
```

Three proof obligations hide in these eight lines: the addition must not overflow `u32`; the
user's `assert` must hold; the postcondition must hold at return. Watch what each stage does to
them.

## Stage 1 — Surface syntax: the `verus!` macro

`builtin_macros` (with a forked `syn` parser, "verus_syn") parses the extended syntax —
`requires`, `ensures`, `forall|x|`, `proof { }` blocks, `int`/`nat`, `Ghost<T>`/`Tracked<T>` —
and expands it to *legal Rust with attributes*: spec clauses become closures attached via
`#[verifier::...]` attributes, ghost constructs become calls into the `builtin` crate's
intrinsics. Crucially, the same macro has a second expansion mode that *erases* ghost code at the
token level. Verification and compilation are two interleaved rustc invocations:

- **GHOST pass**: expand keeping ghost code → rustc type-checks → build VIR → verify.
- **EXEC pass**: re-expand with ghost erased → stock rustc compiles the residue. Verified code
  has zero runtime overhead, and erasure never learns which verification backend exists.

For `increment`, the requires/ensures become attribute-carried closures over `x` and the return
name `y`; nothing else changes yet.

## Stage 2 — rustc does the language work

Verus does not reimplement Rust. It drives rustc as a library and reads back the typed HIR.
From rustc it takes, wholesale:

- parsing and name resolution of the expanded code;
- **full type inference and trait resolution** (`rustc_hir_analysis::check_crate`);
- **borrow checking** of exec code — and, via a neat trick, of proof code too: Verus's mode
  checker records per-span modes, a forked `rustc_mir_build` builds MIR *with ghost code erased
  according to those modes*, and then **stock `mir_borrowck` runs on it** — so Rust's real borrow
  checker validates `tracked` ghost ownership and lifetimes. No custom aliasing analysis exists
  anywhere in Verus.

This is the load-bearing design decision: soundness of the whole approach leans on Rust's
*aliasing XOR mutability* discipline, checked by rustc, which is what lets verification
conditions be heap-free functional formulas later. The price is a pinned toolchain and two-and-a-
half forked rustc crates.

## Stage 3 — VIR-AST and the middle-end checks

`rust_to_vir*.rs` translates typed HIR into VIR — a Rust-shaped, mode-annotated lambda calculus
with datatypes and traits (`vir/src/ast.rs`). Signature features:

- **Mathematical integers first**: `TypX::Int(IntRange)` where `IntRange ∈ {Int, Nat, U(n),
  I(n), …}` — machine ints are range-refined mathematical integers, not bit-vectors. Our
  example's `x: u32` is already `Typ Int (IntRange U 32)`.
- **Proof-obligation tags on operators**: the `+` in `x + 1` carries `OverflowBehavior`; division
  carries `Div0Behavior`; indexing carries `BoundsCheck`. Obligations are data before they are
  formulas.
- **Modes everywhere**: `Exec ≤ Proof ≤ Spec` on functions, parameters, fields, lets. Mode
  checking (`modes.rs`, ~3.9k lines) enforces the lattice; this is what makes ghost code free.

On VIR run the middle-end passes: well-formedness, mode checking, trait-conflict checking,
recursion/positivity analysis, and resolution inference for the prophecy-based `&mut` encoding.
All backend-independent.

## Stage 4 — VIR-SST: the waist of the pipeline

`ast_to_sst*.rs` splits the language into **pure expressions** (`ExpX` — with binders carrying
already-resolved quantifier triggers) and **effectful statements** (`StmX` — `Assert`, `Assume`,
`Assign`, `If`, `Loop{invs, decrease}`, `Call`, `Return`, …). Loops are normalized, `&mut`
prophecies inserted, temporaries disambiguated. Per function, everything a backend needs is
bundled into a `FunctionSst`: declared requires/ensures, spec-function definition axioms, and the
body-to-check with its postcondition.

Here is our example's SST, abridged from the real capture
([`../../pipeline/artifacts/simple-sst.vir`](../../../pipeline/artifacts/simple-sst.vir)):

```
FunctionSst simple::increment
  pars:  x : Typ Int (IntRange U 32)
  reqs:  (Lt x 100)
  enss:  (Eq y (Add[OverflowBehavior Allow] x@pre 1))
  body:
    Assert (0) "possible arithmetic underflow/overflow"
           (HasType (IntRange U 32) (Add x 1))      -- inserted obligation
    Assume (HasType (IntRange U 32) (Add x 1))
    Assign y := Add x 1
    Assert (1) (Gt y 0)                              -- the user's assert
    Return                                           -- checks enss, AssertId (2)
```

Note what has *already happened* (modes checked, overflow obligation made explicit, spans and
hierarchical `AssertId`s attached) and what has *not yet happened* (no SMT boxing, no fuel, no
SSA). Everything Rust-specific is resolved; nothing solver-specific is committed. **This is the
handoff point for a new backend** — chapter 03 argues why HIR/MIR is too early and AIR is too
late.

## Stage 5 — The SMT-shaped descent: poly, AIR, WP, Z3

From SST down, every transformation exists to please the solver:

1. **Poly boxing** (`poly.rs`, 1.4k lines): SMT has no parametric polymorphism, so values are
   boxed into a single `Poly` sort with `Box`/`Unbox`/`has_type` axioms. A 1.4k-line prelude of
   S-expressions axiomatizes this universe, plus fuel, integer clipping, datatype heights, and
   extensional equality — all *asserted*, never proved.
2. **AIR** (`air` crate): a deliberately tiny assert/assume/havoc/assign language. Our body is
   now literally `assume (uInv 32 x); assume (x < 100); assert A0 (uInv 32 (x+1)); assume …;
   assert A1 (y > 0); assert A2 (y == x+1)`.
3. **Lowering**: typecheck → SSA (`var_to_const`: mutable locals become indexed constants
   `x@0, x@1`; snapshots for `old()`) → **weakest precondition** (`block_to_assert`) folds the
   statement tree into one formula, with labeled branches to avoid exponential blowup.
4. **Query**: fresh boolean labels are attached to each assert, the goal is negated,
   `(check-sat)` runs. On `sat`/`unknown`, the *model* is parsed to find which label failed,
   mapping back to a source span. Error localization is forensic — you probe a monolithic
   query with labels, and `--expand-errors` re-queries with the failing assertion split.

Around this sits solver management users must learn: **triggers** for quantifier instantiation
(with an 850-line inference heuristic and a user-facing annotation discipline — the single most
user-hostile part of Verus), **fuel** to stop Z3 unfolding recursive definitions unboundedly
(`opaque`/`reveal`/`reveal_with_fuel`), **rlimits and prover spinoffs** for resource control, and
escape hatches that swap solvers per assertion: `by(bit_vector)` (Z3 BV logic),
`by(nonlinear_arith)` (fresh Z3, no context), `by(integer_ring)` (ships the goal to the
**Singular** computer-algebra system), `by(compute)` (a 2.2k-line symbolic interpreter).

For scale, functions are grouped into per-module *buckets*, each with its own Z3 process, and
context (definition axioms, req/ens declarations) is replayed per bucket in dependency order.

## What is taken from Rust — and what Verus adds

| From rustc (trusted, reused) | Added by Verus |
|---|---|
| Parsing of expanded code, name and trait resolution | Surface syntax (`verus!`), ghost intrinsics |
| Full type inference and checking | Mode system and mode checking (`spec`/`proof`/`exec`) |
| Borrow checking of exec code | Ghost borrow checking (mode-directed MIR erasure + stock `mir_borrowck`) |
| MIR pipeline and codegen (EXEC pass) | Token-level ghost erasure; two-pass orchestration |
| — | VIR/SST IRs, recursion & positivity checks, prophecy-based `&mut` |
| — | VC generation (SST→AIR→WP→SMT-LIB) and Z3/cvc5 orchestration |

## The reuse ledger, in numbers

How much of Verus the Lean backend lets us ignore, and how much we keep (line counts from the
chapter 01 crate inventory; the core split is argued in chapter 03 §3.5):

| Bucket | LOC | Fate under Vermilion |
|---|---|---|
| Verifier core kept: `rust_verify` driver + `vir` front/middle passes (HIR→VIR→SST, modes, recursion, erasure orchestration) | ~57–61k (60–65% of the ~94k core) | **Reused unchanged** |
| Verifier core dropped: all of `air` (9.4k), `vir`'s SMT descent (`sst_to_air`, `poly`, triggers, prelude, bitvector), solver loop in `verifier.rs` | ~33–38k (35–40% of the core) | **Ignored** — replaced by `sst_to_lean` (a few kloc) + the Lean package |
| Surface syntax: `builtin` + `builtin_macros` + `state_machines_macros` (~30k), plus vendored `verus_syn`/`prettyplease` forks (~221k) | ~251k | Reused unchanged (backend-blind) |
| `vstd` | ~52k | Rust surface reused; its ~176 axioms re-proved in Lean |
| rustc forks (`rustc_mir_build` + additions, `rustc_hir_typeck`) | ~31k | Reused unchanged (ghost borrow checking) |
| `rust_verify_test` (~4,117 tests) | ~110k | Reused as the differential oracle |

Bottom line: of the ~94k-line verifier core, roughly a third is SMT-pleasing machinery that
simply disappears; everything outside the core — some 440k lines of syntax, library, fork, and
test infrastructure — carries over untouched. The genuinely new code is the emitter and the Lean
package, not a rewrite of Verus.

## What is trusted

Verus is deliberately **non-foundational**. The trust ledger (chapter 05, confirmed by the
VerusBelt authors' own statement of scope):

1. **rustc** and the front/middle end — that HIR→VIR→SST faithfully represents the program.
2. **The entire VC translation** — SST→poly→AIR→WP→SMT-LIB, including the 1.4k-line axiom
   prelude. Nothing checks it; VerusBelt explicitly does *not* formalize it.
3. **The solvers** — Z3 as oracle, cvc5, and Singular for `integer_ring`: three independent
   trusted engines, none proof-producing as used.
4. **The axiom base** — vstd ships ~176 `axiom fn`s (Seq/Set/Map/arithmetic are pure trusted
   axiomatics), ~271 `external_body` items, ~386 `assume_specification`s.
5. **Top-level specifications** — as in every verifier.

VerusBelt (PLDI 2026) proves the *type-system semantics* sound in Iris/Rocq — `PointsTo`,
invariants, resource algebras, storage protocols, over lifetimes and concurrency — but the VC
translation, the solvers, and ghost-erasure soundness all remain open. So the soundness story
has three unproved legs: translation, solvers, axioms.

## Where a Velvet-style multi-modal backend improves things

"Velvet-style" here means the embedded-verifier pattern from the Veil/Velvet/Loom line: every
obligation is a *Lean theorem*, dischargers are untrusted meta-programs racing down a ladder
(`grind` → lean-smt → decision-procedure islands like `omega`/`bv_decide`/`ring` → interactive),
and the same specification is available to multiple modes — automated proof, interactive proof,
property testing, model checking. Concretely, against each pain point above:

- **The solver leg of the TCB becomes optional.** lean-smt can *reconstruct* kernel-checked
  proofs from solver certificates (measured 3–5× cost, a per-run switch: trusted mode for the
  edit loop, reconstruction nightly). `bv_decide` (LRAT-checked), `ring`, `omega`, `decide` are
  proof-producing from day one — so `by(bit_vector)` and `by(integer_ring)` obligations *gain*
  checkable proofs relative to Verus, and Singular leaves the TCB entirely.
- **The axiom base shrinks to definitions.** `Seq`/`Set`/`Map`/`Multiset` and the arithmetic
  lemma libraries get real Lean models; vstd's ~176 mathematical axioms become proved theorems
  *under the same names*, so existing proofs citing them port verbatim.
- **The SMT-management layer disappears as engine code.** Triggers, fuel, the `Poly` universe,
  rlimits, the SMT profiler — chapter 04 walks each one — are deleted or become library-level
  unfolding control (simp sets, reducibility attributes). Each deletion carries a named
  replacement obligation; quantifier automation without triggers is the largest measured risk.
- **A real escape hatch.** When automation fails in Verus, the dead end is "fight triggers or
  `assume`". In the multi-modal design the failing obligation *is* a Lean goal — provable by a
  human or an AI agent, kernel-checked, registered back through the manager. No Rust verifier
  has this today.
- **Structural error localization.** Instead of one negated monolithic query probed via boolean
  labels in a model, you get one goal per obligation natively; `--expand-errors`-style splitting
  becomes ordinary goal decomposition. (The engineering obligation that remains: every emitted
  theorem carries Rust span metadata so failures render as Rust diagnostics.)
- **Specs beyond SMT.** Specifications can use mathlib-grade mathematics (crypto field
  arithmetic against actual `ZMod p`, real analysis, probability) — inexpressible in an
  SMT-boxed spec language.
- **One spec, many modes.** The same decidable spec can be property-tested (Plausible), the
  protocol layer model-checked (Veil, replacing Verus's `#[epr_mode]` with something strictly
  stronger), and the implementation verified — all under one kernel.

## The example, landed in Lean

What the Vermilion backend actually emits for `increment` today (real output,
[`examples/m1-pipeline/generated/simple.lean`](../../../../examples/m1-pipeline/generated/simple.lean)) —
three named, span-annotated, hash-stamped theorems, one per obligation:

```lean
def assert_0_statement : Prop :=          -- overflow check, AssertId 0
  ∀ (x : Int) (_ : Vermilion.inUnsignedRange 32 x) (_ : x < 100),
    Vermilion.inUnsignedRange 32 (x + 1)

def assert_1_statement : Prop :=          -- the user's assert, AssertId 1
  ∀ (x : Int) (_ : Vermilion.inUnsignedRange 32 x) (_ : x < 100)
    (_ : Vermilion.inUnsignedRange 32 (x + 1)), (x + 1) > 0

def ensures_2_statement : Prop :=         -- postcondition, AssertId 2
  ∀ (x : Int) …, (x + 1) = (x + 1)
```

Each is discharged by the automation ladder (`vermilion` tactic), or explicitly — the repo's
[`proofs/simple.lean`](../../../../examples/m1-pipeline/proofs/simple.lean) shows the same
obligation proved three ways: by default automation, by reconstructed SMT
(`smt (trust := false)`), and interactively with `omega`. Contrast with the Verus path: the
same three obligations exist only as labeled conjuncts inside one negated, fuel-guarded,
poly-boxed SMT-LIB query, checkable by nothing but Z3's `unsat`.

That contrast — auditable theorem statements with a kernel behind them, versus an opaque query
with an oracle behind it — is the whole architectural bet, and the staged plan for cashing it
out into ever-smaller trust is [`../05-trust-elimination/`](../05-trust-elimination/README.md).
