#!/usr/bin/env bash
# Crypto probe driver (research, non-asserting): runs every probe
# through the standard pipeline and reports how far each one gets.
#
#   phase front-end  exit 3 — Verus rejected the program (never lowered)
#   phase lowering   exit 4 — adapter refused: outside the fragment
#   phase lean       exit 1 — lowered; Lean rejected >=1 obligation
#   phase lean       exit 0 — verified
#
# The verdict table is the probe result; per-probe logs land in
# .probe-logs/. See ../gap-matrix.md for the interpreted findings.
set -uo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../../.." && pwd)"
logs="$here/.probe-logs"
mkdir -p "$logs"

printf '%-28s %-11s %-6s %s\n' "PROBE" "PHASE" "EXIT" "FIRST DIAGNOSTIC"
printf '%-28s %-11s %-6s %s\n' "-----" "-----" "----" "----------------"

for source_file in "$here"/*.rs; do
  stem="$(basename "$source_file" .rs)"
  "$repository/scripts/run_example.sh" "$here" "$stem.rs" \
    >"$logs/$stem.log" 2>&1
  code=$?
  phase="?"
  run_json="$repository/.vermilion/$stem-run.json"
  if [[ -f "$run_json" ]]; then
    phase="$(sed -n 's/.*"phase":"\([^"]*\)".*/\1/p' "$run_json")"
  fi
  diag=""
  if [[ "$code" -ne 0 ]]; then
    diag="$(tr '\r' '\n' < "$logs/$stem.log" \
      | sed 's/\x1b\[[0-9;]*m//g;s/\x1b\[2K//g;s/^\[vermilion\][^e]*//' \
      | grep -m1 -E 'error\[|error:|unsupported' | cut -c1-110)"
  fi
  printf '%-28s %-11s %-6s %s\n' "$stem" "$phase" "$code" "$diag"
done
