#!/usr/bin/env bash
# Layer Set A acquisition (DL8): build the `subtle` stand-in rlib with the
# pinned Verus toolchain, then drive the whole-file acquisition root
# through the ordinary pipeline. Lean is the only verifier; per-function
# dispositions in generated/layer_a.json are the scoreboard's raw data.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
repository="$(cd "$here/../.." && pwd)"

"$here/fetch_upstream.sh" >/dev/null

toolchain="$(grep channel "$repository/.verus-checkout/rust-toolchain.toml" | cut -d'"' -f2)"
mkdir -p "$repository/.vermilion"
rlib="$repository/.vermilion/libsubtle_stub.rlib"
if [ ! -f "$rlib" ] || [ "$here/subtle_stub.rs" -nt "$rlib" ]; then
  rustup run "$toolchain" rustc --edition=2021 --crate-name subtle \
    --crate-type rlib "$here/subtle_stub.rs" -o "$rlib"
fi

# --expect-partial: the 38 refusals are the measured DL8 frontier (37 from
# the cross-module recursive-spec-fn export gap, 1 from the substitution
# budget — see docs/issues/); the gate fails loudly when the fragment
# catches up, exactly like the probes' explore.sh.
# --generated-root (issue #54): the field cone is #[path]-mounted from the
# untracked upstream clone, so route every mounted file's generated
# artifacts + twins into the tracked case-study tree
# (generated/ + proofs/) instead of the clone.
"$repository/scripts/run_example.sh" "$here" layer_a.rs \
  --lib CaseDalekLite --manual-proofs --expect-partial \
  --generated-root "$here/generated" \
  --verus-extern "subtle=$rlib" "$@"
