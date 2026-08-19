# 2026-07-20 — DL7: vstd drift assessment (Jan `88f7396` → Jul pin)

## Planning inputs

- dalek-lite agenda DL7: sweep the crate's vstd surface, classify
  removed/renamed/changed symbols, decide accommodation vs
  upstream-alignment per case, before any whole-module acquisition
  (DL8) trusts verbatim source.

## Method (mechanical, reproducible)

- Enumerate `use vstd::` sites (383) and their module set.
- Resolve every explicitly imported vstd lemma/spec-fn name against our
  July vstd tree (`.verus-checkout/source/vstd`).
- Extract every `lemma_*` CALL site in the crate (918 distinct names)
  and resolve each against (a) the crate's own `lemmas/**` layer
  (804 `proof fn`s + macro instantiations) and (b) our vstd (including
  the macro-generated per-width `vstd::bits` families).
- Sweep `group_*` names for vstd broadcast groups.
- Cross-check the January vstd (`git show 88f7396:…` in the fork
  checkout) for the one suspected removal.

## Findings

- **Zero vstd drift affects dalek-lite.** All 10 explicitly imported
  vstd lemmas, both named spec fns (`pow2`, `pow`), and every
  glob-reached `vstd::bits` lemma exist in our July vstd with unchanged
  signatures. Every one of the 918 called lemma names resolves; no vstd
  broadcast groups are used (all `group_*` names are the crate's own
  curve-order lemma groups).
- **The DL0 "first drift point" was a misattribution.** `lemma_mul_le`
  is dalek-lite's own helper
  (`lemmas/common_lemmas/mul_lemmas.rs:28`), not a vstd export at
  EITHER pin (the original grep prefix-matched
  `lemma_mul_left_inequality`). The `wide_mul_control.rs` probe swapped
  in vstd's `lemma_mul_upper_bound` only because a one-file distillation
  cannot import a crate-local lemma — correct for the probe, irrelevant
  at crate scale.
- The only Verus-level accommodation measured anywhere in the probe
  series is the **front-end mut-ref migration** (`*x` → `*final(x)` in
  postconditions on `&mut` params, hit by the DL5 probes): a mechanical,
  meaning-preserving syntax edit our newer front end requires, to be
  labeled `<MODIFIED CODE>` wherever DL8 acquisition hits it.

## Deliverables

- Report: `docs/reports/dalek-lite-vstd-drift.md` (the per-case
  decision table degenerates to "no cases").
- README drift paragraph corrected; PLAN DL7 row closed.
- **Consequence for DL8:** Layer Set A acquisition proceeds verbatim
  with no vstd accommodation list.

## Next executable task

DL8 — Layer Set A acquisition: the 9 field-representation/reduction
modules end to end, whole files, per-function dispositions; publish the
first automation-rate scoreboard against CryptoProver's layer results.
