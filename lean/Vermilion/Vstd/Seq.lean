import Mathlib.Data.Int.Basic
import Mathlib.Data.List.GetD

/-! # `vstd::seq` — the Vermilion mirror

The model for vstd's `Seq` (a Lean `List`) and its base spec surface
(`index`/`push`/`len`/`empty`/`new`/`update`/`subrange`/`add`), in
namespace `Vermilion.Seq`. The `vstd::seq_lib` extensions live in
`SeqLib.lean`; the vstd-path → Lean-name index in `Registry.lean`. -/

namespace Vermilion

abbrev Seq (α : Type u) := List α

namespace Seq

def index [Inhabited α] (xs : Seq α) (i : Int) : α :=
  if 0 ≤ i then xs.getD i.toNat default else default

def push (xs : Seq α) (x : α) : Seq α := xs ++ [x]

def len (xs : Seq α) : Int := xs.length

def empty : Seq α := []

/- The `len`/`push` lemmas are `grind`-tagged as well as `@[simp]` (like the
`add` family below). Since Lean 4.33, simp fails to APPLY a conditional
lemma whose side condition needs a nested rewrite to discharge (the
discharger proves e.g. `0 = Seq.empty.len` via `len_empty`, but the proof
then "fails to assign" — `Simp.Rewrite`'s `.failedAssign`), so literal
pushed-sequence goals like `(empty.push 7).index 0 < 100` no longer close
on the simp rungs. `grind` e-matches these equations and proves the
arithmetic side conditions in cutsat instead, restoring the first rung. -/
@[simp, grind =] theorem len_empty : (empty : Seq α).len = 0 := rfl

@[simp, grind =] theorem len_push (xs : Seq α) (x : α) :
    (xs.push x).len = xs.len + 1 := by
  simp [push, len]

@[simp] theorem len_nonneg (xs : Seq α) : 0 ≤ xs.len := by
  simp [len]

/-- Sequence extensionality through the Vermilion view: equal lengths and
elementwise-equal `index` values give equality. The interactive-twin
counterpart of Verus's `=~=` axiom for `Seq` (the machine ladder has no
rung applying this yet — `docs/issues/seq-extensionality-rung.md`). -/
theorem ext [Inhabited α] {a b : Seq α}
    (hlen : a.len = b.len)
    (h : ∀ i : Int, 0 ≤ i → i < a.len → a.index i = b.index i) : a = b := by
  apply List.ext_getElem
  · simpa [len] using congrArg Int.toNat hlen
  · intro i hia hib
    have h0 : (0 : Int) ≤ (i : Int) := Int.natCast_nonneg i
    have hlt : (i : Int) < a.len := by
      simp only [len]
      exact_mod_cast hia
    have hi := h i h0 hlt
    simp only [index, h0, if_true, Int.toNat_natCast] at hi
    rwa [List.getD_eq_getElem _ _ hia, List.getD_eq_getElem _ _ hib] at hi

@[simp, grind =] theorem index_push_last [Inhabited α] (xs : Seq α) (x : α) :
    (xs.push x).index xs.len = x := by
  simp [push, index, len]

/-- Conditional form of `index_push_last`: fires when the index is
*provably* the pushed sequence's last position even if written differently
(e.g. `s.len + 1` against `(s.push a).len`), with simp discharging the
side condition. -/
@[simp, grind =] theorem index_push_at [Inhabited α] (xs : Seq α) (x : α) (i : Int)
    (h : i = xs.len) : (xs.push x).index i = x := by
  subst h; exact index_push_last xs x

/-- Reading below the pushed position. `@[simp]` with arithmetic side
conditions: simp discharges them for the literal indices machine
attempts produce and leaves the goal untouched otherwise; the rewrite
strictly shrinks the sequence term, so it cannot loop. -/
@[simp, grind =] theorem index_push_prefix [Inhabited α] (xs : Seq α) (x : α) (i : Int)
    (low : 0 ≤ i) (high : i < xs.len) :
    (xs.push x).index i = xs.index i := by
  simp only [push, index, len, if_pos low] at *
  have : i.toNat < xs.length := by omega
  simp [List.getD, List.getElem?_append_left this]

/-- Unconditional if-form of the push/index lemmas. On Lean ≥ 4.33 simp
cannot APPLY a conditional lemma whose side condition needs a nested
rewrite to discharge (the discharge proof "fails to assign"), so indexing
into a literal pushed sequence stopped computing. This form needs no
discharge: the `if` condition reduces by the unconditional `len` lemmas
and `reduceIte`. Lower priority, so the targeted conditional lemmas above
still fire first wherever their discharge succeeds. -/
@[simp 900] theorem index_push [Inhabited α] (xs : Seq α) (x : α) (i : Int) :
    (xs.push x).index i = if i = xs.len then x else xs.index i := by
  by_cases h : i = xs.len
  · simpa [h] using index_push_last xs x
  · rcases (by omega : i < xs.len ∨ xs.len ≤ i) with hlt | hge
    · rcases (by omega : 0 ≤ i ∨ i < 0) with h0 | h0
      · simp [index_push_prefix xs x i h0 hlt, h]
      · simp only [index, if_neg (by omega : ¬ 0 ≤ i)]
        simp [h]
    · -- past the end on both sides: both reads are the default
      have hgt : xs.len < i := by omega
      have hnn := len_nonneg xs
      have hxs : xs.length < i.toNat := by simp only [len] at hgt hnn; omega
      have happ : (xs ++ [x]).length ≤ i.toNat := by
        simp only [List.length_append, List.length_cons, List.length_nil]; omega
      simp only [index, push, if_pos (by omega : (0:Int) ≤ i), if_neg h,
        List.getD_eq_getElem?_getD,
        List.getElem?_eq_none happ, List.getElem?_eq_none (Nat.le_of_lt hxs)]

/-- Sequence comprehension (vstd `Seq::new`): `new len f` has the values
of `f` at `0 … len-1` (empty for nonpositive `len`). -/
def new [Inhabited α] (n : Int) (f : Int → α) : Seq α :=
  (List.range n.toNat).map (fun j => f (Int.ofNat j))

@[simp] theorem len_new [Inhabited α] (n : Int) (f : Int → α)
    (h : 0 ≤ n) : (new n f).len = n := by
  simp [new, len, Int.toNat_of_nonneg h]

@[simp] theorem index_new [Inhabited α] (n : Int) (f : Int → α) (i : Int)
    (low : 0 ≤ i) (high : i < n) : (new n f).index i = f i := by
  have hi : i.toNat < n.toNat := by omega
  have hb : i.toNat < ((List.range n.toNat).map
      (fun j : Nat => f (Int.ofNat j))).length := by
    simpa using hi
  rw [new, index, if_pos low, List.getD_eq_getElem?_getD,
    List.getElem?_eq_getElem hb, Option.getD_some, List.getElem_map,
    List.getElem_range]
  exact congrArg f (Int.toNat_of_nonneg low)

/-- Constant sequence (vstd `array::spec_array_fill_for_copy_type` — the
Seq view of the array-repeat literal `[t; N]`, whose const-generic
length travels as the leading `Int` argument): every position holds
`t`. Defined through `new` so its lemma surface is inherited. -/
def fill [Inhabited α] (n : Int) (t : α) : Seq α :=
  new n (fun _ => t)

@[simp] theorem len_fill [Inhabited α] (n : Int) (t : α)
    (h : 0 ≤ n) : (fill n t).len = n :=
  len_new n (fun _ => t) h

@[simp] theorem index_fill [Inhabited α] (n : Int) (t : α) (i : Int)
    (low : 0 ≤ i) (high : i < n) : (fill n t).index i = t :=
  index_new n (fun _ => t) i low high

/-- In-place update (vstd `Seq::update`; the view of `Vec::set`): replace the
value at position `i`. Out-of-range `i` is the identity, matching `index`'s
unconstrained off-range reading. -/
def update (xs : Seq α) (i : Int) (x : α) : Seq α :=
  if 0 ≤ i then xs.set i.toNat x else xs

@[simp] theorem len_update (xs : Seq α) (i : Int) (x : α) :
    (xs.update i x).len = xs.len := by
  unfold update len; split <;> simp

/-- Reading the updated slot back returns the new value. -/
@[simp] theorem index_update_same [Inhabited α] (xs : Seq α) (i : Int) (x : α)
    (low : 0 ≤ i) (high : i < xs.len) : (xs.update i x).index i = x := by
  have hb : i.toNat < xs.length := by simp only [len] at high; omega
  simp only [update, index, if_pos low, List.getD_eq_getElem?_getD,
    List.getElem?_set_self hb, Option.getD_some]

/-- Reading any other slot is unchanged. -/
@[simp] theorem index_update_other [Inhabited α] (xs : Seq α) (i : Int)
    (x : α) (j : Int) (hne : j ≠ i) : (xs.update j x).index i = xs.index i := by
  by_cases hi : 0 ≤ i
  · by_cases hj : 0 ≤ j
    · simp only [update, index, if_pos hi, if_pos hj, List.getD_eq_getElem?_getD,
        List.getElem?_set_ne (show j.toNat ≠ i.toNat by omega)]
    · simp only [update, if_neg hj]
  · simp only [index, if_neg hi]

/-- Contiguous slice (vstd `Seq::subrange`; the view of `Vec::pop`'s tail and
of slice ranges): elements at positions `[i, j)`. In range (`0 ≤ i ≤ j ≤ len`)
it has length `j − i` and `index k = index (i + k)`. -/
def subrange (xs : Seq α) (i j : Int) : Seq α :=
  (xs.drop i.toNat).take (j - i).toNat

@[simp] theorem len_subrange (xs : Seq α) (i j : Int)
    (low : 0 ≤ i) (order : i ≤ j) (high : j ≤ xs.len) :
    (xs.subrange i j).len = j - i := by
  simp only [len] at high ⊢
  simp only [subrange, List.length_take, List.length_drop]
  omega

/-- Reading position `k` of a subrange reads position `i + k` of the whole. -/
@[simp] theorem index_subrange [Inhabited α] (xs : Seq α) (i j k : Int)
    (low : 0 ≤ i) (klow : 0 ≤ k) (khigh : k < j - i) :
    (xs.subrange i j).index k = xs.index (i + k) := by
  have hik : 0 ≤ i + k := by omega
  have hlt : k.toNat < (j - i).toNat := by omega
  have hidx : i.toNat + k.toNat = (i + k).toNat := by omega
  simp only [subrange, index, if_pos klow, if_pos hik,
    List.getD_eq_getElem?_getD, List.getElem?_take, if_pos hlt,
    List.getElem?_drop, hidx]

/-- Concatenation (vstd `Seq::add`, the spec `+` on sequences). -/
def add (s1 s2 : Seq α) : Seq α := s1 ++ s2

/- The `add` lemmas are `grind`-tagged as well as `@[simp]`: contract-style
hypotheses (quantified per-element range facts) make `grind` — the ladder's
first rung — e-match into a deep case split when it knows nothing about
`Seq.add`, burning the heartbeat budget before a simp rung can run. With the
rules below `grind` closes concatenation goals immediately instead. -/
@[simp, grind =] theorem len_add (s1 s2 : Seq α) :
    (s1.add s2).len = s1.len + s2.len := by
  simp only [add, len, List.length_append]; omega

/-- Indexing the left part of a concatenation. -/
@[simp, grind =] theorem index_add_left [Inhabited α] (s1 s2 : Seq α) (i : Int)
    (low : 0 ≤ i) (high : i < s1.len) : (s1.add s2).index i = s1.index i := by
  have hb : i.toNat < s1.length := by simp only [len] at high; omega
  simp only [add, index, if_pos low, List.getD_eq_getElem?_getD,
    List.getElem?_append_left hb]

/-- Indexing the right part of a concatenation. -/
@[simp, grind =] theorem index_add_right [Inhabited α] (s1 s2 : Seq α) (i : Int)
    (low : s1.len ≤ i) : (s1.add s2).index i = s2.index (i - s1.len) := by
  have hnn := len_nonneg s1
  have hi : 0 ≤ i := by omega
  have hd : 0 ≤ i - s1.len := by omega
  -- Unfold `len` before `index`: once `index`'s `ite` is in the goal,
  -- rewriting `len` underneath it desynchronizes the guard proposition from
  -- the `Decidable` instance baked into the `ite` (type-incorrect target on
  -- Lean ≥ 4.33), and the `if_pos` rewrites stop matching.
  simp only [add, len] at *
  simp only [index]
  have hidx : i.toNat - s1.length = (i - (s1.length : Int)).toNat := by omega
  rw [if_pos hi, if_pos hd, List.getD_eq_getElem?_getD, List.getD_eq_getElem?_getD,
    List.getElem?_append_right (by omega), hidx]

/-- An empty-span subrange is the empty sequence. -/
@[simp] theorem subrange_none (s : Seq α) (i : Int) : s.subrange i i = empty := by
  simp [subrange, empty]

@[simp] theorem add_empty (s : Seq α) : s.add empty = s := by
  simp [add, empty]

@[simp] theorem empty_add (s : Seq α) : (empty : Seq α).add s = s := by
  simp [add, empty]

/-- A subrange spanning the whole sequence is the sequence. -/
@[simp] theorem subrange_all (s : Seq α) : s.subrange 0 s.len = s := by
  simp [subrange, len]

/-- Pushing onto a concatenation extends its right part (append
associativity in `push` clothing). -/
@[simp] theorem add_push (s1 s2 : Seq α) (x : α) :
    (s1.add s2).push x = s1.add (s2.push x) := by
  simp [add, push]

/-- Extending a subrange by the next element of the base sequence (the
prelude form of vstd's `lemma_subrange_push` proof pattern). -/
theorem subrange_push [Inhabited α] (s : Seq α) (i j : Int)
    (low : 0 ≤ i) (order : i ≤ j) (high : j < s.len) :
    (s.subrange i j).push (s.index j) = s.subrange i (j + 1) := by
  have hlen : j < (s.length : Int) := by simpa [len] using high
  simp only [subrange, push, index] at *
  have hj : j.toNat < s.length := by omega
  have hstep : (j + 1 - i).toNat = (j - i).toNat + 1 := by omega
  have hdrop : (j - i).toNat < (s.drop i.toNat).length := by
    simp only [List.length_drop]; omega
  rw [if_pos (by omega : (0:Int) ≤ j), hstep, List.take_add_one,
    List.getElem?_eq_getElem hdrop]
  have hidx : (s.drop i.toNat)[(j - i).toNat] = s[j.toNat] := by
    rw [List.getElem_drop]; congr 1; omega
  simp [hidx, List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj]

/-- Adjacent subranges concatenate (the prelude form of vstd's
`lemma_subrange_add` proof pattern; no upper bound needed — `take` past the
end degrades consistently on both sides). -/
theorem subrange_add_subrange (s : Seq α) (i j k : Int)
    (low : 0 ≤ i) (ij : i ≤ j) (jk : j ≤ k) :
    (s.subrange i j).add (s.subrange j k) = s.subrange i k := by
  simp only [subrange, add] at *
  have hsplit : (k - i).toNat = (j - i).toNat + (k - j).toNat := by omega
  have hdrop : s.drop j.toNat = (s.drop i.toNat).drop (j - i).toNat := by
    rw [List.drop_drop]; congr 1; omega
  rw [hsplit, List.take_add, hdrop]

end Seq

end Vermilion
