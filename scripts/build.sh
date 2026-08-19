#!/usr/bin/env bash
# Build all of Vermilion with one command: the Rust workspace, the pinned
# Verus checkout (cloned automatically on first run), the direct SST adapter,
# and the Lean libraries.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

# Lean comes first: building the libraries also produces the cvc5 native
# plugin that `lake serve` (and therefore the VS Code Lean extension) loads at
# startup, so the editor works as early as possible on a fresh machine.
echo "== Lean libraries =="
lake build

echo "== Rust workspace =="
cargo build --workspace
cargo test --workspace

echo "== pinned Verus + direct SST adapter =="
./scripts/setup_verus.sh
source "$repository/scripts/verus_env.sh"
(cd crates/vermilion_direct && rustup run "$verus_toolchain" cargo build --release)

echo "Vermilion build complete."
