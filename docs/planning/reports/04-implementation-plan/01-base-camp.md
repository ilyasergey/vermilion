# Chapter 1: Base Camp — the Fastest Useful Vermilion

Base camp is the first externally meaningful milestone: **a working verifier, driven by the real
Verus front end, that verifies a large fraction of Verus's own example corpus with Lean as the
backend** — reached by aggressively deferring everything that does not serve that goal.

## 1.1 Scope: the base-camp fragment

**In:**

- spec/proof/exec functions with `requires`/`ensures`/`returns`; `assert`/`assume`/`assert by`;
  `proof` blocks;
- the full spec expression language of
  [`../02-verus-architecture/06-spec-language-compat.md`](../02-verus-architecture/06-spec-language-compat.md):
  `int`/`nat`/machine ints with overflow/bounds obligations, `bool`, datatypes + `match`,
  `Seq/Set/Map/Multiset`, quantifiers, `choose`, spec closures, `old()`, extensional equality;
- recursive spec functions with `decreases`/`decrease_when`/`decrease_by`; recursive
  proof/exec functions with decreases checks;
- loops with invariants (`while`, `loop`, `for` with inferred invariants), `loop_isolation`
  semantics as in Verus;
- `&mut` **as function parameter** with `old()` (Verus's classic restriction; general `MutRef`
  deferred to Stage 6);
- calls, generics **monomorphized-style at the emitter level where trait machinery is not yet
  ported** (see 1.3), `external_body`, `assume_specification`, `admit`;
- `opaque`/`reveal`/`reveal_with_fuel`/`hide`; broadcast lemmas *as explicit lemma sets* (the
  automatic ambient-instantiation UX can lag);
- vstd's mathematical core re-based on the Vermilion prelude (`Seq/Set/Map/Multiset` + arithmetic
  lemma libraries), with the rest of vstd consumed via `external_body`/axiomatized specs.

**Out (deferred, stubbed via `external_body` or clean errors):** trait specs in full generality,
exec/spec closures with contracts, tokenized state machines, invariants/atomics, `PointsTo`
types, `by(bit_vector)`/`by(nonlinear_arith)`/`by(integer_ring)`/`by(compute)` (accepted but
routed to the generic ladder with a warning), general `MutRef`, async, floats, strings beyond
literals, `verus-tla`.

## 1.2 The gate

Measured by the differential harness ([`05-testing-harness.md`](05-testing-harness.md)):

1. **≥ 2/3 of the Verus example files that use only the base-camp fragment verify** (the fragment
   inventory puts ~90 of the 148 example files in scope; gate = 60+ verifying, including
   `mergesort.rs`, `vectors.rs`, `recursion.rs`, `quantifiers.rs`, the guide examples, and
   summer_school chapters 1–2);
2. **Verus oracle tests for the fragment pass with matching verdicts** (accept/reject parity on
   the relevant `rust_verify_test` subsets — target ≥ 90% verdict parity, every mismatch triaged);
3. **Vest verifies end-to-end** (first real library) and **IronKV's marshalling module** verifies
   (first real-system module; full IronKV refinement may slip to Stage 3 if trait usage blocks);
4. **Wall-clock sanity**: median per-function verification ≤ 10× Verus on the passing set, and
   the edit-loop latency target of [`06-ide-experience.md`](06-ide-experience.md) (< 5 s for a
   one-function change) holds on Vest.

Every criterion is a number the harness prints; "large fraction of Verus's own examples" is
criteria 1+2.

## 1.3 The fast path (what gets built, in order)

Sequenced for de-risking, matching the porting order of
[`../02-verus-architecture/03-reuse-boundary.md`](../02-verus-architecture/03-reuse-boundary.md) §3.3:

**Step 0 — obligation calibration spike (weeks, not months).** Before any emitter exists: take
20 representative Verus functions, hand-write their Lean obligations over a draft prelude, and
run the discharger ladder (`grind`, lean-smt on cvc5 *and* Z3, `omega`). This measures the
automation gap on real obligations — the plan's biggest unknown — while the emitter is still
cheap to redesign. (A quick-and-dirty AIR→Lean printer is an acceptable spike accelerator; it is
explicitly *not* the product architecture.)

**Step 1 — prelude + type translation** (`Vermilion/Prelude`, `Vermilion/Types`): the §6.2
convention decisions, `Seq/Set/Map/Multiset` with vstd-compatible lemma names, datatype
derivation.

**Step 2 — `sst_to_lean` for straight-line code**: requires/ensures/assert/assume/calls with
`%req`/`%ens` summaries; deterministic naming + span metadata. Oracle: the `assert_id`-labeled
subset of Verus tests.

**Step 3 — loops, recursion, decreases.** Loop-isolation faithful to Verus (separate obligation
per loop body, havoc modified vars).

**Step 4 — manager integration**: Veil manager instantiation, discharger ladder, `@[vermilion]`
override, JSON diagnostics bridge. First end-to-end `vermilion foo.rs` run.

**Step 5 — vstd math core port** + broadcast-lemma sets; example-corpus burn-down begins and the
gate is measured weekly from here.

**Step 6 — hardening**: incremental re-emission, caching, parallel discharge, error-message
polish (`expand_errors`-equivalent via goal decomposition), IDE watch mode.

## 1.4 What base camp deliberately proves about the whole project

- The **automation thesis**: Lean's ladder can replace e-matching-with-triggers on the sequential
  fragment (Step 0 measures it before we're committed; the IronKV module and quantifier-heavy
  examples confirm at gate time).
- The **compatibility thesis**: unchanged front end + shallow spec embedding + name-compatible
  vstd = existing Verus code runs (criteria 1–3).
- The **performance envelope**: the 10× budget (vs. Verus's sub-second modules) either holds —
  or the risk register's performance mitigations activate *before* the ghost-state stages
  multiply the obligation count.
