---
title: Work alongside an enabled rust-analyzer
labels: [feature, vscode-extension]
state: open
github: 57
---

Today the recommended setup is to keep rust-analyzer away from Verus sources.
It cannot expand `verus! { … }`, so everything inside the macro — `proof fn`,
`requires`/`ensures`, `#![trigger …]`, `assert(…) by (bit_vector)` — is
reported as a syntax or type error. The repository works around this by
excluding the vendored case-study trees in `.vscode/settings.json`, and the
extension deliberately does not consult rust-analyzer's diagnostics (the v0.4
gate that did was removed — it blocked every verification, see
`logs/2026-07-12-m2-ir-architecture.md`).

That workaround costs the user everything rust-analyzer provides on the
non-`verus!` parts of the same crate: completion, go-to-definition, type and
inlay hints, rename, cargo diagnostics. A production crate like dalek-lite is
mostly ordinary Rust; a verification workflow where the Rust IDE is switched
off is not one people will keep.

**Goal:** a workspace where rust-analyzer is enabled and useful, and Vermilion
owns the `verus!` regions, with no false errors from either side.

Directions to evaluate (this issue is the design slot; pick one when
scheduled):

1. **Diagnostic suppression by region.** Compute the `verus! { … }` spans of
   the open file (the extension already parses function ranges) and filter or
   downgrade rust-analyzer diagnostics that fall inside them. VS Code does not
   let one extension edit another's `DiagnosticCollection`, so this likely
   means shipping a language-status/quick-fix layer plus documented settings
   rather than true filtering — worth prototyping to see how far it gets.
2. **verus-analyzer.** The rust-analyzer fork with Verus syntax support
   (`docs/planning/reports/04-implementation-plan/06-ide-experience.md`) parses
   the macro natively. Detect it, recommend it, and defer to it for Rust IDE
   features while Vermilion keeps the verdicts and twin navigation. Cost: the
   fork tracks upstream rust-analyzer loosely and is another pinned toolchain
   dependency.
3. **Macro-transparent shim.** Provide a `proc-macro` / build-script view that
   makes `verus!` expand to plain Rust for analysis purposes only, so stock
   rust-analyzer sees a well-formed crate. Cost: expansions must stay
   span-faithful or navigation drifts.
4. **Setting-driven scoping, as a floor.** At minimum, ship the exclusion rules
   as extension-managed workspace settings (offer to write
   `rust-analyzer.files.excludeDirs` / `rust-analyzer.diagnostics.disabled` for
   detected Verus trees) instead of leaving them hand-maintained in
   `.vscode/settings.json`, and document the trade-off in the extension README.

**Acceptance:** with rust-analyzer enabled on a workspace containing a Verus
crate, (a) no false rust-analyzer errors are shown inside `verus!` blocks,
(b) rust-analyzer features still work in the crate's ordinary Rust code,
(c) Vermilion's own squiggles, gutter marks, and twin links are unchanged, and
(d) verification is never gated on another extension's diagnostics.
