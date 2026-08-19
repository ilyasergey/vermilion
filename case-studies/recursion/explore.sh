#!/usr/bin/env bash
# NOT a green gate (named explore.sh, so run_suite's run.sh glob skips it):
# recursion.rs is the Verus guide's recursion tutorial — a WIP investigation
# target, see README.md. Run to see what currently lowers / fails.
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" recursion.rs "$@"
