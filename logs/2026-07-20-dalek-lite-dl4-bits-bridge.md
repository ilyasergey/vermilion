# 2026-07-20 — DL4: Bits bridge for indexed operands (#35 continuation)

## Planning inputs

- dalek-lite agenda DL4, issue #35's 2026-07-20 addendum, driver probe
  `ghost_high_byte.rs`: the isolated `by (bit_vector)` query
  `Bits.shr 8 (Seq.index bytes 31) 7 = 0` (given `bytes[31] ≤ 127`) stayed
  interactive because (a) `Vermilion.Bits` lacked the shr-as-division
  characterization the twin proved by hand at a fixed width, and (b) the
  32-byte array's element-range contract forall exceeded
  `scalar_saturate`'s exhaustive-instantiation cap (16), so the operand's
  range never reached the context.
- Upstream measure: ~399 `by (bit_vector)` sites in dalek-lite; the
  scalar.rs `high_byte >> 7` shape is the DL4 target. Boolean-structure
  goals (signed shifts, xor chains) are deferred to a DL8 re-measure.

## What landed

- **`Vermilion.Bits` bridge lemmas** (`lean/Vermilion/Prelude.lean`),
  general-width, kernel-checked, promoted from the SymCrypt twins'
  private width-32 helpers:
  - `shr_eq_div`: `shr w x k = x / 2^k.toNat` for in-range `x` (any
    shift amount);
  - `band_two_pow_sub_one_eq_mod`: `band w x (2^k - 1) = x % 2^k` for
    in-range `x`, `k ≤ w`;
  - `@[simp, grind]` range bounds `shr_nonneg` / `shr_lt` (mirror the
    `band`/`bor`/`bxor` ones — an atom bound for every shift application).
- **`vrml_scalar_saturate`** (`lean/Vermilion/Obligations.lean`):
  - bounded contract foralls are additionally instantiated at the literal
    `Seq.index` indices occurring in the sequent (goal + hypotheses;
    explicit-stack scan), independent of the exhaustive cap — guarded
    `try … (by omega)` per instantiation, shared work budget unchanged;
  - after normalization/splitting, a conditional
    `simp (disch := omega) only [Bits.shr_eq_div, Int.reduceToNat,
    Int.reducePow] at *` rewrites in-range shifts to divisions with
    numeral divisors, which the final `omega` handles natively; early
    return if the bridge closes the goal outright.
- **Policy doc**: the `scalar_saturate` paragraph in `docs/vcgen.md`
  updated in the same slice (occurring-index instantiation + bit-bridge
  rewrite; proof-search details remain droppable).
- **Corpus**: c184 (indexed bv shift, pass) / c185 (same query asserting
  `== 1`, fail at the assert span) guard both directions.
- **Example**: `examples/m4-bitvec` grew `shift_is_division` (plain
  binder) and `high_bit_clear` (indexed operand); README documents the
  bridge. 12/12 obligations automatic, twins byte-identical.
- **Probe flipped**: `ghost_high_byte.rs` **3/3 automatic**; the
  interactive twin proof was retired and `vrml_sync` recreated the twin
  byte-identical to the generated attempt (0 sorry). Matrix row updated.
- **Issue #35** progress note updated; still open there: ground
  `band`/`bor`/`bxor` constant-folding (wants a literal-mask simproc so
  `(x >> 4) & 15 == x / 16` closes without the syntactic `2^k - 1` form)
  and the BitVec-view abstraction toward `bv_decide` for
  boolean-structure goals.
- **Drive-by fix (user-reported mid-slice)**: the VS Code extension's
  in-progress zigzag and ✓ marks vanished on c184 —
  `parseFunctionRanges` (`editor/vscode-vermilion/core.js`) treated the
  `;` inside an array type (`&[u8; 32]`) as a bodyless-declaration
  terminator, collapsing the function range to its declaration line.
  Paren/bracket depth now guards the terminator; regression test added
  (10/10 extension tests pass); tracked and closed as #47
  (`docs/issues/closed/function-ranges-break-on-array-typed-parameters.md`).
  The fix is live via the symlinked extension after a window reload.

## Evidence

- `ghost_high_byte.rs`: 3/3 obligations verified by Lean, twin
  byte-identical (was 2 automatic + 1 interactive).
- `examples/m4-bitvec`: 12/12 automatic (was 7/7) including both new
  shapes; twins identical.
- Differential corpus: **184/184 verdict parity (100%), 90/90
  failure-span agreement** (c184/c185 join the corpus; c185's failure
  span agrees with Verus).
- Full six-phase suite passed. One transient local wrinkle, not
  repo-side: removing the migrated legacy per-file twin
  `examples/m4-bitvec/proofs/bitvec.lean` (as the pipeline's migration
  warning suggests) left Lake's *cached* lakefile configuration still
  globbing the deleted module root — the twin-library build step failed
  with `no such file or directory` until `lake -R` reconfigured. Worth
  remembering when retiring other migrated legacy twins.

## Next executable task

DL5 — `assume_specification` breadth: the basic shape is measured green
(`choice_assume_spec.rs`); probe the remaining upstream shapes —
trait-method targets, generic targets, `CtOption`-style wrapper types
(`core_assumes.rs`, `subtle_assumes.rs` in full).
