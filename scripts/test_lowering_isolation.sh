#!/usr/bin/env bash
# Per-function lowering isolation (docs/issues/per-function-lowering-isolation.md,
# dalek-lite DL1): on a file mixing one supported and one unsupported function,
#   (a) pinned Verus verifies both (the construct is Verus-legal),
#   (b) the supported function's obligations are emitted and Lean-verified,
#   (c) the refused function appears in the manifest as a source-mapped
#       disposition at the offending construct's span,
#   (d) the run is NOT green (fail-closed: partial is never "verified"),
#   (e) a fully-refused file still takes the historical whole-run refusal
#       path, so --expect-unsupported probes keep their meaning.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

./scripts/setup_verus.sh
source "$repository/scripts/verus_env.sh"

case_dir="tests/lowering_isolation"
stem="mixed_refusal"
verus_log=".vermilion/$stem-verus.log"
pipeline_log=".vermilion/$stem-pipeline.log"

fail() { echo "lowering isolation FAILED: $1" >&2; exit 1; }

rm -rf "$case_dir/generated"

# (a) both functions are Verus-legal and verified by the oracle.
"$verus" "$case_dir/$stem.rs" --crate-type=lib >"$verus_log" 2>&1
grep -q '2 verified, 0 errors' "$verus_log" \
  || fail "pinned Verus did not verify both functions"

# The mixed file must FAIL the run (refusal present) while still verifying
# the supported sibling.
set +e
./scripts/run_example.sh "$case_dir" "$stem.rs" >"$pipeline_log" 2>&1
run_status=$?
set -e
[ "$run_status" -ne 0 ] || fail "a partially-lowered file reported success"

# (b) the supported function was emitted and its obligations verified.
[ -f "$case_dir/generated/$stem/triple.lean" ] \
  || fail "the supported sibling was not emitted"
grep -q 'all 2 obligations' "$pipeline_log" \
  || fail "the supported sibling's obligations were not verified"

# (c) the manifest records the refusal at the bitwise-NOT's span.
manifest="$case_dir/generated/$stem.json"
grep -q '"refused"' "$manifest" || fail "manifest carries no refused dispositions"
grep -q '"function": "mixed_refusal.flip_bits"' "$manifest" \
  || fail "the refused function is not named in the manifest"
grep -q 'BitNot' "$manifest" \
  || fail "the refusal message lost the construct name"
grep -q 'outside the supported fragment' "$pipeline_log" \
  || fail "no human refusal diagnostic in the run output"

# (d) no generated unit exists for the refused function.
[ ! -f "$case_dir/generated/$stem/flip_bits.lean" ] \
  || fail "a refused function produced a Lean unit"

# (e) a fully-refused file keeps the historical whole-run refusal contract.
./scripts/run_example.sh "$case_dir" fully_refused.rs \
  --expect-unsupported >/dev/null 2>&1 \
  || fail "the fully-refused path regressed (--expect-unsupported broke)"

echo "per-function lowering isolation: supported siblings verify, refusals are span-mapped manifest dispositions, and the run stays non-green"
