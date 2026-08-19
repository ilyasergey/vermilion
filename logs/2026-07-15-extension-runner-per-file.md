# 2026-07-15 — Extension: verify the file you opened, not run.sh's file

User report: `mergesort.rs` never got the green "fully verified" highlight in
VSCode on success.

## Root cause

`verify()` chose the runner by existence: if `<dir>/run.sh` existed it drove
that, else the shared `run_example.sh` with the file's dir+basename. In
`case-studies/merge-sort/` `run.sh` hard-codes `mergesort_clean.rs` (the
specs-only variant); the verbatim `mergesort.rs` has its own
`run_verbatim.sh`. So opening `mergesort.rs` ran `run.sh`, verified
`mergesort_clean.rs`, and painted the ✓ on the *clean* file — `mergesort.rs`
was never verified, hence never highlighted.

## Fix

New `runnerForFile(directory, documentPath)`: scan the directory's `*.sh`
scripts (preferring `run.sh`) and return the one whose **non-comment** lines
pass this file's basename as a whitespace-delimited token. Comments are
skipped so `run.sh`'s provenance note ("… mergesort.rs is kept …") does not
make it claim `mergesort.rs`.

This also handles the two shapes already in the tree:
- several files, one runner each (merge-sort);
- several files, one runner for all (primes/run.sh → primes_spec.rs +
  primes_exec.rs — the token matches both).

Verified selection against merge-sort, primes, and single-runner examples:
`mergesort.rs → run_verbatim.sh`, `mergesort_clean.rs → run.sh`, both primes
files → `run.sh`, all single-runner examples → `run.sh` (unchanged).

`editor/vscode-vermilion/extension.js` only. Moved the wrinkle "more than one
runnable file → runners for all of them" to Fixed (the runners existed; the
extension now picks the right one).
