# dalek-lite Layer Set A — acquisition scoreboard vs CryptoProver (DL8)

*First published 2026-07-20 (DL8). The tables below retain the original
machine-only measurement for the acquired field cone. They are historical
measurements, not current proof-completion counts.*

## Current status (source audit, 2026-09-23)

The checked-in Layer Set A tree has 436 Lean files and 5,215 obligation
markers. Eight explicit `sorry` bodies remain in four units; see the
[case-study status](../../case-studies/dalek-lite/README.md#current-verification-status)
for the exact files. The later zero-`sorry` claim was invalidated by the
[false-green checker investigation](../../logs/2026-08-19-lean-4.33-veil-removal.md#5b-a-false-green-in-the-acquisition-path-and-its-blast-radius).
No new end-to-end run was performed for this documentation audit, so a current
automation rate or verified-function total is not asserted here.

Whole-crate artifact routing is implemented: the runner checks all emitted
manifests under the study's `generated/` directory and maintains tracked
`proofs/` twins. The proof holes, declaration collisions, refused functions,
and trusted assumptions still prevent a whole-cone verification claim.

## Original measurement and comparison scope

*Nomenclature (used throughout, for both systems): a **VC** is one
clause-level verification condition — one `ensures` conjunct, `assert`,
callee-precondition instance, or loop-invariant step — emitted as its
own Lean theorem; a **function** is one Rust `fn` (one Lean unit file);
a VC is **auto-verified** when the `vrml` ladder closes it, and
**interactive** when it is left for a user twin proof (first-class
verification per project policy, not a failure).*

*The reference point is CryptoProver's published result on the same
crate (dalek-lite IS its benchmark artifact): 1,430/1,433 function-level
VCs whole-crate, 3 residual nonlinear admits — with Z3 and the
48-`axiom_*` trusted floor left in the trusted base. Effort/cost
comparison is deliberately deferred to a dedicated benchmark run. Two
calibration notes for any comparison below:*

- *Different task: CryptoProver synthesizes the crate's internal
  specifications and proofs from a stripped crate and checks them with
  Z3; Vermilion consumes the crate's human-written specifications and
  proofs as-is and re-verifies everything through the Lean kernel,
  leaving an explicit interactive worklist.*
- *Different granularity: their 1,433 VCs are function-level (one Verus
  verdict per function, whole-crate); our 5,215 VCs are clause-level and
  cover the field cone only — ~12–13 per function across the 416
  lowered functions. The denominators cover different scopes and cannot be compared directly.*

*Vermilion's claim is different in kind: every auto-verified or
twin-proven VC below is a kernel-checked Lean theorem (Lean is the only
verifier), and the trusted floor is scheduled to be proved against
Mathlib (DL10).*

## How much real Rust is verified

The number that matters to an outside reader: the cone contains **29
executable Rust functions (~1,728 runtime LOC)** — the crate's shipping
field arithmetic, essentially all of it in `field_u64.rs` (495 LOC, the
`mul`/`pow2k`/`reduce`/`from_bytes`/constant-time-conditional core of
curve25519-dalek) — against 433 Verus specs/lemmas (~11,372 ghost
LOC) that exist to prove it. Status in the original 2026-07-20 measurement:

- every emitted exec function has ALL of its safety and functional VCs
  stated as Lean theorems (19/21 emit; `as_bytes`/`load8_at` refused —
  #53/#49);
- 279/469 of those VCs are auto-verified; `clone` and `from_limbs` are
  fully automatic end to end;
- the remaining 190 VCs (`mul` 65, `pow2k` 50, `sub` 31, …) are the
  phase-2 interactive fill — when they are twinned, the WHOLE runnable
  file is kernel-verified, which is the first headline milestone.

The 26 lemma/spec files below are Verus ghost artifacts: they never
run, and their VCs matter because the executable functions' contracts
depend on them.

**Where verification stops and trust begins.** A VC in the table is a
proof obligation; not every item in a file produces one, and the ones
that do include hypotheses inherited from admitted or assumed upstream facts. The two
executable files sit at opposite ends of this spectrum, and the
distinction is the honest core of "how much real Rust is verified":

- **`field_u64.rs` has no local source-level trust escapes.** No
  `#[verifier::external_body]`, no `admit()`, no `assume_specification`
  — every one of its 21 exec functions carries real proof obligations,
  and its emitted VCs require automatic or interactive proofs. The current
  twin still contains proof holes; completing this file remains a milestone.
- **`layer_a.rs` is almost entirely trusted boundary modeling**, which
  is why it has only 5 VCs despite 6 functions + 12 specs/lemmas: its
  6 exec functions are all `#[verifier::external_body]` wrappers around
  the external `subtle` crate (their `ensures` are *assumed* for
  callers — no VCs, by design), 4 `assume_specification` items model
  external functions (no VCs), the 10 spec fns are definitions (no VCs
  — they are the vocabulary, not claims), and of the 2 proof fns, only
  `lemma_unfold_edwards` is genuinely proven (4 conjunct VCs);
  `axiom_from_bytes_uniform`'s single VC is `admit()`ed — one of the
  crate's 48-`axiom_*` trusted-floor entries, scheduled for a Mathlib
  proof at DL10, not automation today.

So `layer_a.rs`'s "5/5 auto-verified" is **4 proven + 1 admitted
floor axiom**; the substantive verified-Rust claim rests on
`field_u64.rs` and its supporting lemmas, with the upstream axiom floor and
external contracts retained as assumptions. A discharged VC does not establish
those assumed facts.

## Verification-subject fidelity

Is this the real crate, unmodified, with its own Verus specifications?
By category:

- **Verbatim by construction — the whole lemma/spec cone.** `layer_a.rs`
  mounts **14 files straight from the pinned upstream clone**
  (`de9ebf015`) via `#[path]`: 13 field-lemma files, 8 common-lemma
  files (mounted as modules within those 14 files' hierarchy), and 5
  spec modules are read byte-identical from the pin — there is no copy
  to drift. All Verus specifications and proofs (contracts, spec/proof
  fns, `by(bit_vector)`/`by(compute)`, triggers) are consumed as-is;
  only Z3 choreography is dropped (`calc!` step scripts, `rlimit`), and
  dropping a script never drops a claim — the chain's assertions are
  still proven, by Lean.
- **One file with labeled edits — `field_u64.rs`** (tracked copy of
  `backend/serial/u64/field.rs`; 31 marked lines, four categories, all
  mechanical): `// [final]` mut-ref annotation-syntax migration for our
  six-months-newer front end (identical prophecy semantics);
  two `[body accommodation]` UFCS rewrites dodging a front-end ICE;
  two `[cfg accommodation]` elisions of `#[cfg(not(verus_keep_ghost))]`
  runtime-only `debug_assert!`s that upstream itself excludes from
  verification; `MANUALLY moved outside` / `ADAPTED CODE LINE` — one
  nested `const fn` hoisted to module scope and the limb array given a
  named field (structural, the most substantive of the edits).
- **Labeled boundary stubs, not part of the subject**: `subtle`
  (compiled as a real extern rlib), `proba_specs`, `SQRT_M1`, the
  Edwards accessor closure (incl. the `closed`→`open`
  `[visibility accommodation]` forced by the exporter gap, #49). These
  model external dependencies and out-of-cone edges — boundary modeling
  any verification of this crate requires.
- **The verifier**: Verus runs `--no-verify` purely as the front end;
  every VC is discharged (or its function explicitly refused) by the
  Lean kernel.

Open tightening (not yet implemented): a runner-side diff-against-pin
guard that fails if any UNLABELED line of `field_u64.rs` diverges from
upstream.

## Acquisition structure (measured 2026-07-20, fork pin `4860083`)

| | |
|---|---|
| Functions in the cone | 454 |
| Lowered (VCs emitted) | **416** |
| Refused, span-mapped | 38 — 37 × cross-module recursive-spec-fn export gap (#49), 1 × substitution budget (`as_bytes`, #53) |
| Spec fns emitted as real Lean defs | 126 (+ 10 uninterpreted opaques) |
| Datatypes | 5 |
| VCs emitted | **5,215** across the cone's 27 Rust files |
| Lowering cost | ~1.4 s, ~0.8 GB peak (was: OOM/SIGKILL before DL8's linear clips) |
| Acquisition-root VCs | 5/5 discharged = 4 proven (`lemma_unfold_edwards`) + 1 admitted floor axiom (`axiom_from_bytes_uniform`); see "Where verification stops and trust begins" |

The refusal causes are both filed with fix directions (#49 is fork
export plumbing; #53 is the substitution-sharing rework). Neither is a
semantic frontier — no Verus construct in the cone lacks a lowering
DESIGN any more.

## Lean verdicts (historical phase 1 machine-only baseline)

Every one of the 5,215 VCs ran through the `vrml` ladder
(`vrml_check` looped over the 27 Rust files' manifests — the interim
workaround of #54; measured 2026-07-20 on an M-series 128 GB machine,
sweep budget profile below). **Totals: 3,185 auto-verified (61%), 2,030 interactive, ~730 s
wall-clock for the whole cone** (409 function units, median ~5.7 s/unit;
this re-sweep overlapped other Lean jobs so its wall-clock is an upper
bound — the clean earlier run was 553 s). Times are for the machine-only
baseline: a VC the ladder cannot close still pays the full ladder cost,
so interactive-heavy files dominate. A new re-check (twins as
arbiter) is required to update these times — those will be for the
fully-verified state, where covered VCs skip the ladder entirely.
(CryptoProver effort comparison waits for the dedicated benchmark run.)

**Executable code in the original measurement.** The two LOC columns split each file's
non-blank/non-comment lines into runtime **Rust code** vs **Verus
annotations and proofs** (spec/proof fns, contract clauses, `proof{}`
blocks, ghost statements; heuristic classifier, ±a few lines). The cone
carries ~1,728 Rust LOC against ~11,372 Verus LOC (non-blank,
non-comment lines) — and the runnable
target is `field_u64.rs`: ~495 LOC of shipping curve25519-dalek field
arithmetic across 21 exec functions. Its status: 19/21 emit VCs
(`as_bytes` and `load8_at` refused — #53/#49), 279/469 VCs
auto-verified, `clone` and `from_limbs` fully automatic; completing the
runnable file is the first phase-2 target (`mul` 40/105, `pow2k` 34/84,
`sub` 19/50, …). The lemma files' Rust LOC is struct/`use` glue — their
substance is the ghost proof library the exec contracts depend on.

| Rust file | Lean units | Rust LOC | Verus LOC | func | specs/<br>lemmas | VCs | auto-verified | interactive X/Y | time (s) |
|---|---|---|---|---|---|---|---|---|---|
| [field_u64](../../case-studies/dalek-lite/field_u64.rs) | [units](../../case-studies/dalek-lite/proofs/field_u64/) | 495 | 453 | 23 | 12 | 469 | 279 | 13/190 | 103 |
| [layer_a](../../case-studies/dalek-lite/layer_a.rs) | [units](../../case-studies/dalek-lite/proofs/layer_a/) | 148 | 98 | 6 | 12 | 5 | 5 | 0/0 | 1 |
| [number_theory_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/number_theory_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/number_theory_lemmas/) | 99 | 1581 | 0 | 59 | 767 | 465 | 0/302 | 191 |
| [shift_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/shift_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/shift_lemmas/) | 253 | 316 | 0 | 10 | 757 | 619 | 0/138 | 35 |
| [pow_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/pow_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/pow_lemmas/) | 183 | 909 | 0 | 37 | 701 | 511 | 0/190 | 68 |
| [limbs_to_bytes_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/limbs_to_bytes_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/limbs_to_bytes_lemmas/) | 18 | 1264 | 0 | 20 | 592 | 275 | 0/317 | 27 |
| [as_bytes_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/as_bytes_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/as_bytes_lemmas/) | 25 | 650 | 0 | 16 | 244 | 79 | 0/165 | 42 |
| [to_bytes_reduction_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/to_bytes_reduction_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/to_bytes_reduction_lemmas/) | 92 | 472 | 0 | 9 | 181 | 111 | 0/70 | 16 |
| [div_mod_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/div_mod_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/div_mod_lemmas/) | 39 | 244 | 0 | 14 | 179 | 141 | 0/38 | 15 |
| [from_bytes_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/from_bytes_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/from_bytes_lemmas/) | 17 | 622 | 0 | 8 | 177 | 76 | 0/101 | 25 |
| [compute_q_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/compute_q_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/compute_q_lemmas/) | 30 | 362 | 0 | 12 | 145 | 91 | 0/54 | 16 |
| [load8_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/load8_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/load8_lemmas/) | 17 | 859 | 0 | 23 | 126 | 80 | 0/46 | 13 |
| [bit_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/bit_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/bit_lemmas/) | 74 | 117 | 0 | 7 | 115 | 101 | 0/14 | 12 |
| [pow2k_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/pow2k_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/pow2k_lemmas/) | 18 | 413 | 0 | 30 | 110 | 40 | 0/70 | 12 |
| [field_lemmas_mul_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/mul_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/field_lemmas_mul_lemmas/) | 17 | 387 | 0 | 21 | 108 | 41 | 0/67 | 13 |
| [reduce_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/reduce_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/reduce_lemmas/) | 15 | 216 | 0 | 3 | 96 | 49 | 0/47 | 11 |
| [add_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/add_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/add_lemmas/) | 12 | 157 | 0 | 7 | 74 | 32 | 0/42 | 10 |
| [negate_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/negate_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/negate_lemmas/) | 14 | 167 | 0 | 4 | 72 | 23 | 0/49 | 13 |
| [u64_5_as_nat_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/u64_5_as_nat_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/u64_5_as_nat_lemmas/) | 16 | 395 | 0 | 6 | 66 | 16 | 0/50 | 15 |
| [mask_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/mask_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/mask_lemmas/) | 57 | 46 | 0 | 3 | 54 | 35 | 0/19 | 9 |
| [field_specs](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/specs/field_specs.rs) | [units](../../case-studies/dalek-lite/proofs/field_specs/) | 23 | 374 | 0 | 46 | 52 | 34 | 0/18 | 16 |
| [common_lemmas_mul_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/mul_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/common_lemmas_mul_lemmas/) | 5 | 259 | 0 | 15 | 45 | 35 | 0/10 | 10 |
| [pow2_51_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/field_lemmas/pow2_51_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/pow2_51_lemmas/) | 15 | 91 | 0 | 8 | 38 | 27 | 0/11 | 15 |
| [sum_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/sum_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/sum_lemmas/) | 11 | 70 | 0 | 4 | 22 | 11 | 0/11 | 17 |
| [to_nat_lemmas](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/lemmas/common_lemmas/to_nat_lemmas.rs) | [units](../../case-studies/dalek-lite/proofs/to_nat_lemmas/) | 11 | 697 | 0 | 28 | 10 | 2 | 0/8 | 9 |
| [field_specs_u64](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/specs/field_specs_u64.rs) | [units](../../case-studies/dalek-lite/proofs/field_specs_u64/) | 17 | 138 | 0 | 16 | 8 | 5 | 0/3 | 9 |
| [primality_specs](https://github.com/Beneficial-AI-Foundation/dalek-lite/blob/de9ebf01599fedbbced28b938e2c36c538fe4ae5/curve25519-dalek/src/specs/primality_specs.rs) | [units](../../case-studies/dalek-lite/proofs/primality_specs/) | 7 | 15 | 0 | 3 | 2 | 2 | 0/0 | 8 |
| **27 files** | | **1728** | **11372** | **29** | **433** | **5215** | **3185** | **13/2030** | **731** |

LOC reconciliation: 1728 Rust + 11372 Verus + 5741 blank/comment = 18841 raw lines.

The source column links tracked acquisition files locally and mounted files
to their exact upstream revision. The Lean-unit column links tracked proof
twins. Generated artifacts remain disposable and are reproduced by the runner.

All LOC figures are **non-blank, non-comment code lines**: 1,728 Rust +
11,372 Verus = 13,100 code lines across the cone (the raw file length,
18,841, additionally includes 5,741 blank/comment lines). The
Rust-vs-Verus split uses the classifier documented above.

The **twins X/Y** column tracks the phase-2 interactive fill: X =
hand-proven twin VCs that kernel-check, Y = the sweep interactive count
(a budget-relative FLOOR — many close automatically at full budget, so
the full-budget residue must be measured separately; the per-function full-budget worklist is
in the phase-2 progress section). This column retains the original phase-2 snapshot; current holes are listed above.

Reading the last two columns: **auto-verified** VCs are closed by the
ladder and kernel-checked; **interactive** VCs are the explicit,
span-mapped worklist for user twin proofs — first-class verification
once proven, never silent trust. The comparison with CryptoProver
reads: their 1,430/1,433 function-level VCs are checked by Verus/Z3; our auto-verified column is kernel-checked automation,
and the interactive column records goals left by that sweep profile.

## Historical phase 2 snapshot: interactive twins for `field_u64`

`X/Y` in the table = hand-proven twin VCs / sweep interactive count. The
genuinely-interactive residue (fails even at full budget) is what needs
twins; much of the sweep's Y is budget-relative and auto-closes when
re-judged uncapped.

**Proven & committed (13 VCs, kernel-checked):**

| function | VCs | how |
|---|---|---|
| `conditional_swap`/`select`/`assign` | 7 | constant-time Seq rebuild — `Seq.ext` + per-index `interval_cases` over update/push lemmas |
| `m` (u128 widen-mul) | 1 | `(x·y)` bounds ⇒ mods are identities |
| `add` (field addition) | 5 | overflow-freedom `(a+b)%2⁶⁴=a+b` from `add_req`; both loop invariants; Seq rebuild |

Plus `mul_assign`, `neg`, `square`, `from_limbs`, `clone` verify by
automation (0 interactive residue).

**The residual frontier (honest):** `sub`, `reduce`, `square2`,
`from_bytes`, `mul`, `pow2k` carry `u64_5_as_nat`
field-VALUE-preservation identities and bounds on constructed limbs.
Measured fact: these do **not** close with `simp_all` even at 4M
heartbeats, nor with the `add`-class templates — they are the crate's
core field-correctness math (what upstream's `mul_lemmas`/`reduce_lemmas`
libraries prove) and need those lemmas carefully threaded per obligation.
This is exactly the target for the #55 arithmetic rung (reuse
`scalar_saturate`'s `lenMap` + the four validated templates + the field
lemmas as hypotheses), which converts ~100 bespoke hand-proofs into
automatic closes. The four templates and the two normalization gotchas
are documented in `logs/2026-07-20-dalek-lite-dl8-layer-a.md`.


## Measurement protocol (two phases)

1. **Machine-only baseline**: the sweep above, recording per-Rust-file
   wall-clock and the auto-verified/interactive split at the sweep
   budget profile.
2. **Interactive fill**: the interactive VCs of the TRACKED stems
   (`layer_a`, `field_u64`) get twin proofs; the sweep re-runs (twins
   as arbiter) and is re-timed. Reported per VC: auto vs twin
   discharge, and each twin proof's SIZE as the line-range span of its
   proof body (`:= by` … `-- vrml:end`), plus the distribution. The
   original sweep preceded whole-crate twin routing. Issue #54 is now closed;
   all mounted files have a tracked twin location under this study.

## Automation gaps recorded by the original sweep

- Seq extensionality conclusions (`spec_reduce(limbs) =~= limbs` and
  kin): no ladder rung applies `Vermilion.Seq.ext` yet (#52); the
  lemma itself landed in DL8 for twin proofs.
- Deep byte↔nat ground arithmetic (`u8_32_as_nat` towers): tractable
  after DL8's linear clips, but the nonlinear rungs still time-bound.
- The 3 VCs CryptoProver also leaves open (Ristretto/Lizard nonlinear)
  are outside Layer Set A and scheduled as DL11.

## Reproduction

After the [repository build](../development.md#build), run the current
whole-crate driver:

```console
./case-studies/dalek-lite/run.sh
```

It uses `--generated-root` to collect and check every emitted manifest and
maintain the tracked twins. It expects partial lowering and still requires
proof obligations to pass. The source audit above is not a successful run
receipt for this command.

To repeat the historical machine-only budget profile separately:

```console
for m in case-studies/dalek-lite/generated/*.json; do
  ./target/debug/vrml_check "$m" \
    --rung-budget 200 --saturate-budget 800 --smt-budget 200 --smt-timeout 5
done
```

Automation rates depend on these budgets. This sweep does not replace the
runner's complete twin check or establish the upstream trusted assumptions.
