//! The neutral function model: what the Rust half knows about a Verus
//! function once SST details have been stripped away.
//!
//! Everything here is *structured* — expressions are trees, never rendered
//! Lean syntax. The Lean library `Vermilion.Ir` parses the serialized form
//! (see `docs/ir.md`) and owns VC generation and emission.

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Ty {
    Int,
    Prop,
    /// vstd `Seq<T>`, embedded as `Vermilion.Seq`.
    Seq(Box<Ty>),
    /// vstd `Set<T>`, embedded as `Vermilion.Set` (a `Finset`).
    Set(Box<Ty>),
    /// vstd `Map<K, V>`, embedded as `Vermilion.Map` (finite dom + lookup).
    Map(Box<Ty>, Box<Ty>),
    /// vstd `Multiset<T>`, embedded as `Vermilion.Multiset`.
    Multiset(Box<Ty>),
    /// A user datatype (struct/enum/tuple) applied to its type arguments
    /// (empty for a non-generic datatype), emitted as a real Lean
    /// `inductive`.
    Data(FunctionId, Vec<Ty>),
    /// A type parameter in scope (`fn f<T>` / `struct S<T>`), emitted as a
    /// Lean type variable.
    Var(String),
    /// A spec function value (`spec_fn(T…) -> U`), a genuine Lean arrow.
    Fn(Vec<Ty>, Box<Ty>),
    /// Verus `&str` (`StrSlice`), embedded as `Vermilion.StrSlice` — the
    /// type and its literals only; no string operations are lowered.
    StrSlice,
}

impl Ty {
    pub fn ir_form(&self) -> String {
        match self {
            Self::Int => "Int".to_owned(),
            Self::Prop => "Prop".to_owned(),
            Self::Seq(elem) => format!("(seq {})", elem.ir_form()),
            Self::Set(elem) => format!("(set {})", elem.ir_form()),
            Self::Map(key, value) => format!("(map {} {})", key.ir_form(), value.ir_form()),
            Self::Multiset(elem) => format!("(multiset {})", elem.ir_form()),
            Self::Data(id, args) => {
                let mut form = format!("(data {}", id.ir_form());
                for arg in args {
                    form.push(' ');
                    form.push_str(&arg.ir_form());
                }
                form.push(')');
                form
            }
            Self::Var(name) => format!("(tyvar \"{name}\")"),
            Self::StrSlice => "str".to_owned(),
            Self::Fn(params, ret) => {
                let mut form = "(fnspec (".to_owned();
                for (index, param) in params.iter().enumerate() {
                    if index > 0 {
                        form.push(' ');
                    }
                    form.push_str(&param.ir_form());
                }
                form.push_str(") ");
                form.push_str(&ret.ir_form());
                form.push(')');
                form
            }
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BitOpKind {
    And,
    Or,
    Xor,
    Shl,
    Shr,
}

impl BitOpKind {
    pub fn ir_form(self) -> &'static str {
        match self {
            Self::And => "and",
            Self::Or => "or",
            Self::Xor => "xor",
            Self::Shl => "shl",
            Self::Shr => "shr",
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BinOp {
    Add,
    Sub,
    Mul,
    /// Euclidean division, opaque at zero (Verus semantics).
    EDiv,
    /// Euclidean remainder, coupled to `EDiv`.
    EMod,
    Lt,
    Le,
    Gt,
    Ge,
    /// Integer equality.
    Eq,
    /// Integer disequality.
    Ne,
    /// Propositional (Verus `bool`) equality.
    Iff,
    /// Propositional disequality (`a <-> ¬ b`).
    Niff,
    And,
    Or,
    Implies,
}

impl BinOp {
    pub fn ir_symbol(self) -> &'static str {
        match self {
            Self::Add => "add",
            Self::Sub => "sub",
            Self::Mul => "mul",
            Self::EDiv => "ediv",
            Self::EMod => "emod",
            Self::Lt => "lt",
            Self::Le => "le",
            Self::Gt => "gt",
            Self::Ge => "ge",
            Self::Eq => "eq",
            Self::Ne => "ne",
            Self::Iff => "iff",
            Self::Niff => "niff",
            Self::And => "and",
            Self::Or => "or",
            Self::Implies => "implies",
        }
    }
}

/// A vstd collection operation with a fixed arity, serialized as
/// `(<symbol> arg*)`. Empty constructors are separate `Expr` variants
/// because they carry element types instead of arguments.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CollOp {
    /// `Vermilion.Set.insert s x`
    SetInsert,
    /// `Vermilion.Set.contains s x` (Prop)
    SetContains,
    /// `Vermilion.Set.remove s x`
    SetRemove,
    /// `Vermilion.Set.len s`
    SetLen,
    /// `Vermilion.Map.insert m k v`
    MapInsert,
    /// `Vermilion.Map.index m k`
    MapIndex,
    /// `Vermilion.Map.dom m`
    MapDom,
    /// `Vermilion.Map.containsKey m k` (Prop)
    MapContainsKey,
    /// `Vermilion.Multiset.insert m x`
    MultisetInsert,
    /// `Vermilion.Multiset.count m x`
    MultisetCount,
    /// `Vermilion.Multiset.len m`
    MultisetLen,
}

impl CollOp {
    pub fn ir_symbol(self) -> &'static str {
        match self {
            Self::SetInsert => "setinsert",
            Self::SetContains => "setcontains",
            Self::SetRemove => "setremove",
            Self::SetLen => "setlen",
            Self::MapInsert => "mapinsert",
            Self::MapIndex => "mapindex",
            Self::MapDom => "mapdom",
            Self::MapContainsKey => "mapcontainskey",
            Self::MultisetInsert => "msinsert",
            Self::MultisetCount => "mscount",
            Self::MultisetLen => "mslen",
        }
    }

    pub fn arity(self) -> usize {
        match self {
            Self::SetLen | Self::MapDom | Self::MultisetLen => 1,
            Self::SetInsert
            | Self::SetContains
            | Self::SetRemove
            | Self::MapIndex
            | Self::MapContainsKey
            | Self::MultisetInsert
            | Self::MultisetCount => 2,
            Self::MapInsert => 3,
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Expr {
    Var(String),
    /// Arbitrary-precision integer literal, decimal digits with optional sign.
    Int(String),
    /// A string literal (`&str` constant), embedded as
    /// `Vermilion.StrSlice.mk "…"`. Opaque data: no string operations are
    /// lowered, so literals only flow through contract-free calls.
    StrLit(String),
    True,
    False,
    Binary(BinOp, Box<Expr>, Box<Expr>),
    Not(Box<Expr>),
    /// Pure conditional over a `Prop` condition (`Vermilion.iteP`). Both
    /// arms are `Int`-valued; `Prop`-valued conditionals are lowered to
    /// implications instead.
    Ite(Box<Expr>, Box<Expr>, Box<Expr>),
    /// `Vermilion.inUnsignedRange bits e`
    URange(u32, Box<Expr>),
    /// `Vermilion.inSignedRange bits e`
    SRange(u32, Box<Expr>),
    /// `Vermilion.natClip e` — Verus `nat` clipping (saturation at zero).
    /// A dedicated form so the operand occurs ONCE: expanding to
    /// `iteP (e ≥ 0) e 0` duplicates `e` and nested nat arithmetic grows
    /// exponentially (dalek-lite DL8, `from_bytes`).
    NatClip(Box<Expr>),
    /// `Vermilion.sclip bits e` — signed two's-complement clipping at the
    /// given width; single-occurrence for the same reason as `NatClip`.
    SignedClip(u32, Box<Expr>),
    /// `Vermilion.Seq.len s`
    SeqLen(Box<Expr>),
    /// `Vermilion.Seq.push s x`
    SeqPush(Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.index s i`
    SeqIndex(Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.update s i x` (vstd `Seq::update`; the view of
    /// `Vec::set`): the sequence with position `i` replaced by `x`.
    SeqUpdate(Box<Expr>, Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.subrange s i j` (vstd `Seq::subrange`; the view of
    /// `Vec::pop`'s tail and of slice ranges): elements `[i, j)`.
    SeqSubrange(Box<Expr>, Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.add s1 s2` (vstd `Seq::add`, the spec `+` on
    /// sequences): concatenation.
    SeqAdd(Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.toMultiset s` (vstd `Seq::to_multiset`): the multiset
    /// of a sequence's elements, order forgotten.
    SeqToMultiset(Box<Expr>),
    /// A vstd spec-fn application resolved by NAME on the Lean side against
    /// the shipped mirror registry (`Vermilion.Vstd.Registry`): the String
    /// is the canonical vstd path (`vstd::multiset::Multiset::add`). The
    /// generator fails closed on unregistered paths, so fragment growth for
    /// vstd spec fns is a Lean-library-only change.
    VstdApply(String, Vec<Expr>),
    /// `Vermilion.Seq.new len f`
    SeqNew(Box<Expr>, Box<Expr>),
    /// A machine bit operation at a width: `Vermilion.Bits.<op> bits x y`
    /// (unsigned) or the `s<op>` signed variant.
    BitOp(BitOpKind, bool, u32, Box<Expr>, Box<Expr>),
    /// `Vermilion.Seq.empty` at the given element type
    SeqEmpty(Ty),
    /// A vstd collection operation applied to `arity()` arguments.
    Coll(CollOp, Vec<Expr>),
    /// A user spec function applied to arguments. The definition itself
    /// travels as a `SpecFnView`; per the no-inlining/no-fuel design
    /// (plans/execution-plan.md), applications stay applications. The
    /// middle vector carries explicit named type-argument instantiations
    /// `(param, ty)` for applications of *generic* spec fns whose type
    /// arguments Lean could not infer from the value arguments alone
    /// (uninterpreted generic spec fns, issue #19); it is empty everywhere
    /// else, and the serialized form is then unchanged.
    Apply(FunctionId, Vec<(String, Ty)>, Vec<Expr>),
    /// `Vermilion.Set.empty` at the given element type
    SetEmpty(Ty),
    /// `Vermilion.Map.empty` at the given key/value types
    MapEmpty(Ty, Ty),
    /// `Vermilion.Multiset.empty` at the given element type
    MultisetEmpty(Ty),
    /// A datatype constructor applied to its fields, in declaration order.
    /// The middle vector carries the named type-parameter instantiations a
    /// rendered constructor must pin explicitly — exactly those the
    /// variant's field types do not mention, hence Lean cannot infer from
    /// the value arguments (issue #18's stuck `Inhabited ?m`); empty
    /// otherwise, and the serialized/rendered forms are then unchanged.
    Ctor(FunctionId, String, Vec<(String, Ty)>, Vec<Expr>),
    /// Projection of one variant field (`<dt>.get_<variant>_<field> e`);
    /// wrong-variant access yields an unconstrained default, mirroring
    /// Verus's underspecification.
    FieldOf(FunctionId, String, String, Box<Expr>),
    /// Variant test (`<dt>.is_<variant> e`, Prop).
    IsVariant(FunctionId, String, Box<Expr>),
    /// Quantifier (`forall` when the flag is true, else `exists`). Range
    /// guards for the bound variables are already folded into the body by
    /// the lowering (`∀ → guard → body`, `∃ → guard ∧ body`), mirroring
    /// Verus's typ_invariant discipline. Trigger groups are preserved
    /// (user directive 2026-07-13): the Lean backend does not consume
    /// them, but they are documented in the generated code for future
    /// e-matching use (grind patterns etc.).
    Quant(bool, Vec<Binder>, Vec<Vec<Expr>>, Box<Expr>),
    /// Verus `choose|x| P(x)` (single binder, the chosen variable itself):
    /// some value satisfying the guarded predicate when one exists,
    /// otherwise a fixed unconstrained value of the type — exactly Verus's
    /// skolem + `as_type` semantics, emitted as `Vermilion.chooseSpec`.
    /// The predicate carries the binder's range guards conjoined in front,
    /// mirroring Verus's `typ_invariant ∧ cond`. Triggers are preserved as
    /// metadata like `Quant`'s.
    Choose(Binder, Vec<Vec<Expr>>, Box<Expr>),
    /// A spec closure (`|x| e`), a genuine Lean `fun`.
    Lambda(Vec<Binder>, Box<Expr>),
    /// Application of a spec-fn *value* (a lambda or a `spec_fn`-typed
    /// variable) to arguments — plain Lean application.
    CallFn(Box<Expr>, Vec<Expr>),
}

impl Expr {
    pub fn binary(op: BinOp, lhs: Expr, rhs: Expr) -> Self {
        Self::Binary(op, Box::new(lhs), Box::new(rhs))
    }
}

#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct Span {
    pub file: String,
    pub start_line: u32,
    pub start_column: u32,
    pub end_line: u32,
    pub end_column: u32,
}

impl Span {
    pub fn new(file: impl Into<String>, line: u32, column: u32) -> Self {
        Self {
            file: file.into(),
            start_line: line,
            start_column: column,
            end_line: line,
            end_column: column,
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct FunctionId {
    pub crate_name: String,
    pub modules: Vec<String>,
    pub name: String,
}

impl FunctionId {
    pub fn new(
        crate_name: impl Into<String>,
        modules: impl IntoIterator<Item = impl Into<String>>,
        name: impl Into<String>,
    ) -> Self {
        Self {
            crate_name: crate_name.into(),
            modules: modules.into_iter().map(Into::into).collect(),
            name: name.into(),
        }
    }

    /// The `(id CRATE (MODULES) NAME)` IR form. Verus identifiers never
    /// contain quotes or backslashes, so plain quoting suffices here.
    pub fn ir_form(&self) -> String {
        let modules: Vec<String> = self
            .modules
            .iter()
            .map(|module| format!("\"{module}\""))
            .collect();
        format!(
            "(id \"{}\" ({}) \"{}\")",
            self.crate_name,
            modules.join(" "),
            self.name
        )
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Binder {
    pub name: String,
    pub ty: Ty,
}

impl Binder {
    pub fn new(name: impl Into<String>, ty: Ty) -> Self {
        Self {
            name: name.into(),
            ty,
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Clause {
    pub assert_id: String,
    pub span: Span,
    pub proposition: Expr,
    pub description: Option<String>,
}

impl Clause {
    pub fn new(assert_id: impl Into<String>, span: Span, proposition: Expr) -> Self {
        Self {
            assert_id: assert_id.into(),
            span,
            proposition,
            description: None,
        }
    }

    pub fn described(mut self, description: impl Into<String>) -> Self {
        self.description = Some(description.into());
        self
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct CallContract {
    pub callee: String,
    pub requires: Vec<Clause>,
    /// Fresh symbol bound to the call result; obligations after the call
    /// quantify over it.
    pub result: Option<Binder>,
    pub ensures: Vec<Expr>,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum InvariantPhase {
    Entry,
    Preserve,
    /// Checked at a `break` site: the at-exit invariants (`invariant` +
    /// loop `ensures`) must hold, with no decreases obligation.
    Break,
}

impl InvariantPhase {
    pub fn ir_symbol(self) -> &'static str {
        match self {
            Self::Entry => "entry",
            Self::Preserve => "preserve",
            Self::Break => "break",
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Statement {
    Assume(Expr),
    Assert(Clause),
    Call(CallContract),
    /// Postcondition check at a (possibly early) return site; verified under
    /// the context accumulated up to that point, like Verus does.
    Ensures(Clause),
    /// Introduce a fresh universally quantified symbol (branch joins, loop
    /// havoc). Constrained only by subsequent `Assume`s.
    Fresh(Binder),
    /// Loop invariant check: an obligation that, unlike `Assert`, adds no
    /// hypothesis afterwards. `Entry` instances sit before their `Loop`
    /// statement; `Preserve` instances close the loop body (the back edge).
    Invariant {
        phase: InvariantPhase,
        clause: Clause,
    },
    /// `reveal(f)` / `hide(f)` / `reveal_with_fuel(f, n)` at this program
    /// point: obligations downstream see `f`'s definition iff `rounds > 0`
    /// (the per-obligation visibility of the no-fuel design).
    Reveal {
        id: FunctionId,
        rounds: u32,
    },
    /// `broadcast use G` where `G` is a broadcast GROUP (or a lemma with no
    /// single extractable fact): the canonical vstd path travels here and
    /// the generator resolves it against the shipped mirror's lemma
    /// registry (`Vermilion.Vstd.lemmaHints`) into ladder HINTS for
    /// downstream obligations. Fail-open: an unregistered path is dropped
    /// (a hint can only help automation, never change what is proved).
    /// Single-lemma `broadcast use` is handled upstream as an `Assume` of
    /// the lemma's quantified fact — strictly stronger, so it does not come
    /// through here.
    Broadcast(String),
    /// Check-and-discard scope (Verus's `DeadEnd`: `assert … by` blocks,
    /// exec-closure body checks). The children are verified in the
    /// enclosing context; everything they introduce — binders, facts,
    /// reveals — dies with the scope. Any fact the scope establishes for
    /// the continuation arrives as a separate statement after it (e.g.
    /// the outer `Assume` Verus emits after an `assert_by`).
    Scope(Vec<Statement>),
    /// Loop scope, following Verus's loop-isolation discharge. The havoc
    /// symbols standing in for modified variables are introduced by `Fresh`
    /// statements just before the loop. The body is verified for an
    /// arbitrary iteration under the `iteration` facts (invariants + the
    /// condition); nothing discovered inside escapes. The continuation sees
    /// the havoc symbols constrained by the `exit` facts only.
    Loop {
        iteration: Vec<Expr>,
        body: Vec<Statement>,
        exit: Vec<Expr>,
        /// Verus loop isolation (the default). `false` mirrors
        /// `#[verifier::loop_isolation(false)]`: the body additionally
        /// keeps the enclosing context's facts across the havoc (DL6);
        /// facts about havoced variables keep referring to their pre-loop
        /// symbols, which stays sound under the SSA-style havoc binders.
        isolated: bool,
    },
    /// Conditional control flow. Obligations inside an arm see the arm's
    /// path condition; context discovered inside an arm reaches the
    /// continuation only guarded by that condition.
    Branch {
        condition: Expr,
        then_branch: Vec<Statement>,
        else_branch: Vec<Statement>,
    },
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct FunctionView {
    pub id: FunctionId,
    /// Type parameters in scope (`fn f<T, U>`), emitted as `(T : Type)
    /// [Inhabited T]` binders before the value binders of every obligation.
    pub type_params: Vec<String>,
    pub binders: Vec<Binder>,
    pub requires: Vec<Expr>,
    pub body: Vec<Statement>,
}

/// A checked function the adapter REFUSED to lower (outside the supported
/// fragment). Carried through the textual IR so the Lean side records a
/// source-mapped per-function disposition instead of the refusal silently
/// suppressing its lowered siblings. The message is a sanitized one-liner;
/// the full diagnostic goes to stderr at lowering time.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct RefusedView {
    pub id: FunctionId,
    pub span: Span,
    pub message: String,
}

/// A user datatype (struct, enum, or synthesized tuple), emitted by the
/// Lean side as a real `inductive` — injectivity, disjointness, and
/// exhaustiveness come from the kernel, never from axioms.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct DatatypeView {
    pub id: FunctionId,
    /// Type parameters of a generic datatype (`struct S<T>`), emitted as
    /// `inductive S (T : Type)`.
    pub type_params: Vec<String>,
    pub variants: Vec<VariantView>,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct VariantView {
    pub name: String,
    /// Field names and types, in declaration order.
    pub fields: Vec<Binder>,
}

/// A user spec function, emitted by the Lean side as a real definition
/// (`@[simp] def` — the simp equation is the per-occurrence ground
/// defining equation of the no-fuel design). Only non-recursive spec fns
/// are lowered so far; recursive ones fail closed until the
/// `termination_by` emission lands.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SpecFnView {
    pub id: FunctionId,
    /// Rust span of the `spec fn` definition (for editor navigation from
    /// the emitted Lean `def` back to the source).
    pub span: Span,
    /// Type parameters (`spec fn f<T>`), emitted as `(T : Type)` binders
    /// before the value parameters.
    pub type_params: Vec<String>,
    pub binders: Vec<Binder>,
    pub ret: Ty,
    pub body: Expr,
    /// Default visibility: true for ordinary spec fns (Verus default fuel
    /// 1), false for `#[verifier::opaque]` ones — the machine attempt sees
    /// an invisible definition only where a `reveal` raises it.
    pub visible: bool,
    /// Range facts of the value parameters whose Verus types carry them
    /// (`nat`, machine ints). The Lean side conjoins them into the
    /// recursive-definition guard: the Int embedding otherwise loses the
    /// typing facts Verus's own termination check relied on (dalek-lite
    /// DL8, `binomial (natClip (n-1)) (natClip (k-1))` with `k : nat`).
    pub param_ranges: Vec<Expr>,
    /// Termination measures for a self-recursive definition (empty for
    /// non-recursive ones): the Lean side emits `termination_by` from them,
    /// justified by the same decreases Verus already checked. Machine
    /// attempts unfold recursive definitions by bounded rewriting, never by
    /// simp (which would loop).
    pub decreases: Vec<Expr>,
    /// An *uninterpreted* spec function (`uninterp spec fn`, or any spec fn
    /// Verus leaves without a body): a fixed but unknown total function. It
    /// carries no `body`/`decreases`, is never visible for unfolding (there
    /// is nothing to unfold), and the Lean side emits it as an `opaque`
    /// declaration. Reasoning about it is pure congruence — free, since it
    /// is ordinary Lean function application.
    pub uninterpreted: bool,
}
