---
title: Type named function results before branch joins
labels: [bug, vcgen]
state: closed
github: 31
---

**Resolution.** The direct adapter now registers a named return destination's
declared type before lowering the function body. Return nodes assign that
destination without passing through the ordinary assignment path, so a
branch whose arms returned different expressions could otherwise reach the
SSA join with no type for its fresh result symbol.

The join remains the existing guarded branch encoding; this change supplies
only the missing type metadata and adds no assumptions. Differential c143
pins a named `u32` result selected by two branch arms. The recursive
`imo_1988_6` case study exercises named results across early returns and now
lowers end to end.
