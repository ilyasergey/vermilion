#!/usr/bin/env bash
# Suite guard for the two local SHA-3 source roles. Unit tests in
# vrml_source_guard pin executable edits, missing/extra files, malformed
# markers, and non-annotation content inside a marked region as failures.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
guard="$repository/target/debug/vrml_source_guard"

# Cargo's freshness check is cheap and prevents a pre-existing debug binary
# from silently enforcing an older annotation grammar.
cargo build --quiet --manifest-path "$repository/Cargo.toml" \
  -p vermilion_backend --bin vrml_source_guard

"$guard" \
  "$repository/case-studies/aeneas/sha3/upstream" \
  "$repository/case-studies/aeneas/sha3/verification"
