# 2026-07-20 — DL5: `assume_specification` breadth (+ #19, #18)

## Planning inputs

- dalek-lite agenda DL5. Upstream has exactly 6 `assume_specification`
  sites in 3 shapes beyond the already-green basic one
  (`choice_assume_spec.rs`): (B) qualified trait-method targets
  (`<u64 as ConditionallySelectable>::conditional_swap`/`assign`,
  `&mut` + `old()`), (C) lifetime-parameterized contract-free targets
  (`core::fmt::Formatter::<'a>::write_str` + paired external-type
  shadows), (D) generic + const-generic trait-method targets
  (`<[T; N] as core::hash::Hash>::hash` with `where` clauses and a
  generic `uninterp spec fn`).
- Measured with new probes `subtle_assumes.rs` and `core_assumes.rs`:
  shape B lowers as-is (the *automation* gap was the constant-time
  `Choice`-guard case split); shape C needs `&str` (`StrSlice`) binder
  and literal lowering; shape D needs generic uninterpreted spec fns —
  exactly issue #19, whose prescribed design (one fixed generic symbol,
  explicit per-application type arguments in the IR) this slice
  implements. Pulling on #19 exposed #18's remaining half (constructor
  type ascription), which gates #19's percolator driver — both were
  fixed at their prescribed seams.

## What landed

- **`guard_split` ladder rung** (`Obligations.lean`): classical
  `by_cases` on opaque propositional guards occurring as top-level
  implication antecedents (Dafny-style call contracts over `Choice`
  guards; SMT backends get this split free at the SAT level), capped at
  3 atoms, arithmetic atoms excluded; branches close by
  `simp_all`/`omega`. Driver: `subtle_assumes.rs` `swap_twice` —
  **3/3 automatic**.
- **Generic uninterp spec fns (#19, closed)**: declaration-scoped
  registration (a call site's `typ_substs` no longer monomorphizes the
  recorded signature — the dedup trap the issue warned about); type
  params emit as `{T : Type} [Inhabited T]` binders (the instance keeps
  the opaque's ∀-type synthesizably inhabited for return-position-only
  params); const generics as leading Int binders; the IR `apply` node
  grows an optional `(typs (NAME TY)*)` group rendered as Lean named
  type arguments. Serializer + parser + renderer + `docs/ir.md` in the
  same slice.
- **Constructor type ascription (#18, closed)**: `(ctor …)` carries the
  type parameters its variant's fields cannot pin (computed at lowering
  — everything inferable renders byte-identically, hashes stable),
  rendered as named arguments; `Ok(())`/`None` statements now
  self-elaborate. One measured hash-churn casualty
  (`wide_math_saturating_mul`) had its twin proof re-applied verbatim.
- **`Vermilion.StrSlice`**: `&str` binders and string literals lower
  (type + literals only, no string operations — enough for the
  `write_str` shape); `str`/`(strlit …)` IR forms.
- **`split_ifs_hyps` rung**: the conditional split over hypotheses,
  where `?`-chain branch joins arrive as nested `iteP` facts about a
  call result.
- **`--expect-partial` gate** (`run_example.sh`): the honest probe
  contract for partially-refused files post-DL1 — requires ≥1
  span-mapped refusal disposition AND every lowered obligation verified;
  fails loudly when the fragment catches up fully.
- **Percolator fallout (drive-by, all measured)**: `bounded_arithmetic`
  fully automatic; `withdrawal_question_mark` verifies end to end (5/6
  automatic + one 4-line interactive twin); `active_bitmap_set` 11/11
  (the parked `ensures_5_1` twin written); all three moved to `run.sh`.
  `liquidation_fee_minmax` and `active_bitmap_clear` are now *partially*
  verified (their `max`-default-body / `BitNot` refusals remain, each
  tracked by its own issue) and moved to the `--expect-partial` gate.
- **Probes/gates**: dalek-lite `run.sh` gains `subtle_assumes.rs` (3/3)
  and `core_assumes.rs` (1/1 + two contract-free fns); README matrix +
  PLAN.md DL5 row updated.
- **Corpus**: c186 (generic uninterp positive) / c187 (unknownness
  negative) / c188 (`Ok(())` ctor ascription positive).
- **Docs**: `docs/ir.md` (typs group, `str`, `strlit`, generic
  `specfn-opaque`), `docs/vcgen.md` (both new rungs; the generic-opaque
  emission and self-elaboration invariant under the uninterpreted
  spec-fn section).

## Evidence

- dalek-lite probes: 8/8 green (`run.sh`), boundaries honest
  (`explore.sh` — only `count_loop_isolation.rs` remains, DL6).
- Percolator: `run.sh` 10 files green; `explore.sh` two
  `--expect-partial` boundaries.
- Differential corpus: **187/187 verdict parity (100%), 91/91
  failure-span agreement** (c186–c188 join; c188's first draft exposed a
  real evidence-generation bug on bool-parameter conditionals, filed as
  its own issue and the case simplified to the pure `Ok(())` shape).
- Emission-mode A/B (`test_emission_modes.sh`): exit 0 — obligations and
  diagnostics identical in both layouts across every example and case
  study (run because this slice changed emission).
- Full six-phase suite passed. Statement-hash churn from the #18 ctor
  ascription was measured, not waved through: three twins carrying
  interactive proofs were re-proved or restored verbatim
  (`wide_math_saturating_mul`, `m3-vec-pop` — its untracked proof was
  lost and rewritten — and `vec-pop-uninterp`, restored from git).

## Next executable task

DL6 — `loop_isolation(false)`: a distinct non-isolated loop discharge
rule (outer facts persist across the havoc; the attribute changes the
hypotheses of the loop body's obligations, so it cannot be
twin-discharged around). Driver: `count_loop_isolation.rs`; closes #46.
