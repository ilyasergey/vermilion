#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"

"$repository/scripts/run_example.sh" "$here" encode_bool_decidable.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" withdrawal_question_mark.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" bounded_arithmetic.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" active_bitmap_set.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" policy_gates.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" result_gates.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" enum_codecs.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" active_bitmap_get.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" wide_math_saturating_mul.rs \
  --lib CasePercolator --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" wide_math_u256_basics.rs \
  --lib CasePercolator --manual-proofs "$@"
