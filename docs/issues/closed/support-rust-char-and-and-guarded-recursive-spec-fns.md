---
title: Support Rust char and &&-guarded recursive spec fns
labels: [feature, vcgen]
state: closed
github: null
---

**Resolution.** Verus specifications over `Seq<char>` use char literals, and
recursive scanners guard their recursive call with a short-circuit `&&`.
Neither was supported: char constants fell through to "unsupported SST
constant", `char` clipping failed closed (#29), a direct `char` carried no
range fact, and a `&&` guard was invisible to Lean's termination check.

- **Char literals** lower to their Unicode code point.
- **Range fact.** A directly bound `char` carries the exact Unicode-scalar
  fact `[0, 0xD7FF] ∪ [0xE000, 0x10FFFF]` (`Vermilion.isUnicodeScalar`, IR
  node `charrange`). A `char` projected out of a container or datatype
  carries none, matching Verus, which does not expose the invariant there.
- **Clipping.** `Vermilion.charClip` (IR node `charclip`) is a definition by
  choice whose two characterizing facts (the result is a scalar; a scalar
  input is unchanged) are theorems, matching Verus's two `char_clip` prelude
  axioms without adding an axiom. A `grind_pattern` triggers the range fact on
  `charClip x`, as Verus's axiom triggers on `char_clip i`.
- **`&&` in recursive spec fns** renders as `if _h : a then b else False`
  (propositionally `a ∧ b`) when `b` calls the definition itself, so the
  equation compiler sees `a` while checking that call. Every other
  conjunction keeps its plain `a ∧ b` rendering, so existing definitions emit
  unchanged. Only definitions whose rewritten guard is not constructively
  decidable get `open Classical in` (#25); they stay computable.
- **Suffix recursion.** A `decreasing_by` step unfolds `Seq.len`/`subrange`
  to list lengths, so recursion on `xs.subrange i xs.len` terminates by
  `omega`. It is emitted only when a measure mentions `Seq.len p` and a
  self-call passes a `subrange` for `p`; every other definition keeps its
  previous tactic list.
- Lean fixity keywords (`prefix`, `infix`, `infixl`, `infixr`, `postfix`)
  are escaped as binder names.

Differential c193–c198 pin each construct in both directions; `docs/ir.md`,
`docs/vcgen.md`, and `docs/trust.md` record the rules. No new axiom or
trusted boundary.
