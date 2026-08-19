#!/usr/bin/env bash
# Compile and RUN the verified merge sort (test_main.rs includes
# mergesort_clean.rs and asserts on a concrete input). Compilation uses the
# pinned Verus toolchain with --no-verify: verifying is run.sh's job; this
# script demonstrates the verified code actually executing.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
cd "$repository"
source scripts/verus_env.sh
out="$repository/.vermilion/mergesort-test"
echo "[merge-sort] compiling test_main.rs (Verus --compile --no-verify)"
"$verus" "$here/test_main.rs" --compile --no-verify -o "$out"
echo "[merge-sort] running"
"$out"
