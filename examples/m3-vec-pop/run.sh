#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" vec_pop.rs --lib M3VecPop --manual-proofs "$@"
