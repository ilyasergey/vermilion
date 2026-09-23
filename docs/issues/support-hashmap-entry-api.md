---
title: Support the standard HashMap entry API
labels: [feature, vcgen]
state: open
github: 30
---

The verbatim pinned-Verus case study `case-studies/entry-api/entry_api.rs`
verifies three functions with Verus but is outside Vermilion's current
fragment. It covers `HashMap::new`, `entry`, `insert_entry`, `or_insert`,
`Entry::{Occupied,Vacant}`, `get_mut`, and writes through the returned
reference, all against an extensional `Map` view.

Stage this rather than special-casing one method:

1. **Completed prerequisite:** generic opaque specification applications
   landed in DL5 ([#19](closed/lower-generic-spec-functions-used-by-question-mark.md)).
   The original polymorphic `view` refusal is historical; rerun the Entry
   probe before identifying its current first refusal;
2. model the relevant std-spec contracts and Entry enum/view operations in
   the vstd mirror;
3. extend returned-`&mut` prophecy handling so `final(value)` in
   `OccupiedEntry::get_mut` relates the borrowed value back to the owning
   Entry and map;
4. add positive/negative differential guards for absent insertion, occupied
   mutation, and map preservation, then make the verbatim case study a green
   `run.sh` gate.

Do not model Entry mutation as an unconstrained fresh map: each method must
preserve the vstd contract's relation to the old and final owner views.
