# 2026-07-12 — repository bootstrap

## Inputs read

- the implementation repository README;
- planning `README.md`, `GUIDE.md`, and `ROADMAP.md`;
- implementation chapters on base camp, architecture, validation, the
  differential harness, and next-agent guidelines;
- architecture chapters on the reuse boundary and spec-language compatibility.

## Decisions carried forward

- Start with M0, not emitter code. The automation gap is the largest unknown.
- Pin Lean to 4.28.0, Verus to `c569645bd37b0`, and Veil to surveyed branch
  `veil-2.0-preview` (local surveyed commit `8872eb7b462a`).
- Keep generated obligations readable, flat, stable, and independent of the
  tactic that eventually proves them.
- Model `Seq` with a List-backed interface initially. Keep division by zero
  opaque rather than inheriting Lean's totalized value. Model checked machine
  integers as mathematical integers plus explicit range obligations.
- Do not add the Rust emitter until the M0 report reaches a written go/no-go
  conclusion.

## Environment audit

- Working tree began clean at initial commit `feb0ca7` (rewritten email history).
- Lean 4.28.0 is already installed through elan; the ambient default was 4.29.0.
- Cargo 1.83.0 is installed.
- The exact surveyed Verus checkout exists locally and is clean at the
  required commit.
- A local Veil checkout exists at `veil-2.0-preview`, commit
  `8872eb7b462a58145a20087eead2b0bfeecad351`, with its dependency cache.

## Next

The pinned Lake package now builds successfully. M0 has a draft prelude, seven
semantic probes, all 20 obligations, and a reproducible isolated runner. The
full matrix was stopped following user direction not to fixate on SMT; the
status and toolchain gaps are recorded in `docs/reports/M0-calibration.md`.

Next: implement the discharger-independent M1 interface: a normalized SST
facade, straight-line VC generation, deterministic theorem naming, source-span
metadata, Lean rendering, and golden tests.

## M1 vertical-slice update

Implemented the neutral `FunctionView` facade, straight-line context/VC
generation, stable names and FNV statement hashes, Lean metadata/theorem
rendering, and atomic no-op-preserving module emission. Emitted obligations now
define a named proposition shared by automated and interactive proofs.

The runnable smoke path includes a reconstructed cvc5 theorem and a companion
`@[vermilion]` proof whose type is exactly the emitted proposition. Formal M1
is not yet declared complete: real `FunctionSst` adaptation, VIR expression
translation, CLI/JSON diagnostics, and differential oracle tests remain.

## M1a real-source update

Built the exact pinned Verus front end with Rust 1.96 and Z3 4.12.5. The
Verus-y `examples/m1-pipeline/simple.rs` verifies and produces pre-poly SST.
The transitional fail-closed SST reader turns it into three source-mapped Lean
VCs: overflow safety, the source assertion, and the postcondition.

Generated Lean is now colocated and name-matched:
`simple.rs` → `generated/simple.lean`, with automatic, reconstructed-SMT, and
interactive proof modes in `proofs/simple.lean`. The reusable
`lean/Vermilion/` tree contains no generated example artifacts. The ported
execution plan and incremental-computation workstream live under `plans/`;
the pipeline connection and captured SST live under `docs/pipeline/`.

Verification on the completed slice:

- pinned Verus: `verification results:: 1 verified, 0 errors`;
- Rust: 5 unit tests and doc tests passed;
- repeated emission: `generated/simple.lean` reported `unchanged` twice;
- Lean: `lake build M1Pipeline` succeeded, including reconstructed cvc5 and
  the exact interactive companion theorem;
- Vermilion source axiom/sorry census remains zero.

Checkpoint commit: `4941dbb Build Verus source-to-Lean VC slice`.
