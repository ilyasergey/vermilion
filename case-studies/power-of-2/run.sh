#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" power_of_2.rs --lib CasePowerOfTwo --manual-proofs "$@"
