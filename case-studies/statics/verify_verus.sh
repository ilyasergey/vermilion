#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
source "$repository/scripts/verus_env.sh"

upstream="$repository/.verus-checkout/examples/statics.rs"
cmp "$here/statics.rs" "$upstream"
"$verus" "$here/statics.rs" --crate-type=lib
