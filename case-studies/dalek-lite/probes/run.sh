#!/usr/bin/env bash
# Green dalek-lite probes: Lean is the only verifier; twins are the arbiter.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../../.." && pwd)"

"$repository/scripts/run_example.sh" "$here" wide_mul_control.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" choice_assume_spec.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" ghost_high_byte.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" field_sqrt_choose.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" isolation_driver.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" montgomery_inverse_calc.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" subtle_assumes.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" core_assumes.rs \
  --lib CaseDalekLite --manual-proofs "$@"
"$repository/scripts/run_example.sh" "$here" count_loop_isolation.rs \
  --lib CaseDalekLite --manual-proofs "$@"
