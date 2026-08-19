On 2026-07-13 the user settled the spec-function / reveal-hide design:
**never inline spec-function bodies, and keep fuel out of the logic.**

- Function *calls* (proof/exec, statement level) stay Dafny-method style,
  as already implemented: assert the callee's `requires`, bind a fresh
  result symbol, assume its `ensures`.
- Spec fns in expressions (no contract to plug — their meaning is their
  body): the IR grows function application; every user spec fn is emitted
  as a **real Lean definition** (`termination_by` from the Verus-checked
  decreases), keeping obligations readable as `f x`; the machine prover
  receives **per-occurrence ground defining equations** as hypotheses
  (never quantified definition axioms — those are what force fuel in SMT).
  These equations are theorems of the emitted definitions: nothing is
  added to the trusted base.
- **Preserve coherence with Verus semantics when necessary** (explicit
  user directive): machine attempts must reproduce Verus's visibility
  verdicts — `hide`/`#[verifier::opaque]` suppresses the equations,
  `reveal` restores them, `reveal_with_fuel(f, n)` = n rounds of ground
  instantiation at lowering time — so differential parity is preserved.
  Interactive twin proofs may still `unfold` anything, the same escape
  hatch `reveal` gives Verus users.

**Why:** Fuel is an SMT-encoding artifact (throttling quantifier
instantiation of recursive definition axioms), not semantics; the Lean
embedding can be both fuel-free and axiom-free while staying
verdict-coherent with Verus.

**How to apply:** When implementing spec-fn support (M2 tail / M3), follow
plans/execution-plan.md's "user spec functions in spec expressions"
design TODO, which records this staging in full. Do not inline bodies at
lowering time; do not emit quantified definition axioms; do not add fuel
constants to the IR or the Lean prelude. Related: [[foundational-vcgen]],
[[lean-side-ir-parsing]].
