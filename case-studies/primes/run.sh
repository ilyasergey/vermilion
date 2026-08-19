#!/usr/bin/env bash
# Two related programs verified together: the spec-level primality
# reasoning and the executable trial-division checker.
here="$(cd "$(dirname "$0")" && pwd)"; root="$(cd "$here/../.." && pwd)"
"$root/scripts/run_example.sh" "$here" primes_spec.rs --lib CasePrimes --manual-proofs "$@" || exit $?
"$root/scripts/run_example.sh" "$here" primes_exec.rs --lib CasePrimes --manual-proofs "$@"
