#!/usr/bin/env bash
# The full Vermilion test suite, rerun after every implementation slice:
#   1. Rust workspace and VS Code extension unit tests
#   2. every example of every milestone (auto-discovered: examples/*/run.sh),
#      with Lean as the ONLY verifier (Verus runs --no-verify as a front end)
#   3. emission determinism (re-running is a byte-stable no-op at both
#      pipeline stages)
#   4. the incrementality contract matrix
#   5. the ill-typed guarantee plus interactive typeclass-evidence lifecycle
#   6. the differential corpus (Verus-as-oracle verdict/span parity)
#
# Verus's own SMT verdict is deliberately consulted only by the differential
# harness; comparing the two verifiers is its job alone.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

# Numbered phase banners: at any moment the console says where the
# wall-clock is going (the differential adds its own live progress bar).
phase() { printf '\033[36m[vermilion suite %s]\033[0m %s\n' "$1" "$2"; }

phase 1/6 "pinned Verus toolchain"
./scripts/setup_verus.sh
phase 2/6 "Rust workspace + VS Code extension tests"
cargo test --workspace
npm test --prefix editor/vscode-vermilion
./scripts/test_aeneas_sha3_sources.sh

example_runners=(examples/*/run.sh case-studies/*/run.sh \
  case-studies/*/run_verbatim.sh case-studies/aeneas/sha3/run.sh \
  case-studies/dalek-lite/probes/run.sh case-studies/dalek-lite/probes/explore.sh)
example_index=0
for runner in "${example_runners[@]}"; do
  example_index=$((example_index + 1))
  phase 3/6 "examples: $(dirname "$runner") ($example_index/${#example_runners[@]})"
  "$runner"
done

# Emission must be deterministic: re-running an example is a byte-stable
# no-op at both pipeline stages (Rust -> IR, IR -> Lean modules).
phase 4/6 "emission determinism (byte-stable no-op re-runs)"
source "$repository/scripts/verus_env.sh"
direct=crates/vermilion_direct/target/release/vermilion_direct
vrml_gen=.lake/build/bin/vrml_gen
"$direct" .vermilion/simple-vir.bin --out .vermilion/simple-ir.sexp \
  | tee /dev/stderr | grep -q unchanged
"$direct" .vermilion/widening-vir.bin --out .vermilion/widening-ir.sexp \
  | tee /dev/stderr | grep -q unchanged
"$vrml_gen" .vermilion/simple-ir.sexp | tee /dev/stderr | grep -q unchanged
"$vrml_gen" .vermilion/widening-ir.sexp | tee /dev/stderr | grep -q unchanged

phase 5/6 "incrementality + fail-closed + interactive evidence contracts"
./scripts/test_incrementality.sh
./scripts/test_ill_typed.sh
./scripts/test_lowering_refusals.sh
./scripts/test_lowering_isolation.sh
./scripts/register_proof_lib.py scan
./scripts/test_typeclass_evidence.sh
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
phase 6/6 "differential corpus (Verus as oracle)"
python3 scripts/run_differential.py
./scripts/test_differential_editor.sh

echo "Vermilion suite passed: every example verified by Lean (or rejected" \
  "at its Rust span where intended), emission is deterministic, the" \
  "incrementality contract holds, and differential parity is above the gate."
