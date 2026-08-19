#!/usr/bin/env bash
# The Vermilion test suite. Four scopes:
#
#   ./scripts/run_suite.sh                     # everything (the full gate)
#   ./scripts/run_suite.sh --smoke             # examples + tests, no case studies
#   ./scripts/run_suite.sh --case-study NAME   # one case study, by itself
#   ./scripts/run_suite.sh --differential      # Verus-conformance corpus only
#   ./scripts/run_suite.sh --list-case-studies # the valid NAMEs
#
# The full gate, rerun after every implementation slice:
#   1. pinned Verus toolchain + Rust workspace and VS Code extension tests
#   2. every example of every milestone (auto-discovered: examples/*/run.sh),
#      with Lean as the ONLY verifier (Verus runs --no-verify as a front end)
#   3. every case study (auto-discovered runners under case-studies/)
#   4. emission determinism (re-running is a byte-stable no-op at both
#      pipeline stages)
#   5. the incrementality matrix, ill-typed guarantee, lowering contracts,
#      interactive typeclass-evidence lifecycle, and the twin-library build
#   6. the differential corpus (Verus-as-oracle verdict/span parity)
#
# --smoke runs 1, 2, 4, and 5's contract scripts (not the twin-library
# build, which is dominated by case-study twins) — the fast loop while
# iterating on the pipeline. Case studies and the differential corpus are
# the long tail; run a single study with --case-study while working on it.
#
# Verus's own SMT verdict is deliberately consulted only by the differential
# harness; comparing the two verifiers is its job alone.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

scope=all
target_study=""
case "${1:-}" in
  "") ;;
  --smoke) scope=smoke ;;
  --case-study) scope=study; target_study="${2:?usage: run_suite.sh --case-study NAME}" ;;
  --differential|--conformance) scope=differential ;;
  --list-case-studies) scope=list ;;
  --help|-h)
    sed -n '2,25p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
  *) echo "unknown argument: $1 (try --help)" >&2; exit 2 ;;
esac

# Numbered phase banners: at any moment the console says where the
# wall-clock is going (the differential adds its own live progress bar).
banner() { printf '\033[36m[vermilion suite %s]\033[0m %s\n' "$1" "$2"; }

# A case study NAME is its directory under case-studies/; each maps to one
# or more runners, all of which must pass. sha3 lives under aeneas/ and
# carries its source-preservation guard; dalek-lite adds its probe suites.
studies() {
  local dir
  for dir in case-studies/*/; do
    dir="${dir%/}"
    [[ -e "$dir/run.sh" || -e "$dir/run_verbatim.sh" ]] && basename "$dir"
  done
  [[ -e case-studies/aeneas/sha3/run.sh ]] && echo "aeneas/sha3"
  return 0
}

study_runners() {
  case "$1" in
    aeneas/sha3)
      echo ./scripts/test_aeneas_sha3_sources.sh
      echo case-studies/aeneas/sha3/run.sh ;;
    dalek-lite)
      echo case-studies/dalek-lite/probes/run.sh
      echo case-studies/dalek-lite/probes/explore.sh
      echo case-studies/dalek-lite/run.sh ;;
    *)
      local runner
      for runner in "case-studies/$1/run.sh" "case-studies/$1/run_verbatim.sh"; do
        [[ -e "$runner" ]] && echo "$runner"
      done
      return 0 ;;
  esac
}

if [[ "$scope" == list ]]; then
  studies
  exit 0
fi

if [[ "$scope" == differential ]]; then
  # The Verus conformance suite: every corpus case runs through BOTH
  # verifiers — Verus with its full SMT verification (the only place its Z3
  # verdict is consulted) and Vermilion with Lean judging — and the harness
  # demands verdict AND failure-span agreement, both directions.
  banner "differential" "corpus (Verus as oracle)"
  ./scripts/setup_verus.sh
  python3 scripts/run_differential.py
  ./scripts/test_differential_editor.sh
  echo "differential corpus passed: verdict and failure-span parity hold."
  exit 0
fi

if [[ "$scope" == study ]]; then
  if ! studies | grep -qx "$target_study"; then
    echo "unknown case study: $target_study" >&2
    echo "valid names:" >&2; studies >&2
    exit 2
  fi
  banner "case-study" "$target_study"
  ./scripts/setup_verus.sh
  while IFS= read -r runner; do
    banner "case-study" "$target_study: $runner"
    "$runner"
  done < <(study_runners "$target_study")
  echo "case study $target_study passed: every obligation verified by Lean" \
    "(or rejected at its Rust span where intended)."
  exit 0
fi

phases=6; [[ "$scope" == smoke ]] && phases=4

banner "1/$phases" "pinned Verus toolchain + Rust workspace + extension tests"
./scripts/setup_verus.sh
cargo test --workspace
npm test --prefix editor/vscode-vermilion

example_runners=(examples/*/run.sh)
example_index=0
for runner in "${example_runners[@]}"; do
  example_index=$((example_index + 1))
  banner "2/$phases" "examples: $(dirname "$runner") ($example_index/${#example_runners[@]})"
  "$runner"
done

if [[ "$scope" == all ]]; then
  study_index=0
  study_count=$(studies | wc -l | tr -d ' ')
  while IFS= read -r study; do
    study_index=$((study_index + 1))
    while IFS= read -r runner; do
      banner "3/$phases" "case studies: $study ($study_index/$study_count) — $runner"
      "$runner"
    done < <(study_runners "$study")
  done < <(studies)
fi

# Emission must be deterministic: re-running an example is a byte-stable
# no-op at both pipeline stages (Rust -> IR, IR -> Lean modules).
determinism_phase="4/$phases"; [[ "$scope" == smoke ]] && determinism_phase="3/$phases"
banner "$determinism_phase" "emission determinism (byte-stable no-op re-runs)"
source "$repository/scripts/verus_env.sh"
direct=crates/vermilion_direct/target/release/vermilion_direct
vrml_gen=.lake/build/bin/vrml_gen
"$direct" .vermilion/simple-vir.bin --out .vermilion/simple-ir.sexp \
  | tee /dev/stderr | grep -q unchanged
"$direct" .vermilion/widening-vir.bin --out .vermilion/widening-ir.sexp \
  | tee /dev/stderr | grep -q unchanged
"$vrml_gen" .vermilion/simple-ir.sexp | tee /dev/stderr | grep -q unchanged
"$vrml_gen" .vermilion/widening-ir.sexp | tee /dev/stderr | grep -q unchanged

contracts_phase="5/$phases"; [[ "$scope" == smoke ]] && contracts_phase="4/$phases"
banner "$contracts_phase" "incrementality + fail-closed + interactive evidence contracts"
./scripts/test_incrementality.sh
./scripts/test_ill_typed.sh
./scripts/test_lowering_refusals.sh
./scripts/test_lowering_isolation.sh
./scripts/register_proof_lib.py scan
./scripts/test_typeclass_evidence.sh

if [[ "$scope" == smoke ]]; then
  echo "Vermilion smoke suite passed: every example verified by Lean (or" \
    "rejected at its Rust span where intended), emission is deterministic," \
    "and the pipeline contracts hold. Case studies, the twin-library build," \
    "and the differential corpus run in the full suite."
  exit 0
fi

# Lake-build every twin library — the editor's Lean server elaborates the
# twins through these libs, and cross-module regressions (a helper hidden
# by `private`, a missing Specs import) surface only here.
# shellcheck disable=SC2046
# The differential editor libraries contain intentional negative cases and
# exist to teach the editor their module roots; those units are judged
# individually in phase 6 rather than built indiscriminately here.
lake build $(grep '^lean_lib ' lakefile.lean | awk '{print $2}' \
  | grep -v -e '^Vermilion$' -e '^DifferentialGenerated$' \
  -e '^DifferentialProofs$') >/dev/null
echo "all twin libraries lake-build"
banner "6/$phases" "differential corpus (Verus as oracle)"
python3 scripts/run_differential.py
./scripts/test_differential_editor.sh

echo "Vermilion suite passed: every example and case study verified by Lean" \
  "(or rejected at its Rust span where intended), emission is deterministic," \
  "the incrementality contract holds, and differential parity is above the gate."
