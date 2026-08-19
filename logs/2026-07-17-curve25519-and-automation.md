# 2026-07-17 (cont.) — curve25519 verified, packaged; scalar_saturate rung

## Landed (all committed)

- **curve25519 case study** at `case-studies/aeneas/curve25519/`
  (relocated under aeneas/): verbatim dalek `Scalar52::mul_internal`,
  38 obligations. Verus contract = nine per-limb defining equations;
  `proofs/curve25519_specbridge.lean` **imports the twin and consumes
  its VCs verbatim** — `mul_internal_meets_aeneas_spec` copies the
  obligation hypothesis block, applies `ensures_101_0..8`, finishes
  with the pure-`ring` `defining_equations_give_asNat` proving the
  dalek/Aeneas `wideAsNat = asNat·asNat` theorem (zero axioms).
- **`scalar_saturate` ladder rung** (`lean/Vermilion/Obligations.lean`,
  issue #35 wrap-collapse half): bounded-forall instantiation +
  occurring-product bounds from named atom facts + update-collapse +
  omega; per-rung heartbeat budgets added. Measured: curve25519's 38
  obligations go from 9-auto+29-interactive to fully automatic in a
  clean generated check.
- Verus trait-impl idiom confirmed (requires-only-inherited; impl
  `ensures` + `IndexSpecImpl` hook) — no fork change needed.
- Top-level README/DESIGN/progress/execution-plan updated for the
  fork + crypto push; issues #34-#39 on GitHub (verus label on fork
  ones).

## Known limitations / open

- **Twin ships explicit proofs, not the bare `scalar_saturate` rung.**
  The rung is heavy (~1M heartbeats/goal); re-running it on every
  editor pass is too slow, so the tracked twin keeps hash-stable
  explicit proofs (same statements). The *generated* module proves the
  automatic discharge.
- **Contract-level `asNat` ensures crashes the emitter** (tenth-ensures
  experiment, reverted). Result value inlines a 4k-char `Seq.update`
  chain; the unfolded statement is megabyte-scale → interactive Lean
  crash. Tracked as **issue #39** (share obligation contexts + name
  result values); this is also the fix that would shrink every twin
  ~10× and close the "why is Aeneas's proof 41 lines" gap.

## For the agent taking over

Read, in order:
1. `case-studies/aeneas/PLAN.md` §0 (status ledger) + `gap-matrix.md`
   §5 (what's addressed) — the operative crypto plan.
2. `case-studies/aeneas/curve25519/README.md` — the finished study and
   its known limitation.
3. `lean/Vermilion/Obligations.lean` — `vrml_scalar_saturate` (the new
   rung) and `vrml_ladder` (per-rung budgets); `docs/vcgen.md` ladder
   paragraph mirrors it.
4. Open issues driving next work: **#39** (emitter blowup — highest
   leverage), **#35** (remaining: promote shr/band bridges into
   `Vermilion.Bits`), **#18** (typed-Result rendering, blocks
   percolator `active_bitmap_set` last obligation), **#38/#34** (fork
   work: iterator ghost-contracts, done debug_assert).
5. Fork: `ilyasergey/verus` branch `dev`; wiring in
   `scripts/setup_verus.sh`. Next fork candidate = nonneg-`int` bitand
   (unblocks verbatim `symcrust_mont_mul`).

Not yet done (awaiting your signal): verified-vs-pending folder split
for probes and percolator (blocked earlier on in-flight twin edits).
Another agent was filling `probes/proofs/dalek_mul_internal.lean` — do
not clobber it.
