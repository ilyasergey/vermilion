#!/usr/bin/env bash
# Emission-mode consistency harness: every target must produce the SAME
# verdict, the same obligations (names + statement hashes), and the same
# per-obligation diagnostics in per-file and per-function emission modes.
#
#   scripts/test_emission_modes.sh [<target-dir>…]
#
# Targets default to every examples/* and case-studies/* directory with a
# run.sh. Each target runs twice through its own run.sh (with --lib,
# --expect-failure, etc. intact), the mode selected via VERMILION_EMIT_MODE:
# per-file first (the baseline — including targets that are currently
# expected to fail, whose failure must be reproduced identically), then
# per-function, which is also the state the target is left in (per-function
# is the default emission mode).
#
# Exit 0 iff every target is consistent across modes.
set -uo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

targets=("$@")
if [[ ${#targets[@]} -eq 0 ]]; then
  for dir in examples/*/ case-studies/*/ case-studies/aeneas/*/; do
    [[ -f "$dir/run.sh" ]] && targets+=("${dir%/}")
  done
fi

# The Rust stems a runner actually drives: the .rs basenames its
# non-comment lines mention. A directory can hold further Rust files driven
# by OTHER runners (merge-sort's run_verbatim.sh) whose stale manifests
# must not leak into this runner's snapshot.
driven_stems() { # run.sh
  grep -v '^[[:space:]]*#' "$1" | grep -oE '[A-Za-z0-9_-]+\.rs' \
    | sed 's/\.rs$//' | sort -u | tr '\n' ' '
}

# Snapshot a target's verification outcome: per driven manifest — emission
# mode, sorted (obligation, statement hash) pairs, and the sorted
# diagnostics (failed / covered-by-twin) from the check files. Mode is
# reported separately so the comparison can ignore it while asserting it.
snapshot() { # dir out-file stems…
  local directory="$1" out="$2"
  shift 2
  python3 - "$directory" "$@" > "$out" <<'PY'
import glob, json, os, sys
directory = sys.argv[1]
stems = set(sys.argv[2:])
result = {}
for manifest_path in sorted(glob.glob(os.path.join(directory, "generated", "*.json"))):
    if stems and os.path.splitext(os.path.basename(manifest_path))[0] not in stems:
        continue
    with open(manifest_path) as handle:
        manifest = json.load(handle)
    stem = os.path.splitext(os.path.basename(manifest_path))[0]
    diagnostics = []
    check_path = os.path.join(".vermilion", f"{stem}-check.json")
    if os.path.exists(check_path):
        with open(check_path) as handle:
            for line in handle:
                line = line.strip()
                if not line.startswith("{"):
                    continue
                try:
                    value = json.loads(line)
                except ValueError:
                    continue
                meta = value.get("vermilion", {})
                if not meta.get("obligation"):
                    continue
                kind = "covered" if meta.get("covered_by_twin") else "failed"
                diagnostics.append([kind, meta["obligation"]])
    result[stem] = {
        "mode": manifest.get("mode", "per-file"),
        "obligations": sorted(
            [o["name"], o["statement_hash"]] for o in manifest.get("obligations", [])
        ),
        "diagnostics": sorted(diagnostics),
    }
json.dump(result, sys.stdout, indent=1, sort_keys=True)
print()
PY
}

# The mode-independent part of a snapshot (for the equality check).
strip_mode() { # in-file out-file
  python3 - "$1" > "$2" <<'PY'
import json, sys
with open(sys.argv[1]) as handle:
    data = json.load(handle)
for entry in data.values():
    entry.pop("mode", None)
json.dump(data, sys.stdout, indent=1, sort_keys=True)
print()
PY
}

modes_of() { # in-file
  python3 -c '
import json, sys
with open(sys.argv[1]) as handle:
    data = json.load(handle)
print(" ".join(sorted({entry["mode"] for entry in data.values()})) or "none")
' "$1"
}

work="$repository/.vermilion/emission-modes"
mkdir -p "$work"
failures=0
declare -a report

for target in "${targets[@]}"; do
  name="$(basename "$target")"
  echo "=== $target ==="

  # A/B runs are a MEASUREMENT: the user-owned proofs/ twin must come out
  # exactly as it went in (the per-file pass would otherwise leave a stray
  # per-file twin `proofs/<stem>.lean` beside the per-function folders —
  # user-reported residue, 2026-07-20). Snapshot before, restore after.
  proofs_backup=""
  if [[ -d "$target/proofs" ]]; then
    proofs_backup="$work/$name-proofs-backup"
    rm -rf "$proofs_backup"
    cp -R "$target/proofs" "$proofs_backup"
  fi

  # shellcheck disable=SC2046
  stems=$(driven_stems "./$target/run.sh")

  VERMILION_EMIT_MODE=per-file "./$target/run.sh" \
    > "$work/$name-per-file.log" 2>&1
  code_file=$?
  snapshot "$target" "$work/$name-per-file.json" $stems

  VERMILION_EMIT_MODE=per-function "./$target/run.sh" \
    > "$work/$name-per-function.log" 2>&1
  code_function=$?
  snapshot "$target" "$work/$name-per-function.json" $stems

  if [[ -n "$proofs_backup" ]]; then
    rm -rf "$target/proofs"
    cp -R "$proofs_backup" "$target/proofs"
    rm -rf "$proofs_backup"
  fi

  status="ok"
  if [[ "$code_file" -ne "$code_function" ]]; then
    status="EXIT MISMATCH (per-file $code_file, per-function $code_function)"
  else
    strip_mode "$work/$name-per-file.json" "$work/$name-per-file.cmp"
    strip_mode "$work/$name-per-function.json" "$work/$name-per-function.cmp"
    if ! cmp -s "$work/$name-per-file.cmp" "$work/$name-per-function.cmp"; then
      status="SNAPSHOT MISMATCH (diff $work/$name-per-{file,function}.cmp)"
    else
      # Emission actually happened in the requested modes (a run that never
      # reached vrml_gen — front-end/lowering refusal — legitimately has no
      # manifests and reports "none").
      modes_a="$(modes_of "$work/$name-per-file.json")"
      modes_b="$(modes_of "$work/$name-per-function.json")"
      if [[ "$modes_a" != "per-file" && "$modes_a" != "none" ]] \
        || [[ "$modes_b" != "per-function" && "$modes_b" != "none" ]]; then
        status="MODE NOT APPLIED (per-file run: $modes_a; per-function run: $modes_b)"
      fi
    fi
  fi

  if [[ "$status" != "ok" ]]; then
    failures=$((failures + 1))
    echo "  ✗ $status"
  else
    echo "  ✓ exit $code_file in both modes; obligations and diagnostics identical"
  fi
  report+=("$target: exit=$code_file/$code_function $status")
done

echo
echo "=== emission-mode consistency: ${#targets[@]} targets, $failures mismatch(es) ==="
for line in "${report[@]}"; do
  echo "  $line"
done
[[ "$failures" -eq 0 ]]
