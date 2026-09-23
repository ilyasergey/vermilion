# dalek-lite execution agenda (DL series)

*Set 2026-07-20 by user direction: implement every Vermilion feature this
codebase needs, one slice at a time. After each slice: update logs,
documentation, differential tests, examples, the probes here (flip
`--expect-unsupported` off as the fragment catches up), and the READMEs;
then commit and push; then take the next slice.*

Companion: [README.md](README.md) (provenance + measured probe matrix). The
goal statement and the CryptoProver comparison live there. The repository's
operative queue is `plans/execution-plan.md`; this file is the dalek-lite
view of it.

## Success criterion

Reproduce CryptoProver's result with a strictly smaller trusted base: the
same unchanged executable crate, the same API contracts, every obligation a
kernel-checked Lean theorem (no Z3), and the 48-`axiom_*` trusted floor
progressively *proved* against Mathlib instead of assumed — anything
unprovable stays an explicit ledger axiom. Effort is reported against
CryptoProver's published numbers (11.4 h / $467 field-floor; 1,430/1,433
whole-crate; 3 residual nonlinear obligations — "An AI Approach to Verified
Production Cryptographic Libraries", arXiv:2608.00965).

## Ordered slices

Each slice lands with the same-slice discipline (adapter + IR/`docs/ir.md` +
Lean + `docs/vcgen.md` when VC shapes change + differential guards + example
or probe + docs), and flips the corresponding probe line in `explore.sh`.

| # | Slice | Driver probe / evidence | Status |
|---|---|---|---|
| DL0 | Acquisition: pin, probes, measured matrix, agenda | this folder | **DONE 2026-07-20** |
| DL1 | **Per-function lowering isolation**: continue past a refused function, emit lowered siblings, record source-mapped per-function dispositions in the manifest (`(refused …)` IR form); a refused *spec fn* fails exactly its consumers (the registry caches only successes and per-function state is reset on entry). Fully-refused files keep the historical whole-run refusal. Also the M3/M4 scoreboard prerequisite. | `isolation_driver.rs` → 1 verified + 1 disposition; suite guard `scripts/test_lowering_isolation.sh` | **DONE 2026-07-20** |
| DL2 | **`choose`** (S3 alignment): `Vermilion.chooseSpec` (Hilbert choice over the guard-conjoined predicate, `default` fallback — Verus's skolem + `as_type`); per-occurrence conditional characterizing hypotheses (docs/vcgen.md `(CHOOSE)`); one scalar binder, tuple/non-var bodies fail closed | `field_sqrt_choose.rs` 1/1 automatic; c182/c183 | **DONE 2026-07-20** |
| DL3 | **`calc!` colocation defect**: fixed at the span's origin — fork `486008364` resolves macro-expansion spans to their source call site in `to_air_span` (pin bumped to `48600836424a`); no calc!-specific machinery | `montgomery_inverse_calc.rs` 4/4 automatic; fork basic 62/0/1, functions 11/11, vstd 1972/0; corpus 182/182, 89/89 | **DONE 2026-07-20** |
| DL4 | **Bits bridge for indexed operands** (#35 continuation): general-width `shr_eq_div`/`band_two_pow_sub_one_eq_mod` characterization lemmas in `Vermilion.Bits`; `scalar_saturate` instantiates contract foralls at occurring `Seq.index` literals and rewrites in-range shifts to divisions (conditional simp, `omega` discharger) | `ghost_high_byte.rs` 3/3 automatic, twin byte-identical; c184/c185; `m4-bitvec` extended | **DONE 2026-07-20** |
| DL5 | **`assume_specification` breadth**: qualified trait-method targets (`<u64 as Trait>::m`, `&mut`+`old()`) lower as-is with a new `guard_split` ladder rung for `Choice`-guard case splits; generic + const-generic targets ride on generic *uninterp spec fns* landing as one fixed generic symbol with explicit IR type args (#19, also unblocking percolator's `?` driver); constructor type-argument ascription fixes #18's stuck-`Inhabited` statements; `&str` lowers as `Vermilion.StrSlice` | `subtle_assumes.rs` 3/3, `core_assumes.rs` 1/1 (+2 contract-free), c186–c188 | **DONE 2026-07-20** |
| DL6 | **`loop_isolation(false)`**: the (NLOOP) rule — the loop body keeps the enclosing hypotheses in front of the iteration facts (sound under the SSA-style havoc binders: outer facts about modified vars keep referring to pre-loop symbols); non-isolated `while` is recognized from ast_to_sst's canonical conditional-break prefix and reuses the while machinery; user breaks fail closed (Verus assumes nothing after a broken-out non-isolated loop); IR `(loop noniso …)` | `count_loop_isolation.rs` 5/5 automatic; c189/c190 | **DONE 2026-07-20** |
| DL7 | **vstd drift assessment** (Jan `88f7396` → Jul pin): mechanical sweep of the crate's full vstd surface (383 import sites; 918 called lemma names; bits/arithmetic/seq/calc modules). **Verdict: zero vstd drift affects dalek-lite** — every reachable vstd symbol exists in our July vstd unchanged; the crate's 800+ own lemma layer is self-contained. The DL0 "drift point" was a misattribution: `lemma_mul_le` is crate-local, not vstd. Only accommodation at crate scale: the front-end mut-ref migration (`*x` → `*final(x)`), mechanical | `docs/reports/dalek-lite-vstd-drift.md` | **DONE 2026-07-20** |
| DL8 | **Layer Set A acquisition**: the 9 field-representation/reduction modules end to end, whole files, per-function dispositions; publish the first automation-rate scoreboard vs CryptoProver's layer results | upstream `specs/field_specs*.rs`, `backend/serial/u64/field.rs`, … | **Partial.** Acquisition and whole-crate routing have landed; eight explicit proof holes remain in four units (2026-09-23 source audit). Resolve collisions/holes and record a fresh successful check. See [current status](README.md#current-verification-status) and [scoreboard](../../docs/reports/dalek-lite-layer-a-scoreboard.md). |
| DL9 | **Scalar → Montgomery/Edwards → Ristretto ladder**: follow CryptoProver's own staging up the proof cone | upstream modules | pending DL8 proof completion and reassessment of refused functions |
| DL10 | **Trusted-floor discharge**: port `axiom_*` statements to Lean theorems over Mathlib `ZMod`, following upstream's `docs/feasibility_lean_comparisons.md`; every proved axiom shrinks the trust base below both the human reference and CryptoProver | upstream `lemmas/**/axioms.rs` (48 admits) | independent; can start anytime |
| DL11 | **The residual frontier**: attack the 3 Ristretto/Lizard nonlinear obligations interactively | upstream open admits | after DL9 |

Ordering notes: DL1 first (everything at crate scale needs it); DL2–DL6 are
independent and sized for single slices; DL7 before any whole-module
acquisition; DL10 can proceed in parallel as a Lean-library workstream (the
M4 way — nothing enters the TCB).

Layout: all probes live in `probes/` with twins in `probes/proofs/`
(library `CaseDalekLite`) and machine output in `probes/generated/`
(untracked). The case-study root contains the Layer Set A acquisition, its
tracked `proofs/` twins, and disposable `generated/` output. Mounted source
files are verbatim; field-source accommodations are documented in the
[scoreboard](../../docs/reports/dalek-lite-layer-a-scoreboard.md#verification-subject-fidelity).

## Deliberately not needed (user policy, 2026-07-20)

Verus features whose only role is steering Z3 get **no faithful lowering** —
the Lean twin does that work directly, and the standing hints policy already
makes such artifacts droppable:

- `calc!` **step justifications**: the chain's intermediate claims lower as
  ordinary scoped asserts (measured: 4 obligations from
  `lemma_montgomery_inverse`); the `{}` scripts are Z3 choreography. DL3 is
  therefore only the span-colocation *bug fix*, no hint machinery.
- inline `proof {}` blocks and per-site lemma invocations — already lowered
  Dafny-style (ground facts as droppable hints); nothing further.
- trigger annotations — preserved in the IR, never consumed (settled policy).
- `reveal_with_fuel` beyond ground instantiation, `#[verifier::rlimit]`,
  `spinoff_prover`, prover selection — SMT-encoding artifacts, ignored.
- `decreases_to!` / `via_fn`-style termination *scripts* (not in dalek-lite):
  when they arrive, accept the construct and discharge termination in the
  twin rather than lowering the script.

Semantic constructs have real lowering: `choose` (DL2),
`assume_specification` contracts (DL5), ghost bindings, and non-isolated
loops (DL6). Loop isolation changes which hypotheses the body may assume,
so its semantics belong in lowering and VC generation.

## Interaction with the rest of the plan

- `choose` (DL2) is the execution plan's S3 stage — landing it here
  discharges that stage's first item; the summer-school driver stays the
  follow-up.
- DL1 is the tracked issue "Isolate lowering failures per function in large
  crates" and supplies the per-function dispositions needed for M3/M4 coverage
  measurement; the broader measurement remains outstanding.
- The paused Aeneas SHA-3 queue item is unaffected: nothing here touches
  `case-studies/aeneas/` (read-only per standing directive); its remaining
  slices resume by explicit user direction.
- Non-goals for now: the FFI/SIMD-free crate has none of SymCrypt's
  intrinsics problems; `lizard`/`proba` spec files with heavy `choose` use
  arrive with DL9, not before.
