#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
checkout="${1:-${AENEAS_SHA3_CHECKOUT:-$here/_work/upstream}}"

"$here/check_pin.sh" "$checkout"

echo "[sha3.rs upstream 1/2] Cargo tests"
(
  cd "$checkout"
  cargo test --locked
)

echo "[sha3.rs upstream 2/2] Lean proofs"
(
  cd "$checkout/lean"
  lake build
)

echo "sha3.rs upstream baselines passed"

