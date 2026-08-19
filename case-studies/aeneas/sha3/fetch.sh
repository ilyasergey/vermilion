#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
target="${1:-$here/_work/upstream}"
repository="https://github.com/AeneasVerif/sha3.rs.git"
commit="cb411d54ee0b22f88b64c79963691ff63f3ad5b4"

if [[ -e "$target" ]]; then
  "$here/check_pin.sh" "$target"
  exit 0
fi

mkdir -p "$(dirname "$target")"
git clone --no-checkout "$repository" "$target"
git -C "$target" checkout --detach "$commit"
"$here/check_pin.sh" "$target"

