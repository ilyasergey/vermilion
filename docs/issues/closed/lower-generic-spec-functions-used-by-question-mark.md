---
title: Lower generic spec functions used by the question-mark operator
labels: [feature, vcgen]
state: closed
github: 19
---

`case-studies/percolator/withdrawal_question_mark.rs` verifies with Verus but
Vermilion refuses it while lowering `?`:

```text
uninterpreted spec function spec_from has type parameters (unsupported)
```

The function is ordinary sequential Rust. `Option::ok_or(...)?` reaches
vstd's generic `spec_from` contract for `FromResidual`; no dynamic dispatch or
ghost ownership is involved.

The same boundary is independently pinned by the verbatim
`case-studies/entry-api/entry_api.rs`: its first refusal is the generic,
bodyless vstd `view` used by the standard `HashMap` contracts. A naive
experiment that merely added generic Lean binders was insufficient because
the exported declaration can carry call-instantiated parameter types; the IR
must preserve the generic signature and each application's type arguments
explicitly.

Extend opaque/uninterpreted spec-function registration and application to
carry instantiated type arguments. The symbol must remain a fixed generic
function with ordinary congruence; do not monomorphize it into unrelated
symbols per call. Add a positive `Result`/`?` differential case and a negative
soundness guard, update the textual IR grammar and `docs/ir.md`, and update
`docs/vcgen.md` if call assumptions or generated obligations change. The
Percolator withdrawal driver should then verify end to end with its executable
body unchanged. The HashMap Entry progression is tracked separately by the
standard Entry-API issue.

**Closed 2026-07-20 (dalek-lite DL5).** Implemented exactly as prescribed:
`register_uninterp_spec_fn` accepts type/const-generic parameters and
registers ONE fixed generic symbol (declaration-scoped — a call site's
`typ_substs` no longer leaks into the recorded signature, the dedup trap
this issue warned about); the IR `apply` node grows an optional
`(typs (NAME TY)*)` group carrying each application's instantiation, and
the renderer emits Lean named type arguments (`f (T := τ) …`); the
emitted `opaque` carries `[Inhabited T]` binders so the ∀-type stays
synthesizably inhabited for return-position-only parameters. Guards:
c186 (positive, congruence through a generic uninterp symbol) / c187
(negative, unknownness preserved). The percolator withdrawal driver
verifies end to end (5/6 automatic + one short interactive twin proof,
first-class per policy); `case-studies/dalek-lite/probes/core_assumes.rs`
pins the `<[T; N] as Hash>::hash` + generic-`uninterp`-spec-fn shape. The
HashMap Entry progression remains tracked by its own issue.
