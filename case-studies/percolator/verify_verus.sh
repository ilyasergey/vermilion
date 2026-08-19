#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
source "$repository/scripts/verus_env.sh"

sources=(
  policy_gates.rs
  enum_codecs.rs
  active_bitmap_get.rs
  encode_bool_decidable.rs
  result_gates.rs
  bounded_arithmetic.rs
  withdrawal_question_mark.rs
  liquidation_fee_minmax.rs
  active_bitmap_set.rs
  active_bitmap_clear.rs
  wide_math_saturating_mul.rs
  wide_math_u256_basics.rs
)

for source_file in "${sources[@]}"; do
  echo "[percolator/verus] $source_file"
  "$verus" "$here/$source_file" --crate-type=lib
done
