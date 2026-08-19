#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" curve25519.rs --lib CaseCurve25519 --manual-proofs "$@"
