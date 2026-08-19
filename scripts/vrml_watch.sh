#!/usr/bin/env bash
# Watch mode: keep one Rust source verified as you edit it.
#   scripts/vrml_watch.sh <example-dir> <source.rs>
#
# Reruns the front half on every save and has Lean re-judge only the
# obligations whose statement hash changed (manifest fingerprints), for a
# fast edit loop. Diagnostics land on Rust spans, exactly like vrml_check.
set -euo pipefail

example_dir="$(cd "$1" && pwd)"
source_file="$2"

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"
relative_dir="${example_dir#"$repository"/}"

./scripts/setup_verus.sh >/dev/null
source "$repository/scripts/verus_env.sh"

(cd crates/vermilion_direct && rustup run "$verus_toolchain" cargo build --release --quiet)
cargo build --quiet -p vermilion_backend --bins
lake build vrml_gen >/dev/null
lake build Vermilion >/dev/null

exec ./target/debug/vrml_watch "$relative_dir/$source_file" \
  --verus "$verus" \
  --direct ./crates/vermilion_direct/target/release/vermilion_direct \
  --vrml-gen ./.lake/build/bin/vrml_gen
