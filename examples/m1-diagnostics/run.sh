#!/usr/bin/env bash
# This example is deliberately wrong: success means Lean REJECTED it and
# reported the failure at the exact Rust span.
exec "$(cd "$(dirname "$0")/../.." && pwd)/scripts/run_example.sh" \
  "$(dirname "$0")" broken.rs --expect-failure "$@"
