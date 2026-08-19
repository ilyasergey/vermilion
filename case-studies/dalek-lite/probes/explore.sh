#!/usr/bin/env bash
# Expected dalek-lite lowering boundaries, run as honest fail-closed probes.
# Each line names the DL-slice in PLAN.md that will flip it green; when the
# fragment catches up, run_example.sh fails loudly and the probe moves to
# run.sh with the flag removed.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../../.." && pwd)"

# DL2 — LANDED (2026-07-20): `choose` lowers to `Vermilion.chooseSpec`;
# field_sqrt_choose.rs and isolation_driver.rs moved to run.sh (green).
# DL1's isolation contract stays guarded by scripts/test_lowering_isolation.sh
# (its fixture now uses loop_isolation(false) as the refused construct).

# DL6 — LANDED (2026-07-20): non-isolated loops lower with the (NLOOP)
# rule (outer facts persist across havoc); count_loop_isolation.rs moved
# to run.sh (green). No expected boundaries remain — every measured
# dalek-lite probe construct lowers. This script stays as the harness for
# the next boundary DL8 discovers.
echo "[dalek-lite] no expected boundaries remain (DL1-DL6 landed); see run.sh" >&2

# DL3 — LANDED (2026-07-20, fork 486008364): macro-expanded spans resolve to
# their source call site, so `calc!` output colocates correctly;
# montgomery_inverse_calc.rs moved to run.sh (4/4 automatic).
