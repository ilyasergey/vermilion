#!/usr/bin/env bash
# A projection at a concrete monomorphic impl is normalized, but an abstract
# generic associated type has no unique Lean type and must remain fail-closed.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

./scripts/setup_verus.sh
source "$repository/scripts/verus_env.sh"

case_dir="tests/lowering_refusals"
stem="associated_projection_generic"
verus_log=".vermilion/$stem-verus.log"
pipeline_log=".vermilion/$stem-pipeline.log"

"$verus" "$case_dir/$stem.rs" --crate-type=lib >"$verus_log" 2>&1

./scripts/run_example.sh "$case_dir" "$stem.rs" --expect-unsupported \
  >"$pipeline_log" 2>&1

grep -q '"phase":"lowering"' ".vermilion/$stem-run.json"
grep -q 'unsupported SST binder type Projection' "$pipeline_log"

echo "generic associated-type projection: Verus accepts it; Vermilion refuses it at lowering until a unique concrete impl type exists"
