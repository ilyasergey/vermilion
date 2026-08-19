#!/usr/bin/env bash
# Fetch the pinned dalek-lite tree into ./upstream (untracked; see PLAN.md).
# The pin is the acquisition baseline measured by the probes in this folder.
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
pin="de9ebf01599fedbbced28b938e2c36c538fe4ae5"
url="https://github.com/Beneficial-AI-Foundation/dalek-lite"

if [ -d "$here/upstream/.git" ]; then
  current="$(git -C "$here/upstream" rev-parse HEAD)"
  if [ "$current" = "$pin" ]; then
    echo "upstream already at pin $pin"
    exit 0
  fi
  echo "upstream at $current, re-fetching pin $pin"
  git -C "$here/upstream" fetch --depth 1 origin "$pin"
  git -C "$here/upstream" checkout --detach "$pin"
  exit 0
fi

rm -rf "$here/upstream"
git clone "$url" "$here/upstream"
git -C "$here/upstream" checkout --detach "$pin"
echo "upstream pinned at $pin"
