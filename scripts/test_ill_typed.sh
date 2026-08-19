#!/usr/bin/env bash
# Ill-typed programs must never verify (plans/execution-plan.md TODO):
# run the pipeline on a deliberately ill-typed file and assert
#   (a) the run stops in the Verus front end (exit 3, phase "front-end"),
#   (b) no obligations are generated or judged (no generated/ module, no
#       refreshed check verdict — nothing for the editor to mistake for a
#       verified state),
#   (c) the rustc error is reported at its exact span.
set -euo pipefail
cd "$(dirname "$0")/.."

case_dir="tests/ill_typed"
stem="broken_types"

rm -rf "$case_dir/generated"
rm -f ".vermilion/$stem-run.json" ".vermilion/$stem-check.json" \
  ".vermilion/$stem-frontend.log"

set +e
./scripts/run_example.sh "$case_dir" "$stem.rs" >/dev/null 2>&1
run_status=$?
set -e

fail() { echo "ill-typed case FAILED: $1" >&2; exit 1; }

# (a) structural front-end rejection
[[ "$run_status" -eq 3 ]] \
  || fail "expected exit 3 (front-end rejection), got $run_status"
grep -q '"phase":"front-end"' ".vermilion/$stem-run.json" \
  || fail "run status file does not record phase front-end"

# (b) nothing generated, nothing judged (either emission layout)
[[ ! -e "$case_dir/generated/$stem.lean" && ! -e "$case_dir/generated/$stem" ]] \
  || fail "obligations were generated for an ill-typed program"
[[ ! -e ".vermilion/$stem-check.json" ]] \
  || fail "a check verdict exists for an ill-typed program"

# (c) the rustc error carries its exact span (line 14: bool into u32)
grep -Eq "$stem\.rs:14:22" ".vermilion/$stem-frontend.log" \
  || fail "front-end log lacks the expected error span $stem.rs:14:22"

echo "ill-typed case: front end rejected it structurally (exit 3), nothing was generated or judged, error at its span."
