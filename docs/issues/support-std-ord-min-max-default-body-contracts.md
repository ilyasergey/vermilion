---
title: Support std Ord min and max default-body contracts
labels: [feature, vcgen]
state: open
github: 23
---

`case-studies/percolator/liquidation_fee_minmax.rs` verifies with Verus but
Vermilion refuses the final expression
`raw_fee.max(min_liquidation_abs).min(liquidation_fee_cap)` with:

```text
unsupported default-body ensures on call to `max`
```

Handle the statically resolved default implementation contracts for
`core::cmp::Ord::{min,max}` on machine integers. The result should lower to
the same ordinary conditional semantics already used by Verus, with range
facts on the returned machine integer. This is not a request for dynamic
trait dispatch.

Add pass/fail differential guards for both `min` and `max`, update
`docs/ir.md`, and update `docs/vcgen.md` if the call rule changes. The
Percolator liquidation-fee driver should then verify end to end without
rewriting the executable expression.
