# 2026-07-21 — dalek-lite handover to the next agent

Append-only handover written at the close of the DL8 phase-2 session. It
records (a) exactly where the dalek-lite sub-project stands, (b) what is
committed and safe to build on, (c) the concrete next actions for
dalek-lite, and (d) the other Vermilion stages that still need
implementation. Authoritative companions: `case-studies/dalek-lite/PLAN.md`
(the DL slice agenda), `docs/reports/dalek-lite-layer-a-scoreboard.md` (the
measured scoreboard), `plans/execution-plan.md` (queue item 0), and the
prior session log `logs/2026-07-20-dalek-lite-dl8-layer-a.md`.

## 1. What dalek-lite is and the success criterion

`Beneficial-AI-Foundation/dalek-lite` (pin `de9ebf015`, BSD-3-Clause) is the
production curve25519-dalek fork with a complete in-source Verus
verification and the benchmark artifact of the CryptoProver paper. Vermilion
is reproducing that result with a **strictly smaller trusted base**: the Lean
kernel instead of Z3, and the crate's 48-`axiom_*` trusted floor
progressively *proved* against Mathlib rather than assumed. The pin lives in
`case-studies/dalek-lite/fetch_upstream.sh` and the case README — **never
re-pin implicitly.**

## 2. DL slice status (see PLAN.md for the full table)

- **DL0–DL7: DONE** (2026-07-20). Acquisition + probe matrix; per-function
  lowering isolation; `choose`; the `calc!` macro-span colocation fix (Verus
  fork bump); the Bits bridge for indexed operands; `assume_specification`
  breadth; non-isolated loops; and the vstd-drift assessment (verdict: zero
  vstd drift affects the crate).
- **DL8: IN PROGRESS.** The 9-module field cone lowers and emits end to end
  — 416/454 functions, ~5,215 clause-level VCs. The from_bytes OOM was fixed
  at the root (linear `natclip`/`sclip` IR forms, committed). The scoreboard
  is published. **Phase 2 (closing the VCs) is the open work.**
- **DL9–DL11: not started.** Module ladder (Scalar → Montgomery/Edwards →
  Ristretto), trusted-floor discharge against Mathlib `ZMod`, and the 3
  residual nonlinear obligations.

## 3. What is committed and safe (as of this session)

All verifier/infrastructure work is committed and pushed on `master`:

- The DL8 lowering fuse + linear `natclip`/`sclip` IR forms (from_bytes OOM
  fix), the `(ranges …)` recursive guards, the classical fallback for
  opaque-`Prop` `iteP` guards.
- `#51` (ladder SIGABRT from `scalar_saturate` multiplying the whole
  context — replaced with a closed-form `mul_lt_mul''` bound + entry guard);
  **CLOSED**.
- `#54` (`vrml_gen --generated-root`, collision-qualified stems); **CLOSED**.
- Per-rung budget knobs (`vermilion.rungBudget/saturateBudget/smtBudget/
  smtTimeout`) and the `--smt-timeout` plumbing through `run_example.sh`.
- Issue `#55` filed (learn automation from the accumulated interactive twin
  proofs — the visionary feedback loop).

**Twins committed this session** are the Layer Set A `proofs/` units that
build cleanly. Every proof body in the committed twins is either a genuine
kernel-checked proof (the `vrml` ladder closed it, or a hand proof) **or an
explicit `sorry`** marked `-- vrml:interactive (automation did not close
this; hand proof pending)`. There are **no failing `vrml` bodies left in the
tree** — the untracked in-progress twins were adjudicated module by module,
the ones that verify were kept, and every obligation whose automation did
not close was turned into a marked `sorry` so the whole
`CaseDalekLiteLayerA` lib builds. See section 6 for the exact per-file
tally.

The uncommitted `case-studies/aeneas/**/Specs.lean` change is **deliberately
left untouched** — `case-studies/aeneas/` is read-only/user-owned per the
standing directive; do not stage it.

## 4. The dalek-lite frontier — where the hard work is

The field-value core is genuinely hard math, **not** an automation-budget
problem (established empirically at up to 4M heartbeats):

- The `sub`/`reduce`/`mul`/`pow2k`/`square2`/`from_bytes` core obligations
  are `u64_5_as_nat` field-value-preservation identities plus
  constructed-limb bounds. The overflow lemmas ARE in scope as hypotheses
  (e.g. `call_lemma_field_add_16p_no_overflow_ensures_0..9`), so each is
  provable, but each needs a bespoke interactive proof.
- The 26 lemma/spec files (`field_lemmas_mul_lemmas` — `lemma_mul_value`
  alone is 52 huge obligations) are the nonlinear ghost cone. These are the
  documented `#55`/residual-nonlinear frontier and are almost all `sorry`
  today.
- Per policy (`interactive-proofs-first-class`), leaving these as marked
  interactive `sorry`s is **not a failure**: automation failure is cheap and
  legible, and the twin is the idiomatic escape hatch. The next milestone is
  to twin the *executable* file surface (once `mul`/`pow2k`/`sub`/… are
  twinned, the whole runnable field file is kernel-verified).

### Open dalek-lite issues (blockers / frontier)

- **`#49`** carry decreases measures for cross-module recursive spec fns —
  the 37 refusals in the DL8 disposition count come from this export gap.
- **`#53`** share substituted values in the lowering instead of duplicating
  them (the 1 substitution-budget refusal).
- **`#52`** ladder rung for Seq extensionality (elementwise ⇒ whole equality)
  — recurring in the conditional/select twins.
- **`#55`** learn proof automation from the accumulated interactive twin
  proofs — the strategic lever: as the field-value twins get hand-proved,
  mine them into ladder lemmas/rungs so the *next* module costs less.

### Do-NOT-do (settled user policy, recorded in PLAN.md §"Deliberately not needed")

Do not change `Render.lean` or any verifier component to *trim* the emitted
unfold list per obligation — that was tried this session (a
`referencedSpecFns` reference-closure trim) and **reverted**: the closure was
incomplete and dropped spec fns obligations genuinely needed, regressing
`sub` from 15→50 failing obligations. If the unfold-list bloat is worth
attacking, do it as a *sound superset* computation with differential
coverage proof, not an ad-hoc filter. Also: no `verus2vermilion`; `calc!`
step scripts / triggers / `rlimit` / fuel get no faithful lowering.

## 5. Concrete next actions for dalek-lite (in order)

1. **Twin the executable field file.** Hand-prove (or ladder-close) the
   remaining `sorry`s in the exec units — priority `sub`, `reduce`, `mul`,
   `pow2k`, `square2`, `from_bytes` — using the in-scope overflow/no-overflow
   call lemmas as hypotheses. Each proof is a `u64_5_as_nat` identity; the
   pattern is: unfold `u64_5_as_nat` + the limb accessor globally, `obtain`
   the conjunctive bounds, then `omega`/`nlinarith` with the specific
   overflow hypotheses. (Watch the two traps this session hit: `simp_all`
   silently CLEARS materialized bound hypotheses — use goal-only `simp` +
   explicit bounds; and the `.1` projection vs `get_FieldElement51_limbs`
   accessor atom mismatch — keep the accessor unfolded on both sides.)
2. **Feed proved patterns back (`#55`).** Every twin that closes a
   field-value identity should become a `@[grind]`/`@[simp]` prelude lemma
   or a ladder rung so sibling obligations close automatically. This is the
   M4 "Lean way" and the recursively-improving loop the user asked to make
   visionary.
3. **Re-sweep + refresh the scoreboard** (`docs/reports/
   dalek-lite-layer-a-scoreboard.md`): times, per-row auto-verified /
   interactive X/Y, and the "Lean LOC after VCs" column, once more proofs
   land. `scripts/…` sweep tooling and the scratch `check_all.sh`/`menu.sh`
   helpers from this session are the starting point (they were scratchpad
   tools, not committed).
4. **Then DL9** (module ladder) and **DL10** (trusted-floor discharge — can
   proceed in parallel as a pure Lean-library workstream, nothing enters the
   TCB; follow upstream `docs/feasibility_lean_comparisons.md`).

## 6. Per-file commit tally (this session)

Each untracked Layer Set A twin was built in a fresh process and adjudicated
per obligation: obligations the `vrml` ladder closed are kept as genuine
kernel-checked proofs; every obligation it did not close was replaced by a
marked interactive `sorry`. The committed set builds green (warnings only).
Newly committed: **171 kernel-proved VCs + 140 marked interactive `sorry`s
across 16 twin units** (311 obligations), on top of the 13 VCs committed at
`755e20e` (add, the three conditionals, `m`).

**Three units held back** (not in the tree; they cannot build for reasons
unrelated to their proofs):

- `square2` (33 provable VCs) and `lemma_mul_boundary` (39 VCs) — the emitter
  assert-id collision (issue `bit-vector-assert-id-collision` / `docs/issues/`):
  two distinct `by (bit_vector)` asserts in one function emit the same Lean
  declaration name, so the unit declares a `theorem`/`_meta` twice. Re-emit +
  re-adjudicate after the emitter disambiguates the ids recovers both.
- `mul` (105 obligations, 0 committable) — its obligation **statements** are
  so large that `whnf`/`isDefEq` blows the default 200000-heartbeat budget
  *while type-checking the statement itself* (independent of the proof, so
  `sorry` cannot rescue it). This is a direct symptom of `#53` (the lowering
  duplicates substituted subterms instead of sharing them), which explodes
  the multiply's obligation types. Needs `#53` (statement-size reduction) or
  a per-file `maxHeartbeats` bump in the twin.

`field_u64` (executable field arithmetic):

| unit | obligations | proved | interactive `sorry` |
|---|---:|---:|---:|
| clone | 1 | 1 | 0 |
| from_limbs | 1 | 1 | 0 |
| mul_assign | 2 | 2 | 0 |
| sub_assign | 4 | 4 | 0 |
| neg | 5 | 5 | 0 |
| square | 5 | 5 | 0 |
| add_assign | 16 | 12 | 4 |
| negate | 17 | 14 | 3 |
| from_bytes | 25 | 0 | 25 |
| reduce | 32 | 21 | 11 |
| sub | 50 | 35 | 15 |
| pow2k | 84 | 25 | 59 |
| **subtotal** | **242** | **125** | **117** |
| *square2 (held back — collision)* | *40* | *33* | *7* |
| *mul (held back — statement size / #53)* | *105* | *0* | *105* |

`field_lemmas_mul_lemmas` (nonlinear ghost cone):

| unit | obligations | proved | interactive `sorry` |
|---|---:|---:|---:|
| mul_c_i_shift_bounded | 6 | 6 | 0 |
| mul_term_product_bounds | 7 | 7 | 0 |
| mul_c_i_0_bounded | 4 | 3 | 1 |
| mul_value | 52 | 30 | 22 |
| **subtotal** | **69** | **46** | **23** |
| *mul_boundary (held back — collision)* | *39* | *0* | *39* |

`from_bytes` is all-`sorry` (it timed out per-obligation adjudication at a
300s budget — the limb-recombination goals are the heaviest; treat it as
fully interactive until the `#55` learned automation or a hand pass reaches
it). The `Specs.lean` in each directory is the shared datatype/spec-fn
module (imported by every unit; no obligations of its own).

## 7. Other Vermilion stages still to implement (beyond dalek-lite)

These are the standing, non-dalek work items (authoritative:
`plans/execution-plan.md` and `docs/issues/`):

- **Foundational VC generator (`#3`, the big one).** Today `Ir/Vcgen.lean` +
  `Render.lean` syntactically pretty-print obligations and trust the Rust
  lowering. The user's durable directive (`foundational-vcgen`) is to give
  the neutral IR a formal semantics and derive a VC generator proved sound
  against it — built on **Loom** (verse-lab, already a transitive Lake dep
  via Veil), not from scratch. `docs/vcgen.md` is the normative spec the
  foundational generator must reproduce, and it MUST be kept in sync with
  the code in the same slice as any VC-gen change (agent discipline; no CI
  guard).
- **Whole-crate acquisition artifact routing** (the
  `whole-crate-acquisition-generated-root` issue) — the field cone is
  `#[path]`-mounted from the untracked upstream clone; `--generated-root`
  handles Layer Set A but the general whole-crate story is still open.
- **Coverage scoreboard for M3/M4** — DL1 (per-function isolation) was its
  prerequisite and is done; the measured gate-coverage scoreboard over the
  unmodified Verus suite is still to be built.
- **Editor / UX issues**: `#4` goal-state hover, `#5` ladder introspection,
  `#7` why-did-this-fail, `#15`/`#36` twin-typecheck highlighting, `#26`
  go-to-Lean for `bounded_arithmetic.rs`.
- **Fragment gaps**: `#21` unary `BitNot`, `#23` std `Ord` min/max default
  bodies, `#30` HashMap entry API, `#38` iterator `for` loops, `#48`
  bool-parameter Decidable evidence, `#27` statics/atomics semantics.
- **Tooling / platform**: `#6` proof caching, `#39`/`#53` share obligation
  contexts & substituted values, `#41` upgrade to Lean 4.32 + drop Veil,
  `#50` Vermilion as a standalone tool, `#1`/`#2` AI-assisted interactive
  proof construction & batch assist, `#12` per-case-study runnable harness.
- **Paused: Aeneas SHA-3** (execution-plan queue item 1). The permutation
  layer is green (198/198 obligations, 25 twins); absorb/squeeze, the sponge,
  the six public functions, and the `Sha3.Spec` bridge remain research
  targets. `case-studies/aeneas/` is **read-only** — resume only on explicit
  user direction.

## 8. Build / verify quick reference

- Everything: `./scripts/build.sh` (Lean → Rust → pinned Verus + adapter).
- The dalek-lite Layer A twins: `lake build CaseDalekLiteLayerA` (builds the
  `proofs/` units; a `sorry` is a warning, not a build failure).
- Re-emit Layer Set A: `case-studies/dalek-lite/run.sh` (routes generated/ +
  twins into the tracked tree via `--generated-root`; `--expect-partial`
  because the DL8 frontier refusals are expected).
- The Verus pin is auto-cloned by `setup_verus.sh` into
  `~/.cache/vermilion/verus` and linked as `.verus-checkout` — hardened this
  session to fail closed and stamp only after a real build (a cache-on-wrong-
  rev trap bit us once; if `lake`/Verus acts up, check the linked rev first).
