#!/usr/bin/env bash
# Shared per-example driver. Usage:
#   run_example.sh <example-dir> <source.rs> [--lib <LakeLib>] [--expect-failure]
#                  [--manual-proofs] [--clean-env] [--per-function|--per-file]
#                  [--help]
#
# Flow (Lean is the only verifier; Verus runs --no-verify as a front end):
#   1. front end -> VIR export -> direct adapter -> textual IR (docs/ir.md)
#      -> vrml_gen (Lean) -> generated/<stem>.lean+json (per-file mode) or
#      generated/<stem>/{Specs,<function>}.lean + generated/<stem>.json
#      (per-function mode)
#   2. vrml_check judges the generated obligations at their Rust spans
#      (per-function units are judged by parallel Lean processes)
#   3. vrml_sync reconciles the proofs/ twin(s): user-edited proofs
#      survive while their statement hash matches; failed automation becomes
#      `sorry` with a warning to prove manually
#   4. with --lib, the proofs twin(s) are kernel-checked
#
# --per-function / --per-file select the emission layout; without a flag the
#   mode recorded in the existing generated/<stem>.json is kept (a fresh
#   directory defaults to per-function). Verdicts are identical across modes.
# --expect-failure inverts step 2 for deliberately broken demos.
# --expect-unsupported expects step 1's adapter to REFUSE the program (a
#   construct outside the supported fragment): the run succeeds when lowering
#   fails with its unsupported-construct message, and fails loudly once the
#   fragment catches up (drop the flag and verify for real). For case studies
#   that document scheduled gaps.
# --manual-proofs accepts automation failures in generated/ as long as the
#   proofs/ twin discharges every obligation (no `sorry` after reconciling
#   with your hand-written proofs; the twin is still kernel-checked).
# --clean-env starts from a clean slate: removes generated/ and the cached
#   .vermilion artifacts of this example. Your proofs/ twin is never touched.
#
# Exit codes: 0 verified; 1 Lean rejected an obligation; 3 the Verus front
# end rejected the program (ill-typed — nothing reached the verifier); 4 the
# adapter refused to lower an out-of-fragment construct. The structural
# record is .vermilion/<stem>-run.json ({"phase","exit"}).
set -euo pipefail

example_dir="$(cd "$1" && pwd)"
source_file="$2"
shift 2
lib=""
expect_failure=0
expect_unsupported=0
expect_partial=0
verus_externs=()
manual_proofs=0
clean=0
generated_root=""
emit_mode="${VERMILION_EMIT_MODE:-}"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --lib) lib="$2"; shift 2 ;;
    --expect-failure) expect_failure=1; shift ;;
    --expect-unsupported) expect_unsupported=1; shift ;;
    # --expect-partial expects the adapter to lower the file EXCEPT for at
    # least one span-mapped per-function refusal (DL1 isolation), with
    # every lowered obligation verifying (use with --manual-proofs so twin
    # sorries still fail the run). When the fragment catches up fully, the
    # gate fails loudly like --expect-unsupported does.
    --expect-partial) expect_partial=1; shift ;;
    # --verus-extern NAME=PATH passes an external-crate rlib to the front
    # end (repeatable) — how a dependency of an acquired crate arrives
    # (e.g. dalek-lite's `subtle` stand-in, compiled by the case's runner
    # with the pinned Verus toolchain).
    --verus-extern) verus_externs+=(--extern "$2"); shift 2 ;;
    # --verus-flag ARG passes one extra argument to the Verus front end
    # verbatim (repeatable) — e.g. --cfg verus_keep_ghost for acquisitions
    # whose sources cfg-gate runtime-only code out of verification.
    --verus-flag) verus_externs+=("$2"); shift 2 ;;
    --manual-proofs) manual_proofs=1; shift ;;
    # --generated-root DIR: emit every mounted source file's artifacts under
    # one repository-relative directory (issue #54) — for #[path]-mounted
    # whole-crate acquisitions. Switches the check/sync to the multi-manifest
    # branch below (all DIR/*.json), so the mounted lemma/spec files' twins
    # land in the tracked case-study tree, not the untracked upstream clone.
    --generated-root) generated_root="$2"; shift 2 ;;
    --clean-env) clean=1; shift ;;
    --per-function) emit_mode="per-function"; shift ;;
    --per-file) emit_mode="per-file"; shift ;;
    -h|--help)
      sed -n '2,26p' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *) echo "unknown option $1 (try --help)" >&2; exit 2 ;;
  esac
done

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"
relative_dir="${example_dir#"$repository"/}"
stem="$(basename "$source_file" .rs)"

# Live one-line status: each caption replaces the previous one.
status() { printf '\r\033[2K\033[36m[vermilion]\033[0m %s' "$1" >&2; }
status_clear() { printf '\r\033[2K' >&2; }

# The check's human report is buffered through a file; keep it colorful
# when this script talks to a terminal.
c_green="" c_red="" c_reset=""
if [[ -t 2 ]]; then
  export FORCE_COLOR=1
  c_green=$'\033[1;32m' c_red=$'\033[1;31m' c_reset=$'\033[0m'
fi
# Leave a blank line behind on every exit path.
trap 'echo >&2' EXIT

if [[ "$clean" -eq 1 ]]; then
  status "cleaning generated artifacts of $stem (proofs/ kept)"
  rm -rf "$relative_dir/generated"
  rm -f ".vermilion/$stem-vir.bin" ".vermilion/$stem-ir.sexp" \
    ".vermilion/$stem-check.json" ".vermilion/$stem-run.json" \
    ".vermilion/$stem-frontend.log" ".vermilion/lake-build-stamp" \
    ".vermilion/lean-path"
fi

# Inline fast path: call setup_verus.sh only when its stamp is missing or
# stale (the subprocess alone costs ~0.8s).
if [[ ! -f .vermilion/setup-verus-ok \
  || ! -x .verus-checkout/source/target-verus/release/rust_verify \
  || scripts/setup_verus.sh -nt .vermilion/setup-verus-ok ]]; then
  status "checking the pinned Verus toolchain"
  ./scripts/setup_verus.sh >/dev/null
fi
source "$repository/scripts/verus_env.sh"

mkdir -p .vermilion
# Examples importing vstd get the real vstd; the rest stay minimal.
vstd_flags=(--no-vstd --cfg verus_no_vstd)
if grep -q '^use vstd::' "$relative_dir/$source_file"; then
  vstd_flags=()
fi
# The run-status file is the structural channel consumers (the editor, the
# suite) read instead of guessing from exit codes: phase "front-end" means
# the program never type-checked (no obligations were generated or judged);
# phase "lean" carries vrml_check's verdict.
run_status_file=".vermilion/$stem-run.json"
write_run_status() { # phase exit-code
  printf '{"phase":"%s","exit":%d,"source":"%s"}\n' \
    "$1" "$2" "$relative_dir/$source_file" > "$run_status_file"
}

status "Verus front end: elaborating $relative_dir/$source_file (--no-verify)"
frontend_log=".vermilion/$stem-frontend.log"
set +e
VERUS_VIR_EXPORT="$repository/.vermilion/$stem-vir.bin" "$verus" \
  "$relative_dir/$source_file" \
  --crate-type=lib ${vstd_flags[@]+"${vstd_flags[@]}"} \
  ${verus_externs[@]+"${verus_externs[@]}"} --no-verify \
  2> "$frontend_log"
frontend_status=$?
set -e
cat "$frontend_log" >&2
if [[ "$frontend_status" -ne 0 ]]; then
  write_run_status front-end "$frontend_status"
  status_clear
  echo "${c_red}✗ the program does not type-check${c_reset} — the Verus front end rejected it (errors above, at their Rust spans); nothing was sent to the verifier" >&2
  exit 3
fi

# Even no-op cargo builds cost ~a second each; skip them when the binaries
# are newer than every Rust source.
rust_stale() {
  [[ ! -e "$1" ]] && return 0
  [[ -n "$(find "$2" -name '*.rs' -newer "$1" 2>/dev/null | head -1)" ]]
}
if rust_stale crates/vermilion_direct/target/release/vermilion_direct crates/vermilion_direct/src; then
  status "building the direct SST adapter"
  (cd crates/vermilion_direct && rustup run "$verus_toolchain" cargo build --release --quiet)
fi
if rust_stale target/debug/vrml_check crates/vermilion_backend/src; then
  status "building the Vermilion tools"
  cargo build --quiet -p vermilion_backend --bins
fi
status "lowering SST to the textual IR"
lowering_log=".vermilion/$stem-lowering.log"
set +e
./crates/vermilion_direct/target/release/vermilion_direct ".vermilion/$stem-vir.bin" \
  --out ".vermilion/$stem-ir.sexp" >/dev/null 2> "$lowering_log"
lowering_status=$?
set -e
if [[ "$lowering_status" -ne 0 ]]; then
  write_run_status lowering "$lowering_status"
  status_clear
  cat "$lowering_log" >&2
  if [[ "$expect_unsupported" -eq 1 ]]; then
    echo "${c_green}✓ expected out-of-fragment construct demonstrated:${c_reset} the adapter refused to lower (message above). This case study is blocked on scheduled fragment work — see docs/reports/target-projects.md." >&2
    exit 0
  fi
  echo "${c_red}✗ outside the supported fragment${c_reset} — the adapter refused to lower the program (message above); docs/ir.md describes what the fragment covers today" >&2
  exit 4
fi
cat "$lowering_log" >&2
if [[ "$expect_unsupported" -eq 1 ]]; then
  status_clear
  echo "${c_red}✗ expected the adapter to refuse this program, but it lowered — the fragment caught up. Drop --expect-unsupported from this run.sh and verify it for real.${c_reset}" >&2
  exit 1
fi

# Lake pays a ~30s workspace re-materialization per invocation; go through
# it only when the Lean sources actually changed, and give every later
# `lean` the cached LEAN_PATH (scripts/lean_env.sh).
status "preparing the Lean environment (cached unless the library changed)"
source "$repository/scripts/lean_env.sh"
vrml_lake_build_if_stale vrml_gen Vermilion
status "generating Lean obligations from the IR"
# Without an explicit --per-file/--per-function, vrml_gen keeps whatever
# mode the existing manifest records (sticky), defaulting to per-function.
./.lake/build/bin/vrml_gen ${emit_mode:+--mode "$emit_mode"} \
  ${generated_root:+--generated-root "$generated_root"} \
  ".vermilion/$stem-ir.sexp" >/dev/null

# Multi-manifest branch (issue #54): a whole-crate acquisition emits many
# manifests under one --generated-root. Judge and reconcile EVERY one (the
# single-stem flow below only knows the root stem). Twins live in the
# root's `proofs/` sibling — tracked — so their libraries are registered
# and any residual `sorry` fails the run under --manual-proofs.
if [[ -n "$generated_root" ]]; then
  status "judging all manifests under $generated_root"
  proofs_root="${generated_root%/generated}/proofs"
  python3 scripts/register_proof_lib.py scan >/dev/null 2>&1 || true
  agg=0; total_obl=0; total_fail=0
  for m in "$generated_root"/*.json; do
    [[ -e "$m" ]] || continue
    mstem="$(basename "$m" .json)"
    set +e
    # Sweep budget profile: the mounted lemma files carry large nonlinear
    # goals; the tight per-rung caps + cvc5 timeout keep the whole-crate
    # judging to minutes and never let one goal stall a manifest.
    ./target/debug/vrml_check "$m" \
      --rung-budget "${VRML_RUNG_BUDGET:-200}" \
      --saturate-budget "${VRML_SATURATE_BUDGET:-800}" \
      --smt-budget "${VRML_SMT_BUDGET:-200}" \
      --smt-timeout "${VRML_SMT_TIMEOUT:-5}" \
      > ".vermilion/ga-$mstem-check.json" 2> ".vermilion/ga-$mstem-check.human"
    st=$?
    set -e
    # Fail CLOSED on infrastructure errors: a checker that could not run at
    # all (missing binary, crash before judging) exits nonzero WITHOUT
    # emitting any diagnostics. That must never pass for "no failures" —
    # `--expect-partial` tolerates failed OBLIGATIONS, not a failed CHECKER —
    # and, worse, an empty failures file tells vrml_sync below to reclaim
    # every sorry as if automation had succeeded. (This exact false green
    # shipped once: the binary path said target/release while only
    # target/debug is built; every sweep 'passed' and sync un-sorried the
    # twins. See logs/2026-08-19-lean-4.33-veil-removal.md.)
    if [[ "$st" -ne 0 && ! -s ".vermilion/ga-$mstem-check.json" ]]; then
      echo "vrml_check could not judge $m (exit $st):" >&2
      cat ".vermilion/ga-$mstem-check.human" >&2
      exit 1
    fi
    sync_flags=(); [[ "$manual_proofs" -eq 1 ]] && sync_flags+=(--fail-on-sorry)
    ./target/debug/vrml_sync "$m" --failures ".vermilion/ga-$mstem-check.json" \
      ${sync_flags[@]+"${sync_flags[@]}"} 2>&1 | tail -1 || agg=1
    [[ "$st" -ne 0 && "$expect_partial" -ne 1 ]] && agg=1
  done
  write_run_status lean "$agg"
  status_clear
  echo "${c_green}✓ acquisition manifests judged under $generated_root${c_reset}" >&2
  echo "  twins reconciled under $proofs_root (tracked)" >&2
  exit "$agg"
fi

# Fast path — when a complete, up-to-date proofs twin exists and is the
# arbiter (--manual-proofs --lib), the twin kernel-check alone proves
# everything the generated-module check would (the twin's auto blocks are
# byte-identical to generated; its interactive blocks are the user proofs).
# `vrml_sync --probe` confirms the twin is current (every hash matches, no
# `sorry`, no drift); if so we skip the redundant generated check and let the
# twin be the sole arbiter. Any twin that does NOT kernel-check falls through
# to the full check-then-sync flow below, so failures still get graceful
# per-obligation `sorry` placeholders and span-mapped diagnostics.
if [[ -n "$lib" && "$manual_proofs" -eq 1 && "$expect_failure" -eq 0 ]] \
  && ./target/debug/vrml_sync "$relative_dir/generated/$stem.json" --probe; then
  status "kernel-checking your proofs twin (sole arbiter; generated check skipped)"
  set +e
  ./target/debug/vrml_check "$relative_dir/generated/$stem.json" \
    --twin-check 2> ".vermilion/$stem-twin.log"
  twin_status=$?
  set -e
  if [[ "$twin_status" -eq 0 ]]; then
    status_clear
    # No failing obligation. Refresh the editor's check file with just the
    # static twin-coverage markers (no Lean) so interactively-proven
    # obligations keep their blue "discharged interactively" squiggles; auto
    # obligations produce nothing and simply show green. Then record the
    # verdict so the editor surfaces the result without re-running anything.
    ./target/debug/vrml_check "$relative_dir/generated/$stem.json" \
      --twin-coverage-only > ".vermilion/$stem-check.json" 2>/dev/null
    write_run_status lean 0
    echo >&2
    ./target/debug/vrml_sync "$relative_dir/generated/$stem.json"
    echo "  (generated-module check skipped: the proofs twin is current and is the sole arbiter)" >&2
    echo "${c_green}✓ proofs twin kernel-checked:${c_reset} $relative_dir/proofs/$stem*" >&2
    exit 0
  fi
  status_clear
  cat ".vermilion/$stem-twin.log" >&2
  echo "the proofs twin did not kernel-check on the fast path — running the full generated check for diagnostics" >&2
fi

status "Lean is judging the generated obligations of $relative_dir/$source_file"
# Machine-readable diagnostics go to the check file (consumed by
# vrml_sync); the human report streams on stderr.
set +e
./target/debug/vrml_check "$relative_dir/generated/$stem.json" \
  > ".vermilion/$stem-check.json" 2> ".vermilion/$stem-check.human"
check_status=$?
set -e
write_run_status lean "$check_status"
status_clear
cat ".vermilion/$stem-check.human" >&2

# Reconcile the human-editable proofs twin with the fresh obligations. With
# --manual-proofs the twin is the arbiter: hand-written proofs cover what
# automation cannot, and any remaining `sorry` fails the run.
# (bash 3.2 compatibility: expanding an empty array trips `set -u`.)
sync_flags=()
if [[ "$manual_proofs" -eq 1 ]]; then
  sync_flags+=(--fail-on-sorry)
fi
# A breathing line before the twin section; the twin-status lines that
# follow (sync's verdict, then the kernel-check / skip line) stay together
# with no blank between them.
echo >&2
./target/debug/vrml_sync "$relative_dir/generated/$stem.json" \
  --failures ".vermilion/$stem-check.json" \
  ${sync_flags[@]+"${sync_flags[@]}"}

if [[ "$expect_partial" -eq 1 ]]; then
  refused_count=$(python3 -c "import json,sys; print(len(json.load(open(sys.argv[1])).get('refused', [])))" "$relative_dir/generated/$stem.json")
  if [[ "$refused_count" -eq 0 ]]; then
    echo "${c_red}✗ expected a per-function refusal, but every function lowered — the fragment caught up. Drop --expect-partial from this runner and verify the file for real.${c_reset}" >&2
    exit 1
  fi
fi

if [[ "$expect_failure" -eq 1 ]]; then
  if [[ "$check_status" -ne 1 ]]; then
    echo "${c_red}✗ expected Lean to reject an obligation (exit 1), got $check_status${c_reset}" >&2
    exit 1
  fi
  echo "${c_green}✓ expected failure demonstrated:${c_reset} Lean rejected the obligation above, at its Rust span." >&2
elif [[ "$manual_proofs" -eq 1 ]]; then
  if [[ "$check_status" -gt 1 ]]; then
    echo "${c_red}✗ the check itself broke (exit $check_status) — see above${c_reset}" >&2
    exit "$check_status"
  fi
elif [[ "$check_status" -ne 0 ]]; then
  echo "${c_red}✗ verification failed — see the report above for next steps${c_reset}" >&2
  exit "$check_status"
fi

if [[ -n "$lib" ]]; then
  # Kernel-check the twin(s) directly (no lake round trip); vrml_check
  # handles both emission modes, checking per-function twins in parallel.
  # After a green generated check, twins byte-identical to what Lean just
  # judged prove nothing new and are skipped (--skip-identical).
  twin_flags=()
  if [[ "$check_status" -eq 0 ]]; then
    twin_flags+=(--skip-identical)
  fi
  status "kernel-checking your proofs twin"
  set +e
  ./target/debug/vrml_check "$relative_dir/generated/$stem.json" \
    --twin-check ${twin_flags[@]+"${twin_flags[@]}"}
  twin_status=$?
  set -e
  if [[ "$twin_status" -ne 0 ]]; then
    # Under --expect-partial a refusal disposition keeps the twin check
    # non-green by design; the gate below is the run's verdict.
    if [[ "$expect_partial" -ne 1 || "$twin_status" -ne 1 ]]; then
      exit "$twin_status"
    fi
  else
    status_clear
    echo "${c_green}✓ proofs twin kernel-checked:${c_reset} $relative_dir/proofs/$stem*" >&2
  fi
fi

if [[ "$expect_partial" -eq 1 ]]; then
  echo "${c_green}✓ expected partial coverage demonstrated:${c_reset} $refused_count function(s) refused with span-mapped dispositions; every lowered obligation verified (twins are the arbiter)." >&2
  exit 0
fi
