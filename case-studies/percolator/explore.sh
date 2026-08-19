#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"

# withdrawal_question_mark.rs, bounded_arithmetic.rs, and
# active_bitmap_set.rs left this list 2026-07-20: generic uninterp spec
# fns (#19) and constructor type-argument ascription (#18) landed with
# dalek-lite DL5, so all three verify (two carry short interactive twin
# proofs, first-class per project policy) — they are in run.sh now.
# Partially supported since DL1 isolation + DL5 registration fixes: the
# supported siblings verify; one span-mapped refusal each remains —
# liquidation: the `max` default-body contract (std-Ord issue);
# bitmap-clear: `BitNot` (its own issue).
"$repository/scripts/run_example.sh" "$here" liquidation_fee_minmax.rs \
  --lib CasePercolator --manual-proofs --expect-partial "$@"
"$repository/scripts/run_example.sh" "$here" active_bitmap_clear.rs \
  --lib CasePercolator --manual-proofs --expect-partial "$@"
