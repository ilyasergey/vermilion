#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
source "$repository/scripts/verus_env.sh"

upstream="$repository/.verus-checkout/examples/entry_api.rs"
cmp "$here/entry_api.rs" "$upstream"
"$verus" "$here/entry_api.rs" --crate-type=lib
