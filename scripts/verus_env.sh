# Shared Verus environment for Vermilion scripts. Source after setup_verus.sh:
#   repository=...; source "$repository/scripts/verus_env.sh"
# Exposes: verus_checkout, verus_source, verus, verus_toolchain; exports the
# runtime variables rust_verify needs.

verus_checkout="$(cd "$repository/.verus-checkout" && pwd -P)"
verus_source="$verus_checkout/source"
verus="$verus_source/target-verus/release/rust_verify"
verus_toolchain="$(sed -n 's/^channel = "\(.*\)"$/\1/p' "$verus_checkout/rust-toolchain.toml")"

# `rustup run rustc --print sysroot` costs ~0.5s; cache per toolchain.
sysroot_cache="$repository/.vermilion/rust-sysroot-$verus_toolchain"
if [[ -f "$sysroot_cache" ]]; then
  rust_sysroot="$(cat "$sysroot_cache")"
else
  rust_sysroot="$(rustup run "$verus_toolchain" rustc --print sysroot)"
  mkdir -p "$repository/.vermilion"
  printf '%s' "$rust_sysroot" > "$sysroot_cache"
fi
export VERUS_ROOT="$verus_source/target-verus/release"
export VERUS_Z3_PATH="$verus_source/z3"
export DYLD_LIBRARY_PATH="$rust_sysroot/lib${DYLD_LIBRARY_PATH:+:$DYLD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="$rust_sysroot/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
