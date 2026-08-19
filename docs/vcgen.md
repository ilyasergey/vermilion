# VC generation policy for the Vermilion SST fragment

**Status: normative project policy.** This document specifies, in a
conventional (judgment / inference-rule) form, the **verification-condition
generation policy** Vermilion uses to turn the neutral textual IR
(`docs/ir.md`) into Lean proof obligations. It is not merely descriptive: it
is the contract the implementation must follow, kept in step with the code as
a binding agent directive (`.claude/memory/vcgen-policy-doc.md`, referenced
from `CLAUDE.md`) — any change to VC generation updates this document in the
same slice. It is also the reference against which the planned *foundational*
VC generator — a Lean weakest-precondition construction proved sound against a
semantics of the IR — will be stated and verified (see
`.claude/memory/foundational-vcgen.md`, `plans/execution-plan.md`, and
`DESIGN.md`'s TCB roadmap).

## Status

The generator that runs today (`lean/Vermilion/Ir/Vcgen.lean`, printed by
`lean/Vermilion/Ir/Render.lean`) is **syntactic**: it assembles obligation
sequents as data and pretty-prints them as Lean theorems. Nothing in this
pipeline is *proved* to be a sound reduction of the SST fragment's meaning —
the Rust lowering and this construction are trusted (the Lean kernel then
checks each emitted theorem; the machine `vrml` discharge is not trusted).

This document fixes the policy those trusted pieces implement so that:

1. the policy can be reviewed and regression-tested independently of the code;
2. the foundational generator has a precise target — reproduce this relation
   (or a refinement of it) and prove each rule sound against `⟦·⟧`, the
   semantics of the IR.

The notation below is deliberately close to the code: the transition relation
`⇒` is exactly `processStmt`, and the initial state is `generateObligations`.

## Where this sits in the pipeline

`vrml_gen` (entry `lean/VrmlGen.lean`) runs four stages per function:
`Decode` parses the textual IR into the AST; **this document's relation**
(`Vcgen.lean`) folds each function's statement list into `Obligation`
sequents and then computes their typeclass-evidence closure — data, not
text; `Render` prints evidence as `@[vrml_evidence]` instances
(`local instance`s in the per-file module's evidence section; plain
`instance`s in the per-function layout's shared `Evidence` unit, so
importing units see them) and sequents as one
`@[vrml_obligation] theorem` each (plus datatype `inductive`s and
spec-fn `def`s); `Emit` writes the generated module(s) and the manifest,
change-detecting. Two emission *layouts* exist (`vrml_gen --mode`):
per-function (the default — one unit module per function around a shared,
imported `Specs` module holding the datatype/spec-fn definitions exactly
once) and per-file (one module per Rust file). **The layout never affects
this document's relation**: the obligations, their canonical statements,
and their hashes are identical in both modes — only which file a rendered
declaration lands in differs (`renderModule` vs `renderSpecsModule` +
`renderEvidenceModule` + `renderUnitModules` in `Render.lean`, all over the
same `appendEvidenceBlocks`/`appendObligationBlocks`).
`vrml_sync`/`vrml_check` consume the
generated files; nothing besides `Render`+`Emit` produces Lean text,
and nothing besides this relation decides what the obligations say.

## Objects

### The generation state σ

VC generation threads a state σ = ⟨Γ, H, V, B, κ⟩ through the statement list
of one function:

| Component | Meaning | Code |
|---|---|---|
| Γ | ordered **binder context** — the universally quantified variables of an obligation (function params, call results, branch-join / loop-havoc symbols) | `GenState.binders` |
| H | ordered list of named **hypotheses** — propositions in scope (function `requires`, assumed facts, proved assertions, call `ensures`, path/loop facts) | `GenState.hypotheses` |
| V | **spec-fn visibility** — a finite map `qualified-name ↦ rounds`; `rounds > 0` means the definition's equations are available to the machine attempt here | `GenState.visibility` |
| B | **ladder-hint set** — proved mirror-lemma names in scope, from `broadcast use` of a vstd group/lemma resolved through `Vermilion.Vstd.lemmaHints`; added to the machine attempt's simp set. HINTS ONLY: they can only help the ladder close an already-stated goal, never change what is proved (fail-open — an unresolved path adds nothing) | `GenState.hints` |
| κ | monotone **name counters** (per-callee, per-branch, per-loop ordinals) that only ensure globally unique hypothesis names; they carry no logical content | `callOrdinals`, `branchOrdinal`, `loopOrdinal` |

Write σ.Γ, σ.H, σ.V, σ.B for the components, and `σ[Γ ↦ …]` for functional
update.

### The obligation (a sequent)

An obligation emitted in state σ with goal φ is the sequent

```
    Γ_σ ; H_σ ⊢ φ    (active unfolds U = { f | V_σ(f) > 0 };  hints σ.B)
```

carrying also: the enclosing function's type parameters Θ, a `kind`
(`assert | call_requires | ensures | invariant_entry | invariant_preserve |
invariant_break`), the Rust `span`, the `assertId`, and an `origin` string.
`Render` closes it into the Lean theorem

```lean
@[vrml_obligation] theorem <leaf>
    (T : Type) [Inhabited T]        -- one per type parameter in Θ
    (x : τ) …                       -- one per binder in Γ_σ
    (h : P) …                       -- one per hypothesis in H_σ
    : φ := by
  <one interleaved bounded-rw loop for all recursive unfolds,
   normalizing ground arithmetic after each rewrite>
  vrml [U_nonrecursive, σ.B]        -- unfolds and broadcast hints share the simp set
```

i.e. logically the closed proposition

```
    ∀ Θ, ∀ Γ_σ, (⋀ H_σ) → φ
```

Two obligations are the *same VC* iff their canonical (span-free) statements
coincide; this is what the incremental fingerprints hash
(`Obligation.statementHash`).

### `choose` characterizing hypotheses (the `(CHOOSE)` post-pass)

Verus `choose|x| P(x)` lowers to the expression
`Vermilion.chooseSpec (fun x => G(x) ∧ P(x))` — Hilbert choice over the
type-guarded predicate when satisfiable, otherwise a fixed unconstrained
value (`default`), exactly Verus's skolem + `as_type` semantics
(`sst_to_air`'s `typ_invariant ∧ cond`). The binder's range guards `G`
conjoin in front of the predicate at lowering time. The current fragment
is one binder whose Bind body is the bound variable itself, at an
Int-lowered scalar type; tuple `choose` and non-variable bodies fail
closed (`lower.rs`).

After `generateObligations` folds the statement list, a post-pass
(`withChooseFacts`) prepends, for every distinct (binder, predicate) pair
occurring in an obligation's hypotheses or goal, one hypothesis

```
    choose_spec_i : (∃ x, p x) → (fun x => p x) (Vermilion.chooseSpec p)
```

— the conditional characterizing fact, a ground instance of the proved
theorem `Vermilion.chooseSpec_spec`, so assuming it adds nothing to the
trusted base. The consequent is deliberately a beta-redex: no expression
substitution exists in the generator, and `simp`'s beta reduction exposes
the fact to the ladder. Duplicates are collapsed modulo triggers (they are
metadata). The generation state σ itself is unchanged; only the emitted
sequent's H grows.

Deliberate narrowing (Verus divergence, fail-closed direction only):
Verus's `as_type` also gives the chosen value its type invariant
*unconditionally*; the post-pass injects only the conditional fact, so a
program that uses the range of an *unsatisfiable* choose may verify in
Verus and fail here. The interactive twin recovers it by `unfold
Vermilion.chooseSpec` and `split` (the proved
`Vermilion.chooseSpec_guard` lemma is the packaged form: any guard holding
of all satisfying values and of `default` holds of the choice). Scalar
range guards all contain `default = 0`, so no soundness question arises in
either direction.

### Typeclass-evidence obligations

Lean terms can demand class dictionaries that Verus leaves implicit in an
executable type. These targets are not necessarily propositions: for example,
Vermilion represents a Rust `bool` as `p : Prop`, while `iteP p a b` needs a
term of type `Decidable p`. Such a missing dictionary is an elaboration
prerequisite, not a logical VC and not a reason to silently make every
generated definition classical.

After the ordinary VC fold, `collectEvidenceObligations` computes an evidence
closure `E(O)`. Each evidence obligation contains a stable identity and hash,
source span/origin, a parameter telescope, dependencies/consumers, and a
structured class application `C A₁ … Aₙ`. Its arguments are tagged type or
term expressions (`EvidenceTarget` / `EvidenceArg`). The representation is
class-generic: `Decidable` is the first producer, while future producers can
request `Inhabited`, `DecidableEq`, or a model-specific class without adding
another proof-storage protocol.

The initial closure rule is:

```
(EVIDENCE-DECIDABLE-PROP)
    some VC in O contains `iteP c t e`
    and Decidable c is not structurally synthesized from its telescope
    ───────────────────────────────────────────────────────────────────
    E(O) contains one deduplicated local instance
        (p : Prop) : Decidable p
```

The producer recognizes constants, integer comparisons, boolean connectives
over constructively decidable operands, and generated datatype-variant
predicates. A bare Prop-valued Rust boolean (or an unknown predicate-producing
application) requests evidence. One universal proposition-decision dictionary
per module closes all such theorem-statement uses and keeps the generated
artifact small.

In particular, the presence of a Rust `bool` or source-level `if` is not by
itself a trigger. If no `iteP` survives into a VC hypothesis/goal, or every
surviving guard is recognized as constructively decidable, then `E(O)` is
empty and no `Decidable` evidence declaration is emitted.

**Spec-function definitions** precede the evidence declarations, so the
module-wide instance cannot serve them. A definition whose body contains an
`iteP` guard the same recognizer rejects (dalek-lite Layer Set A:
`iteP (is_negative a) …`, an opaque Prop-valued spec-fn application; a
Rust-`bool` parameter used as a guard counts too) is instead rendered under
`open Classical in` and marked `noncomputable`
(`SpecFn.needsPropDecidable` in `Render.lean`, reusing
`Expr.needsDecidableEvidence`). The fallback is per-definition and visible
in the emitted text; constructively-decidable guards keep their
definitions computable exactly as before.

Evidence is emitted **after spec-function definitions** and before logical
VCs. In the per-file layout it sits inside a section as a flattened,
project-unique `noncomputable local instance`: available to every later
theorem in that module, invisible to importers' global instance search, and
unable to silently make an earlier executable spec definition noncomputable.
In the per-function layout the same blocks form the shared
`generated/<stem>/Evidence.lean` unit as plain (non-`local`) `instance`s —
a `local instance` would be invisible to the unit modules that import the
Evidence unit — with the visibility scoped by those imports instead of a
section. The blocks, identities, and hashes are identical in both layouts.

The generated evidence body is a loud `sorry` placeholder. This permits the
machine copy to elaborate downstream VCs *contingently*, but `vrml_check`
always reports an unresolved evidence record as an error. `vrml_sync` carries
the block into the user-owned twin, where the user replaces the body with a
kernel-checked term, for example `exact Classical.propDecidable p`.

A run is verified only when every evidence block is `sorry`-free and the
whole twin — instances followed by their consuming VCs — kernel-checks.
Evidence blocks participate in manifests, hashes, stale-proof detection,
`--probe`, interactive-coverage reporting, and `--fail-on-sorry` exactly like
logical blocks.

### The emission macro

Throughout, `emit(σ, kind, c)` denotes the single obligation

```
    Γ_σ ; H_σ ⊢ c.proposition        kind = kind,  span = c.span,
                                      assertId = c.assertId,
                                      unfolds = { f | V_σ(f) > 0 },
                                      hints = σ.B
```

It reads σ but does not change it. (`GenState.obligation` in the code.)

## The generation relation

For statements we define a big-step relation

```
    σ ⊢ s ⇒ σ' ⊣ O
```

read: *processing statement `s` in state σ yields successor state σ′ and emits
the obligation multiset O.* Its lift to statement lists is the left fold

```
    σ ⊢ [] ⇒ σ ⊣ ∅
    σ ⊢ s ⇒ σ₁ ⊣ O₁      σ₁ ⊢ ss ⇒ σ₂ ⊣ O₂
    ─────────────────────────────────────────
    σ ⊢ s :: ss ⇒ σ₂ ⊣ O₁ ⊎ O₂
```

(`processStmts = statements.foldl (processStmt function)`). The obligation
order is deterministic: the fold's left-to-right order.

### Structural rules (one per `Stmt` constructor)

Assumed facts extend the context and prove nothing:

```
(ASSUME)
    ─────────────────────────────────────────────
    σ ⊢ assume e ⇒ σ[H ↦ H · (aᵢ : e)] ⊣ ∅
```

An assertion is **proved in the current context, then assumed** (Floyd/Hoare
assert; the successor may rely on it):

```
(ASSERT)
    ─────────────────────────────────────────────────────────────
    σ ⊢ assert c ⇒ σ[H ↦ H · (assert_c : c.prop)] ⊣ { emit(σ, assert, c) }
```

A postcondition check at a (possibly early) return site proves without
changing the context:

```
(ENSURES)
    ─────────────────────────────────────────
    σ ⊢ ensures c ⇒ σ ⊣ { emit(σ, ensures, c) }
```

A fresh symbol (branch join, loop havoc) extends the binder context:

```
(FRESH)
    ───────────────────────────────────────
    σ ⊢ fresh b ⇒ σ[Γ ↦ Γ · b] ⊣ ∅
```

A `reveal(f, n)` / `hide(f)` / `reveal_with_fuel(f, n)` sets `f`'s visibility
(`hide` is `n = 0`); it emits nothing and changes only V:

```
(REVEAL)
    ─────────────────────────────────────────
    σ ⊢ reveal f n ⇒ σ[V ↦ V[f ↦ n]] ⊣ ∅
```

A `broadcast use G` of a broadcast **group** (or a lemma with no single
extractable fact) contributes ladder hints: the canonical vstd path `p` is
resolved through `hints(p) = Vermilion.Vstd.lemmaHints(p)` (the shipped
mirror registry) and the resulting lemma names are added to B. It emits
nothing and changes only B; an unresolved path is a no-op (fail-open — a
hint can only help the ladder, never change the proved proposition).
Single-lemma `broadcast use` does *not* reach this rule: it is lowered
upstream to an `assume` of the lemma's quantified fact, which is strictly
stronger.

```
(BROADCAST)
    ────────────────────────────────────────────────
    σ ⊢ broadcast p ⇒ σ[B ↦ B ∪ hints(p)] ⊣ ∅
```

A loop-invariant check emits like `assert` but — unlike `assert` — **adds no
hypothesis** (the invariant fact is delivered to the body / continuation
separately, by the loop rule):

```
(INVARIANT)   phase ∈ {entry, preserve, break}
    ──────────────────────────────────────────────────────
    σ ⊢ invariant phase c ⇒ σ ⊣ { emit(σ, invariant_phase, c) }
```

A check-and-discard scope (Verus's `DeadEnd`: `assert … by` blocks, the
exec-closure body check) proves its children in the current context and
discards everything they introduce — binders, facts, reveals; only the
obligations and the name counters κ survive. Any fact the scope
establishes for the continuation arrives as a separate statement after
it (the outer `Assume` Verus emits after an `assert_by`):

```
(SCOPE)
    σ ⊢ ss ⇒ σ' ⊣ O
    ────────────────────────────────────────────
    σ ⊢ scope ss ⇒ σ[κ ↦ κ_σ'] ⊣ O
```

### Calls (Dafny-method discipline)

A call proves each `requires` in the pre-call context (they do **not**
accumulate as hypotheses among themselves), binds a fresh result symbol, then
assumes the callee's `ensures`. Callee-contract substitution has already
happened in the Rust lowering, so `requires`/`ensures` are closed
propositions here.

```
(CALL)   c = ⟨callee, [r₁…r_k], result?, [e₁…e_m]⟩
    O   = { emit(σ, call_requires, rⱼ)  |  1 ≤ j ≤ k }
    Γ'  = Γ · result?                         -- append the result binder if present
    H'  = H · (call_..._ensuresᵢ : eᵢ)        -- 1 ≤ i ≤ m
    ────────────────────────────────────────────────────────────────
    σ ⊢ call c ⇒ σ[Γ ↦ Γ', H ↦ H'] ⊣ O
```

All `requires` obligations share the same context σ; the result binder and
`ensures` become visible only *after* them.

The executable slice-range support added for SHA3 does not add a VCGen rule.
Rust lowering turns the exact core `Range<usize>` and `RangeFrom<usize>`
`SliceIndex::{index,index_mut}` shapes into this ordinary `(CALL)`: bounds are
`requires`; immutable results equal the appropriate `Seq::subrange`; mutable
results additionally relate the initial returned view and its prophecy future
to the final owning slice. A following `copy_from_slice` is another ordinary
call whose length requirement and final-destination equality compose with
those hypotheses. Thus c168/c169 and c176/c177 are rejected by the existing
`call_requires` rule, while c164–c167 and c173–c175 use the existing post-call
hypothesis discipline. The lowering correspondence and its narrow fail-closed
match are documented in [ir.md](ir.md) and [trust.md](trust.md).

### Branches (guarded SSA join)

Branches follow Verus's path discipline. Inside an arm the path condition is a
**plain hypothesis** (so arm-internal obligations may use it directly); facts
*discovered* inside an arm reach the continuation **only under their guard**,
which reproduces the guarded SSA join. Arm-introduced binders survive
unguarded (their defining equations are the guarded facts). Arm-local reveals
die with the arm; the counters κ thread through both arms for global name
uniqueness but carry no meaning.

Let `g = condition`, and let `base = ⟨Γ, H⟩` be σ's context. Define the
then/else entry states

```
    σ_t = σ[H ↦ H · (branch : g)]
    σ_e = σ[Γ ↦ Γ,  H ↦ H · (branch : ¬g),  V ↦ V,  κ ↦ κ_after_then]
```

and run the arms

```
    σ_t ⊢ thenBranch ⇒ σ_t' ⊣ O_t          σ_e ⊢ elseBranch ⇒ σ_e' ⊣ O_e
```

Then the continuation collects both arms' new binders unguarded and both
arms' new facts guarded (the `· drop 1` skips the injected path-condition
hypothesis itself):

```
(BRANCH)
    Δ_t = Γ_{σ_t'} ∖ Γ                          -- binders introduced in the then-arm
    Δ_e = Γ_{σ_e'} ∖ Γ
    F_t = { (g → ψ)  | ψ ∈ H_{σ_t'} beyond H·(branch) }
    F_e = { (¬g → ψ) | ψ ∈ H_{σ_e'} beyond H·(branch) }
    ─────────────────────────────────────────────────────────────────────
    σ ⊢ branch g thenBranch elseBranch
        ⇒ σ[Γ ↦ Γ · Δ_t · Δ_e,  H ↦ H · F_t · F_e,  V ↦ V]
        ⊣ O_t ⊎ O_e
```

### Loops (Verus loop isolation)

A loop is discharged as an isolated arbitrary-iteration query, exactly like
the loop subquery Verus spins off. The **body sees only the iteration facts**
— the loop invariants and, for condition-bearing loops, the loop condition —
never the enclosing H; everything the body introduces (binders, facts,
reveals) is discarded. The **continuation** keeps the pre-loop binders (the
havoc symbols were introduced by `fresh` statements the lowering places just
before the loop) and assumes only the `exit` facts.

Entry-invariant checks are **not** part of this rule: the lowering emits them
as `(invariant entry …)` statements *before* the loop, so they are proved by
`(INVARIANT)` in the outer context. `break`/`continue` are likewise not loop
sub-structure — the lowering expands each site inside the body into its own
`(invariant preserve/break …)` checks and closes the path with `assume false`
(see `docs/ir.md`).

Range `for` loops reach this rule unchanged: the Rust lowering specializes
Verus's iterator desugaring into the same `loop` statement (entry/preserve
instances of the user invariants at the peek values, `lo ≤ i < hi` iteration
facts, the `hi − i` measure) before the IR is written, so no `for`-specific
generation policy exists on the Lean side — the specialization's semantic
argument is a *lowering* trust item (`docs/trust.md`).

Likewise, canonical `while` condition setup and assignment-place collection
are Rust-lowering responsibilities. Pure setup prefixes are folded before the
`loop` is emitted, borrow-resolution effects become exit facts, and a
projected write havocs its correctly typed root object. If setup contains
checked-arithmetic or user assertions, lowering puts ordinary `assert`
statements at the start of the isolated body and an ordinary `branch` on the
condition after them. The loop iteration context then contains type facts and
invariants but not the condition: safety checks are proved before learning its
value. Short-circuit checks are implication-guarded by arm reachability, and
proved setup checks join the exit facts. The VC generator still sees only the
same `fresh`/entry/`loop`/`assert`/`branch`/exit forms described by existing
rules. The 2026-07-20 SHA3 fixes added no statement form, inference rule,
axiom, or trusted arithmetic assumption; c170–c172 test the composition.

The same rule is the target of two assertion-query lowering macros.
`AssertBitVector` and `AssertQuery { mode: NonLinear }` become an
empty-exit `loop` whose iteration facts are only accumulated type facts and
whose body is the explicit query content. Thus the query cannot see the
outer H (which already contains Verus's downstream assumption of the queried
conclusion), and everything derived inside is discarded. This is a Rust
lowering correspondence, not an additional `Stmt` constructor or VC rule;
all other `AssertQueryMode` values fail closed.

Let `ℓ` be the loop ordinal. Run the body in the isolated state

```
    σ_b = σ[H ↦ { (loop_ℓ_iterationᵢ : iterationᵢ) }]      -- Γ, V unchanged; H replaced
    σ_b ⊢ body ⇒ σ_b' ⊣ O_body
```

Then

```
(LOOP)
    ────────────────────────────────────────────────────────────────────
    σ ⊢ loop iteration body exit
        ⇒ σ[Γ ↦ Γ,  H ↦ H · (loop_ℓ_exitⱼ : exitⱼ),  V ↦ V]
        ⊣ O_body
```

(In the code the successor is `σ_b'` with Γ, H, V reset to σ's — obligations
were already accumulated into `σ_b'.obligations`, which is why O_body is what
escapes while the body's local context does not.)

**Non-isolated loops** (`#[verifier::loop_isolation(false)]`, IR
`(loop noniso …)`, dalek-lite DL6). The body keeps the enclosing
hypotheses IN FRONT of the iteration facts — everything else is the
(LOOP) rule unchanged:

```
    σ_b = σ[H ↦ H · (loop_ℓ_iterationᵢ : iterationᵢ)]   -- H PERSISTS
    σ_b ⊢ body ⇒ σ_b' ⊣ O_body
(NLOOP)
    ────────────────────────────────────────────────────────────────────
    σ ⊢ loop⟨noniso⟩ iteration body exit
        ⇒ σ[H ↦ H · (loop_ℓ_exitⱼ : exitⱼ)]
        ⊣ O_body
```

This mirrors `sst_to_air`'s non-isolated recipe (havoc; assume typ_invs;
assume invs — with the enclosing context still in scope). Soundness of
keeping H across the havoc rests on the SSA-style havoc binders: the
`fresh` statements before the loop rebind modified variables to new
symbols, so surviving outer facts keep referring to the *pre-loop*
values — Verus's snapshot semantics — while the body reads the havoc
symbols, constrained only by type facts and invariants (guarded by
c190: an outer fact about a modified variable must not survive).
Which facts survive is Verus's choice, not ours to widen: the Rust
lowering recognizes exactly ast_to_sst's canonical non-isolated `while`
shape (the leading `cond_stm; if !cond {{ break }}` prefix, reconstructed
into the ordinary condition) and fails closed on any *user*
break/continue — Verus assumes nothing after a broken-out non-isolated
loop, so this rule's exit facts (at-exit invariants + ¬cond) would be
too strong for such exits.

## Program level

For a function `f = ⟨id, Θ, params, requires, body⟩` and the file's spec-fn
declarations `S`, the initial state and the function's VC set are

```
    Γ₀ = params
    H₀ = { (requiresᵢ : requiresᵢ) }
    V₀ = { (g.id ↦ 1) if g.visible else (g.id ↦ 0)  |  g ∈ S }
    B₀ = ∅
    κ₀ = 0

    VCs(f) = O   where   ⟨Γ₀, H₀, V₀, B₀, κ₀⟩ ⊢ body ⇒ _ ⊣ O
    Evidence(f₁…fₙ) = E(VCs(f₁) ⊎ … ⊎ VCs(fₙ))
```

(`generateObligations`). `V₀` seeds visibility from Verus's defaults —
ordinary spec fns revealed, `#[verifier::opaque]` ones hidden — after which
`(REVEAL)` statements adjust it per program point.

Evidence closure is module-level because one local class dictionary can serve
VCs from several functions. It does not modify σ and does not change any
per-statement rule above; it is an elaboration-obligation pass over their
already-fixed sequents. Evidence declarations are emitted in dependency order
before the logical VCs that consume them. Any unrepresentable target or
dependency cycle must fail closed rather than falling back to an ambient
instance.

The rendered machine attempt does not alter a sequent. It interleaves bounded
recursive rewrites and normalizes ground arithmetic between them; the
ladder's collection-aware simp discharger unfolds cardinality definitions
only while proving side conditions. Exact machine-clip goals additionally
split the saturation/two's-complement conditionals — `nat` and signed
clips arrive as the single-occurrence `Vermilion.natClip`/`sclip` forms
(DL8; see docs/ir.md) whose `@[simp]` defining equations first restore the
conditional shape — rewrite `Int.emod` only after proving the relevant
interval bounds, and hand the resulting polynomial branches to
`nlinarith`. A dedicated `scalar_saturate` rung (the Aeneas
`scalar_tac` counterpart, issue #35) makes bounded-array arithmetic linear:
it collapses `Seq.update` chains, instantiates bounded contract foralls —
exhaustively when their literal/`Seq.len`-pinned range is small, and at the
literal `Seq.index` indices occurring in the sequent otherwise (the DL4
indexed-operand bridge) — adds product bounds for the products that occur
(from named atom bounds), rewrites bit operations on provably in-range
operands to their arithmetic characterizations (`Bits.shr_eq_div`: logical
shift is division by a power of two; conditional simp with an `omega`
discharger), then finishes with `omega`. A `guard_split` rung (DL5)
classically case-splits on opaque propositional guards appearing as
top-level implication antecedents — the shape of Dafny-style call
contracts over constant-time `Choice` guards — which SMT backends split
at the SAT level for free; arithmetic atoms are excluded (the arithmetic
rungs own those) and the split is capped at 3 atoms. A `split_ifs_hyps`
rung repeats the conditional split over HYPOTHESES, where `?`-chain and
`checked_*` branch joins arrive as nested `iteP` facts about a call
result. Ladder
rungs carry per-rung heartbeat budgets (`scalar_saturate` gets a larger
bounded allowance; the trailing `smt` rung is uncapped). These proof-search
details are droppable: they affect automatic closure, never the proposition
or hypotheses emitted.

*Uninterpreted* spec functions (`uninterp spec fn`, IR node `specfn-opaque`)
carry no defining equation: they are emitted as Lean `opaque` constants and
seeded with visibility `0` (`g.visible = false`), so they never enter any
`unfolds` set. A *generic* uninterpreted spec fn (#19) stays ONE fixed
generic symbol — never monomorphized per call: its type parameters emit as
`{T : Type} [Inhabited T]` binders (the instance keeps the opaque's full
∀-type synthesizably inhabited even when a parameter appears only in the
return type), const generics as leading explicit `Int` binders, and every
application carries its instantiation as explicit named type arguments
(`f (T := τ) …`), because Lean cannot infer a parameter of an opaque
symbol from value arguments that never mention it (the `spec_from`/`?`
shape). Relatedly, datatype constructors whose chosen variant's fields
never mention some type parameter render that parameter as an explicit
named argument (`Result.Ok (E := τ) …`, #18) — the self-elaboration
invariant: every rendered statement elaborates under exactly its module's
imports, with no hidden context. There is nothing to reveal — reasoning about them is pure
congruence (equal arguments ⇒ equal result), which is free because they are
ordinary Lean function applications. The soundness obligation is exactly that
they stay unknown: `c114_uninterp_specfn_unknown_fail` in the differential
corpus guards that an opaque predicate at an unconstrained argument is *not*
provable, agreeing with Verus.

## Spec-function visibility and the unfold set

Every user spec fn is emitted **once** as a real Lean definition (no inlining,
no fuel); an application `f x` stays `f x` in obligations. A recursive
definition is guarded (`if _h_range : … then body else default`) on its
measures being nonnegative **and on its parameters' Verus range facts**
(the IR's `(ranges expr*)`, DL8): the Int embedding erases `nat`/machine
typing from binders, and without those facts a Verus-checked decrease can
be unprovable off-range; off-range inputs fall to `default`, a valid
reading of Verus's unconstrained off-range semantics. What varies per
obligation is which defining equations the machine attempt may use — the
`unfolds` set `U = { f | V_σ(f) > 0 }` frozen at emission time:

- **non-recursive** `f ∈ U`: its `@[simp]`-style ground equation is handed to
  `vrml` as `vrml [f, …]`;
- **recursive** `f ∈ U` with `V_σ(f) = n`: bounded rewriting — never
  simp, which would loop. All recursive unfolds of an obligation share
  ONE interleaved loop,
  `iterate N (try first | (rw [f]; try norm_num) | …)`
  with `N` the summed rounds: a mutual chain alternates definitions at
  every step, which separate per-function loops cannot follow (and
  `rw [f, g]` is sequential-all, not first-match);
- `f ∉ U` (hidden / un-`reveal`ed opaque): no equation, so an obligation that
  needs `f`'s body fails **exactly where Verus fails**.

Because V is part of σ, visibility obeys the same scoping as facts:
arm-local and body-local `reveal`s die with their scope (see the `V ↦ V`
resets in `(BRANCH)` and `(LOOP)`). This is what keeps the machine attempt
*verdict-coherent* with Verus's `reveal`/`hide` while adding nothing to the
trusted base (the equations are theorems of the emitted definitions). See
`.claude/memory/spec-fns-no-inlining-no-fuel.md`.

## What the foundational version must establish

The relation above is currently *asserted* to be a correct VC generator. The
foundational milestone replaces the trust with proof. Concretely, given

- `⟦·⟧` — a semantics of the IR statement language (state-transformer /
  program-logic denotation, built on Loom or similar), and
- a contract semantics `f ⊨ (requires, ensures, invariants, decreases)`,

the target theorems are:

1. **Per-rule local soundness.** For each rule `σ ⊢ s ⇒ σ' ⊣ O`: if every VC
   in O is valid and σ soundly abstracts the pre-states, then σ′ soundly
   abstracts the post-states of `⟦s⟧`. (I.e. σ is an over-approximation
   invariant; H are true facts, Γ ranges over reachable values.)
2. **Whole-function soundness.** If every VC in `VCs(f)` is valid then
   `f ⊨ contract` (partial correctness within the fragment). Termination for
   loops/recursion is presently imported as a side condition — the decreases
   Verus already checked — and should become a discharged obligation as the
   semantics grows.
3. **Evidence closure.** Every class dictionary used to elaborate a generated
   declaration is either synthesized constructively from the explicit
   telescope or appears in `E(O)` and is kernel-checked in the final twin. An
   unresolved placeholder can never contribute to a verified result.
4. **Coherence (differential).** The mechanized policy keeps the differential
   parity the `tests/differential/` corpus measures: same accept/reject
   verdict as Verus, including the `reveal`/`hide`/fuel behavior encoded in V.

Divergences that are *deliberately* out of scope for coherence are recorded in
`docs/ir.md` (e.g. trigger-starvation failures: our instantiation is more
complete than trigger-disciplined SMT).

## Correspondence to the code

| This document | Source |
|---|---|
| state σ = ⟨Γ, H, V, B, κ⟩ | `GenState` in `lean/Vermilion/Ir/Vcgen.lean` |
| `emit(σ, kind, c)` | `GenState.obligation` |
| `σ ⊢ s ⇒ σ' ⊣ O` | `processStmt` |
| list lift (left fold) | `processStmts` |
| initial state, `VCs(f)` | `generateObligations` |
| evidence closure `E(O)` | `EvidenceTarget`, `EvidenceObligation`, `collectEvidenceObligations` |
| class target → local Lean instance | `renderEvidenceObligation` in `lean/Vermilion/Ir/Render.lean` |
| sequent → Lean theorem | `renderObligation` in `lean/Vermilion/Ir/Render.lean` |
| recursive ground normalization | bounded rewrite block in `renderObligation` |
| statement / expression grammar | `docs/ir.md`, `lean/Vermilion/Ir/Ast.lean` |

Any change to the policy must land here, in `Vcgen.lean`, and in the
differential corpus together — the same-slice discipline `docs/ir.md`
records for grammar growth applies here too (Rust serializer, Lean parser,
grammar doc, and now this policy, in one change). This obligation is a
binding agent directive: `.claude/memory/vcgen-policy-doc.md`, referenced
from `CLAUDE.md`.
