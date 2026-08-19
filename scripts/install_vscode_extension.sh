#!/usr/bin/env bash
# Install the Vermilion VS Code extension by linking it into the local
# extensions folder (unpacked extensions with a package.json are loaded
# directly; no packaging step needed). Restart VS Code afterwards.
set -euo pipefail

repository="$(cd "$(dirname "$0")/.." && pwd)"
source="$repository/editor/vscode-vermilion"
version="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' \
  "$source/package.json")"
target="$HOME/.vscode/extensions/vermilion.vscode-vermilion-$version"

mkdir -p "$HOME/.vscode/extensions"
# Drop links from older versions so VS Code sees exactly one copy.
for old in "$HOME/.vscode/extensions"/vermilion.vscode-vermilion-*; do
  [[ -L "$old" && "$old" != "$target" ]] && rm "$old"
done
/bin/ln -sfn "$source" "$target"
echo "Linked $target -> $source"
echo "Restart VS Code (or run 'Developer: Reload Window') to activate."
