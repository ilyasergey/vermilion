---
title: Function ranges break on array-typed parameters
labels: [bug, vscode-extension]
state: closed
github: 47
---

Reported live while reviewing the DL4 differential case
`tests/differential/c184_bv_indexed_shift_ok.rs`: both the in-progress
zigzag and the per-function ✓ mark were missing for

```rust
pub fn high_bit_clear(bytes: &[u8; 32]) -> (result: bool)
```

**Cause.** `parseFunctionRanges` (`editor/vscode-vermilion/core.js`)
treated any `;` seen before the first `{` as the terminator of a
bodyless declaration. The `;` inside the array type `[u8; 32]` therefore
collapsed the function's range to its declaration line: the verifying
animation covered nothing, and the checkmark's enclosing-range lookup
found no function containing the obligation spans, so no verdict mark
was painted. Every function with an array-typed parameter was affected —
including the dalek-lite `ghost_high_byte` probe and most crypto code
(fixed-size byte arrays everywhere).

**Fix.** Track paren/bracket nesting during the scan; a `;` only
terminates a bodyless declaration at depth 0 outside `()`/`[]`.
Regression test added to `editor/vscode-vermilion/test/core.test.js`
(array parameter in an exec fn + a bodyless `uninterp spec fn` whose
trailing `;` must still terminate). Landed in the DL4 slice.
