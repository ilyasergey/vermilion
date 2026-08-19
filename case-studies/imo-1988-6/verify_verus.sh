#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
source "$repository/scripts/verus_env.sh"

upstream="$repository/.verus-checkout/examples/imo_1988_6.rs"
cmp "$here/imo_1988_6.rs" "$upstream"
"$verus" "$here/imo_1988_6.rs" --crate-type=lib
