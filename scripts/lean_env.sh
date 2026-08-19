# Cache the workspace LEAN_PATH so per-example runs can invoke `lean`
# directly. Every `lake` invocation re-materializes the workspace — one
# `git diff HEAD` per dependency checkout, ~30s wall on a busy disk — so the
# fast path pays it only when the Lake configuration actually changed.
# Source from the repository root.

lean_path_cache=".vermilion/lean-path"
if [[ ! -f "$lean_path_cache" \
  || "lakefile.lean" -nt "$lean_path_cache" \
  || "lake-manifest.json" -nt "$lean_path_cache" ]]; then
  mkdir -p .vermilion
  lake env printenv LEAN_PATH > "$lean_path_cache"
fi
LEAN_PATH="$(cat "$lean_path_cache")"
export LEAN_PATH

# The cvc5 native plugin the Lean server/tactics need (empty if not built).
vrml_cvc5_plugin=""
for candidate in .lake/packages/cvc5/.lake/build/lib/libcvc5_cvc5.dylib \
                 .lake/packages/cvc5/.lake/build/lib/libcvc5_cvc5.so; do
  if [[ -f "$candidate" ]]; then
    vrml_cvc5_plugin="$candidate"
    break
  fi
done

# True when a target is missing or older than any Lean library source.
vrml_lean_stale() {
  [[ ! -e "$1" ]] && return 0
  [[ -n "$(find lean lakefile.lean -newer "$1" 2>/dev/null | head -1)" ]]
}

# Run `lake build "$@"` only when the Lean sources changed since the last
# successful build (a no-op lake build still costs the ~30s workspace
# re-materialization, so we gate it behind a stamp file).
vrml_lake_build_if_stale() {
  local stamp=".vermilion/lake-build-stamp"
  if vrml_lean_stale "$stamp"; then
    lake build "$@" >/dev/null
    touch "$stamp"
  fi
}
