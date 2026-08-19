/-! # The vstd mirror registry (data only — Mathlib-free)

The machine-readable index of the vstd mirror
(plans/execution-plan.md §V-series): which vstd declaration maps to which
Lean name. DELIBERATELY import-free so `vrml_gen` — whose closure is
Mathlib-free by design — can resolve `(vstdapply "path" …)` IR nodes at
generation time. The proof-side documentation and (V3) mirrored theorem
statements live in `Vermilion/Vstd/<Module>.lean`, one file per vstd
module; `Vermilion/Vstd/Probes.lean` checks at compile time that every
name below exists in the real environment.

Two registries with different soundness policies:

- `specFnRegistry` — vstd SPEC FN path → the model DEFINITION mirroring
  it. This is semantics: the generator fails CLOSED on unmapped paths
  (an obligation about an unmirrored function must not be emitted).
- `lemmaRegistry` — vstd LEMMA / broadcast-group path → the proved model
  lemmas mirroring it. These are hints (H2): resolution failures warn
  and drop; a hint can never change what is proved.

Growing the fragment for a vstd spec fn is now a Lean-library-only
change: add the model definition and its lemma surface to the mirror,
register both here, and the pipeline picks them up — no Rust rebuild, no
IR-grammar growth. -/

namespace Vermilion.Vstd

namespace Seq

/-- vstd spec fns of `vstd::seq` and the model definitions mirroring
them. The structural IR core (`seqlen`, `seqindex`, `sequpdate`,
type-carrying `seqempty`) pins the fabricated-fact subset of this
mapping; the rest resolves through `(vstdapply …)`. -/
def specFns : List (String × String) := [
  ("vstd::seq::Seq::len", "Vermilion.Seq.len"),
  ("vstd::seq::Seq::push", "Vermilion.Seq.push"),
  ("vstd::seq::Seq::index", "Vermilion.Seq.index"),
  ("vstd::seq::Seq::spec_index", "Vermilion.Seq.index"),
  ("vstd::seq::Seq::update", "Vermilion.Seq.update"),
  ("vstd::seq::Seq::subrange", "Vermilion.Seq.subrange"),
  ("vstd::seq::Seq::add", "Vermilion.Seq.add"),
  ("vstd::seq::Seq::empty", "Vermilion.Seq.empty"),
  ("vstd::seq::Seq::new", "Vermilion.Seq.new"),
  ("vstd::seq::Seq::first", "Vermilion.Seq.first"),
  ("vstd::seq::Seq::last", "Vermilion.Seq.last")
]

/-- vstd's `seq` axiom surface and the PROVED model lemmas mirroring it
(hints; everything is a theorem of the `Seq`-as-`List` model). -/
def lemmas : List (String × List String) := [
  ("vstd::seq::axiom_seq_add_len", ["Vermilion.Seq.len_add"]),
  ("vstd::seq::axiom_seq_add_index1", ["Vermilion.Seq.index_add_left"]),
  ("vstd::seq::axiom_seq_add_index2", ["Vermilion.Seq.index_add_right"]),
  ("vstd::seq::axiom_seq_push_len", ["Vermilion.Seq.len_push"]),
  ("vstd::seq::axiom_seq_push_index_same", ["Vermilion.Seq.index_push_last",
    "Vermilion.Seq.index_push_at"]),
  ("vstd::seq::axiom_seq_push_index_different",
    ["Vermilion.Seq.index_push_prefix"]),
  ("vstd::seq::axiom_seq_update_len", ["Vermilion.Seq.len_update"]),
  ("vstd::seq::axiom_seq_update_same", ["Vermilion.Seq.index_update_same"]),
  ("vstd::seq::axiom_seq_update_different",
    ["Vermilion.Seq.index_update_other"]),
  ("vstd::seq::axiom_seq_subrange_len", ["Vermilion.Seq.len_subrange"]),
  ("vstd::seq::axiom_seq_subrange_index", ["Vermilion.Seq.index_subrange"]),
  ("vstd::seq::axiom_seq_empty", ["Vermilion.Seq.len_empty"]),
  ("vstd::seq::axiom_seq_new_len", ["Vermilion.Seq.len_new"]),
  ("vstd::seq::axiom_seq_new_index", ["Vermilion.Seq.index_new"])
]

end Seq

namespace SeqLib

/-- vstd spec fns of `vstd::seq_lib` with model definitions. -/
def specFns : List (String × String) := [
  ("vstd::seq_lib::Seq::to_multiset", "Vermilion.Seq.toMultiset"),
  ("vstd::seq_lib::Seq::contains", "Vermilion.Seq.contains"),
  ("vstd::seq_lib::Seq::drop_last", "Vermilion.Seq.dropLast"),
  ("vstd::seq_lib::Seq::drop_first", "Vermilion.Seq.dropFirst"),
  ("vstd::seq_lib::Seq::remove", "Vermilion.Seq.remove"),
  ("vstd::seq_lib::Seq::sort_by", "Vermilion.Seq.sortBy")
]

/-- vstd lemmas of `vstd::seq_lib` and their proved mirrors (hints).
`group_seq_properties` expands to the ambient prelude Seq surface — the
lemmas a Verus user would get from `broadcast use`. -/
def lemmas : List (String × List String) := [
  ("vstd::seq_lib::Seq::to_multiset_ensures",
    ["Vermilion.Seq.toMultiset_push", "Vermilion.Seq.toMultiset_len",
     "Vermilion.Seq.toMultiset_contains"]),
  ("vstd::seq_lib::to_multiset_build", ["Vermilion.Seq.toMultiset_push"]),
  ("vstd::seq_lib::to_multiset_len", ["Vermilion.Seq.toMultiset_len"]),
  ("vstd::seq_lib::group_to_multiset_ensures",
    ["Vermilion.Seq.toMultiset_push", "Vermilion.Seq.toMultiset_len",
     "Vermilion.Seq.toMultiset_contains", "Vermilion.Seq.toMultiset_add"]),
  ("vstd::seq_lib::Seq::drop_last_distributes_over_add",
    ["Vermilion.Seq.dropLast_add"]),
  ("vstd::seq_lib::group_seq_properties",
    ["Vermilion.Seq.len_add", "Vermilion.Seq.index_add_left",
     "Vermilion.Seq.index_add_right", "Vermilion.Seq.len_push",
     "Vermilion.Seq.index_push_last", "Vermilion.Seq.index_push_prefix",
     "Vermilion.Seq.len_update", "Vermilion.Seq.index_update_same",
     "Vermilion.Seq.index_update_other", "Vermilion.Seq.len_subrange",
     "Vermilion.Seq.index_subrange", "Vermilion.Seq.toMultiset_add",
     "Vermilion.Seq.toMultiset_push", "Vermilion.Seq.toMultiset_len",
     "Vermilion.Seq.subrange_all", "Vermilion.Seq.add_push",
     "Vermilion.Seq.len_dropLast", "Vermilion.Seq.index_dropLast",
     "Vermilion.Seq.len_remove"])
]

end SeqLib

namespace Multiset

/-- vstd spec fns of `vstd::multiset` with model definitions.
`Multiset::add` is Mathlib's `+`. -/
def specFns : List (String × String) := [
  ("vstd::multiset::Multiset::empty", "Vermilion.Multiset.empty"),
  ("vstd::multiset::Multiset::insert", "Vermilion.Multiset.insert"),
  ("vstd::multiset::Multiset::count", "Vermilion.Multiset.count"),
  ("vstd::multiset::Multiset::len", "Vermilion.Multiset.len"),
  ("vstd::multiset::Multiset::remove", "Vermilion.Multiset.remove"),
  ("vstd::multiset::Multiset::add", "HAdd.hAdd")
]

/-- vstd lemmas of `vstd::multiset` and their proved mirrors (hints). -/
def lemmas : List (String × List String) := [
  ("vstd::multiset::axiom_multiset_empty", ["Vermilion.Multiset.count_empty",
    "Vermilion.Multiset.len_empty"]),
  ("vstd::multiset::axiom_multiset_insert_same",
    ["Vermilion.Multiset.count_insert_same"]),
  ("vstd::multiset::axiom_multiset_insert_different",
    ["Vermilion.Multiset.count_insert_other"]),
  ("vstd::multiset::axiom_len_insert", ["Vermilion.Multiset.len_insert"]),
  ("vstd::multiset::axiom_count_non_negative",
    ["Vermilion.Multiset.count_nonneg"])
]

end Multiset

namespace Set

/-- vstd spec fns of `vstd::set` with model definitions (the finite
`Set`-as-`Finset` model; `contains` arrives collapsed through vstd's
`to_iset` inlining). -/
def specFns : List (String × String) := [
  ("vstd::set::Set::empty", "Vermilion.Set.empty"),
  ("vstd::set::Set::insert", "Vermilion.Set.insert"),
  ("vstd::set::Set::remove", "Vermilion.Set.remove"),
  ("vstd::set::Set::contains", "Vermilion.Set.contains"),
  ("vstd::set::Set::spec_has", "Vermilion.Set.contains"),
  ("vstd::set::Set::len", "Vermilion.Set.len"),
  -- The finite `Set`'s `contains` is `#[verifier::inline]` for
  -- `to_iset().contains(…)`; the adapter collapses `to_iset`, so the
  -- surviving application is ISet's — same model predicate.
  ("vstd::iset::ISet::contains", "Vermilion.Set.contains"),
  ("vstd::iset::ISet::spec_has", "Vermilion.Set.contains")
]

def lemmas : List (String × List String) := []

end Set

namespace Map

/-- vstd spec fns of `vstd::map` with model definitions. -/
def specFns : List (String × String) := [
  ("vstd::map::Map::empty", "Vermilion.Map.empty"),
  ("vstd::map::Map::insert", "Vermilion.Map.insert"),
  ("vstd::map::Map::index", "Vermilion.Map.index"),
  ("vstd::map::Map::spec_index", "Vermilion.Map.index"),
  ("vstd::map::Map::dom", "Vermilion.Map.dom"),
  ("vstd::map::Map::contains_key", "Vermilion.Map.containsKey")
]

def lemmas : List (String × List String) := []

end Map

namespace Array

/-- vstd spec fns of `vstd::array` with model definitions. The
array-repeat literal `[t; N]` desugars through
`spec_array_fill_for_copy_type::<T, N>(t)`; the lowering routes it here
with the const-generic `N` as a leading `Int` argument, so the mirror
is the constant sequence. -/
def specFns : List (String × String) := [
  ("vstd::array::spec_array_fill_for_copy_type", "Vermilion.Seq.fill")
]

/-- vstd's array-fill broadcast axiom and the proved model lemmas
mirroring it. -/
def lemmas : List (String × List String) := [
  ("vstd::array::axiom_spec_array_fill_for_copy_type",
    ["Vermilion.Seq.index_fill", "Vermilion.Seq.len_fill"])
]

end Array

namespace Wrapping

/-- vstd unsigned `wrapping_{add,sub,mul}` and `rotate_left` spec fns,
per width. Arithmetic models are `(x op y) % 2^w`; rotation is the exact
modulo-width pair of shifts joined by bitwise OR. Signed variants and the
wrapping-shift family stay on the generic emission path until registered. -/
def specFns : List (String × String) := [
  ("vstd::wrapping::u8_specs::wrapping_add", "Vermilion.Vstd.Wrapping.u8_add"),
  ("vstd::wrapping::u8_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.u8_sub"),
  ("vstd::wrapping::u8_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.u8_mul"),
  ("vstd::wrapping::u8_specs::rotate_left", "Vermilion.Vstd.Rotate.u8_rotate_left"),
  ("vstd::wrapping::u16_specs::wrapping_add", "Vermilion.Vstd.Wrapping.u16_add"),
  ("vstd::wrapping::u16_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.u16_sub"),
  ("vstd::wrapping::u16_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.u16_mul"),
  ("vstd::wrapping::u16_specs::rotate_left", "Vermilion.Vstd.Rotate.u16_rotate_left"),
  ("vstd::wrapping::u32_specs::wrapping_add", "Vermilion.Vstd.Wrapping.u32_add"),
  ("vstd::wrapping::u32_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.u32_sub"),
  ("vstd::wrapping::u32_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.u32_mul"),
  ("vstd::wrapping::u32_specs::rotate_left", "Vermilion.Vstd.Rotate.u32_rotate_left"),
  ("vstd::wrapping::u64_specs::wrapping_add", "Vermilion.Vstd.Wrapping.u64_add"),
  ("vstd::wrapping::u64_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.u64_sub"),
  ("vstd::wrapping::u64_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.u64_mul"),
  ("vstd::wrapping::u64_specs::rotate_left", "Vermilion.Vstd.Rotate.u64_rotate_left"),
  ("vstd::wrapping::u128_specs::wrapping_add", "Vermilion.Vstd.Wrapping.u128_add"),
  ("vstd::wrapping::u128_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.u128_sub"),
  ("vstd::wrapping::u128_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.u128_mul"),
  ("vstd::wrapping::u128_specs::rotate_left", "Vermilion.Vstd.Rotate.u128_rotate_left"),
  ("vstd::wrapping::usize_specs::wrapping_add", "Vermilion.Vstd.Wrapping.usize_add"),
  ("vstd::wrapping::usize_specs::wrapping_sub", "Vermilion.Vstd.Wrapping.usize_sub"),
  ("vstd::wrapping::usize_specs::wrapping_mul", "Vermilion.Vstd.Wrapping.usize_mul"),
  ("vstd::wrapping::usize_specs::rotate_left", "Vermilion.Vstd.Rotate.usize_rotate_left")
]

def lemmas : List (String × List String) := []

end Wrapping

namespace Bytes

/-- Exact vstd models used by native `u64::{to_le_bytes,from_le_bytes}`
contracts. -/
def specFns : List (String × String) := [
  ("vstd::bytes::spec_u64_to_le_bytes", "Vermilion.Vstd.Bytes.u64ToLeBytes"),
  ("vstd::bytes::spec_u64_from_le_bytes", "Vermilion.Vstd.Bytes.u64FromLeBytes")
]

def lemmas : List (String × List String) := []

end Bytes

/-- vstd spec-fn path → mirroring model definition (semantics; fail
closed). -/
def specFnRegistry : List (String × String) :=
  Seq.specFns ++ SeqLib.specFns ++ Multiset.specFns ++ Set.specFns
    ++ Map.specFns ++ Array.specFns ++ Wrapping.specFns ++ Bytes.specFns

/-- vstd lemma / broadcast-group path → proved mirror lemmas (hints; fail
open). -/
def lemmaRegistry : List (String × List String) :=
  Seq.lemmas ++ SeqLib.lemmas ++ Multiset.lemmas ++ Set.lemmas ++ Map.lemmas
    ++ Array.lemmas ++ Bytes.lemmas

/-- Look up the model definition for a vstd spec-fn path. -/
def specFn (path : String) : Option String :=
  (specFnRegistry.find? (·.1 == path)).map (·.2)

/-- Look up the mirror lemmas for a vstd lemma or broadcast-group path. -/
def lemmaHints (path : String) : Option (List String) :=
  (lemmaRegistry.find? (·.1 == path)).map (·.2)

end Vermilion.Vstd
