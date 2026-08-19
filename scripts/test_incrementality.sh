#!/usr/bin/env bash
# Incrementality contract tests over the manifest fingerprints:
#   A) whitespace-only edit           -> everything unchanged (byte-stable)
#   B) source moved (comment line)    -> semantics/hashes stable, locations move
#   C) callee body-only edit          -> only the callee's semantics change
#   D) callee contract edit           -> callee AND caller semantics change
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repository"

./scripts/setup_verus.sh >/dev/null
source "$repository/scripts/verus_env.sh"

(cd crates/vermilion_direct && rustup run "$verus_toolchain" cargo build --release --quiet)
direct="$repository/crates/vermilion_direct/target/release/vermilion_direct"
lake build vrml_gen >/dev/null
vrml_gen="$repository/.lake/build/bin/vrml_gen"

workdir=".vermilion/incrementality"
rm -rf "$workdir"
mkdir -p "$workdir"

cat > "$workdir/incr.rs" <<'EOF'
use verus_builtin::*;
use verus_builtin_macros::*;

verus! {

fn add_one(x: u32) -> (y: u32)
    requires
        x < 1000,
    ensures
        y == x + 1,
{
    let y = x + 1;
    assert(y > 0);
    y
}

fn twice(x: u32) -> (z: u32)
    requires
        x < 100,
    ensures
        z > x,
{
    let a = add_one(x);
    let z = add_one(a);
    z
}

} // verus!
EOF

regen() {
  VERUS_VIR_EXPORT="$repository/$workdir/incr-vir.bin" "$verus" \
    "$workdir/incr.rs" --crate-type=lib --no-vstd --cfg verus_no_vstd --no-verify \
    > /dev/null
  "$direct" "$workdir/incr-vir.bin" --out "$workdir/incr-ir.sexp" > /dev/null
  "$vrml_gen" "$workdir/incr-ir.sexp"
}

manifest="$workdir/generated/incr.json"

echo "== base generation =="
regen | tee "$workdir/base.out"
cp "$manifest" "$workdir/base.json"

echo "== A: whitespace-only edit keeps everything byte-stable =="
printf '\n// trailing note, no spans moved\n' >> "$workdir/incr.rs"
regen | tee "$workdir/a.out"
grep -q unchanged "$workdir/a.out"
cmp -s "$manifest" "$workdir/base.json"

echo "== B: moving code changes locations but not semantics =="
sed -i '' 's|^verus! {$|verus! {\n\n// pushed everything two lines down|' "$workdir/incr.rs"
regen > "$workdir/b.out"
grep -q updated "$workdir/b.out"
cp "$manifest" "$workdir/b.json"

echo "== C: callee body-only edit touches only the callee =="
sed -i '' 's|assert(y > 0)|assert(y > 0 \&\& y < 2000)|' "$workdir/incr.rs"
regen > /dev/null
cp "$manifest" "$workdir/c.json"

echo "== D: callee contract edit invalidates the caller too =="
sed -i '' 's|y == x + 1,|y == x + 1 \&\& y <= 1000,|' "$workdir/incr.rs"
regen > /dev/null
cp "$manifest" "$workdir/d.json"

python3 - "$workdir" <<'EOF'
import json, sys
workdir = sys.argv[1]

def load(tag):
    with open(f"{workdir}/{tag}.json") as handle:
        manifest = json.load(handle)
    functions = {f["function"]: f for f in manifest["functions"]}
    hashes = {o["name"]: o["statement_hash"] for o in manifest["obligations"]}
    return functions, hashes

base_f, base_h = load("base")
b_f, b_h = load("b")
c_f, c_h = load("c")
d_f, d_h = load("d")

callee, caller = "incr.add_one", "incr.twice"

# B: same semantics and statement hashes, moved locations.
assert {n: f["semantic_fingerprint"] for n, f in b_f.items()} == \
       {n: f["semantic_fingerprint"] for n, f in base_f.items()}, "B: semantics moved"
assert b_h == base_h, "B: statement hashes changed on pure movement"
assert all(b_f[n]["location_fingerprint"] != base_f[n]["location_fingerprint"]
           for n in b_f), "B: locations should move"

# C: only the callee's semantics change; caller untouched.
assert c_f[callee]["semantic_fingerprint"] != b_f[callee]["semantic_fingerprint"], \
    "C: callee semantics should change"
assert c_f[caller]["semantic_fingerprint"] == b_f[caller]["semantic_fingerprint"], \
    "C: body-only callee edit must not invalidate the caller"
assert all(h == b_h[n] for n, h in c_h.items() if n.startswith(caller)), \
    "C: caller statement hashes must be stable"

# D: contract edit propagates to the caller.
assert d_f[callee]["semantic_fingerprint"] != c_f[callee]["semantic_fingerprint"], \
    "D: callee semantics should change"
assert d_f[caller]["semantic_fingerprint"] != c_f[caller]["semantic_fingerprint"], \
    "D: contract edit must invalidate the caller"

print("incrementality contract holds: A byte-stable, B move-only, "
      "C callee-local, D contract-propagating")
EOF

echo "Incrementality tests passed."
