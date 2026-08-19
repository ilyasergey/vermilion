---
name: lean-side-ir-parsing
description: "M2 architecture directive: Lean parses the neutral Verus IR with a proper lexer; Rust stops string-rendering Lean source"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 6f7b4393-71c0-4e9e-aafc-4b4a1fad4626
---

On 2026-07-12 the user directed (start of M2): "the parser from Verus IR to
Lean should be implemented in Lean in an idiomatic way, with proper lexing.
Avoid lookaheads on specific substrings." Confirmed scope via follow-up:

- Rust (`vermilion_direct`) lowers Verus SST to the neutral FunctionView and
  serializes it to a stable **textual IR**; it no longer string-renders Lean
  source. Expressions travel as structured trees, not Lean-syntax strings.
- A Lean library lexes/parses that IR idiomatically (real tokenizer +
  recursive-descent/Parsec — never substring lookahead) and owns VC
  generation, obligation emission (`generated/*.lean` twins), and manifests.
- The legacy textual SST reader (`sst_facade/textual.rs`) is to be deleted.

**Why:** The user wants the IR→Lean boundary owned by Lean, with parsing done
properly, and chose the "Lean parses the IR" option explicitly.

**How to apply:** Any new component that consumes IR or structured text on
the Lean side must use proper lexing/parsing. Keep the twin methodology
(generated/ vs proofs/) intact — Lean emits the generated files. Fragment
growth in any milestone must extend the IR grammar, `docs/ir.md`, the Rust
serializer, and the Lean parser in the same slice (user-requested; recorded
in plans/execution-plan.md and WORKPLAN.md). Related:
[[vermilion-conventions]].
