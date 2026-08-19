#!/usr/bin/env bash
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" statics.rs --expect-unsupported "$@"
