#!/usr/bin/env bash
# Regenerate and verify this example (Lean is the verifier).
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" quantified.rs --lib M3Quantifiers --manual-proofs "$@"
