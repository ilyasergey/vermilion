# 2026-07-20 — DL8: Layer Set A lowers, emits, and is judged end to end

*Continues from `2026-07-20-dalek-lite-dl8-handoff.md`. The blocker there —
`FieldElement51::from_bytes` killing the lowering at ~4 GB RSS — is fully
diagnosed and fixed at its root; three more frontier layers behind it
(Decidable synthesis, elaborator timeouts, recursive-guard typing) are
fixed too. The whole 454-function field cone now lowers in ~1.4 s at
~0.8 GB, emits 5,215 obligations across 27 manifests, and the aggregated
Lean verdict pass is the scoreboard's raw data.*

## 1. The OOM, diagnosed and killed at the root

The handoff's work fuse (5M `lower_exp` calls) never fired — on this
128 GB machine the lowering ground to ~33 GB RSS over 9 minutes inside
`from_bytes` before a SIGKILL, with the counter far from the cap. Two
`sample` profiles told the story: >85 % of samples inside `Expr::clone`,
reached from `lower_clip`. The mechanism:

- `Expr` children are `Box`, so every clone is a full deep copy;
- the `nat`-clip expansion `iteP (e ≥ 0) e 0` restates its operand
  (signed clips restate theirs twice);
- VIR clips **every** nat-typed arithmetic op, so the byte↔nat ground
  equations (`u8_32_as_nat`, `pow2`, …) nest clips dozens deep —
  **the tree doubles per nesting level**. Exponential; gigabytes of
  transient clones between fuse ticks.

Two fixes, both landed:

1. **Fail-closed backstop** (`charge_expr_copies`/`charge_env_copy`,
   `lower.rs`): the work fuse now charges every duplicated subtree by
   its node count — env-lookup substitution, binder/branch environment
   clones, Prop-conditional and clip restatements, `field_update`'s
   record rebuild. The size walk is capped at fuse headroom, so pricing
   a copy never costs more than the fuse allows. With only this fix the
   cone lowered in 5 s at 1.1 GB with 27 clean span-mapped refusals.
2. **The root fix — linear clips**: `nat`/signed clipping now lowers to
   dedicated single-occurrence IR forms `(natclip e)`/`(sclip w e)`
   rendered as the prelude functions `Vermilion.natClip`/`sclip`
   (definitionally the old conditionals; `@[simp, grind =]` defining
   equations; `vrml_norm` unfolds them so every ladder rung sees the
   pre-change goal shapes). Grammar, serializer, parser, renderer,
   docs/ir.md and docs/vcgen.md updated in the same slice. Result:
   **zero** duplication refusals — `from_bytes` and the 26 other
   fuse-refused functions all lower; the IR shrank 11.5 → 8.5 MB.

The general substitution disease (env clones per occurrence) remains and
is now properly filed: `docs/issues/share-substituted-values-in-the-lowering.md`
(share via `Arc`/hash-consing; name values instead of substituting —
adjacent to #39). `as_bytes` still trips the 200k-node substitution
budget at one ghost assignment — the issue's acceptance test.

## 2. Three more frontier layers, fixed

- **`Decidable` for opaque Prop guards** (`Specs.lean` failed to
  elaborate `iteP (is_negative a) …`): spec-fn *definitions* precede the
  module's typeclass-evidence instance, so an affected definition is now
  rendered under `open Classical in` and `noncomputable`
  (`SpecFn.needsPropDecidable`, reusing the `(EVIDENCE-DECIDABLE-PROP)`
  recognizer `Expr.needsDecidableEvidence` — no second recognizer).
  Obligation statements were already covered by the evidence closure.
  docs/vcgen.md and the `iteP` prelude comment updated.
- **Elaborator timeouts on 46 KB one-line definitions**
  (`limb{0..4}_byte_contribution`): a *symptom* of the exponential clip
  expansion in emitted bodies — gone with the linear clip forms (the
  same functions now emit small bodies and elaborate instantly).
- **Recursive guards lost parameter typing** (`binomial` with `k : nat`:
  decrease unprovable at `n = 0, k < 0`, a corner nat-typing makes
  vacuous): the spec-fn IR record grew `(ranges expr*)` — the range
  facts of nat/machine parameters (reusing the contract machinery's
  `range_constraint`/`range_proposition`) — conjoined into the
  `_h_range` recursive guard by the renderer (deduped up to parentheses
  against the measure facts). Plus two new `decreasing_by` rungs:
  `Int.emod_lt_of_pos` for variable-modulus Euclidean recursion
  (`spec_gcd`), and an `iteP` split for `natClip`ped measures.
  docs/ir.md grammar and docs/vcgen.md updated.
- **`closed` spec-fn bodies dropped cross-bucket** (found by the suite:
  `lemma_unfold_edwards`'s four ensures were UNPROVABLE — `edwards_x`
  arrived bodyless and was modeled uninterpreted, though Verus proves
  the lemma in-module): same exporter class as the termination-check
  gap (`public_body`/`verifying_owning_bucket` in
  `ast_to_sst_func.rs`); folded into that issue. Interim: the Layer Set
  A stub opens its four Edwards accessors (`[visibility accommodation]`
  label); all five root obligations then verify automatically, and
  `run.sh` gates the measured frontier with `--expect-partial`.

## 3. What the acquisition produced

With all four fixes the pipeline runs end to end:

- **416 functions lowered** (of 454; 38 refused, all span-mapped): 37
  from the known cross-module recursive-spec-fn termination-check gap
  (`docs/issues/carry-decreases-measures-for-cross-module-recursive-spec-fns.md`
  — `termination_check` is built only under `verifying_owning_bucket`)
  plus `as_bytes` (substitution budget, see the sharing issue).
- **126 spec fns + 10 uninterpreted + 5 datatypes** emitted into shared
  `Specs.lean` modules that now compile.
- **5,215 obligations in 27 manifests.** Caveat discovered on the way:
  `vrml_gen` emits each source file's artifacts NEXT TO that file, so
  the `#[path]`-mounted cone's obligations landed inside the untracked
  `upstream/` clone, and `run.sh` only judged the root stem's 5
  obligations while reporting success — filed as
  `docs/issues/whole-crate-acquisition-generated-root.md`. The DL8
  verdict pass loops `vrml_check` over all 27 manifests out-of-band
  (`scoreboard` report has the aggregated numbers).

## 4. Ladder and twin fallout caught by the suite

The clip-form churn surfaced three times:

- m2-branches `abs_small.ensures_1`: the hypothesis now names
  `Vermilion.sclip`, which no rung unfolded — `vrml_norm` gained
  `natClip`/`sclip` (and `Int.reducePow`/`Nat.reducePow`, since
  `sclip_eq` yields symbolic `2 ^ w` where the old expansion had
  computed literals) and the defining equations carry `@[grind =]`.
  After normalization every rung sees the pre-change shapes.
- power-of-2: 15 *hand-written interactive twin proofs* were orphaned by
  the statement-hash churn (they were never automatic). Ported
  mechanically — each proof prefixed with
  `simp only [Vermilion.natClip, Vermilion.sclip] at *` to restore the
  shapes it was written against — plus a port of the twin Specs user
  block (`pow2_nonneg`/`pow2_succ`) using the new prelude lemma
  `Vermilion.natClip_of_nonneg`. 57/57 obligations, 0 sorry.
  (Same class as the DL5-churn restore in f6b9d0b.)
- Machine-local `generated/` manifests predating the per-function
  default (Jul 17 on this machine) silently flipped EVERY case study's
  sticky emission mode to per-file, writing parallel per-file twin
  residue next to the tracked per-function twins (power-of-2 first,
  then the rest). All stale `generated/` dirs and residue twins
  deleted; the tracked per-function layout is authoritative. Lesson for
  hand-offs: `case-studies/*/generated` persists across sessions and
  carries the STICKY MODE — clean it when the emission default moves.

## 5. Differential corpus

- `c191_array_ext_eq_ok.rs` / `c192_array_ext_eq_wrong.rs`: the DL8
  array/slice extensional-equality fragment fix (`ext_eq_is_plain_eq`
  recursing into `Primitive(Array/Slice)` element types) gets its
  pass/fail guard pair, mirroring the cone's `a.limbs =~= b.limbs`.

## 6. Where the numbers live

`docs/reports/dalek-lite-layer-a-scoreboard.md` — per-Rust-file
auto-verified/interactive counts and sweep times against CryptoProver's
published result (1,430/1,433 goals whole-crate; the effort/cost
comparison is deferred to a dedicated benchmark run).

## Infrastructure trap fixed: the Verus cache can silently lie

This machine's `~/.cache/vermilion/verus` was at `6f77518` (dirty) while
the pin is `4860083` — every run this session used the stale front end
until the suite tripped on the missing `rotate_left` vstd contracts.
Three compounding holes in `scripts/setup_verus.sh`, all fixed:

- the wrong-rev + local-changes case *warned and exited 0* — now it
  fails closed with stash/VERUS_CHECKOUT guidance;
- the pin fetch assumed a remote named `origin` — older cache clones
  name it `fork`; now `--all`;
- the built-pin stamp was written unconditionally, so a SKIPPED build
  masqueraded as the pin forever — now written only after a real build.

The checkout's uncommitted WIP (proof-block wrapping for `debug_assert`
in `builtin_macros/syntax.rs` — not in the pin) is preserved in
`git stash` on the cache clone: stash message "WIP: debug_assert
auto_proof_block wrapping (pre-DL8 machine-local; not in pin 4860083)".

## Issues filed or updated this session

- `share-substituted-values-in-the-lowering.md` (new; the clone storm's
  proper fix, natClip as prior art)
- `whole-crate-acquisition-generated-root.md` (new; scattered artifacts
  + unjudged manifests)

## 2026-07-21 continuation: #51 fixed, #54 done, phase-2 fills begun

- **#51 (ladder stack overflow) FIXED** (5b66f18): scalar_saturate's
  per-pair bound uses closed-form `mul_lt_mul''` instead of `nlinarith`
  (which multiplied the whole ~100-hyp context → SIGABRT), plus a
  fail-closed vrml_ladder entry guard (node cap 100k / hyp cap 80).
  `mul` fails gracefully now; differential 191/191 unchanged. Closed.
- **#54 (generated-root) DONE** (c78d237, 0cdd26c): `vrml_gen
  --generated-root DIR` + `run_example.sh` multi-manifest branch route
  the #[path]-mounted cone's 27 manifests + twins into the tracked
  `case-studies/dalek-lite/{generated,proofs}/` tree (colliding
  `mul_lemmas` stems qualified by parent dir). The lemma/spec twins are
  now committable; upstream clone holds no artifacts. Closed.
- **#55 filed**: recursively-self-improving automation — mine interactive
  twins for ladder rungs so each acquisition leaves the automation
  stronger and the human residue shrinks with scale.
- **Phase-2 interactive fills (field_u64), 8 VCs committed**: the 3
  constant-time conditionals (Seq rebuild-equality via `Seq.ext` +
  per-index `interval_cases`) and `m` (u128 widening-mul spec). Marked
  `-- vrml:interactive`. The arithmetic core (`add`/`sub`/`reduce`/`mul`/
  `pow2k`) is the next target — genuine overflow-freedom + loop-invariant
  + lemma-assembly proofs; being addressed by a dedicated arithmetic rung
  (step 2) before the remaining hand fills.

## 2026-07-21: arithmetic core — first unit proven, reusable templates

`add` (field addition) is fully verified — all 5 interactive VCs
hand-proven and kernel-checked (commit 90a5806). This is the first
complete executable-arithmetic unit and it validates four reusable
proof templates (the concrete basis for the #55 arithmetic rung):

1. **ensures-eta**: `output = spec_fn self rhs` — `intro`; unfold the
   spec fn to its `spec_*_limbs`; `obtain ⟨l⟩ := output` (structure
   eta); `simp_all [accessor]` using the loop-exit `assert` that gives
   `output.limbs = pushchain`.
2. **Seq-ext rebuild** (assert_8): `output.limbs = pushchain of sums` —
   normalize the accessor GLOBALLY first (`simp only [accessor, iteP]
   at *`, and re-unfold the accessor after any `sum_of_limbs_bounded`
   unfold, which reintroduces it); `Seq.ext` (length by
   `simp only [len_push, len_empty]; omega`); `interval_cases i`;
   per-index reduce with FULL `simp` (the `simp only` discharger can't
   prove the `index_push_prefix` side conditions — this cost hours to
   pin down).
3. **overflow-from-req**: `(a+b) % 2^64 = a+b` — materialize the
   concrete bounds (`requires_4 k`, `(requires_1 k …).1`) for all
   indices BEFORE `interval_cases` so they specialize; `omega` handles
   `%` by the literal modulus once `0 ≤ a+b < 2^64` is in scope.
4. **loop-invariant preserve**: single `Seq.update` — split `j = i`
   (`index_update_same`, written value closed via the "output=self
   above i" invariant + overflow) vs `j < i` (`index_update_other` +
   the entry invariant).

The two atom-normalization gotchas (`get_FieldElement51_limbs` vs the
`.1` projection must be unified across goal AND every bound hypothesis;
`simp_all` silently CLEARS materialized bound hyps) are the reason a
naive rung fails — the #55 rung must reuse `scalar_saturate`'s `lenMap`
for length normalization and keep the bounds as explicit terms.

**Remaining field_u64 residue is genuinely harder**: `sub`/`reduce`/
`mul`/`pow2k` carry `u64_5_as_nat` field-VALUE-preservation identities
(e.g. `u64_5_as_nat (pre-reduce limbs) = natClip (u64_5_as_nat …)`) —
the crate's core field correctness, needing the field lemmas as
hypotheses + ring/nonlinear reasoning, not just the Seq/overflow
templates. These are the natural target for the #55 rung + lemma reuse.
