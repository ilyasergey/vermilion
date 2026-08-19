# Chapter 2: The IRs and Verification-Condition Generation

This chapter is the reference for what Vermilion's Lean emitter must consume (VIR-SST) and what it
replaces (AIR + SMT). Paths are relative to the Verus repo root.

## 2.1 VIR-AST — the language after rustc

`source/vir/src/ast.rs` (1,900 lines, heavily doc-commented) defines the Verified Intermediate
Representation. It is a Rust-shaped, mode-annotated lambda calculus with datatypes, traits, and
ghost constructs. The essentials:

**Modes.** `enum Mode { Spec, Proof, Exec }` appears on functions, parameters, datatype fields,
let-declarations, and on `Ghost`/`Tracked` type decorations. Mode checking (`modes.rs`) enforces
the lattice `Exec ≤ Proof ≤ Spec` (spec code cannot call proof/exec; proof cannot call exec).

**Types** (`TypX`): `Bool`; `Int(IntRange)` with `IntRange = {Int, Nat, U(n), I(n), USize, ISize,
Char}` — i.e., *mathematical integers first*, machine ints as range-refined integers; `Real`;
`Float(bits)`; `SpecFn` (spec closures); `FnDef`; `Datatype`; `Dyn`; `Primitive({Array, Slice,
StrSlice, Ptr, Global})`; `Decorate(TypDecoration, …)` with decorations `Ref/Box/Rc/Arc/Ghost/
Tracked/Never/ConstPtr` (same SMT encoding, kept distinct for trait resolution); `Boxed` (the SMT
poly universe — Lean will not need it); `TypParam`/`Projection`/`ConstInt`/`ConstBool` (generics);
and `MutRef(Typ)` — the newly landed first-class prophecy-based mutable references
(`docs/migration-mut-ref.md`).

**Expressions** (`ExprX`, ~55 variants): constants, vars, `VarAt(x, Pre)` (`old(x)`); calls with
static/dynamic trait resolution (`CallTarget` + `ImplPaths`); constructors; operator families whose
variants carry proof-obligation tags (`OverflowBehavior`, `Div0Behavior`, `BitshiftBehavior`,
`BoundsCheck`); `Quant` (forall/exists) with trigger annotations; spec `Closure` and exec
`NonSpecClosure{requires, ensures}`; `Choose`; `WithTriggers`; `Assign` (with resolve for
prophecies); `Fuel`/`RevealString` (reveal/hide/opaque control); `AssertAssume`; `AssertBy`;
`AssertQuery` (the `by(bit_vector)` / `by(nonlinear_arith)` escape hatches); `AssertCompute`;
`If`/`Match`/`Loop{invs, decrease, loop_isolation}`/`Return`/`BreakOrContinue`; `OpenInvariant`;
`Ghost` blocks; place expressions (`PlaceX`) with `BorrowMut`/`TwoPhaseBorrowMut`/`ReadPlace`;
`Await` (async); and an inline-AIR escape hatch (`AirStmt`, gated by `--allow-inline-air` — one of
the few features Vermilion should *drop* rather than port; see chapter 4).

**Functions** (`FunctionX`): mode; generics with bounds; `require`/`ensure` (with the twist that
for spec functions `require` stores `recommends`); a `returns` clause; lexicographic `decrease`
plus `decrease_when` and `decrease_by`; `mask_spec` (invariant-namespace masks: `opens_invariants`);
`unwind_spec`; `open`/`closed` body visibility and opaqueness; `FunctionKind` (static / trait decl
/ trait impl); and ~25 attributes (`broadcast_forall`, `bit_vector`, `nonlinear`, `integer_ring`,
`spinoff_prover`, `memoize`, `rlimit`, `autospec`, …) — chapter 4 sorts these into
port/replace/drop.

## 2.2 VIR-SST — the waist of the pipeline

`source/vir/src/sst.rs` (408 lines) is a *statement/expression split* form produced by
`ast_to_sst*.rs` (~4k lines): expressions (`ExpX`) are pure (binders `Let/Quant/Lambda/Choose`
carry **resolved triggers** `Trigs`), and statements (`StmX`) carry all effects:

```
StmX ::= Call { fun, args, dest, split, assert_id }
       | Assert(assert_id, msg, exp) | AssertBitVector | AssertQuery | AssertCompute
       | Assume(exp) | Assign | Fuel | RevealString
       | DeadEnd(stm)                      -- proof blocks whose assumptions must not leak
       | Return { … } | BreakOrContinue
       | If(cond, s1, s2) | Loop { loop_isolation, invs, decrease, typ_inv_vars, modified_vars }
       | OpenInvariant | ClosureInner | Air | Block
```

Function-level containers bundle everything a backend needs, per function:

- `FuncDeclSst` — requires/ensures/invariant-mask/unwind expressions;
- `FuncAxiomsSst` — the spec-function definition body + termination check, and broadcast axioms;
- `FuncCheckSst` — the body to check: requires, `PostConditionSst`, unwind spec, body `Stm`,
  local declarations;
- `FunctionSst` — the bundle `{decl, axioms, exec_proof_check, recommends_check, safe_api_check}`.

**This is Vermilion's input format.** Everything Rust- and ghost-language-specific has been
resolved (modes checked, triggers selected, loops normalized, `&mut` prophecies inserted); nothing
SMT-specific has happened yet (no poly boxing, no fuel encoding, no SSA).

## 2.3 AIR and the SMT encoding — what gets replaced

`source/air/src/ast.rs` (298 lines) is a deliberately tiny assert/assume/havoc language:

- Types: `Bool, Int, Real, Fun, Named(sort), BitVec(n), Float`.
- Statements: `Assume, Assert(AssertId, Message), Havoc(x), Assign(x,e), Snapshot(name), DeadEnd,
  Breakable/Break, Block, Switch` (nondeterministic branch).
- Declarations: sorts, SMT datatypes, consts, functions, axioms; queries are
  `CheckValid { local decls, assertion stmt }`.

Lowering to SMT-LIB (`air/src/context.rs::query`): typecheck → `var_to_const.rs` (mutable locals
and `Havoc`/`Assign`/`Snapshot` become indexed SSA constants `x@0, x@1`; `Old(snap, x)` reads a
snapshot) → `block_to_assert.rs` computes a **weakest precondition** over the statement tree into
one assertion (`wp(assume Q, P) = Q ⟹ P`; `wp(assert Q, P) = Q ∧ P`; `Switch` = labeled
conjunction to avoid exponential blowup) → `smt_verify.rs` attaches fresh boolean **labels** to
each assertion, asserts the negated goal, runs `(check-sat)`, and on `sat`/`unknown` parses the
model to find which label failed, mapping back to a source span. `--multiple-errors N` re-queries
with found labels disabled.

The **prelude** (`source/vir/src/prelude.rs`, 1,358 lines of S-expressions) axiomatizes the `Poly`
universe (`Box`/`Unbox`/`has_type`), fuel (`fuel_bool`, `zero`/`succ`), integer clipping
(`uClip/iClip/nClip`), Euclidean div/mod, datatype heights, closures, and extensional equality.
Every line of it exists because SMT is a first-order, essentially unityped setting — in Lean these
become ordinary definitions and lemmas over `Int`/`Nat`/inductive types (chapter 4).

## 2.4 How obligations are generated

Per module ("bucket"), `OpGenerator` (`rust_verify/src/commands.rs`) walks functions in SCC order:

- **Context ops** add global facts to the solver context: spec-function definition axioms
  (fuel-guarded), `%req`/`%ens` predicate declarations per function, broadcast-lemma axioms,
  trait-impl axioms.
- **Query ops** per function: `SpecTermination` (decreases check for spec functions) and
  `Body(Style)` where Style ∈ {Normal, RecommendsChecked, RecommendsFollowupFromError, Expanded
  (error splitting), CheckApiSafety}.

Within a function body (`sst_to_air.rs::body_stm_to_air`), one main `CheckValid` query is built:
parameter type invariants and `requires` become assumptions, the body becomes
assume/assert/assign/havoc statements, postconditions are asserted at `Return`. Key encodings:

- **Calls**: assert callee `%req(args)`; havoc the destination; assume `%ens(pre-args, dest)`.
  Mask-spec inclusion and unwind obligations are additional asserts at the call site.
- **Loops** (with default `loop_isolation(true)`): the loop body becomes its *own query* —
  invariants asserted at entry, `modified_vars` havocked, invariants assumed, body must
  re-establish them; the enclosing function's query just asserts entry invariants and assumes exit
  invariants. Loop termination via per-loop `decrease`. `for`-loop invariants are partially
  inferred (`loop_inference.rs`).
- **Recursion/termination**: call-graph SCCs (`recursion.rs`, `scc.rs`); recursive calls assert
  lexicographic decrease using datatype `height()`; `decrease_when` gates definedness;
  `decrease_by` delegates to a proof function. Datatype positivity is enforced separately
  (`recursive_types.rs`).
- **Spec-function definitions**: each opaque/recursive spec function `f` gets a definition axiom
  guarded by `fuel_bool(fuel%f)` with a fuel-nat parameter bounding unfolding depth; `reveal` /
  `reveal_with_fuel(n)` / `hide` toggle fuel locally. This entire mechanism is SMT-specific
  (chapter 4).
- **Sub-queries with different provers**: `assert(...) by(bit_vector)` translates the assertion
  via `bitvector_to_air.rs` (1,354 lines) into pure BV logic; `by(nonlinear_arith)` spins a fresh
  Z3 with `smt.arith.nl=true` and *no ambient context*; `by(integer_ring)` ships a ring problem to
  the **Singular** computer-algebra system; `by(compute)` runs a symbolic evaluator over SST
  (`interpreter.rs`, 2,180 lines) with optional Z3 follow-up.
- **Invariants (concurrency)**: `open_atomic_invariant!` / `open_local_invariant!` blocks become
  `OpenInvariant` statements; namespace masks (`inv_masks.rs`) generate non-reentrancy obligations.

## 2.5 Error localization — the UX bar Vermilion must meet

Verus's diagnostics discipline is load-bearing for its usability, and the port must preserve it:

1. Every assert carries a hierarchical `AssertId` and a `Message` with spans and labels.
2. The failing label is recovered from the SMT model of the negated query.
3. `--expand-errors` (`vir/src/expand_errors.rs`) iteratively *splits* a failing assertion —
   unfold function definitions, split conjunctions, introduce foralls (an `ExpansionTree`) — and
   re-queries to pinpoint the failing conjunct.
4. `snap_map: Vec<(Span, SnapPos)>` links source spans to SSA snapshots, powering the `--debugger`
   counterexample REPL.

A Lean backend changes the character of this machinery, mostly favorably: instead of one monolithic
query probed via labels, Vermilion gets **one Lean goal per obligation natively**, so error
localization is structural (the goal that fails *is* the location) and `expand_errors`-style
splitting becomes goal decomposition with `Try this`-style stubs (the Veil pattern). What must be
engineered deliberately is the reverse span mapping: every emitted Lean theorem carries metadata
pointing back to the Rust span, so failures render as Rust diagnostics, not Lean ones.

## 2.6 The numbers that size the port

| Component | Lines | Fate under Vermilion |
|---|---|---|
| `vir/src/sst_to_air.rs` + `sst_to_air_func.rs` | ~4,300 | replaced by `sst_to_lean` |
| `air` crate (whole) | 9,385 | replaced by Lean elaboration + manager |
| `vir/src/poly.rs` | 1,398 | deleted (no Poly universe in Lean) |
| `vir/src/prelude.rs` | 1,358 | replaced by a Lean prelude library (proved, not asserted) |
| `vir/src/triggers.rs` + `triggers_auto.rs` | 1,388 | dropped or repurposed as automation hints |
| `vir/src/bitvector_to_air.rs` | 1,354 | replaced by `bv_decide` bridging |
| `vir/src/interpreter.rs` | 2,180 | optionally replaced by Lean `decide`/`native_decide`/`simp` |
| fuel machinery (spread across sst_to_air/prelude) | — | replaced by controlled unfolding (simp sets / `grind` attrs) |
| Everything upstream of SST | ~85k | **kept** |
