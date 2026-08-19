#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" binary_search.rs --lib CaseBinarySearch --manual-proofs "$@"
