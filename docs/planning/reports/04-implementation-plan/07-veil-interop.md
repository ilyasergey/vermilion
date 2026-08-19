# Chapter 7: Vermilion ↔ Veil — EPR-Style Protocol Verification via Refinement

**Status: valuable, not critical (E5).** This chapter records the design so the base-camp
architecture keeps it cheap; implementation is scheduled at M7 (with a possible early spike after
M3 if a corpus need arises).

## 7.1 What Verus's EPR mode is for, and why we don't port it

The SOSP'24 paper's marquee automation result: rewriting IronKV's delegation-map invariant proof
(~300 lines, multi-day) as an `#[epr_mode]` module — private-field structs abstracted to
uninterpreted sorts, quantifier-alternation graph checked acyclic, Z3 flipped to MBQI — made the
invariant check fully automatic, Ivy-style. The abstraction is connected to the unrestricted
implementation by ordinary Verus proofs.

Vermilion does not port the EPR checker
([`../02-verus-architecture/04-features-dropped.md`](../02-verus-architecture/04-features-dropped.md) §4.4):
in our ecosystem, decidable-fragment protocol reasoning is *Veil's entire specialty* — with
strictly more modes than Verus's EPR ever had (finite-model-find SMT automation, explicit-state
model checking, BMC `sat`/`unsat` traces, CTI display, interactive Lean proofs).

## 7.2 The pattern: abstract protocol in Veil, implementation refinement in Vermilion

The same three-layer shape as the SOSP'24 case study, with the abstract layer upgraded:

```
Veil module (protocol)             — uninterpreted-sort state, actions, inductive invariants
        ↑ refinement theorem       — Lean theorems connecting the two (the bridge)
Vermilion obligations (impl)       — real Rust state (Seq/Map/structs), per-function VCs
```

1. **Protocol layer**: the delegation map (or any protocol skeleton) as a Veil module — `type
   node`, `relation owns(node, key)`, actions for delegate/handoff, `invariant` clauses.
   `#check_invariants` discharges inductiveness in the decidable fragment; the model checker and
   BMC give the testing modes Verus's EPR never offered (CTIs instead of MBQI timeouts).
2. **The bridge**: an *abstraction function* from the Rust state's Lean image to the Veil state
   (e.g., `absOwns : SHTState → node → key → Prop`), plus per-operation **commutation theorems**:
   every Verus exec operation, as characterized by its Vermilion `%ens`, maps to a Veil action
   (or stutter). These are ordinary Lean theorems — written interactively or discharged by the
   ladder — living in the user proof workspace like any `@[vermilion]` proof.
3. **Payoff**: protocol-level invariants transfer to the implementation through the refinement,
   so the implementation-side proof burden collapses to the commutation obligations — the same
   division of labor as SOSP'24's EPR result, but with the abstract layer *foundational* (both
   layers are Lean theorems checked by one kernel, per the embedding thesis) instead of a second
   trusted Z3 mode.

## 7.3 Why this is architecturally cheap for us

Both tools already end in the same place: Veil elaborates protocols to Lean transition-system
definitions with proved invariants; Vermilion emits Lean characterizations of Rust functions.
The bridge is *user-level Lean code between two libraries in one Lean workspace* — same
toolchain (4.28), same manager (bridge theorems are just more claims in the DAG, with
dependencies into both sides), same IDE (a third column, or the Veil module in the Lean buffer).
No new trusted components; no cross-tool serialization.

What must be true at base camp for this to stay cheap (all already locked):

- obligations/`%ens` characterizations are *named, importable Lean declarations* (emitter
  contract §2.2) — the bridge can `import` them;
- the generated workspace accepts additional user Lean files that depend on Veil (the lakefile
  already depends on Veil for the manager);
- state-type translations are stable and documented (spec-compat chapter) so abstraction
  functions don't chase encodings.

## 7.4 The demonstrator (scheduled at M7)

Re-do the SOSP'24 IronKV delegation-map study end-to-end our way:

1. delegation-map protocol as a Veil module; `#check_invariants` + `#model_check` green;
2. IronKV (already verified by Vermilion at M3) + abstraction function + commutation theorems;
3. deliverable: a written comparison against both baselines — the original 300-line Verus proof
   and the SOSP'24 EPR version — on automation, proof lines, trust story, and what the CTI/model-
   checking modes caught during development.

Success criterion: the commutation obligations are majority-automatic (ladder-discharged), and
the protocol layer needed no manual invariant proof — matching EPR-mode's automation with a
smaller TCB and better debugging modes.

## 7.5 Beyond the demonstrator (yes-and, unscheduled)

- **smoltcp's TCP state machine** (corpus C6) is the natural second application: protocol FSM in
  Veil, packet-processing code in Vermilion.
- **Veil-side generation**: Veil 2's module system could eventually *generate* Verus trait
  skeletons ("implement these exec fns against these ensures") — turning the pattern into a
  methodology: specify in Veil, implement in Rust, refine in Vermilion.
- **Anvil interplay**: verus-tla liveness (M7) and Veil safety on the same controller model would
  make the temporal story fully multi-modal.
