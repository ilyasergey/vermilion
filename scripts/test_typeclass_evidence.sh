#!/usr/bin/env bash
# Interactive typeclass-evidence lifecycle:
#   unresolved generated evidence is a span-mapped failure and blocks --probe;
#   filling only that instance in the twin kernel-checks and survives reruns.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

# The generic layer is independent of the first `Decidable p` producer:
# structured class targets render compositionally, dependencies sort, and
# malformed dependency graphs fail closed.
lake env lean tests/typeclass_evidence_order.lean

workdir="$(mktemp -d "$repository/.vermilion/evidence-lifecycle.XXXXXX")"
trap 'rm -rf "$workdir"' EXIT

source_file="evidence_lifecycle.rs"
cp tests/differential/c139_bool_ite_evidence_ok.rs "$workdir/$source_file"

first_log="$workdir/first.log"
set +e
./scripts/run_example.sh "$workdir" "$source_file" >"$first_log" 2>&1
first_status=$?
set -e
[[ "$first_status" -eq 1 ]] || {
  cat "$first_log" >&2
  echo "expected unresolved evidence to exit 1, got $first_status" >&2
  exit 1
}
grep -q "required Lean typeclass evidence is unresolved" "$first_log"

manifest="$workdir/generated/evidence_lifecycle.json"
# Per-function (default) layout: evidence dictionaries live in the shared
# Evidence unit's twin.
twin="$workdir/proofs/evidence_lifecycle/Evidence.lean"
python3 -c '
import json, pathlib, sys
manifest = json.loads(pathlib.Path(sys.argv[1]).read_text())
evidence = [o for o in manifest["obligations"] if o["kind"] == "typeclass_evidence"]
assert len(evidence) == 1, evidence
assert evidence[0]["name"].endswith(".evidence_decidable_prop"), evidence[0]
' "$manifest"
grep -Fq "@[vrml_evidence]" "$twin"
grep -q "sorry" "$twin"
if ./target/debug/vrml_sync "$manifest" --probe; then
  echo "unresolved evidence unexpectedly passed vrml_sync --probe" >&2
  exit 1
fi

python3 -c '
from pathlib import Path
import sys
path = Path(sys.argv[1])
text = path.read_text()
old = "  -- TODO(vermilion): provide this class dictionary interactively.\n  sorry\n"
assert old in text
path.write_text(text.replace(old, "  exact Classical.propDecidable p\n", 1))
' "$twin"

# Kernel-check the twins mode-agnostically (compiles the shared Specs/
# Evidence twin oleans itself, no Lake lib needed for this ad-hoc dir).
./target/debug/vrml_check "$manifest" --twin-check
./target/debug/vrml_sync "$manifest" --probe

second_log="$workdir/second.log"
./scripts/run_example.sh "$workdir" "$source_file" >"$second_log" 2>&1
grep -q "discharged interactively" "$second_log"
! grep -q "required Lean typeclass evidence is unresolved" "$second_log"
! grep -q "sorry" "$twin"

echo "typeclass evidence lifecycle passed"
