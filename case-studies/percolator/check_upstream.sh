#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
checkout="${1:?usage: check_upstream.sh PATH_TO_PERCOLATOR_CHECKOUT}"
expected="143e68c4917ed0400a27b952f036a5677047cd84"
actual="$(git -C "$checkout" rev-parse HEAD)"

if [[ "$actual" != "$expected" ]]; then
  echo "expected Percolator $expected, found $actual" >&2
  exit 1
fi

python3 "$here/check_verbatim.py" "$checkout"
cargo test --manifest-path "$checkout/Cargo.toml" --locked
cargo test --manifest-path "$checkout/Cargo.toml" --locked --features fuzz
