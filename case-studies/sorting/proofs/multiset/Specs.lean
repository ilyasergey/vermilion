import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false

-- vrml:spec vstd.relations.reflexive vstd/relations.rs:23:1
def vstd.relations.reflexive {T : Type} [Inhabited T] (r : (T → T → Prop)) : Prop :=
  (∀ (x : T), r x x)

-- vrml:spec vstd.relations.antisymmetric vstd/relations.rs:31:1
def vstd.relations.antisymmetric {T : Type} [Inhabited T] (r : (T → T → Prop)) : Prop :=
  (∀ (x : T) (y : T), ((r x y ∧ r y x) → (x = y)))

-- vrml:spec vstd.relations.transitive vstd/relations.rs:51:1
def vstd.relations.transitive {T : Type} [Inhabited T] (r : (T → T → Prop)) : Prop :=
  (∀ (x : T) (y : T) (z : T), ((r x y ∧ r y z) → r x z))

-- vrml:spec vstd.relations.strongly_connected vstd/relations.rs:47:1
def vstd.relations.strongly_connected {T : Type} [Inhabited T] (r : (T → T → Prop)) : Prop :=
  (∀ (x : T) (y : T), (r x y ∨ r y x))

-- vrml:spec vstd.relations.total_ordering vstd/relations.rs:55:1
def vstd.relations.total_ordering {T : Type} [Inhabited T] (r : (T → T → Prop)) : Prop :=
  ((vstd.relations.reflexive r ∧ vstd.relations.antisymmetric r) ∧ vstd.relations.transitive r) ∧ vstd.relations.strongly_connected r

-- vrml:spec vstd.relations.sorted_by vstd/relations.rs:88:1
def vstd.relations.sorted_by {T : Type} [Inhabited T] (a : (Vermilion.Seq T)) (less_than : (T → T → Prop)) : Prop :=
  (∀ (i : Int) (j : Int), ((((0 ≤ i) ∧ (i < j)) ∧ (j < Vermilion.Seq.len a)) → less_than (Vermilion.Seq.index a i) (Vermilion.Seq.index a j)))

