# Chapter 8: Next-Agent Guidelines — Starting the Implementation

For the human or AI agent who opens the Vermilion implementation repo for the first time. This is
the handoff; read [`../../GUIDE.md`](../../GUIDE.md) first if you haven't.

## 8.1 Ground rules (from the locked decisions)

1. The project name is **Vermilion** — one "l".
2. Lean toolchain **v4.28.0** everywhere; upgrades only at milestone boundaries (E1).
3. Reuse Veil's manager; if something doesn't fit, write down why before deviating (E2).
4. Verus crates are dependencies pinned by commit, touched only through the `sst_facade` module
   (E3, risk R3).
5. Everything user-visible must keep the Verus CLI/JSON contract — the test suite depends on it.
6. Every convention choice about spec semantics goes into `Vermilion/Prelude` as a named
   definition, and gets a probe test (spec-compat §6.2/§6.3).

## 8.2 Week-one plan (milestone M0)

1. Create the repo per the layout in [`02-architecture.md`](02-architecture.md) §2.6. Pin the
   dependencies:
   - **Verus**: https://github.com/verus-lang/verus at commit `c569645bd37b0` (the surveyed
     commit; or current main after a survey refresh) — consumed as git dependencies for the
     `builtin`/`builtin_macros`/`rust_verify`/`vir` crates (decision E3);
   - **Veil 2.0**: https://github.com/verse-lab/veil/tree/veil-2.0-preview (the `veil-2.0-preview`
     branch) — the VC manager, SMT tactic stack, and their transitive Lean 4.28 dependency set
     (lean-smt fork, Loom, lean-auto, lean-cvc5, mathlib);
   - **iris-lean** (soundness program only, NOT a base-camp dependency):
     https://github.com/leanprover-community/iris-lean.
2. Hand-write the calibration set: 20 obligations covering — straight-line ensures (5), loop
   invariants (4), recursion/decreases (3), quantifier-heavy lemmas from IronKV-style code (4),
   overflow/bounds side conditions (2), Seq/Map reasoning (2). Sources: Verus's `examples/guide/`
   and `verified-ironkv`. Draft the minimal prelude they need.
3. Run the ladder matrix (grind / lean-smt+cvc5 / lean-smt+Z3 / omega / nlinarith; trust and
   reconstruction) and publish the solve-rate table as `reports/M0-calibration.md` in the
   implementation repo. **This table decides how much of R1 (quantifier gap) is real. Do it
   before writing the emitter.**

## 8.3 Sequencing after M0

Follow [`01-base-camp.md`](01-base-camp.md) §1.3 steps 1–6 in order; gates in
[`03-validation-milestones.md`](03-validation-milestones.md); the harness
([`05-testing-harness.md`](05-testing-harness.md)) comes up with Step 2, not later — it is how
you know Step 2 works.

## 8.4 Things that will bite you (learned from the surveys; don't rediscover them)

- **SST is not a stable API** — the surveyed week saw an IR field move. Isolate behind
  `sst_facade`; treat every pin bump as a semantic event (run the harness).
- **`ast_simplify` and `poly` run at specific points in Verus's pass order** — take SST *before*
  poly boxing (`FunctionSst` from `ast_to_sst_crate`), or you'll be proving theorems about `Poly`.
- **Veil's manager cancellation caveat**: in-flight in-process cvc5 FFI calls can't be
  interrupted — budget discharger timeouts accordingly (Veil's docs note this explicitly).
- **lean-auto doesn't handle Lean `Array` natively** (Velvet hit this) — prelude `Seq` should
  present an interface the SMT translation digests (List-backed first; optimize later).
- **Don't piggyback on Lean section variables / compile-time structures** for the generated
  code's module system — Veil's team calls their attempt "a disaster"; generate explicit,
  boring, flat Lean modules.
- **Beautify at emission, not at proof time** — goals must be readable in the InfoView *as
  generated* (IDE contract §6.4), and beautification must not change statement hashes on
  re-emission (staleness contract).
- **Two PACMPL page-numbering conventions** and similar bib trivia are already resolved in
  `literature/` — don't re-verify citations that are marked verified.

## 8.5 Definition of done, per PR

Green differential run for the current gate's fragment; no new axioms/sorries without a ledger
entry; performance ledger not regressed by >20% without a written note; if the PR adds a
convention decision, it adds the probe test in the same change.

## 8.6 When you're stuck

- Automation gap on a goal class → check the M0 table first; if the class is new, extend the
  calibration set rather than hacking the one goal.
- Verus front-end behavior unclear → `source/CODE.md` in the Verus repo, then the specific files
  named in [`../02-verus-architecture/`](../02-verus-architecture/) chapters 1–2 (they carry
  line-level pointers).
- Manager behavior unclear → Pîrlea's thesis ch. 3 is the design document; the code is
  `Veil/Core/Tools/Verifier/`.
- Spec-semantics question ("what does Verus mean by …") → write a 5-line Verus program, run
  *Verus*, read the `.smt2` log (`.verus-log/`), and encode the answer as a probe test.
