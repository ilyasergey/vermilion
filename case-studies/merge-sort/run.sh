#!/usr/bin/env bash
# The specs-only variant is the verification target; the verbatim Verus
# original (mergesort.rs) is kept for provenance and future parity work.
# --manual-proofs: the trickier multiset/sortedness goals are discharged
# interactively in proofs/mergesort_clean.lean (the twin is the arbiter).
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" mergesort_clean.rs --lib CaseMergeSort --manual-proofs "$@"
