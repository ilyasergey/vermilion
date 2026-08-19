---
title: Jump-to-definition for lowered spec fns (e.g. is_sorted)
labels: [bug, vscode-extension]
state: closed
github: 10
---

For each Verus entity lowered to a Lean definition, add jump-to / jump-back
navigation. For example, jumping for `pub open spec fn is_sorted` in
`mergesort_clean.rs` did not work.

**Resolution.** The forward (`⌘⇧J`) and reverse (`⌘⇧J` from Lean) jumps already
handled emitted `def`/`inductive`/`opaque` definitions and `vrml:spec` markers;
the real bug was that `parseFunctionRanges`' declaration regex did not accept
the `open`/`closed`/`broadcast` modifiers, so `pub open spec fn …` (and `pub
broadcast proof fn …`) were never recognised as functions, hiding them from
enclosing-function detection (navigation *and* gutter marks). Regex widened to
accept any run of mode/visibility modifiers.

*Ported from `docs/wrinkles.md` (Fixed).*
