#!/usr/bin/env bash
# Verify the annotated working copy with generated/proof twins beside it.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../../.." && pwd)"

"$repository/scripts/run_example.sh" \
  "$here/verification/src" algos.rs \
  --lib CaseAeneasSha3 "$@"

"$repository/scripts/test_aeneas_sha3_sources.sh"
