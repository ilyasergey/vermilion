#!/usr/bin/env bash
# Idempotently provide the pinned Verus checkout at .verus-checkout:
# clone it if absent, fetch Z3, apply the VIR-export handoff patch, and build.
#
# No configuration is required. To reuse an existing checkout instead of the
# automatic clone, set VERUS_CHECKOUT=/path/to/verus once; the script links it.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"

# Fast path: once a full setup has succeeded, later runs only need the link
# to still be healthy. (Delete .vermilion/setup-verus-ok to force a recheck.)
fast_stamp="$repository/.vermilion/setup-verus-ok"
if [[ -f "$fast_stamp" && "$fast_stamp" -nt "$0" \
  && -x "$repository/.verus-checkout/source/target-verus/release/rust_verify" ]]; then
  exit 0
fi

pin="48600836424a79420589c56d86e720236a029811"
# Our fork of verus-lang/verus (branch `dev`): upstream at the base
# commit plus the VIR-export hook, the debug_assert-as-assert accommodation,
# tuple-pattern function-parameter/contract lowering, general custom
# `IndexMut` lowering, tuple-destructuring assignment, and exact unsigned
# `rotate_left` and native u64 endian-conversion vstd contracts. The pin also
# normalizes assume-spec array lengths before signature comparison and adds
# the missing `RangeFrom<usize>` slice-index contract, mutable `usize`/`Range`
# /`RangeFrom` slice-index contracts with exact owner writeback, and native
# positive/negative regressions. Macro-expansion spans resolve to their
# source call site (vermilion#44: `calc!` bodies otherwise carry vstd's
# calc_macro.rs positions). It is a commit on that branch.
verus_git="https://github.com/ilyasergey/verus.git"
link="$repository/.verus-checkout"

# The checkout must live outside the repository tree: a nested clone would be
# captured by this workspace's Cargo.toml when building vargo. An existing
# healthy link wins unless VERUS_CHECKOUT explicitly points elsewhere.
default_checkout="${XDG_CACHE_HOME:-$HOME/.cache}/vermilion/verus"
checkout_target="${VERUS_CHECKOUT:-$default_checkout}"
if [[ -z "${VERUS_CHECKOUT:-}" && -d "$link/source" ]]; then
  checkout_target="$(cd "$link" && pwd -P)"
fi
if [[ ! -d "$checkout_target/source" ]]; then
  echo "cloning pinned Verus into $checkout_target (one-time)"
  mkdir -p "$(dirname "$checkout_target")"
  git clone "$verus_git" "$checkout_target"
  git -C "$checkout_target" checkout --quiet "$pin"
fi
/bin/ln -sfn "$checkout_target" "$link"

verus_checkout="$(cd "$link" && pwd -P)"

actual="$(git -C "$verus_checkout" rev-parse HEAD)"
if [[ "$actual" != "$pin" ]]; then
  if git -C "$verus_checkout" diff --quiet; then
    # The pin may live on any configured remote (older cache clones name
    # ilyasergey/verus `fork`, not `origin`) — fetch them all.
    git -C "$verus_checkout" checkout --quiet "$pin" \
      || { git -C "$verus_checkout" fetch --quiet --all \
             && git -C "$verus_checkout" checkout --quiet "$pin"; }
  else
    # Fail CLOSED: a wrong-rev checkout with local changes must not feed
    # the pipeline silently (measured cost: a whole-suite red herring —
    # DL8, missing `rotate_left` vstd contracts). Stash or commit the
    # local work, or point VERUS_CHECKOUT at a development tree.
    echo "error: Verus checkout at $actual has local changes but the" >&2
    echo "  pinned commit is $pin — stash/commit them (git -C" >&2
    echo "  $verus_checkout stash) or set VERUS_CHECKOUT to your tree" >&2
    false
  fi
fi

if [[ ! -x "$verus_checkout/source/z3" ]]; then
  echo "fetching the pinned Z3 solver"
  (cd "$verus_checkout/source" && ./tools/get-z3.sh)
fi

if ! grep -q VERUS_VIR_EXPORT "$verus_checkout/source/rust_verify/src/verifier.rs"; then
  echo "error: checkout at $verus_checkout lacks the VIR export hook;" >&2
  echo "  it predates the fork pin — re-clone or fetch $verus_git @ $pin" >&2
  false
fi

vargo="$verus_checkout/tools/vargo/target/release/vargo"
if [[ ! -x "$vargo" ]]; then
  echo "building vargo"
  (cd "$verus_checkout/tools/vargo" && cargo build --release)
fi

# Cache the binary patch verdict in a stamp invalidated when the binary
# changes. Search the binary directly: `strings | grep -q` is incompatible
# with `pipefail` because an early grep match can give `strings` SIGPIPE.
rust_verify="$verus_checkout/source/target-verus/release/rust_verify"
patch_stamp="$verus_checkout/source/target-verus/.vermilion-export-ok"
built_pin_stamp="$verus_checkout/source/target-verus/.vermilion-built-pin"
built_pin="$(cat "$built_pin_stamp" 2>/dev/null || true)"
if [[ ! -x "$rust_verify" || "$built_pin" != "$pin" ]]; then
  echo "building pinned Verus at $pin (this takes a while)"
  (cd "$verus_checkout/source" && "$vargo" build --release)
  # Record the built pin ONLY after the build actually ran: writing it
  # unconditionally lets a skipped build masquerade as the pin forever
  # (measured: DL8 — a stale binary fed the whole pipeline).
  printf '%s\n' "$pin" > "$built_pin_stamp"
fi
if [[ ! -f "$patch_stamp" || "$rust_verify" -nt "$patch_stamp" ]]; then
  if ! grep -a -q VERUS_VIR_EXPORT "$rust_verify"; then
    echo "error: built Verus lacks the required VIR export hook" >&2
    false
  fi
  touch "$patch_stamp"
fi

mkdir -p "$repository/.vermilion"
touch "$fast_stamp"
echo "Verus checkout ready at $verus_checkout (linked as .verus-checkout)"
