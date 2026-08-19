# Chapter 6: Backwards Compatibility of the Verus Specification Language — Feasibility of a Close Shallow Embedding

**Requirement (locked):** Vermilion is backwards-compatible with the Verus specification language.
Source-level compatibility is automatic — we keep Verus's front end, so `verus!{}` specs parse and
mode-check exactly as today. The question this chapter answers is *semantic*: can every spec-mode
construct be given a **shallow Lean embedding** (ordinary Lean terms and types, no syntax trees)
whose meaning coincides with Verus's SMT semantics closely enough that (a) existing specs verify
with unchanged meaning, and (b) the emitted goals read like the specs that produced them?

**Verdict up front: feasible, with four corners that need care** (partial spec functions,
division/mod conventions, machine-int clipping, spec closures over `int`). Nothing requires a deep
embedding; every corner has a standard Lean technique. The construct-by-construct analysis:

## 6.1 Straightforward (identical semantics)

| Verus spec construct | Lean image | Notes |
|---|---|---|
| `bool`, `&&&`/`|||`, `==>`, `<==>` | `Prop`/`Bool` connectives | Verus specs are two-valued; embed at `Prop`, decidability instances where testing needs them (Velvet's pattern) |
| `int` | `Int` | exact match — Verus `int` *is* mathematical ℤ |
| `nat` | `Nat` (or `{i : Int // 0 ≤ i}`) | `Nat` preferred: mathlib automation; coercions mirror Verus's `int`↔`nat` clipping |
| `forall|x| P`, `exists|x| P` | `∀ x, P` / `∃ x, P` | triggers ignored (ch. 4); semantics identical |
| datatypes, `match`, ctors | inductives, `match` | field/variant accessors (`get_variant`) derive mechanically |
| `Seq<T>`, `Set<T>`, `Map<K,V>`, `Multiset<T>` | `Vermilion.Seq` etc. | vstd's axioms become proved lemmas **with the same names** (e.g. `axiom_seq_push_index_same` → theorem), so proofs citing them port verbatim. `Set`/`Map` are possibly-infinite → `Set α`, `K → Option V`-style maps; `Seq` over `List`/`Array` with `int` indexing (out-of-range = arbitrary, see §6.2) |
| `old(x)` | explicit pre-state parameter | two-state predicates take both states — same as Verus's `VarAt(x, Pre)` |
| `=~=`, `=~~=` (ext. equality) | `funext`/`Set.ext`-backed lemmas | Lean has genuine extensionality; the operator becomes provable equality — *strictly better* than Verus's axiomatized ext-eq |
| `spec_fn(A) -> B` (spec closures) | `A → B` | first-class functions are native; see §6.2(d) |
| `choose|x| P` | `Classical.choose` / `Epsilon` | same "some witness if one exists, arbitrary otherwise" semantics; noncomputable, which is fine for spec mode |
| `recommends` | metadata only | recommends-checking becomes a separate best-effort goal family, as in Verus |
| `Ghost<T>`/`Tracked<T>` decorations | erased at spec level | type decorations only; `TypDecoration` already erases them for SMT |

## 6.2 The four corners

**(a) Partial spec functions (`decreases … when P`).** Verus spec functions with a
`decrease_when` guard are *underspecified outside the guard*: `f(x)` is some unknown value when
`¬P(x)`. Shallow Lean image: define `f` by well-founded recursion **on the guarded domain** and
return `Classical.arbitrary` outside it —

```lean
noncomputable def f (x : Int) : Int :=
  if h : P x then wfBody x h else Classical.arbitrary
```

with the equation lemma exported only under `P x`. This reproduces Verus's semantics exactly
(definition axiom guarded by the `when` clause). Cost: such functions are `noncomputable`, and
their termination argument must be re-run by Lean's WF machinery — for the rare cases where
Lean's WF recursion balks at Verus's lexicographic measures, fall back to defining `f` via
`WellFounded.fix` on the measure Verus already checked. **Feasible; localized effort.**

**(b) Division/mod conventions.** Verus uses **Euclidean** div/mod on `int` (prelude's
`EucDiv`/`EucMod`), with SMT-LIB's `x div 0`/`x mod 0` underspecified — Verus's prelude leaves
division by zero uninterpreted. Lean's `Int.ediv`/`Int.emod` are Euclidean **and total**
(`x / 0 = 0`). Two options: (i) adopt Lean's totalized convention — risks silently *proving more*
than Verus (a spec relying on `x/0`'s indeterminacy changes meaning); (ii) mirror Verus with an
uninterpreted-at-zero wrapper (`Vermilion.ediv x y = if y = 0 then divZero x else x.ediv y` with
`divZero` opaque). **Recommendation: (ii) at base camp for fidelity, with a lint suggesting the
totalized form; revisit after the differential harness measures how often it matters.** Same
treatment for `%`, bit-shifts beyond width, and `nat` subtraction (Verus clips at 0 — matches
`Nat.sub` exactly, no wrapper needed).

**(c) Machine integers.** Verus encodes `u64` etc. as `Int` plus range axioms, with explicit
clip/overflow obligations (`uClip`, `OverflowBehavior`) — *not* as bit-vectors, except inside
`by(bit_vector)`. The closest shallow image is the same design: `u64` ↦ `Int` (or a subtype
`UInt64' := {i : Int // 0 ≤ i ∧ i < 2^64}`) with clipping functions and side-condition goals,
**not** Lean's `UInt64`/`BitVec 64` (whose wrapping arithmetic differs from Verus's
overflow-checked semantics). `BitVec` enters only as the `by(bit_vector)` bridge: an alternative
VC restating the obligation over `BitVec w` with a proved `Int`↔`BitVec` transfer lemma, then
`bv_decide`. **Feasible; the transfer lemma library is a known, bounded work item** (mathlib's
`Int`/`BitVec` bridges cover much of it).

**(d) Spec arithmetic inside closures and generics.** Verus spec code freely mixes `int` with
generic type parameters and vstd collections; the Lean image needs the same implicit-coercion
comfort (`u64 → int` widening inside specs). Lean's coercion machinery handles this, but emitted
goals must apply coercions *the way Verus's type checker did* (the VIR already records them —
`TypDecoration` and clip nodes), so the emitter never guesses. **Feasible mechanically; the rule
is: coercion placement is read off VIR, never re-inferred.**

## 6.3 The compatibility contract and the `verus2vermilion` translator

The locked contract (per the planning brief) is precise about what must survive unchanged:

- **Exec Rust code is identical.** Vermilion never requires touching executable code — the same
  `verus!{}` files compile with the same erasure.
- **Annotations may differ.** Vermilion's spec dialect is *similar* to Verus's syntax-wise but is
  not obligated to be identical: it is free to **drop the SMT-era scripting layer** — trigger
  annotations (`#[trigger]`, `#![auto]`, trigger groups), `#[verifier::rlimit]`,
  `#[verifier::spinoff_prover]`, `#[epr_mode]`, prover-selection incantations, inline AIR — and
  may later add Vermilion-native elements (lemma-hint sets, discharger directives).
- **Migration is mechanical**: a **deterministic translator** (`verus2vermilion`) rewrites Verus
  annotations into the Vermilion dialect. Deterministic means: same input → same output, no
  heuristics, so the entire Verus test suite and any downstream project can be migrated
  reproducibly and the diffs reviewed. In the common case the translation is the identity;
  scripting elements are dropped (each dropped element recorded in a translation report);
  convention corners (§6.2) translate to their named prelude forms.

Operationally, Vermilion's front end (shared with Verus) still *accepts* raw Verus syntax — the
translator is about normalization and suite migration, not a gate. This keeps both modes cheap:
run a Verus file directly (scripting ignored with warnings), or migrate it once and live in the
clean dialect.

**Testable invariants**, enforced by the differential harness
([`../04-implementation-plan/05-testing-harness.md`](../04-implementation-plan/05-testing-harness.md))
over the **entire** Verus test suite and vstd:

1. **Acceptance compatibility**: every spec construct Verus accepts, Vermilion accepts directly
   or via `verus2vermilion` (exec code byte-identical either way).
2. **Meaning compatibility**: on tests designed to fail (Verus's `assert_fails` oracle tests),
   Vermilion also fails — the embedding/translation never strengthens or weakens specs (the
   §6.2(b) convention choices are exactly what this guards).
3. **Name compatibility**: vstd lemma names survive (`seq_lib`'s lemma names appear as Lean
   theorems), so `broadcast use` sets and proofs referring to them port without rewriting.
4. **Translator determinism and idempotence**: `t(t(x)) = t(x)`, byte-stable across runs;
   translated files carry no dropped-element regressions (the report lists every drop).

**Terminal goal (locked): the entire Verus test suite is covered** — every test either passes
under Vermilion (directly or after deterministic translation of its annotations), or is
explicitly dispositioned as testing dropped SMT machinery (profiler flags, trigger-selection
diagnostics, solver options), with the replacement behavior documented. No silent exclusions.

## 6.4 What we deliberately do *not* promise

- **Trigger-annotation semantics** (`#[trigger]` changing what verifies): out of scope by design;
  the translator drops them (direct mode ignores them with a warning). Programs whose
  verification *depends* on trigger gymnastics may verify differently — usually better,
  occasionally requiring a Vermilion lemma hint, which the translation report flags.
- **`by(compute)` timing behavior**: `decide`/`native_decide` have different performance
  envelopes than Verus's interpreter; semantics agrees, resource behavior doesn't.
- **Inline AIR**: no image; rejected with an error (later: inline Lean).
- **Verbatim SMT performance**: statements are compatible; proof *effort* may redistribute.

## 6.5 Feasibility bottom line

The Verus spec language was designed to be "pure, total mathematical functions with no heap" —
i.e., it is already 90% a fragment of Lean. The shallow embedding is not a research risk; it is a
careful engineering exercise whose four corners (§6.2) have known techniques and bounded scope.
The one *systemic* discipline it imposes: every convention choice (div-by-zero, clipping,
coercions) must be recorded as a named lemma-visible definition in `Vermilion/Prelude`, so that
fidelity questions are answerable by reading one file — and testable by invariant 2 above.
