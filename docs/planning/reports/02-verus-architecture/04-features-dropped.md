# Chapter 4: Verus Features Vermilion Does Not Need — and What Replaces Them

A major motivation for the port is that a good fraction of Verus's machinery exists to manage an
SMT solver's weaknesses, and Lean either doesn't have those weaknesses or manages them with
libraries instead of trusted engine code. This chapter enumerates that machinery. Each entry states
the Verus mechanism, why it exists, the Vermilion verdict, and the replacement obligation — because
nothing here is free: every dropped mechanism transfers its job to a named Lean facility whose
adequacy must be validated by a milestone.

## 4.1 Trigger programming (dropped as a user-facing discipline)

**Verus**: quantifiers are instantiated by Z3's e-matching, steered by syntactic triggers.
`vir/src/triggers_auto.rs` (846 lines) infers "as few triggers as possible" with a scoring
heuristic; users write `#[trigger]`, `#![trigger f(x), g(y)]`, trigger groups, `#![auto]`;
`--triggers-mode` variants report selections; matching loops are a routine failure mode the guide
spends a chapter on. This is the single most user-hostile part of the Verus experience and exists
*only* because of e-matching.

**Vermilion**: quantifier handling moves to the discharger ladder — `grind`'s instantiation
heuristics, lean-smt's translation (which can still pass patterns to cvc5/Z3), and, for the
protocol-shaped decidable fragments where triggers matter most, the option to specify systems in
Veil instead (see §4.8). User-facing trigger syntax is **accepted and ignored at base camp**
(compatibility), possibly forwarded as hints later.

**Replacement obligation**: demonstrate on the quantifier-heavy corpus tier (IronKV refinement
proofs) that `grind`+lean-smt discharge Verus's implicit-instantiation obligations without user
annotations, or identify the annotation form Vermilion needs instead (e.g., `@[solverHint]`-style
lemma sets, the Velvet pattern). This is milestone-gated in the plan; it is the port's largest
automation risk.

## 4.2 Fuel and opaque/reveal (replaced by controlled unfolding)

**Verus**: spec-function definitions become SMT axioms guarded by fuel terms (`fuel_bool`,
`zero/succ` nats) so Z3 can't unfold recursive definitions unboundedly; `opaque`/`reveal`/
`reveal_with_fuel(n)`/`hide` toggle fuel locally. Pure solver-management machinery.

**Vermilion**: Lean has native, kernel-understood unfolding control: reducibility attributes,
`simp only` sets, `unfold`, and `grind` annotation sets. `reveal_with_fuel(n)` maps to bounded
`simp`/`unfold` iteration; `opaque` maps to not marking the definition for unfolding. The *surface
syntax stays* (vstd and user code use it pervasively); only its meaning changes from fuel terms to
attribute/simp-set manipulation in the emitted obligations.

**Replacement obligation**: equational-lemma generation for recursive spec functions (Lean's
`funext`-style equation lemmas mostly give this for free) and a deterministic mapping from
`reveal` scopes to per-goal simp contexts.

## 4.3 The Poly universe (deleted outright)

**Verus**: `vir/src/poly.rs` (1,398 lines) boxes values into a single `Poly` SMT sort with
`Box/Unbox/has_type` axioms, because SMT lacks parametric polymorphism. A large share of
`prelude.rs` supports it.

**Vermilion**: Lean has real universes and parametric definitions. Generic Verus functions become
generic Lean theorems. Deleted with no replacement obligation beyond the type-translation design
(traits → typeclasses/dictionaries, recorded in the plan).

## 4.4 EPR mode (dropped; superseded by Veil interop)

**Verus**: `#[epr_mode]` checks per-module that obligations fall in the decidable
effectively-propositional fragment (uninterpreted-sort abstraction, acyclic quantifier-alternation
graph) and flips Z3 to MBQI — Ivy-style full automation for protocol-shaped proofs (the IronKV
delegation-map case study).

**Vermilion**: this is precisely Veil's home turf, in the same ecosystem Vermilion builds on. The
protocol abstraction lives as a Veil specification (getting Veil's model checking, BMC, and
finite-model-find automation), and the Verus-level implementation proves refinement of it —
obligations that are ordinary Vermilion VCs connecting Rust state to the Veil transition system.
No EPR checker is ported. This is also a genuinely *better* story than Verus's: the abstract
protocol gains testing and CTI modes Verus never had.

**Replacement obligation**: a worked example (IronKV's delegation map re-done as Veil spec +
Vermilion refinement) — scheduled late in the plan; nothing at base camp depends on it.

## 4.5 Prover resource management (dropped)

**Verus**: `--rlimit` (Z3 rlimit per query), per-function `#[verifier::rlimit(n)]`,
`#[verifier::spinoff_prover]` (fresh Z3 process), `--num-threads` buckets, `--smt-option`
passthrough, Z3-unknown restart logic, version pinning of bundled Z3/cvc5.

**Vermilion**: the manager owns resources: per-discharger timeouts, cancellation tokens, parallel
scheduling over the VC DAG (all already in Veil's manager). `rlimit` attributes are accepted and
mapped to per-goal timeout multipliers so existing code keeps verifying.

## 4.6 SMT profiler and quantifier forensics (dropped)

**Verus**: `--profile` parses Z3 instantiation traces via smt-scope to attribute cost to
quantifiers — the debugging companion of trigger programming.

**Vermilion**: per-goal wall-clock/heartbeat data from the manager; Lean's own profiler; and when
lean-smt is the discharger, cvc5's statistics remain available. The *forensic* need shrinks with
e-matching's role. No port.

## 4.7 Singular / `by(integer_ring)` (replaced by mathlib tactics)

**Verus**: ring equalities (mod-arithmetic lemmas) shipped to the Singular computer-algebra system
— a whole trusted external tool.

**Vermilion**: `ring`, `linear_combination`, `polyrith` — proof-producing, kernel-checked, and the
TCB shrinks by one solver. Similarly `by(nonlinear_arith)` maps to isolated goals attacked with
`nlinarith`/`positivity` (+ lean-smt as fallback), and `by(bit_vector)` maps to `bv_decide`
(LRAT-checked bit-blasting — again removing a trust leg Verus has). These three are where the port
*gains* capability rather than chasing parity.

## 4.8 Where Lean is strictly stronger — capabilities Verus cannot offer

For the "why is this desirable" narrative (fully argued in
[`../01-literature-review/05-positioning.md`](../01-literature-review/05-positioning.md)):

1. **Specs beyond SMT**: mathlib-grade mathematics in specifications (real analysis, number
   theory, probability) — Velvet's ∫x²dx demonstration, applied to Rust code (crypto field
   arithmetic vs. actual `ZMod p` theory is the flagship corpus example).
2. **A real escape hatch**: when automation fails, the obligation *is* a Lean goal — provable
   interactively by humans or AI agents, with the proof kernel-checked and registered back through
   the manager (Veil's `@[veil]` override pattern). Verus's dead end ("fight triggers or assume")
   disappears.
3. **Shrinkable TCB**: lean-smt proof reconstruction (3–5× cost, per-run optional) takes the
   solver out of the TCB — Verus can never do this with Z3-as-oracle.
4. **One platform**: model checking (Veil), property testing (Plausible, on decidable specs),
   SMT automation, and interactive proof against a single spec — the multi-modality argument of
   Pîrlea's thesis, instantiated for Rust.

## 4.9 Kept-but-reinterpreted quick reference

| Verus surface feature | Base-camp meaning in Vermilion |
|---|---|
| `#[trigger]`, `#![auto]`, trigger groups | parsed, ignored (later: hints) |
| `opaque`, `reveal`, `reveal_with_fuel`, `hide` | unfolding-control on emitted goals |
| `broadcast proof fn` / `broadcast use` / groups | lemma sets attached to discharger context (`@[solverHint]`-style; `grind`/simp attribute sets) |
| `#[verifier::rlimit(n)]` | per-goal timeout multiplier |
| `#[verifier::spinoff_prover]` | no-op (manager parallelizes anyway) |
| `by(bit_vector)` | goal routed to `bv_decide` bridge |
| `by(nonlinear_arith)` | isolated goal routed to `nlinarith`/lean-smt |
| `by(integer_ring)` | goal routed to `ring`/`linear_combination` |
| `by(compute)` / `by(compute_only)` | `decide` / `native_decide` / `simp`-evaluation |
| `#[verifier::memoize]` | irrelevant at base camp (interpreter feature) |
| `#[epr_mode]` | rejected with a pointer to the Veil-refinement pattern |
| inline AIR (`--allow-inline-air`) | rejected (later: inline Lean term/tactic escape) |
