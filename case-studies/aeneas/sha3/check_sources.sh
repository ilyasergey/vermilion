#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
checkout="${1:-${AENEAS_SHA3_CHECKOUT:-$here/_work/upstream}}"

"$here/check_pin.sh" "$checkout"

checked=0
while read -r expected_blob path; do
  upstream_path="$checkout/$path"
  local_path="$here/upstream/$path"
  if [[ ! -f "$local_path" ]]; then
    echo "missing tracked pristine source: $local_path" >&2
    exit 1
  fi
  actual_blob="$(git hash-object "$local_path")"
  if [[ "$actual_blob" != "$expected_blob" ]]; then
    echo "expected upstream/$path blob $expected_blob, found $actual_blob" >&2
    exit 1
  fi
  if ! cmp -s "$upstream_path" "$local_path"; then
    echo "tracked upstream/$path differs from the pinned checkout" >&2
    exit 1
  fi
  checked=$((checked + 1))
done <<'EOF'
f7a96b15202d79b53b242034aa793719ccfe55c6 Cargo.lock
f1c975387631f60aa93190ef198eee0476134731 Cargo.toml
9ecf1dd33870c72747fc6bfd1e5275baa0928a45 rust-toolchain
e376e9f4d552ded20b3fda2015d7e7e88a4aee25 src/algos.rs
10addfaf5b05e028a882db1b24a3c40eb2267931 src/lib.rs
0e31687fa42881ef4a891bd27036bf18943ce10c src/main.rs
0b9c473971e10399c38bb49e9e941a3fcd6667ee src/neon.rs
826db14cc0779116082aedb921890ef0728712fa src/simple.rs
9908055db2ea1b82c699c17babeb2ee5c4a52552 src/test/mod.rs
bfe576b0fe3dec21c873aa8a12337e5ff47a2e7a src/test/simple.rs
EOF

repository="$(cd "$here/../../.." && pwd)"
cargo run --quiet --manifest-path "$repository/Cargo.toml" \
  -p vermilion_backend --bin vrml_source_guard -- \
  "$here/upstream" "$here/verification"

echo "sha3.rs sources passed: $checked pristine files match the pinned checkout; verification annotations erase to the same executable Rust"
