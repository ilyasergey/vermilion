#!/usr/bin/env bash
set -euo pipefail

checkout="${1:?usage: check_pin.sh PATH_TO_SHA3_RS_CHECKOUT}"
expected_commit="cb411d54ee0b22f88b64c79963691ff63f3ad5b4"
expected_tree="821339a40a2603d98947123a6f20e8e7f81b8ac7"

if [[ ! -d "$checkout/.git" ]]; then
  echo "not a Git checkout: $checkout" >&2
  exit 2
fi

actual_commit="$(git -C "$checkout" rev-parse HEAD^{commit})"
actual_tree="$(git -C "$checkout" rev-parse HEAD^{tree})"
if [[ "$actual_commit" != "$expected_commit" ]]; then
  echo "expected sha3.rs commit $expected_commit, found $actual_commit" >&2
  exit 1
fi
if [[ "$actual_tree" != "$expected_tree" ]]; then
  echo "expected sha3.rs tree $expected_tree, found $actual_tree" >&2
  exit 1
fi

checked=0
while read -r expected_blob path; do
  actual_blob="$(git -C "$checkout" rev-parse "HEAD:$path")"
  if [[ "$actual_blob" != "$expected_blob" ]]; then
    echo "expected $path blob $expected_blob, found $actual_blob" >&2
    exit 1
  fi
  checked=$((checked + 1))
done <<'EOF'
f7a96b15202d79b53b242034aa793719ccfe55c6 Cargo.lock
f1c975387631f60aa93190ef198eee0476134731 Cargo.toml
a497634662dfddc3d8959b46e9577db476ac9e89 extract.sh
58c2ee10a19d02e083e9d87fde0f45559ec23c9c lean/lakefile.toml
fa64ce6f266b61b6849ff5f7957d939b74aae82e lean/lean-toolchain
9ecf1dd33870c72747fc6bfd1e5275baa0928a45 rust-toolchain
e376e9f4d552ded20b3fda2015d7e7e88a4aee25 src/algos.rs
10addfaf5b05e028a882db1b24a3c40eb2267931 src/lib.rs
0e31687fa42881ef4a891bd27036bf18943ce10c src/main.rs
0b9c473971e10399c38bb49e9e941a3fcd6667ee src/neon.rs
826db14cc0779116082aedb921890ef0728712fa src/simple.rs
9908055db2ea1b82c699c17babeb2ee5c4a52552 src/test/mod.rs
bfe576b0fe3dec21c873aa8a12337e5ff47a2e7a src/test/simple.rs
EOF

if ! git -C "$checkout" diff --quiet --; then
  echo "pinned checkout has tracked modifications: $checkout" >&2
  exit 1
fi

echo "sha3.rs pin passed: commit $actual_commit, tree $actual_tree, $checked blobs"

