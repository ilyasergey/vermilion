#!/usr/bin/env bash
# The verbatim proof-carrying merge sort (auto + interactive). Shares the
# CaseMergeSort Lake lib (globs the whole proofs/ dir).
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" mergesort.rs --lib CaseMergeSort --manual-proofs "$@"
