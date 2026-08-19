#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" imo_1988_6.rs --lib CaseImo1988Six --manual-proofs "$@"
