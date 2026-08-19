# dalek-lite — the CryptoProver benchmark crate, targeted by Vermilion

*Acquired 2026-07-20. The operative feature agenda is [PLAN.md](PLAN.md).*

[Beneficial-AI-Foundation/dalek-lite](https://github.com/Beneficial-AI-Foundation/dalek-lite)
is the production `curve25519-dalek` fork carrying a complete in-source
**Verus** verification: ~105k LOC across 121 Rust files — four API modules
(`edwards`, `montgomery`, `ristretto`, `scalar`), the serial `u64` backend,
~633 `spec fn`s, ~896 `proof fn`s, and a 48-`axiom_*` trusted floor. It is
the subject of the **CryptoProver** paper (ChuyueSun/CryptoProver): an AI
harness that reconstructed the crate's internal specifications and proofs
from the API contracts and trusted floor (1,430/1,433 function-level goals
whole-crate), checked by Verus/Z3. Effort/cost comparison is deferred to a
dedicated benchmark run.

**Why Vermilion targets it.** The crate is already Verus syntax, so Vermilion
consumes it directly and upgrades the result on the two axes CryptoProver
itself lists as residual trust: Z3 leaves the TCB (every obligation becomes a
kernel-checked Lean theorem), and the trusted floor can be *proved* — the
upstream repo's own `docs/feasibility_lean_comparisons.md` already maps each
`axiom_*` to its closest Mathlib counterpart (e.g. `axiom_p_is_prime` ↔
`lucas_primality`). The three obligations left open by both the human
reference and CryptoProver are nonlinear field algebra — exactly where
interactive Lean twins over Mathlib are strongest.

## Pin and provenance

| | |
|---|---|
| Upstream | `Beneficial-AI-Foundation/dalek-lite`, branch `main` |
| Pin | `de9ebf01599fedbbced28b938e2c36c538fe4ae5` (2026-07-17) |
| License | BSD-3-Clause (BAF + original dalek copyrights) |
| Upstream Verus pin | release `0.2026.01.14.88f7396`, Rust 1.92.0 (vstd from the same rev) |
| Our fork base | `c569645bd37b0` (2026-07-11) — **six months newer**; drift is measured per probe, not assumed |

`./fetch_upstream.sh` clones the pinned tree into `upstream/` (untracked).
All probes live in [`probes/`](probes/), with their user-editable Lean twins
in `probes/proofs/` (library `CaseDalekLite`) and machine output in
`probes/generated/` (untracked); the case-study root stays reserved for the
eventual crate acquisition (DL8+). Each probe is extracted from the pin and
its header cites the exact source lines. Extraction fidelity: verbatim where
the construct allows it, distilled (and labeled) where a one-file probe
needs a stand-in (e.g. the local `subtle` stub).

## Measured probe matrix (2026-07-20, fork `0bb5732ae`)

Every probe passes the **pinned Verus with full SMT verification** first;
the Vermilion column is the measured Lean-side boundary.

| Probe (`probes/`) | Construct (upstream usage) | Verus | Vermilion |
|---|---|---|---|
| `wide_mul_control.rs` | u64→u128 widening multiply (`m()`, the arithmetic core) | 2/2 | **7/7 automatic** |
| `choice_assume_spec.rs` | `assume_specification` + `external_type_specification` + `uninterp spec fn` over an external type (the `subtle::Choice` model) | 1/1 | **1/1 automatic** — already supported |
| `subtle_assumes.rs` | `assume_specification` on qualified trait-method targets (`<u64 as ConditionallySelectable>::conditional_swap`/`assign`) with `&mut` + `old()` | 3/3 | **DL5 landed (2026-07-20): 3/3 automatic** — the trait-method shape already lowered; the `guard_split` rung closes the constant-time `Choice`-guard case splits |
| `core_assumes.rs` | generic + const-generic `assume_specification` (`<[T; N] as Hash>::hash` with a generic `uninterp spec fn`), lifetime targets (`Formatter::write_str`), `&str`/string-literal flow | 1/1 | **DL5 landed (2026-07-20): 1/1 automatic + two contract-free fns lower cleanly** — generic uninterp spec fns are one fixed generic symbol with explicit type args (#19); `Vermilion.StrSlice` models `&str` |
| `ghost_high_byte.rs` | `let ghost` in exec code + `by (bit_vector)` with requires (~761 ghost mentions) | 2/2 | **DL4 landed (2026-07-20): 3/3 automatic** — `Bits.shr_eq_div` + occurring-index contract instantiation close the isolated query on the `Seq.index` operand; twin byte-identical (was 2 automatic + 1 interactive) |
| `field_sqrt_choose.rs` | `choose` in a spec-fn body (24 sites) | 1/1 | **DL2 landed (2026-07-20): 1/1 automatic** — verbatim `field_sqrt` renders as `Vermilion.chooseSpec`; the conditional characterizing fact is injected per occurrence (docs/vcgen.md `(CHOOSE)`) |
| `montgomery_inverse_calc.rs` | `calc!` equality chain (32 sites) | 1/1 | **DL3 landed (2026-07-20): 4/4 automatic** — fork `486008364` resolves macro-expansion spans to their source call site, so output colocates with the invoking file; no calc!-specific machinery exists or is needed (per policy, the `{}` step scripts stay droppable) |
| `count_loop_isolation.rs` | `#[verifier::loop_isolation(false)]` (2 sites) | 1/1 | **DL6 landed (2026-07-20): 5/5 automatic** — the (NLOOP) rule keeps the enclosing facts across the havoc; the canonical while shape is recognized from the SST's conditional-break prefix, user breaks fail closed |
| `isolation_driver.rs` | one green fn + one `choose` fn in the same file | 2/2 | **fully green after DL1+DL2 (4/4)**; the DL1 isolation contract stays suite-guarded by `scripts/test_lowering_isolation.sh` (fixture now refuses on `loop_isolation(false)`) |

**What we deliberately do NOT build** (user policy, 2026-07-20, extending
the standing hints/interactive-proofs discipline): Verus proof *scripting*
gets no faithful lowering, because the Lean twin does the same work
directly — `calc!` step justifications (the chain's claims stay as ordinary
obligations; the `{}` scripts are droppable), inline `proof {}` lemma
choreography (already ground hints), trigger annotations (preserved,
unconsumed), `reveal_with_fuel` beyond ground instantiation, and
`rlimit`/prover selection (ignored). Semantic constructs — `choose`,
`assume_specification`, ghost bindings, non-isolated loops — still need real
lowering because they change what an obligation *says*, not how Z3 finds it.

**vstd drift (DL7, measured): none affects this crate.** The full sweep
(`docs/reports/dalek-lite-vstd-drift.md`) resolves every reachable vstd
symbol against our July vstd unchanged; the crate's own `lemmas/**` layer
is self-contained. The DL0 note that `lemma_mul_le` was "gone at our pin"
was a misattribution — it is dalek-lite's own helper, which a one-file
probe simply cannot import (`wide_mul_control.rs`'s `<MODIFIED CODE>`
swap to vstd's `lemma_mul_upper_bound` stands as a distillation
artifact, not drift). The only crate-scale accommodation is the
front-end mut-ref migration (`*x` → `*final(x)` in `&mut`
postconditions), mechanical and labeled wherever acquisition hits it.

## Layer Set A acquisition (DL8, 2026-07-20)

[`layer_a.rs`](layer_a.rs) mounts the field cone VERBATIM via `#[path]`
into the pinned `upstream/` tree: `backend/serial/u64/field.rs` (through
the tracked [`field_u64.rs`](field_u64.rs) copy carrying the labeled
front-end accommodations), 13 field-lemma + 8 common-lemma files, and 5
spec modules, with labeled distillation stubs for the out-of-cone edges
(`subtle` compiled as a real extern rlib by [`run.sh`](run.sh)). The DL8
push made the whole cone lower and emit end to end — 416/454 functions,
5,215 obligations — after four frontier fixes (linear `natclip`/`sclip`
IR forms replacing the exponential clip expansion that OOM-killed
`from_bytes`; classical fallback for opaque-Prop `iteP` guards;
parameter range facts `(ranges …)` in recursive guards; two new
`decreasing_by` rungs). The 38 refusals are span-mapped: 37 from the
cross-module recursive-spec-fn termination gap (issue filed), one from
the substitution budget (`as_bytes`; sharing issue filed). Dispositions
and the CryptoProver comparison live in
`docs/reports/dalek-lite-layer-a-scoreboard.md`; artifact routing for
whole-crate runs is tracked in the `whole-crate-acquisition-generated-root`
issue.

## Running

```console
./case-studies/dalek-lite/probes/run.sh       # green probes; Lean is the only verifier
./case-studies/dalek-lite/probes/explore.sh   # expected boundaries, fail-closed; fails loudly when the fragment catches up
./case-studies/dalek-lite/fetch_upstream.sh   # materialize the pinned upstream tree
./case-studies/dalek-lite/run.sh              # Layer Set A acquisition (DL8): whole field cone through the pipeline
```

Twins live in [`probes/proofs/`](probes/proofs/) (library `CaseDalekLite`);
interactive proofs there are first-class verification, per project policy.
