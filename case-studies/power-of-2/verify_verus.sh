#!/usr/bin/env bash
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"
source "$repository/scripts/verus_env.sh"

upstream="$repository/.verus-checkout/examples/power_of_2.rs"
cmp "$here/power_of_2.rs" "$upstream"
"$verus" "$here/power_of_2.rs" --crate-type=lib
