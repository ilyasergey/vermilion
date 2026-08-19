//! Convert real `vir::sst::FunctionSst` values into the neutral
//! `FunctionView` contract.
//!
//! The straight-line fragment covers machine and mathematical integers,
//! booleans, SSA lets, assertions, assumptions, calls with contracts, and
//! (possibly early) returns. Unsupported nodes fail closed with an explicit
//! message. Expressions are lowered to structured trees; the Lean library
//! `Vermilion.Ir` owns all rendering (see `docs/ir.md`).

use std::collections::HashMap;

use num_bigint::BigInt;
use vermilion_backend::model::{
    BinOp, Binder, BitOpKind, CallContract, Clause, CollOp, DatatypeView, Expr, FunctionId,
    FunctionView, InvariantPhase, Span, SpecFnView, Statement, Ty, VariantView,
};
use vir::ast::{
    ArithOp, AssertQueryMode, BinaryOp, Constant, CrateId, InequalityOp, IntRange, Typ, TypX,
    UnaryOp, UnaryOpr, VarIdent,
};
use vir::sst::{CallTarget, Exp, ExpX, FunctionSst, Stm, StmX};

pub fn crate_display_name(crate_id: &CrateId) -> String {
    match crate_id {
        CrateId::Internal => "crate".to_owned(),
        CrateId::Core => "core".to_owned(),
        CrateId::Alloc => "alloc".to_owned(),
        CrateId::Vstd => "vstd".to_owned(),
        CrateId::Id(name, _) => name.to_string(),
    }
}

/// Parse Verus's `Span::as_string` form, e.g.
/// `examples/m1-pipeline/simple.rs:12:13: 12:18 (#0)`. The patched export
/// carries no resolved line table, so this rendered form is the only span
/// source available outside a rustc session.
pub fn span_from_as_string(raw: Option<&str>) -> Span {
    let raw = raw.unwrap_or("generated:0:0: 0:0");
    let raw = raw.split(" (#").next().unwrap_or(raw);
    let mut halves = raw.split_whitespace();
    let start = halves
        .next()
        .unwrap_or("generated:0:0:")
        .trim_end_matches(':');
    let end = halves.next().unwrap_or("0:0");
    let mut start_parts = start.rsplitn(3, ':');
    let start_column = start_parts.next().and_then(|x| x.parse().ok()).unwrap_or(0);
    let start_line = start_parts.next().and_then(|x| x.parse().ok()).unwrap_or(0);
    let file = start_parts.next().unwrap_or("generated").to_owned();
    let mut end_parts = end.split(':');
    let end_line = end_parts
        .next()
        .and_then(|x| x.parse().ok())
        .unwrap_or(start_line);
    let end_column = end_parts
        .next()
        .and_then(|x| x.parse().ok())
        .unwrap_or(start_column);
    Span {
        file,
        start_line,
        start_column,
        end_line,
        end_column,
    }
}

fn span(raw: &vir::messages::Span) -> Span {
    span_from_as_string(Some(&raw.as_string))
}

/// Strip SMT-irrelevant decorations (&, Box, Ghost, ...) off a type.
fn undecorate(typ: &Typ) -> &TypX {
    match &**typ {
        TypX::Decorate(_, _, inner) => undecorate(inner),
        other => other,
    }
}

enum RangeConstraint {
    Unsigned(u32),
    Signed(u32),
    Nat,
}

/// Range constraint carried by an integer type, if any.
fn range_constraint(typ: &Typ) -> Option<RangeConstraint> {
    match undecorate(typ) {
        TypX::Int(IntRange::U(bits)) => Some(RangeConstraint::Unsigned(*bits)),
        TypX::Int(IntRange::I(bits)) => Some(RangeConstraint::Signed(*bits)),
        TypX::Int(IntRange::Nat) => Some(RangeConstraint::Nat),
        // usize/isize: Verus verifies for a symbolic architecture word of
        // 32 or 64 bits; the arch-neutral facts (valid on both) are the
        // 64-bit bounds. Programs pinning a 32-bit arch may prove more in
        // Verus than here (fail-closed direction; documented).
        TypX::Int(IntRange::USize) => Some(RangeConstraint::Unsigned(64)),
        TypX::Int(IntRange::ISize) => Some(RangeConstraint::Signed(64)),
        _ => None,
    }
}

fn range_proposition(constraint: &RangeConstraint, subject: Expr) -> Expr {
    match constraint {
        RangeConstraint::Unsigned(bits) => Expr::URange(*bits, Box::new(subject)),
        RangeConstraint::Signed(bits) => Expr::SRange(*bits, Box::new(subject)),
        RangeConstraint::Nat => Expr::binary(BinOp::Le, Expr::Int("0".to_owned()), subject),
    }
}

fn is_bool(typ: &Typ) -> bool {
    matches!(undecorate(typ), TypX::Bool)
}

/// Is this datatype path the given vstd collection (module, type) pair?
fn is_vstd_datatype(path: &vir::ast::Path, module: &str, name: &str) -> bool {
    matches!(&path.krate, CrateId::Vstd)
        && path.segments.iter().map(|s| s.as_str()).collect::<Vec<_>>() == [module, name]
}

/// Is this datatype path vstd's `Seq`?
fn is_vstd_seq(path: &vir::ast::Path) -> bool {
    is_vstd_datatype(path, "seq", "Seq")
}

/// Is this datatype path `alloc`'s `Vec` (the external-spec'd
/// `std::vec::Vec`)? We model `Vec<T>` as its `View::V = Seq<T>` view, so a
/// `Vec` binder becomes a `Seq` and `v@`/`v.view()` is the identity.
fn is_alloc_vec(path: &vir::ast::Path) -> bool {
    matches!(&path.krate, CrateId::Alloc)
        && path.segments.iter().map(|s| s.as_str()).collect::<Vec<_>>() == ["vec", "Vec"]
}

/// Binder type for a Verus parameter or call-result type. User datatypes
/// are registered for emission as they are first seen.
fn binder_type(ctx: ExpCtx<'_>, typ: &Typ) -> Result<Ty, String> {
    let typ = resolve_typ(ctx, typ);
    match undecorate(&typ) {
        TypX::Int(_) => Ok(Ty::Int),
        TypX::Bool => Ok(Ty::Prop),
        TypX::TypParam(name) => Ok(Ty::Var(name.to_string())),
        // A fixed-size array `[T; N]` is modeled by its `Seq<T>` view,
        // like `Vec`; its length is a type fact (`seqlen a = N`) emitted
        // at value-introduction sites.
        TypX::Primitive(vir::ast::Primitive::Array, typs) if typs.len() == 2 => {
            Ok(Ty::Seq(Box::new(binder_type(ctx, &typs[0])?)))
        }
        // A slice `[T]` is its `Seq<T>` view; unlike an array its length
        // is unconstrained.
        TypX::Primitive(vir::ast::Primitive::Slice, typs) if typs.len() == 1 => {
            Ok(Ty::Seq(Box::new(binder_type(ctx, &typs[0])?)))
        }
        // Verus `&str`: an opaque string value (`Vermilion.StrSlice`). Only
        // the type and its literals are lowered — no string operations —
        // enough for contract-free passing (`Formatter::write_str`).
        TypX::Primitive(vir::ast::Primitive::StrSlice, _) => Ok(Ty::StrSlice),
        // A spec closure type is a genuine Lean arrow.
        TypX::SpecFn(params, ret) => Ok(Ty::Fn(
            params
                .iter()
                .map(|param| binder_type(ctx, param))
                .collect::<Result<Vec<_>, _>>()?,
            Box::new(binder_type(ctx, ret)?),
        )),
        // A `&mut T` is modeled by its referent value type T (the
        // prophecy current/future projections are handled at the
        // expression level; see the mut-ref lowering).
        TypX::MutRef(inner) => binder_type(ctx, inner),
        TypX::Datatype(dt, type_args, _) => {
            if let vir::ast::Dt::Path(path) = dt {
                if is_vstd_seq(path) && type_args.len() == 1 {
                    return Ok(Ty::Seq(Box::new(binder_type(ctx, &type_args[0])?)));
                }
                // A `Vec<T, A>` is modeled by its `Seq<T>` view (the
                // allocator argument is irrelevant to the spec).
                if is_alloc_vec(path) && !type_args.is_empty() {
                    return Ok(Ty::Seq(Box::new(binder_type(ctx, &type_args[0])?)));
                }
                if is_vstd_datatype(path, "set", "Set") && type_args.len() == 1 {
                    return Ok(Ty::Set(Box::new(binder_type(ctx, &type_args[0])?)));
                }
                if is_vstd_datatype(path, "map", "Map") && type_args.len() == 2 {
                    return Ok(Ty::Map(
                        Box::new(binder_type(ctx, &type_args[0])?),
                        Box::new(binder_type(ctx, &type_args[1])?),
                    ));
                }
                if is_vstd_datatype(path, "multiset", "Multiset") && type_args.len() == 1 {
                    return Ok(Ty::Multiset(Box::new(binder_type(ctx, &type_args[0])?)));
                }
            }
            let id = register_datatype(ctx, dt)?;
            let args = type_args
                .iter()
                .map(|arg| binder_type(ctx, arg))
                .collect::<Result<Vec<_>, _>>()?;
            Ok(Ty::Data(id, args))
        }
        other => Err(format!("unsupported SST binder type {other:?}")),
    }
}

/// The `FunctionId` of a datatype key: user paths keep their crate/module
/// path; synthesized tuples get a stable `tuple_<arity>` name.
fn datatype_id(dt: &vir::ast::Dt) -> Result<FunctionId, String> {
    match dt {
        vir::ast::Dt::Path(path) => function_id_of(path),
        vir::ast::Dt::Tuple(arity) => Ok(FunctionId::new(
            "vermilion",
            Vec::<String>::new(),
            format!("tuple_{arity}"),
        )),
    }
}

/// Ensure `dt`'s declaration is registered for emission and return its id.
/// Recursive datatypes register once (fields referencing the datatype being
/// registered resolve to its id without re-entering); mutual recursion
/// fails closed until `mutual` emission lands.
fn register_datatype(ctx: ExpCtx<'_>, dt: &vir::ast::Dt) -> Result<FunctionId, String> {
    let id = datatype_id(dt)?;
    {
        let registered = ctx.registry.datatypes.borrow();
        if registered.iter().any(|(seen, _)| seen == dt) {
            return Ok(id);
        }
    }
    if ctx
        .registry
        .datatypes_in_flight
        .borrow()
        .iter()
        .any(|seen| seen == dt)
    {
        // Self-reference inside the declaration being built: fine for a
        // single inductive.
        if ctx.registry.datatypes_in_flight.borrow().last() == Some(dt) {
            return Ok(id);
        }
        return Err(format!(
            "unsupported mutually recursive datatypes involving {}",
            id.name
        ));
    }
    let Some(declaration) = ctx.datatype_decls.get(dt) else {
        return Err(format!("no declaration for datatype {}", id.name));
    };
    let type_params: Vec<String> = declaration
        .x
        .typ_params
        .iter()
        .map(|(name, _accept)| name.to_string())
        .collect();
    ctx.registry
        .datatypes_in_flight
        .borrow_mut()
        .push(dt.clone());
    let mut variants = Vec::new();
    for variant in declaration.x.variants.iter() {
        let mut fields = Vec::new();
        for field in variant.fields.iter() {
            let (typ, _mode, _visibility) = &field.a;
            fields.push(Binder::new(field.name.to_string(), binder_type(ctx, typ)?));
        }
        variants.push(VariantView {
            name: variant.name.to_string(),
            fields,
        });
    }
    ctx.registry.datatypes_in_flight.borrow_mut().pop();
    // A declaration with no variants (Verus's anonymous exec-closure
    // datatypes are opaque) still needs an inhabitable Lean inductive:
    // synthesize a single nullary variant. Nothing constructs or projects
    // it — the value is only ever a fresh symbol.
    if variants.is_empty() {
        variants.push(VariantView {
            name: "opaque".to_owned(),
            fields: Vec::new(),
        });
    }
    ctx.registry.datatypes.borrow_mut().push((
        dt.clone(),
        DatatypeView {
            id: id.clone(),
            type_params,
            variants,
        },
    ));
    Ok(id)
}

type Env = HashMap<VarIdent, Expr>;

/// The `FunctionId` of a Verus function path (crate display name, modules,
/// function name).
fn function_id_of(path: &vir::ast::Path) -> Result<FunctionId, String> {
    let name = path
        .segments
        .last()
        .ok_or_else(|| "empty function path".to_owned())?
        .to_string();
    let modules: Vec<String> = path.segments[..path.segments.len() - 1]
        .iter()
        .map(|segment| segment.to_string())
        .collect();
    Ok(FunctionId::new(
        crate_display_name(&path.krate),
        modules,
        name,
    ))
}

/// Registry of the user spec functions a translation run references. The
/// Lean side emits each as a real definition; applications stay
/// applications per the no-inlining/no-fuel design (plans/execution-plan.md,
/// .claude/memory/spec-fns-no-inlining-no-fuel.md).
pub struct SpecRegistry {
    /// Per-function lowering work counter (reset on function entry): a
    /// fail-closed fuse against pathological expression duplication in
    /// the substitution-based lowering (dalek-lite DL8: from_bytes died
    /// at 4 GB RSS). Every `lower_exp` call ticks it by one, and every
    /// subtree the lowering deep-copies — env-lookup substitution, binder
    /// and branch environment clones, `lower_clip`'s and the
    /// Prop-conditional's operand restatements, `field_update`'s record
    /// rebuild — ticks it by the copied node count (`charge_expr_copies`);
    /// crossing the fuse refuses the function cleanly.
    work: std::cell::Cell<u64>,
    spec_fns: std::cell::RefCell<Vec<(vir::ast::Fun, SpecFnView)>>,
    /// Spec fns currently being lowered. A direct self-application while a
    /// fn is in flight marks it recursive; mutual recursion (re-entry of a
    /// *different* in-flight fn) fails closed.
    in_flight: std::cell::RefCell<Vec<vir::ast::Fun>>,
    /// Fns whose body contained a self-application.
    recursive: std::cell::RefCell<Vec<vir::ast::Fun>>,
    /// Datatype declarations referenced by the run, in first-reference
    /// (leaf-first) order — valid Lean emission order for DAG references.
    datatypes: std::cell::RefCell<Vec<(vir::ast::Dt, DatatypeView)>>,
    datatypes_in_flight: std::cell::RefCell<Vec<vir::ast::Dt>>,
    /// Prophecy resolution for `&mut` (per checked function; reset by
    /// `function_view`): maps a mut-ref value's ident to its fresh
    /// post-state symbol — callee param idents live here only while a
    /// call's contract is substituted, borrow temporaries persist for the
    /// phase-2 writeback.
    mut_futures: std::cell::RefCell<HashMap<VarIdent, Expr>>,
    /// The subset of `mut_futures` roots whose future is a CALL-created
    /// prophecy symbol (constrained by a callee contract). These are never
    /// overwritten; return-site resolution snapshots, by contrast, are
    /// per-path and each `assume has_resolved(x)` re-snapshots them (an
    /// early-return arm's stale snapshot must not shadow the fall-through
    /// path's — the value of the referent can change between the two
    /// resolution points).
    call_futures: std::cell::RefCell<std::collections::HashSet<VarIdent>>,
    /// Call destinations whose value is a returned `&mut`. Unlike a mutable
    /// argument, this prophecy is resolved only after the caller finishes
    /// using the returned reference, so `has_resolved` must equate it with
    /// the caller's final current value.
    returned_mut_futures: std::cell::RefCell<std::collections::HashSet<VarIdent>>,
    /// `&mut`-typed variable copies (Verus inserts reference-typed temps
    /// around two-phase borrows): each alias points at its root borrow
    /// variable, so futures and current values are keyed once per borrow.
    mut_aliases: std::cell::RefCell<HashMap<VarIdent, VarIdent>>,
    /// Exec-closure contract predicates: per anonymous-closure datatype,
    /// the fresh binder names standing for Verus's `ClosureReq`/`ClosureEns`
    /// internal predicates. They are ordinary universally quantified
    /// symbols constrained only by the assumed contract facts — exactly
    /// the SMT encoding's discipline, with no axioms.
    closure_preds: std::cell::RefCell<HashMap<(vir::ast::Path, bool), String>>,
    /// Trait spec fns applied at an abstract `Self` (a type parameter
    /// under a trait bound): per (trait fn, instantiated type args), a
    /// fresh function-typed symbol that joins the enclosing function's
    /// universal binders. Sound for every interpretation — in particular
    /// every impl (Verus's dictionary semantics).
    trait_fn_symbols: std::cell::RefCell<Vec<((vir::ast::Fun, String), (String, Ty))>>,

    /// The current function's own parameters: `old(x)` (`VarAt::Pre`) on
    /// one of these is the ENTRY value (the parameter binder), never the
    /// current substitution value.
    current_params: std::cell::RefCell<Vec<VarIdent>>,
    /// True while a return site's postconditions are lowered: there the
    /// prophecy resolves — `final(x)` is the current value.
    in_postcondition: std::cell::Cell<bool>,
}

impl SpecRegistry {
    pub fn new() -> Self {
        Self {
            work: std::cell::Cell::new(0),
            spec_fns: std::cell::RefCell::new(Vec::new()),
            in_flight: std::cell::RefCell::new(Vec::new()),
            recursive: std::cell::RefCell::new(Vec::new()),
            datatypes: std::cell::RefCell::new(Vec::new()),
            datatypes_in_flight: std::cell::RefCell::new(Vec::new()),
            mut_futures: std::cell::RefCell::new(HashMap::new()),
            call_futures: std::cell::RefCell::new(std::collections::HashSet::new()),
            returned_mut_futures: std::cell::RefCell::new(std::collections::HashSet::new()),
            mut_aliases: std::cell::RefCell::new(HashMap::new()),
            closure_preds: std::cell::RefCell::new(HashMap::new()),
            trait_fn_symbols: std::cell::RefCell::new(Vec::new()),
            current_params: std::cell::RefCell::new(Vec::new()),
            in_postcondition: std::cell::Cell::new(false),
        }
    }

    /// The registered definitions, in first-reference order.
    pub fn into_views(self) -> (Vec<DatatypeView>, Vec<SpecFnView>) {
        (
            self.datatypes
                .into_inner()
                .into_iter()
                .map(|(_, view)| view)
                .collect(),
            self.spec_fns
                .into_inner()
                .into_iter()
                .map(|(_, view)| view)
                .collect(),
        )
    }
}

impl Default for SpecRegistry {
    fn default() -> Self {
        Self::new()
    }
}

/// Shared expression-lowering context: callee declarations (for spec-fn
/// applications) plus the spec-fn registry of the whole translation run.
#[derive(Clone, Copy)]
struct ExpCtx<'a> {
    declarations: &'a HashMap<vir::ast::Fun, FunctionSst>,
    datatype_decls: &'a HashMap<vir::ast::Dt, vir::ast::Datatype>,
    assoc_type_impls: &'a [vir::ast::AssocTypeImpl],
    registry: &'a SpecRegistry,
    /// While lowering a callee's contract at a call site: the callee's
    /// type parameters instantiated with the call's type arguments. Types
    /// read from contract expressions must be resolved through this.
    typ_substs: Option<&'a HashMap<vir::ast::Ident, Typ>>,
}

/// A contract expression's type, seen from the call site: the callee's type
/// parameters are replaced by the call's type arguments, and a unique
/// monomorphic associated-type equation is normalized to its concrete type.
///
/// This intentionally does not guess at generic impl selection. An abstract,
/// generic, or ambiguous projection survives this function and is rejected by
/// `binder_type`, preserving the adapter's fail-closed boundary.
fn resolve_typ(ctx: ExpCtx<'_>, typ: &Typ) -> Typ {
    let substituted = match ctx.typ_substs {
        Some(substs) => vir::sst_util::subst_typ(substs, typ),
        None => typ.clone(),
    };
    let TypX::Projection {
        trait_typ_args,
        trait_path,
        name,
    } = undecorate(&substituted)
    else {
        return substituted;
    };

    // Rust fixes `SliceIndex<[T]>::Output` to `[T]` for the two executable
    // range types Vermilion supports. The external core trait has no
    // monomorphic associated-type declaration in the exported SST, so this
    // exact projection cannot be resolved by `assoc_type_impls` below. Keep
    // the exception closed to core's `Range`/`RangeFrom` over a core slice;
    // other projections retain the ordinary fail-closed behavior.
    let trait_segments: Vec<&str> = trait_path
        .segments
        .iter()
        .map(|segment| segment.as_str())
        .collect();
    if matches!(trait_path.krate, CrateId::Core)
        && trait_segments == ["slice", "index", "SliceIndex"]
        && name.as_str() == "Output"
        && trait_typ_args.len() == 2
    {
        let index_is_range = match undecorate(&trait_typ_args[0]) {
            TypX::Datatype(vir::ast::Dt::Path(path), _, _) => {
                let segments: Vec<&str> = path
                    .segments
                    .iter()
                    .map(|segment| segment.as_str())
                    .collect();
                matches!(path.krate, CrateId::Core)
                    && (segments == ["ops", "range", "Range"]
                        || segments == ["ops", "range", "RangeFrom"])
            }
            _ => false,
        };
        if index_is_range
            && matches!(
                undecorate(&trait_typ_args[1]),
                TypX::Primitive(vir::ast::Primitive::Slice, elements) if elements.len() == 1
            )
        {
            return trait_typ_args[1].clone();
        }
    }

    let mut matches = ctx.assoc_type_impls.iter().filter(|implementation| {
        let implementation = &implementation.x;
        implementation.typ_params.is_empty()
            && implementation.trait_path == *trait_path
            && implementation.name == *name
            && implementation.trait_typ_args.len() == trait_typ_args.len()
            && implementation
                .trait_typ_args
                .iter()
                .zip(trait_typ_args.iter())
                .all(|(implemented, projected)| vir::ast_util::types_equal(implemented, projected))
    });
    let Some(implementation) = matches.next() else {
        return substituted;
    };
    if matches.next().is_some() {
        return substituted;
    }
    implementation.x.typ.clone()
}

/// The facts a value carries by virtue of its type — the systematic
/// counterpart of Verus's `typ_invariant` discipline, emitted at every
/// value-introduction site (parameters, call results, branch joins, loop
/// havoc symbols, prophecy futures, quantifier guards):
///
/// - machine-integer types: the value's own `urange`/`srange`;
/// - `Seq`/`Vec`: elements in bounds satisfy the element facts,
///   `∀ i, 0 ≤ i ∧ i < len s → facts(s[i])`;
/// - `Set`/`Multiset`: contained elements satisfy the element facts;
/// - `Map`: contained keys' values satisfy the value facts;
/// - datatypes: field facts through the accessors, recursively and with
///   the instance's type arguments substituted — sound *unguarded*
///   because a wrong-variant accessor returns `default`, and every fact
///   here holds of `default` (integer `default = 0` is in every range;
///   container `default` is empty, making element facts vacuous;
///   datatype `default` recursively defaults its fields). Recursive
///   datatypes unroll once (a revisited datatype contributes nothing).
///
/// Types with no constrained content (`bool`, type parameters, `int`)
/// contribute no facts. Quantified facts carry the projection as their
/// trigger, matching what Verus's SMT encoding instantiates on.
fn type_range_facts(ctx: ExpCtx<'_>, typ: &Typ, subject: &Expr) -> Result<Vec<Expr>, String> {
    let mut visited = std::collections::HashSet::new();
    type_facts_rec(ctx, typ, subject, 0, &mut visited)
}

/// One quantified fact `∀ x, guard → conjunction-of-facts`, or nothing if
/// the element type is unconstrained.
fn quantified_fact(binder: Binder, guard: Expr, trigger: Expr, facts: Vec<Expr>) -> Option<Expr> {
    let body = facts
        .into_iter()
        .reduce(|lhs, rhs| Expr::binary(BinOp::And, lhs, rhs))?;
    Some(Expr::Quant(
        true,
        vec![binder],
        vec![vec![trigger]],
        Box::new(Expr::binary(BinOp::Implies, guard, body)),
    ))
}

fn type_facts_rec(
    ctx: ExpCtx<'_>,
    typ: &Typ,
    subject: &Expr,
    depth: usize,
    visited: &mut std::collections::HashSet<vir::ast::Dt>,
) -> Result<Vec<Expr>, String> {
    let typ = &resolve_typ(ctx, typ);
    // A `&mut T` value is tracked by its (current) T value.
    if let TypX::MutRef(inner) = undecorate(typ) {
        return type_facts_rec(ctx, inner, subject, depth, visited);
    }
    if let Some(constraint) = range_constraint(typ) {
        return Ok(vec![range_proposition(&constraint, subject.clone())]);
    }
    // Bound-variable names for the quantified container facts: reserved
    // (no Rust identifier survives lowering with this shape) and
    // depth-indexed so nested containers do not shadow.
    let bound = format!("vrml_i{depth}");
    let var = Expr::Var(bound.clone());
    // `[T; N]`: the Seq view has length exactly N (a const generic or a
    // literal), plus the element facts a Seq carries.
    if let TypX::Primitive(vir::ast::Primitive::Slice, typs) = undecorate(typ) {
        if typs.len() == 1 {
            let facts = type_facts_rec(
                ctx,
                &typs[0],
                &Expr::SeqIndex(Box::new(subject.clone()), Box::new(var.clone())),
                depth + 1,
                visited,
            )?;
            let guard = Expr::binary(
                BinOp::And,
                Expr::binary(BinOp::Le, Expr::Int("0".into()), var.clone()),
                Expr::binary(
                    BinOp::Lt,
                    var.clone(),
                    Expr::SeqLen(Box::new(subject.clone())),
                ),
            );
            let trigger = Expr::SeqIndex(Box::new(subject.clone()), Box::new(var.clone()));
            return Ok(
                quantified_fact(Binder::new(bound.clone(), Ty::Int), guard, trigger, facts)
                    .into_iter()
                    .collect(),
            );
        }
    }
    if let TypX::Primitive(vir::ast::Primitive::Array, typs) = undecorate(typ) {
        if typs.len() == 2 {
            let mut facts = Vec::new();
            let length = match undecorate(&resolve_typ(ctx, &typs[1])) {
                TypX::ConstInt(value) => Some(Expr::Int(value.to_string())),
                TypX::TypParam(name) => Some(Expr::Var(name.to_string())),
                _ => None,
            };
            if let Some(length) = length {
                facts.push(Expr::binary(
                    BinOp::Eq,
                    Expr::SeqLen(Box::new(subject.clone())),
                    length,
                ));
            }
            let elem_facts = type_facts_rec(
                ctx,
                &typs[0],
                &Expr::SeqIndex(Box::new(subject.clone()), Box::new(var.clone())),
                depth + 1,
                visited,
            )?;
            let guard = Expr::binary(
                BinOp::And,
                Expr::binary(BinOp::Le, Expr::Int("0".into()), var.clone()),
                Expr::binary(
                    BinOp::Lt,
                    var.clone(),
                    Expr::SeqLen(Box::new(subject.clone())),
                ),
            );
            let trigger = Expr::SeqIndex(Box::new(subject.clone()), Box::new(var));
            facts.extend(quantified_fact(
                Binder::new(bound, Ty::Int),
                guard,
                trigger,
                elem_facts,
            ));
            return Ok(facts);
        }
    }
    let TypX::Datatype(dt, type_args, _) = undecorate(typ) else {
        return Ok(Vec::new());
    };
    let lowered = binder_type(ctx, typ)?;
    match &lowered {
        Ty::Seq(_) => {
            let mut all = Vec::new();
            // A `Vec`'s view is PHYSICALLY bounded: its length fits usize
            // (Verus's Vec type invariant — the fact that makes `i + 1`
            // overflow checks against `i < v.len()` provable). A spec `Seq`
            // carries no such bound.
            if matches!(dt, vir::ast::Dt::Path(path) if is_alloc_vec(path)) {
                all.push(range_proposition(
                    &RangeConstraint::Unsigned(64),
                    Expr::SeqLen(Box::new(subject.clone())),
                ));
            }
            // Element type: first type argument of vstd Seq / alloc Vec.
            let element = &type_args[0];
            let facts = type_facts_rec(
                ctx,
                element,
                &Expr::SeqIndex(Box::new(subject.clone()), Box::new(var.clone())),
                depth + 1,
                visited,
            )?;
            let guard = Expr::binary(
                BinOp::And,
                Expr::binary(BinOp::Le, Expr::Int("0".into()), var.clone()),
                Expr::binary(
                    BinOp::Lt,
                    var.clone(),
                    Expr::SeqLen(Box::new(subject.clone())),
                ),
            );
            let trigger = Expr::SeqIndex(Box::new(subject.clone()), Box::new(var));
            all.extend(quantified_fact(
                Binder::new(bound, Ty::Int),
                guard,
                trigger,
                facts,
            ));
            return Ok(all);
        }
        Ty::Set(element_ty) | Ty::Multiset(element_ty) => {
            let element = &type_args[0];
            let facts = type_facts_rec(ctx, element, &var, depth + 1, visited)?;
            let (guard, trigger) = match &lowered {
                Ty::Set(_) => {
                    let contains =
                        Expr::Coll(CollOp::SetContains, vec![subject.clone(), var.clone()]);
                    (contains.clone(), contains)
                }
                _ => {
                    let count =
                        Expr::Coll(CollOp::MultisetCount, vec![subject.clone(), var.clone()]);
                    (
                        Expr::binary(BinOp::Lt, Expr::Int("0".into()), count.clone()),
                        count,
                    )
                }
            };
            return Ok(quantified_fact(
                Binder::new(bound, (**element_ty).clone()),
                guard,
                trigger,
                facts,
            )
            .into_iter()
            .collect());
        }
        Ty::Map(key_ty, _) => {
            let value = &type_args[1];
            let looked_up = Expr::Coll(CollOp::MapIndex, vec![subject.clone(), var.clone()]);
            let facts = type_facts_rec(ctx, value, &looked_up, depth + 1, visited)?;
            let guard = Expr::Coll(CollOp::MapContainsKey, vec![subject.clone(), var.clone()]);
            return Ok(quantified_fact(
                Binder::new(bound, (**key_ty).clone()),
                guard,
                looked_up,
                facts,
            )
            .into_iter()
            .collect());
        }
        _ => {}
    }
    // A user datatype: field facts through the accessors, with the
    // instance's type arguments substituted; recursive datatypes unroll
    // once.
    let mut facts = Vec::new();
    if let Some(declaration) = ctx.datatype_decls.get(dt) {
        if !visited.insert(dt.clone()) {
            return Ok(facts);
        }
        let field_substs: HashMap<vir::ast::Ident, Typ> = declaration
            .x
            .typ_params
            .iter()
            .map(|(name, _)| name.clone())
            .zip(type_args.iter().cloned())
            .collect();
        let id = datatype_id(dt)?;
        for variant in declaration.x.variants.iter() {
            for field in variant.fields.iter() {
                let field_typ = vir::sst_util::subst_typ(&field_substs, &field.a.0);
                let projected = Expr::FieldOf(
                    id.clone(),
                    variant.name.to_string(),
                    field.name.to_string(),
                    Box::new(subject.clone()),
                );
                facts.extend(type_facts_rec(ctx, &field_typ, &projected, depth, visited)?);
            }
        }
        visited.remove(dt);
    }
    Ok(facts)
}

/// Ensure `fun`'s definition is registered for emission and return its id.
fn register_spec_fn(
    ctx: ExpCtx<'_>,
    fun: &vir::ast::Fun,
    spec: &vir::sst::FuncSpecBodySst,
) -> Result<FunctionId, String> {
    let id = function_id_of(&fun.path)?;
    if ctx
        .registry
        .spec_fns
        .borrow()
        .iter()
        .any(|(seen, _)| seen == fun)
    {
        return Ok(id);
    }
    if ctx.registry.in_flight.borrow().iter().any(|f| f == fun) {
        // Self-application inside the body being lowered: mark and keep the
        // application (the emitted Lean definition is genuinely recursive).
        // Self- OR mutual recursion: every function on the in-flight
        // stack from this one down is part of the cycle; mark them all
        // recursive and keep the application (the Lean side groups
        // mutually-referencing definitions into a `mutual` block).
        let in_flight = ctx.registry.in_flight.borrow();
        let cycle_start = in_flight.iter().position(|f| f == fun).unwrap();
        let cycle: Vec<vir::ast::Fun> = in_flight[cycle_start..].to_vec();
        drop(in_flight);
        let mut recursive = ctx.registry.recursive.borrow_mut();
        for member in cycle {
            if !recursive.iter().any(|f| f == &member) {
                recursive.push(member);
            }
        }
        return Ok(id);
    }
    let function = &ctx.declarations[fun];
    // Const generics of a spec fn become leading explicit Int parameters
    // (their value is not Lean-inferrable from the value arguments, so
    // call sites pass the instantiation explicitly).
    let const_params: Vec<String> = function
        .x
        .typ_bounds
        .iter()
        .filter_map(|bound| match &**bound {
            vir::ast::GenericBoundX::ConstTyp(param, _) => match undecorate(param) {
                TypX::TypParam(name) => Some(name.to_string()),
                _ => None,
            },
            _ => None,
        })
        .collect();
    let type_params: Vec<String> = function
        .x
        .typ_params
        .iter()
        .map(|p| p.to_string())
        .filter(|name| !const_params.contains(name))
        .collect();
    // The registration is DECLARATION-scoped: binder/return types and the
    // body are expressed in the spec fn's own type parameters. A call
    // site's active type substitution must not leak in, or the emitted
    // definition would be monomorphized to the first caller's
    // instantiation (issue #19's dedup trap).
    let decl_ctx = ExpCtx { typ_substs: None, ..ctx };
    let mut binders = Vec::new();
    let mut env = Env::new();
    for param in function.x.typ_params.iter() {
        let name = param.to_string();
        if const_params.contains(&name) {
            binders.push(Binder::new(name, Ty::Int));
        }
    }
    for parameter in function.x.pars.iter() {
        let base = parameter.x.name.0.to_string();
        env.insert(parameter.x.name.clone(), Expr::Var(base.clone()));
        binders.push(Binder::new(base, binder_type(decl_ctx, &parameter.x.typ)?));
    }
    let ret = binder_type(decl_ctx, &function.x.ret.x.typ)?;
    ctx.registry.in_flight.borrow_mut().push(fun.clone());
    let body = lower_exp(decl_ctx, &env, &spec.body_exp);
    ctx.registry.in_flight.borrow_mut().pop();
    // A recursive definition needs its termination measures: Verus already
    // checked them; the `decrease%init` bindings of its termination check
    // carry the measure expressions in parameter terms.
    let is_recursive = ctx.registry.recursive.borrow().iter().any(|f| f == fun);
    let mut decreases = Vec::new();
    if is_recursive {
        let Some(termination) = &spec.termination_check else {
            return Err(format!(
                "recursive spec function {} has no termination check",
                id.name
            ));
        };
        for statement in termination.local_decls_decreases_init.iter() {
            if let StmX::Assign { rhs, .. } = &statement.x {
                decreases.push(lower_exp(ctx, &env, rhs)?);
            }
        }
        if decreases.is_empty() {
            return Err(format!(
                "recursive spec function {} has no decreases measure",
                id.name
            ));
        }
    }
    // Default visibility mirrors Verus: ordinary spec fns carry fuel 1,
    // `#[verifier::opaque]` ones fuel 0 (per-point `reveal`s override via
    // `Statement::Reveal`). `Revealed { visibility }` module scoping is
    // treated as visible — a single-crate approximation.
    let visible = !matches!(function.x.opaqueness, vir::ast::Opaqueness::Opaque);
    // Typing facts of the parameters (`nat`, machine widths) that the Int
    // embedding erases from the binder types; the Lean side needs them in
    // the recursive guard for the decrease to be provable at all.
    let param_ranges = function
        .x
        .pars
        .iter()
        .filter_map(|parameter| {
            range_constraint(&parameter.x.typ).map(|constraint| {
                range_proposition(
                    &constraint,
                    Expr::Var(parameter.x.name.0.to_string()),
                )
            })
        })
        .collect();
    let view = SpecFnView {
        id: id.clone(),
        span: span(&function.span),
        type_params,
        binders,
        ret,
        body: body?,
        visible,
        param_ranges,
        decreases,
        uninterpreted: false,
    };
    ctx.registry.spec_fns.borrow_mut().push((fun.clone(), view));
    Ok(id)
}

/// Does `name` occur as a type parameter anywhere inside `typ`? Structural
/// walk; unknown shapes conservatively count as an occurrence (the
/// constructor annotation is then omitted — the pre-#18 rendering).
fn typ_mentions_param(typ: &Typ, name: &vir::ast::Ident) -> bool {
    match &**typ {
        TypX::TypParam(param) => param == name,
        TypX::Datatype(_, args, _) => args.iter().any(|t| typ_mentions_param(t, name)),
        TypX::Primitive(_, args) => args.iter().any(|t| typ_mentions_param(t, name)),
        TypX::SpecFn(params, ret) => {
            params.iter().any(|t| typ_mentions_param(t, name)) || typ_mentions_param(ret, name)
        }
        TypX::Decorate(_, _, inner) => typ_mentions_param(inner, name),
        TypX::MutRef(inner) => typ_mentions_param(inner, name),
        TypX::Int(_) | TypX::Bool | TypX::ConstInt(_) | TypX::ConstBool(_) => false,
        _ => true,
    }
}

/// Type-parameter instantiations a rendered constructor must carry
/// explicitly (issue #18): exactly those the chosen variant's field types
/// never mention, hence Lean cannot infer from the value arguments (the
/// stuck `Inhabited ?m` of `Ok(())`'s error type). Everything inferable
/// is omitted, keeping rendered text — and statement hashes — unchanged
/// wherever elaboration already succeeded.
fn ctor_type_args(
    ctx: ExpCtx<'_>,
    declaration: &vir::ast::Datatype,
    variant: &vir::ast::Variant,
    typ: &Typ,
) -> Result<Vec<(String, Ty)>, String> {
    let resolved = resolve_typ(ctx, typ);
    let TypX::Datatype(_, type_args, _) = undecorate(&resolved) else {
        return Ok(Vec::new());
    };
    let mut out = Vec::new();
    for ((param, _), arg) in declaration.x.typ_params.iter().zip(type_args.iter()) {
        let mentioned = variant
            .fields
            .iter()
            .any(|field| typ_mentions_param(&field.a.0, param));
        if !mentioned {
            out.push((param.to_string(), binder_type(ctx, arg)?));
        }
    }
    Ok(out)
}

/// Names of a function's const-generic parameters. They lower as leading
/// explicit Int binders/arguments rather than Lean type parameters (their
/// value is not inferrable from value arguments).
fn const_generic_params(function: &FunctionSst) -> Vec<String> {
    function
        .x
        .typ_bounds
        .iter()
        .filter_map(|bound| match &**bound {
            vir::ast::GenericBoundX::ConstTyp(param, _) => match undecorate(param) {
                TypX::TypParam(name) => Some(name.to_string()),
                _ => None,
            },
            _ => None,
        })
        .collect()
}

/// Register an *uninterpreted* spec function — one Verus left without a body
/// (`uninterp spec fn`, or an abstract declaration). It becomes a single
/// module-scoped opaque Lean symbol; every occurrence is an application of
/// it, so congruence (equal args → equal result) is free. Deduplicated like
/// `register_spec_fn`.
fn register_uninterp_spec_fn(ctx: ExpCtx<'_>, fun: &vir::ast::Fun) -> Result<FunctionId, String> {
    let id = function_id_of(&fun.path)?;
    if ctx
        .registry
        .spec_fns
        .borrow()
        .iter()
        .any(|(seen, _)| seen == fun)
    {
        return Ok(id);
    }
    let function = &ctx.declarations[fun];
    // Generic uninterpreted spec fns (issue #19): the symbol stays ONE
    // fixed generic function — never monomorphized per call. Type params
    // are emitted as implicit Lean binders; const generics become leading
    // explicit Int parameters exactly as for bodied spec fns (their value
    // is not inferrable from the value arguments). Applications carry
    // their instantiations explicitly (`Expr::Apply` type args), because
    // inference from value arguments alone fails when a parameter appears
    // only in the return type (the `spec_from`/`?` shape).
    let const_params = const_generic_params(function);
    let type_params: Vec<String> = function
        .x
        .typ_params
        .iter()
        .map(|p| p.to_string())
        .filter(|name| !const_params.contains(name))
        .collect();
    // Declaration-scoped, like `register_spec_fn`: no call-site type
    // substitution may leak into the recorded generic signature.
    let decl_ctx = ExpCtx { typ_substs: None, ..ctx };
    let mut binders = Vec::new();
    for param in function.x.typ_params.iter() {
        let name = param.to_string();
        if const_params.contains(&name) {
            binders.push(Binder::new(name, Ty::Int));
        }
    }
    for parameter in function.x.pars.iter() {
        let base = parameter.x.name.0.to_string();
        binders.push(Binder::new(base, binder_type(decl_ctx, &parameter.x.typ)?));
    }
    let ret = binder_type(decl_ctx, &function.x.ret.x.typ)?;
    let view = SpecFnView {
        id: id.clone(),
        span: span(&function.span),
        type_params,
        binders,
        ret,
        body: Expr::Var("opaque".to_owned()),
        visible: false,
        param_ranges: Vec::new(),
        decreases: Vec::new(),
        uninterpreted: true,
    };
    ctx.registry.spec_fns.borrow_mut().push((fun.clone(), view));
    Ok(id)
}

/// Types whose Lean models have genuinely extensional equality, so Verus's
/// `ext_equal` (`=~=`, and the spec `==` that desugars to it on collection
/// types) coincides with plain Lean `=`. `Seq` is a `List`, `Set` a
/// `Finset`, `Multiset` a Mathlib `Multiset` — all extensional; scalars
/// and user datatypes compare structurally on both sides. `Map` — whose
/// model carries an unconstrained off-domain lookup, making structural
/// equality strictly finer than Verus's domain-wise extensionality — and
/// spec-fn values fail closed **anywhere** in the compared type,
/// including datatype *fields* (checked recursively; recursive datatypes
/// are safe iff their reachable fields are). Type parameters fail closed
/// too: the instantiation could be a Map.
fn ext_eq_is_plain_eq(
    ctx: ExpCtx<'_>,
    typ: &Typ,
    visited: &mut std::collections::HashSet<vir::ast::Dt>,
) -> bool {
    let typ = resolve_typ(ctx, typ);
    match undecorate(&typ) {
        TypX::Int(_) | TypX::Bool => true,
        TypX::TypParam(_) => false,
        TypX::SpecFn(..) => false,
        TypX::MutRef(inner) => ext_eq_is_plain_eq(ctx, inner, visited),
        // Fixed-size arrays and slices model as `Vermilion.Seq` (a Lean
        // `List`) — extensional; ext-eq coincides with plain `=` exactly
        // when the element type's does (dalek-lite DL8: `[u64; 5]` limb
        // comparisons).
        TypX::Primitive(vir::ast::Primitive::Array, typs) if !typs.is_empty() => {
            ext_eq_is_plain_eq(ctx, &typs[0], visited)
        }
        TypX::Primitive(vir::ast::Primitive::Slice, typs) if !typs.is_empty() => {
            ext_eq_is_plain_eq(ctx, &typs[0], visited)
        }
        TypX::Datatype(dt, type_args, _) => {
            if let vir::ast::Dt::Path(path) = dt {
                if is_vstd_datatype(path, "map", "Map") {
                    return false;
                }
                if (is_vstd_seq(path)
                    || is_alloc_vec(path)
                    || is_vstd_datatype(path, "set", "Set")
                    || is_vstd_datatype(path, "multiset", "Multiset"))
                    && !type_args.is_empty()
                {
                    return ext_eq_is_plain_eq(ctx, &type_args[0], visited);
                }
            }
            let Some(declaration) = ctx.datatype_decls.get(dt) else {
                return false; // unknown datatype: fail closed
            };
            if !visited.insert(dt.clone()) {
                return true; // recursive occurrence: fields already on the path
            }
            let field_substs: HashMap<vir::ast::Ident, Typ> = declaration
                .x
                .typ_params
                .iter()
                .map(|(name, _)| name.clone())
                .zip(type_args.iter().cloned())
                .collect();
            let safe = declaration.x.variants.iter().all(|variant| {
                variant.fields.iter().all(|field| {
                    let field_typ = vir::sst_util::subst_typ(&field_substs, &field.a.0);
                    ext_eq_is_plain_eq(ctx, &field_typ, visited)
                })
            });
            visited.remove(dt);
            safe
        }
        _ => false,
    }
}

/// Statically resolve a trait method to its unique impl for the call's
/// trait type arguments (`Self` first). Contract positions carry no
/// resolution in the SST — Verus's SMT encoding declares trait fns as
/// symbols with per-impl axioms and never needs one — so we match the
/// call's (substituted) type arguments against each `TraitMethodImpl`
/// declaration. A generic `Self` (still a type parameter) matches no
/// impl and the call fails closed downstream.
fn resolve_trait_method(
    ctx: ExpCtx<'_>,
    fun: &vir::ast::Fun,
    typs: &[Typ],
) -> Option<vir::ast::Fun> {
    for (name, declaration) in ctx.declarations.iter() {
        if let vir::ast::FunctionKind::TraitMethodImpl {
            method,
            trait_typ_args,
            ..
        } = &declaration.x.kind
        {
            if method == fun
                && trait_typ_args.len() <= typs.len()
                && trait_typ_args
                    .iter()
                    .zip(typs.iter())
                    .all(|(implemented, called)| {
                        vir::ast_util::types_equal(implemented, &resolve_typ(ctx, called))
                    })
            {
                return Some(name.clone());
            }
        }
    }
    None
}

/// The anonymous-closure datatype path in a `ClosureReq`/`ClosureEns`
/// application's type arguments (`[closure type, argument tuple type]`).
fn closure_type_path(ctx: ExpCtx<'_>, typs: &[Typ]) -> Option<vir::ast::Path> {
    let first = resolve_typ(ctx, typs.first()?);
    match undecorate(&first) {
        TypX::Datatype(vir::ast::Dt::Path(path), _, _) => Some(path.clone()),
        _ => None,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum SliceRangeKind {
    Range,
    RangeFrom,
}

fn slice_range_kind(ctx: ExpCtx<'_>, typ: &Typ) -> Option<SliceRangeKind> {
    let resolved = resolve_typ(ctx, typ);
    let TypX::Datatype(vir::ast::Dt::Path(path), _, _) = undecorate(&resolved) else {
        return None;
    };
    if !matches!(path.krate, CrateId::Core) {
        return None;
    }
    let segments: Vec<&str> = path
        .segments
        .iter()
        .map(|segment| segment.as_str())
        .collect();
    match segments.as_slice() {
        ["ops", "range", "Range"] => Some(SliceRangeKind::Range),
        ["ops", "range", "RangeFrom"] => Some(SliceRangeKind::RangeFrom),
        _ => None,
    }
}

fn lower_slice_range_bounds(
    ctx: ExpCtx<'_>,
    env: &Env,
    exp: &Exp,
    kind: SliceRangeKind,
) -> Result<(Expr, Option<Expr>), String> {
    let index = lower_exp(ctx, env, exp)?;
    let Expr::Ctor(_, _, _, bounds) = index else {
        return Err(format!(
            "slice range index did not lower to a range constructor: {index:?}"
        ));
    };
    let expected = match kind {
        SliceRangeKind::Range => 2,
        SliceRangeKind::RangeFrom => 1,
    };
    if bounds.len() != expected {
        return Err(format!(
            "slice range constructor has {} fields, expected {expected}",
            bounds.len(),
        ));
    }
    Ok((
        bounds[0].clone(),
        (kind == SliceRangeKind::Range).then(|| bounds[1].clone()),
    ))
}

fn is_core_slice_index(fun: &vir::ast::Fun) -> bool {
    if !matches!(fun.path.krate, CrateId::Core) {
        return false;
    }
    let segments: Vec<&str> = fun
        .path
        .segments
        .iter()
        .map(|segment| segment.as_str())
        .collect();
    matches!(
        segments.as_slice(),
        ["slice", "index", implementation, "index" | "index_mut"]
            if implementation.starts_with("impl&%")
    )
}

/// The prophecy value of a mutable-reference expression used as a
/// `call_ensures` argument. The exact slice-index contracts pass their
/// mutable arguments as variables (occasionally wrapped in the current-value
/// projection); anything else remains outside the supported fragment.
fn lower_mut_future(ctx: ExpCtx<'_>, exp: &Exp) -> Result<Expr, String> {
    let operand = match &exp.x {
        ExpX::Unary(UnaryOp::MutRefCurrent, operand) => operand,
        _ => exp,
    };
    let ident = match &operand.x {
        ExpX::Var(ident) | ExpX::VarLoc(ident) | ExpX::VarAt(ident, _) => ident,
        other => {
            return Err(format!(
                "slice range mutable contract has a non-variable reference: {other:?}"
            ));
        }
    };
    let root = resolve_mut_root(&ctx.registry, ident);
    ctx.registry
        .mut_futures
        .borrow()
        .get(&root)
        .cloned()
        .ok_or_else(|| {
            format!(
                "slice range mutable contract has no prophecy for reference `{}`",
                root.0
            )
        })
}

/// Expand the concrete function-item contract behind slice range indexing.
///
/// vstd specifies `<[T] as Index<I>>::index` generically by delegating its
/// postcondition to `call_ensures(<I as SliceIndex<[T]>>::index[_mut],
/// (index, slice), output)`. Its `[T; N]` indexing contract delegates once
/// more to `call_ensures(<[T] as Index<I>>::index, (array, index), output)`;
/// arrays and slices share the same Seq model, so the exact immutable range
/// result is identical after accounting for that tuple order.
/// For `I = Range<usize>` or `RangeFrom<usize>`, Verus resolves that function
/// item to a trusted `SliceIndex` specification. The immutable contract
/// returns the exact `Seq::subrange`; the mutable contract additionally
/// reconstructs the owner's future from its old prefix, the returned
/// subview's future, and (for `Range`) its old suffix. The SST retains the
/// generic `FnDef` without static resolution, so reproduce precisely those
/// four monomorphic contracts here. Every other function-item predicate
/// continues to fail closed in the ordinary closure-contract arm below.
fn lower_slice_range_ensures(
    ctx: ExpCtx<'_>,
    env: &Env,
    typs: &[Typ],
    raw_args: &[Exp],
) -> Option<Result<Expr, String>> {
    let fn_typ = resolve_typ(ctx, typs.first()?);
    let TypX::FnDef(fun, fn_typs, _) = undecorate(&fn_typ) else {
        return None;
    };
    let fun_segments: Vec<&str> = fun.path.segments.iter().map(|s| s.as_str()).collect();
    if !matches!(fun.path.krate, CrateId::Core) {
        return None;
    }
    let (mutable, array_delegate) = match fun_segments.as_slice() {
        ["slice", "index", "SliceIndex", "index"] => (false, false),
        ["slice", "index", "SliceIndex", "index_mut"] => (true, false),
        ["ops", "index", "Index", "index"] => (false, true),
        _ => return None,
    };

    Some((|| {
        if raw_args.len() != 3 {
            return Err(format!(
                "slice range `call_ensures` has {} arguments, expected 3",
                raw_args.len()
            ));
        }
        let ExpX::Ctor(vir::ast::Dt::Tuple(2), _, tuple_fields) = &raw_args[1].x else {
            return Err(format!(
                "slice range `call_ensures` has a non-pair argument tuple: {:?}",
                raw_args[1].x
            ));
        };
        let tuple_field = |name: &str| {
            tuple_fields
                .iter()
                .find(|field| field.name.as_str() == name)
                .map(|field| &field.a)
                .ok_or_else(|| {
                    format!("slice range `call_ensures` argument tuple misses field `{name}`")
                })
        };
        let (index_arg, slice_arg) = if array_delegate {
            (tuple_field("1")?, tuple_field("0")?)
        } else {
            (tuple_field("0")?, tuple_field("1")?)
        };
        let range_kind = if array_delegate {
            let receiver_is_slice = matches!(
                undecorate(&resolve_typ(ctx, &slice_arg.typ)),
                TypX::Primitive(vir::ast::Primitive::Slice, elements) if elements.len() == 1
            );
            let function_self_is_slice = fn_typs.first().is_some_and(|typ| {
                matches!(
                    undecorate(&resolve_typ(ctx, typ)),
                    TypX::Primitive(vir::ast::Primitive::Slice, elements)
                        if elements.len() == 1
                )
            });
            if !receiver_is_slice || !function_self_is_slice {
                return Err("array range delegation did not resolve to slice `Index`".to_owned());
            }
            slice_range_kind(ctx, &index_arg.typ)
        } else {
            fn_typs.first().and_then(|typ| slice_range_kind(ctx, typ))
        }
        .ok_or_else(|| "slice index function item does not use Range/RangeFrom".to_owned())?;
        let (start, explicit_end) = lower_slice_range_bounds(ctx, env, index_arg, range_kind)?;
        let slice = lower_exp(ctx, env, slice_arg)?;
        let output = lower_exp(ctx, env, &raw_args[2])?;
        let end = explicit_end.unwrap_or_else(|| Expr::SeqLen(Box::new(slice.clone())));
        let initial_view = Expr::binary(
            BinOp::Eq,
            output,
            Expr::SeqSubrange(
                Box::new(slice.clone()),
                Box::new(start.clone()),
                Box::new(end.clone()),
            ),
        );
        if !mutable {
            return Ok(initial_view);
        }

        let slice_future = lower_mut_future(ctx, slice_arg)?;
        let output_future = lower_mut_future(ctx, &raw_args[2])?;
        let prefix = Expr::SeqSubrange(
            Box::new(slice.clone()),
            Box::new(Expr::Int("0".to_owned())),
            Box::new(start),
        );
        let rebuilt = match range_kind {
            SliceRangeKind::Range => {
                let suffix = Expr::SeqSubrange(
                    Box::new(slice.clone()),
                    Box::new(end),
                    Box::new(Expr::SeqLen(Box::new(slice))),
                );
                Expr::SeqAdd(
                    Box::new(Expr::SeqAdd(Box::new(prefix), Box::new(output_future))),
                    Box::new(suffix),
                )
            }
            SliceRangeKind::RangeFrom => Expr::SeqAdd(Box::new(prefix), Box::new(output_future)),
        };
        Ok(Expr::binary(
            BinOp::And,
            initial_view,
            Expr::binary(BinOp::Eq, slice_future, rebuilt),
        ))
    })())
}

/// Follow the `&mut` alias chain to the root borrow variable; identity for
/// anything that never aliased a mutable reference.
fn resolve_mut_root(registry: &SpecRegistry, ident: &VarIdent) -> VarIdent {
    let aliases = registry.mut_aliases.borrow();
    let mut current = ident;
    let mut steps = 0;
    while let Some(next) = aliases.get(current) {
        current = next;
        steps += 1;
        if steps > aliases.len() {
            break; // cycles are impossible by construction; fail safe
        }
    }
    current.clone()
}

/// Crate-internal prefix marking a refusal already annotated with the
/// offending construct's span (`@span file:sl:sc:el:ec\n<message>`); `main`
/// renders it as a rustc-style diagnostic the editor can place in the file.
pub const SPAN_MARKER: &str = "@span ";

/// Build the structured per-function refusal record from an annotated
/// lowering error (`@span file:sl:sc:el:ec\n<message>`). The message is
/// flattened to one sanitized line for the IR; the full multi-line
/// diagnostic remains the stderr output. Falls back to the function's own
/// span when the annotation is (unexpectedly) absent.
pub fn refused_view(
    function: &FunctionSst,
    error: &str,
) -> vermilion_backend::model::RefusedView {
    let id = function_id_of(&function.x.name.path).unwrap_or_else(|_| {
        vermilion_backend::model::FunctionId::new("unknown", Vec::<String>::new(), "unknown")
    });
    let (refusal_span, message) = match error
        .strip_prefix(SPAN_MARKER)
        .and_then(|rest| rest.split_once('\n'))
    {
        Some((location, message)) => {
            let fields: Vec<&str> = location.rsplitn(5, ':').collect();
            let parsed = (fields.len() == 5).then(|| {
                let number = |raw: &str| raw.parse::<u32>().unwrap_or(0);
                vermilion_backend::model::Span {
                    file: fields[4].to_owned(),
                    start_line: number(fields[3]),
                    start_column: number(fields[2]),
                    end_line: number(fields[1]),
                    end_column: number(fields[0]),
                }
            });
            (parsed.unwrap_or_else(|| span(&function.span)), message)
        }
        None => (span(&function.span), error),
    };
    let one_line: String = message
        .chars()
        .map(|c| if c == '\n' { ' ' } else { c })
        .collect();
    // Keep the disposition legible: the head of the message names the
    // construct; SST debug dumps that follow add nothing per-function.
    let mut sanitized: String = one_line.chars().take(200).collect();
    if one_line.chars().count() > 200 {
        sanitized.push('…');
    }
    vermilion_backend::model::RefusedView { id, span: refusal_span, message: sanitized }
}

/// Attach `raw`'s span to a lowering refusal. The FIRST annotation wins:
/// errors bubble outward through enclosing expressions/statements, so the
/// innermost — closest to the unsupported construct — sticks.
fn annotate_span(error: String, raw: &vir::messages::Span) -> String {
    if error.starts_with(SPAN_MARKER) {
        return error;
    }
    let s = span(raw);
    format!(
        "{SPAN_MARKER}{}:{}:{}:{}:{}\n{error}",
        s.file, s.start_line, s.start_column, s.end_line, s.end_column
    )
}

fn lower_exp(ctx: ExpCtx<'_>, env: &Env, exp: &Exp) -> Result<Expr, String> {
    charge_work(ctx.registry, 1)?;
    lower_exp_impl(ctx, env, exp).map_err(|error| annotate_span(error, &exp.span))
}

/// Tick the per-function work fuse by `amount` nodes; refuse the function
/// once the total crosses `LOWERING_WORK_FUSE`.
fn charge_work(registry: &SpecRegistry, amount: u64) -> Result<(), String> {
    let work = registry.work.get().saturating_add(amount);
    registry.work.set(work);
    if work > LOWERING_WORK_FUSE {
        return Err(format!(
            "function lowering exceeded the work fuse ({LOWERING_WORK_FUSE} \
             expression nodes) — pathological duplication under the \
             substitution-based lowering; the sharing fix is tracked in \
             the issue 'share substituted values instead of duplicating \
             them'"
        ));
    }
    Ok(())
}

/// Charge the fuse for `copies` extra deep copies of `value`. The lowering
/// duplicates subtrees at several sites — env lookups substitute per
/// OCCURRENCE, `lower_clip` and Prop-conditionals re-state their operand,
/// `field_update` restates the current record per field — and each copy
/// must be priced by its node count: counting `lower_exp` calls alone lets
/// a handful of calls duplicate gigabytes between ticks (measured:
/// dalek-lite DL8, `from_bytes` ground ~33 GB of clones through call
/// counts that never approached the fuse). The size walk is capped at the
/// fuse headroom, so pricing a copy never costs more traversal than the
/// fuse allows overall.
fn charge_expr_copies(registry: &SpecRegistry, value: &Expr, copies: u64) -> Result<(), String> {
    if copies == 0 {
        return Ok(());
    }
    let headroom = LOWERING_WORK_FUSE.saturating_sub(registry.work.get()) + 1;
    let size = expr_size_capped(value, headroom as i64) as u64;
    charge_work(registry, size.saturating_mul(copies))
}

/// Charge the fuse for one deep copy of a whole substitution environment
/// (binder extension and branch save/restore clone every held value).
fn charge_env_copy(registry: &SpecRegistry, env: &Env) -> Result<(), String> {
    for value in env.values() {
        charge_expr_copies(registry, value, 1)?;
    }
    Ok(())
}

/// Per-function ceiling on lowering work: `lower_exp` invocations plus the
/// node count of every value cloned out of the substitution environment.
/// The largest legitimate function measured so far stays under ~10^5 work
/// units; the fuse sits well above that and far below the memory cliff.
const LOWERING_WORK_FUSE: u64 = 5_000_000;

/// Lean-native meaning of VIR's machine-integer clipping nodes.  Verus
/// inserts these around truncating arithmetic (including the explicit
/// `verus_builtin::{add,sub,mul}` helpers); dropping the node changes a
/// wrapping `u32` multiplication into mathematical-Int multiplication.
///
/// Keep the neutral IR small by expressing clipping with its existing
/// arithmetic and conditional forms.  Unsigned clipping is Euclidean
/// remainder modulo `2^w`; signed clipping interprets that residue in the
/// two's-complement interval.  `nat` clipping is saturation at zero.
fn lower_clip(range: &IntRange, operand: Expr) -> Result<Expr, String> {
    let pow2 = |bits: u32| Expr::Int((BigInt::from(1u8) << bits).to_string());
    let unsigned = |bits: u32, value: Expr| Expr::binary(BinOp::EMod, value, pow2(bits));

    match range {
        IntRange::Int => Ok(operand),
        // `nat` and signed clipping lower to the DEDICATED single-occurrence
        // prelude functions (`Vermilion.natClip`/`sclip`): the conditional
        // expansions (`iteP (e ≥ 0) e 0`, the two's-complement triple)
        // restate their operand, and nested nat arithmetic then grows
        // exponentially in the clip depth (dalek-lite DL8, `from_bytes`).
        IntRange::Nat => Ok(Expr::NatClip(Box::new(operand))),
        IntRange::U(bits) => Ok(unsigned(*bits, operand)),
        IntRange::USize => Ok(unsigned(64, operand)),
        IntRange::I(bits) if *bits == 0 => {
            Err("unsupported zero-width signed integer clip".to_owned())
        }
        IntRange::I(bits) => Ok(Expr::SignedClip(*bits, Box::new(operand))),
        IntRange::ISize => Ok(Expr::SignedClip(64, Box::new(operand))),
        IntRange::Char => Err("unsupported `char` clipping (Unicode scalar-value gap)".to_owned()),
    }
}

fn lower_exp_impl(ctx: ExpCtx<'_>, env: &Env, exp: &Exp) -> Result<Expr, String> {
    match &exp.x {
        ExpX::Var(ident) | ExpX::VarLoc(ident) => {
            let root = resolve_mut_root(&ctx.registry, ident);
            match env.get(&root) {
                Some(value) => {
                    charge_expr_copies(ctx.registry, value, 1)?;
                    Ok(value.clone())
                }
                None => Ok(Expr::Var(root.0.to_string())),
            }
        }
        // `old(x)`: the pre-state. On the enclosing function's own
        // parameter this is the ENTRY value (the parameter binder itself),
        // never the current substitution value — the distinction that
        // makes `ensures *final(x) == *old(x) + 1` mean what it says. At a
        // call site the callee's params are not ours, so the contract
        // substitution environment applies (the at-call value) — also
        // correct.
        ExpX::VarAt(ident, vir::ast::VarAt::Pre) => {
            if ctx
                .registry
                .current_params
                .borrow()
                .iter()
                .any(|parameter| parameter == ident)
            {
                Ok(Expr::Var(ident.0.to_string()))
            } else {
                match env.get(ident) {
                    Some(value) => {
                        charge_expr_copies(ctx.registry, value, 1)?;
                        Ok(value.clone())
                    }
                    None => Ok(Expr::Var(ident.0.to_string())),
                }
            }
        }
        ExpX::Const(Constant::Int(value)) => Ok(Expr::Int(value.to_string())),
        // Boolean expressions live in Prop.
        ExpX::Const(Constant::Bool(true)) => Ok(Expr::True),
        ExpX::Const(Constant::Bool(false)) => Ok(Expr::False),
        ExpX::Const(Constant::StrSlice(value)) => Ok(Expr::StrLit(value.to_string())),
        ExpX::Const(other) => Err(format!("unsupported SST constant {other:?}")),
        ExpX::Binary(operator, lhs_exp, rhs_exp) => {
            let lhs = lower_exp(ctx, env, lhs_exp)?;
            let rhs = lower_exp(ctx, env, rhs_exp)?;
            let op = match operator {
                BinaryOp::Inequality(InequalityOp::Lt) => BinOp::Lt,
                BinaryOp::Inequality(InequalityOp::Le) => BinOp::Le,
                BinaryOp::Inequality(InequalityOp::Gt) => BinOp::Gt,
                BinaryOp::Inequality(InequalityOp::Ge) => BinOp::Ge,
                BinaryOp::Eq(_) if is_bool(&resolve_typ(ctx, &lhs_exp.typ)) => BinOp::Iff,
                BinaryOp::Eq(_) => BinOp::Eq,
                BinaryOp::Ne if is_bool(&resolve_typ(ctx, &lhs_exp.typ)) => BinOp::Niff,
                BinaryOp::Ne => BinOp::Ne,
                BinaryOp::And => BinOp::And,
                BinaryOp::Or => BinOp::Or,
                BinaryOp::Implies => BinOp::Implies,
                BinaryOp::Arith(ArithOp::Add(_)) => BinOp::Add,
                BinaryOp::Arith(ArithOp::Sub(_)) => BinOp::Sub,
                BinaryOp::Arith(ArithOp::Mul(_)) => BinOp::Mul,
                BinaryOp::Arith(ArithOp::EuclideanDiv(_)) => BinOp::EDiv,
                BinaryOp::Arith(ArithOp::EuclideanMod(_)) => BinOp::EMod,
                // Spec-level array indexing: the array IS its Seq view.
                BinaryOp::Index(..) => return Ok(Expr::SeqIndex(Box::new(lhs), Box::new(rhs))),
                // Machine bit operations: width and signedness from the
                // operand type; modeled by Vermilion.Bits over BitVec
                // (proved conversions — nothing trusted, per the M4
                // Lean-native directive).
                BinaryOp::Bitwise(op, _) => {
                    let (signed, bits) = match undecorate(&resolve_typ(ctx, &lhs_exp.typ)) {
                        TypX::Int(IntRange::U(bits)) => (false, *bits),
                        TypX::Int(IntRange::I(bits)) => (true, *bits),
                        TypX::Int(IntRange::USize) => (false, 64),
                        TypX::Int(IntRange::ISize) => (true, 64),
                        other => {
                            return Err(format!("unsupported bit operation at type {other:?}"))
                        }
                    };
                    let kind = match op {
                        vir::ast::BitwiseOp::BitAnd => BitOpKind::And,
                        vir::ast::BitwiseOp::BitOr => BitOpKind::Or,
                        vir::ast::BitwiseOp::BitXor => BitOpKind::Xor,
                        vir::ast::BitwiseOp::Shl(..) => BitOpKind::Shl,
                        vir::ast::BitwiseOp::Shr => BitOpKind::Shr,
                    };
                    return Ok(Expr::BitOp(
                        kind,
                        signed,
                        bits,
                        Box::new(lhs),
                        Box::new(rhs),
                    ));
                }
                other => return Err(format!("unsupported SST binary operator {other:?}")),
            };
            Ok(Expr::binary(op, lhs, rhs))
        }
        // Extensional equality (`=~=`; spec `==` on collection types).
        // Shallow ext-eq coincides with plain equality wherever our Lean
        // models are extensional; deep ext-eq (`=~~=`) and `Map` fail
        // closed (the Map model's structural equality is finer than
        // Verus's domain-wise one).
        ExpX::BinaryOpr(vir::ast::BinaryOpr::ExtEq(deep, typ), lhs_exp, rhs_exp) => {
            if *deep {
                return Err("unsupported deep extensional equality (`=~~=`)".to_owned());
            }
            let mut visited = std::collections::HashSet::new();
            if !ext_eq_is_plain_eq(ctx, typ, &mut visited) {
                let shown = match binder_type(ctx, typ) {
                    Ok(ty) => format!("{ty:?}"),
                    Err(_) => format!("{:?}", undecorate(&resolve_typ(ctx, typ))),
                };
                return Err(format!(
                    "unsupported extensional equality at type {shown} (its \
                     Lean model is not extensional for plain `=`)"
                ));
            }
            let lhs = lower_exp(ctx, env, lhs_exp)?;
            let rhs = lower_exp(ctx, env, rhs_exp)?;
            Ok(Expr::binary(BinOp::Eq, lhs, rhs))
        }
        // A satisfied trait bound: its verification content is the
        // contracts, which flow through the trait-fn symbols and the
        // trait-declaration contracts — the predicate itself is `True`.
        ExpX::NullaryOpr(vir::ast::NullaryOpr::TraitBound(..)) => Ok(Expr::True),
        // A const generic used as a value: at instantiated call sites the
        // substitution has already made it a literal; inside the generic
        // function it is the const parameter's own Int binder.
        ExpX::NullaryOpr(vir::ast::NullaryOpr::ConstGeneric(typ)) => {
            let typ = resolve_typ(ctx, typ);
            match undecorate(&typ) {
                TypX::ConstInt(value) => Ok(Expr::Int(value.to_string())),
                TypX::TypParam(name) => Ok(Expr::Var(name.to_string())),
                other => Err(format!("unsupported const-generic value of type {other:?}")),
            }
        }
        ExpX::Unary(UnaryOp::Not, operand) => {
            Ok(Expr::Not(Box::new(lower_exp(ctx, env, operand)?)))
        }
        // `#[trigger]` marks are SMT instantiation hints; semantically the
        // identity.
        ExpX::Unary(UnaryOp::Trigger(_), operand) => lower_exp(ctx, env, operand),
        // Verus's prophecy-style mut-ref model resolves at lowering time
        // in the sequential fragment: a `&mut` value is tracked by its
        // CURRENT value in the substitution environment, so the current
        // projection is the identity on the lowered operand.
        // Spec-level array length: the array IS its Seq view.
        ExpX::Unary(UnaryOp::Length(_), operand) => {
            Ok(Expr::SeqLen(Box::new(lower_exp(ctx, env, operand)?)))
        }
        ExpX::Unary(UnaryOp::MutRefCurrent, operand) => lower_exp(ctx, env, operand),
        // `*final(x)`: at a call boundary the future is the fresh
        // post-state symbol the call recorded; at a return site the
        // prophecy resolves to the current value. Anywhere else this
        // fails closed — the future must never be silently conflated
        // with the current value.
        ExpX::Unary(UnaryOp::MutRefFuture(_), operand) => {
            // The future projection is a prophecy — time-independent — so
            // `final` of the entry reference (`VarAt::Pre`, how ensures
            // clauses phrase it) and of the current reference coincide:
            // look through to the root reference variable.
            let root = match &operand.x {
                ExpX::Var(ident) | ExpX::VarLoc(ident) => Some(ident),
                ExpX::VarAt(ident, vir::ast::VarAt::Pre) => Some(ident),
                _ => None,
            };
            if let Some(ident) = root {
                let root = resolve_mut_root(&ctx.registry, ident);
                if let Some(future) = ctx.registry.mut_futures.borrow().get(&root) {
                    return Ok(future.clone());
                }
                if ctx.registry.in_postcondition.get() {
                    // At a return site the prophecy resolves to the current
                    // value of the referent.
                    return match env.get(&root) {
                        Some(value) => {
                            charge_expr_copies(ctx.registry, value, 1)?;
                            Ok(value.clone())
                        }
                        None => Ok(Expr::Var(root.0.to_string())),
                    };
                }
            }
            Err("unsupported `final(..)` of a mutable reference outside \
                 a resolved borrow, call contract, or postcondition"
                .to_owned())
        }
        // Pure spec-level conditional. Prop-valued conditionals become the
        // implication pair; Int-valued ones use `Vermilion.iteP`.
        ExpX::If(cond, then_value, else_value) => {
            let cond = lower_exp(ctx, env, cond)?;
            let then_value = lower_exp(ctx, env, then_value)?;
            let else_value = lower_exp(ctx, env, else_value)?;
            if is_bool(&resolve_typ(ctx, &exp.typ)) {
                // The implication pair restates the condition; nested
                // Prop-conditionals compound, so charge the extra copy.
                charge_expr_copies(ctx.registry, &cond, 1)?;
                Ok(Expr::binary(
                    BinOp::And,
                    Expr::binary(BinOp::Implies, cond.clone(), then_value),
                    Expr::binary(BinOp::Implies, Expr::Not(Box::new(cond)), else_value),
                ))
            } else {
                Ok(Expr::Ite(
                    Box::new(cond),
                    Box::new(then_value),
                    Box::new(else_value),
                ))
            }
        }
        // Truncating machine arithmetic is not mathematical-Int arithmetic:
        // retain VIR's clip even when a checked operation also emitted a
        // range obligation.  The same rule handles explicit wrapping
        // `verus_builtin::{add,sub,mul}` calls.
        ExpX::Unary(UnaryOp::Clip { range, .. }, operand) => {
            lower_clip(range, lower_exp(ctx, env, operand)?)
        }
        ExpX::Unary(other, _) => Err(format!("unsupported SST unary operator {other:?}")),
        // Spec-level let bindings (e.g. introduced for casts in `ensures`)
        // extend the substitution environment, exactly like SSA assigns.
        ExpX::Bind(bnd, body) => match &bnd.x {
            vir::sst::BndX::Let(binders) => {
                charge_env_copy(ctx.registry, env)?;
                let mut extended = env.clone();
                for binder in binders.iter() {
                    let value = lower_exp(ctx, &extended, &binder.a)?;
                    extended.insert(binder.name.clone(), value);
                }
                lower_exp(ctx, &extended, body)
            }
            // forall/exists: bound vars enter the environment as
            // themselves; range guards fold into the body exactly as
            // Verus's typ_invariant discipline does (forall: guard →
            // body; exists: guard ∧ body). Trigger groups are preserved
            // for future e-matching tooling (the Lean backend does not
            // consume them).
            vir::sst::BndX::Quant(quant, binders, trigs, _) => {
                charge_env_copy(ctx.registry, env)?;
                let mut extended = env.clone();
                let mut bound = Vec::new();
                let mut guards = Vec::new();
                for binder in binders.iter() {
                    let base = binder.name.0.to_string();
                    extended.insert(binder.name.clone(), Expr::Var(base.clone()));
                    for fact in type_range_facts(ctx, &binder.a, &Expr::Var(base.clone()))? {
                        guards.push(fact);
                    }
                    bound.push(Binder::new(base, binder_type(ctx, &binder.a)?));
                }
                let lowered_body = lower_exp(ctx, &extended, body)?;
                let mut triggers = Vec::new();
                for group in trigs.iter() {
                    let mut lowered_group = Vec::new();
                    for trigger in group.iter() {
                        lowered_group.push(lower_exp(ctx, &extended, trigger)?);
                    }
                    triggers.push(lowered_group);
                }
                let guard = guards
                    .into_iter()
                    .reduce(|lhs, rhs| Expr::binary(BinOp::And, lhs, rhs));
                let forall = matches!(quant.quant, air::ast::Quant::Forall);
                let full_body = match (guard, forall) {
                    (None, _) => lowered_body,
                    (Some(guard), true) => Expr::binary(BinOp::Implies, guard, lowered_body),
                    (Some(guard), false) => Expr::binary(BinOp::And, guard, lowered_body),
                };
                // Verus wraps some facts (e.g. an `assert_by` conclusion)
                // in a zero-binder quantifier; `∀ ,`-style output is not
                // Lean, and a quantifier over nothing IS its body.
                if bound.is_empty() {
                    return Ok(full_body);
                }
                Ok(Expr::Quant(forall, bound, triggers, Box::new(full_body)))
            }
            // Verus `choose|x| P(x)`: the predicate is the Bind's `cond`,
            // the Bind BODY is the returned expression. Slice 1 covers the
            // dominant shape — one binder, body exactly that variable, at a
            // scalar (Int-lowered) type; tuple choose and non-var bodies
            // fail closed. Range guards conjoin in front of the predicate,
            // mirroring Verus's `typ_invariant ∧ cond` (sst_to_air).
            vir::sst::BndX::Choose(binders, trigs, cond) => {
                if binders.len() != 1 {
                    return Err("unsupported SST choose with multiple binders".to_owned());
                }
                let binder = &binders[0];
                match &body.x {
                    vir::sst::ExpX::Var(v) if v == &binder.name => {}
                    _ => {
                        return Err(
                            "unsupported SST choose whose body is not the bound variable"
                                .to_owned(),
                        )
                    }
                }
                let ty = binder_type(ctx, &binder.a)?;
                if ty != Ty::Int {
                    return Err(format!(
                        "unsupported SST choose at non-scalar binder type {ty:?}"
                    ));
                }
                let base = binder.name.0.to_string();
                charge_env_copy(ctx.registry, env)?;
                let mut extended = env.clone();
                extended.insert(binder.name.clone(), Expr::Var(base.clone()));
                let mut guards = Vec::new();
                for fact in type_range_facts(ctx, &binder.a, &Expr::Var(base.clone()))? {
                    guards.push(fact);
                }
                let lowered_cond = lower_exp(ctx, &extended, cond)?;
                let mut triggers = Vec::new();
                for group in trigs.iter() {
                    let mut lowered_group = Vec::new();
                    for trigger in group.iter() {
                        lowered_group.push(lower_exp(ctx, &extended, trigger)?);
                    }
                    triggers.push(lowered_group);
                }
                let guard = guards
                    .into_iter()
                    .reduce(|lhs, rhs| Expr::binary(BinOp::And, lhs, rhs));
                let predicate = match guard {
                    None => lowered_cond,
                    Some(guard) => Expr::binary(BinOp::And, guard, lowered_cond),
                };
                Ok(Expr::Choose(
                    Binder::new(base, ty),
                    triggers,
                    Box::new(predicate),
                ))
            }
            // A spec closure: a genuine Lean `fun`. Like Verus, the
            // lambda is total over the binders' Lean types (no range
            // guards are injected; machine-int constraints surface on
            // arguments and results at application sites, exactly where
            // Verus's typing axioms place them).
            vir::sst::BndX::Lambda(binders, _triggers) => {
                charge_env_copy(ctx.registry, env)?;
                let mut extended = env.clone();
                let mut bound = Vec::new();
                for binder in binders.iter() {
                    let base = binder.name.0.to_string();
                    extended.insert(binder.name.clone(), Expr::Var(base.clone()));
                    bound.push(Binder::new(base, binder_type(ctx, &binder.a)?));
                }
                let lowered_body = lower_exp(ctx, &extended, body)?;
                Ok(Expr::Lambda(bound, Box::new(lowered_body)))
            }
            other => Err(format!("unsupported SST binder {other:?}")),
        },
        // Trigger annotations are SMT instantiation hints; the semantics
        // are exactly the body.
        ExpX::WithTriggers(_trigs, body) => lower_exp(ctx, env, body),
        // Termination measure check. The prelude meaning specialized to Int
        // measures (the only kind in the fragment) is
        // `(0 ≤ cur ∧ cur < prev) ∨ (cur = prev ∧ otherwise)`.
        ExpX::Call(
            vir::sst::CallFun::InternalFun(vir::sst::InternalFun::CheckDecreaseHeight),
            _,
            args,
        ) if args.len() == 3 => {
            if !matches!(undecorate(&args[0].typ), TypX::Int(_)) {
                return Err(format!(
                    "unsupported decreases measure type {:?} (only integers are lowered)",
                    args[0].typ
                ));
            }
            let cur = lower_exp(ctx, env, &args[0])?;
            let prev = lower_exp(ctx, env, &args[1])?;
            let otherwise = lower_exp(ctx, env, &args[2])?;
            let strict = Expr::binary(
                BinOp::And,
                Expr::binary(BinOp::Le, Expr::Int("0".to_owned()), cur.clone()),
                Expr::binary(BinOp::Lt, cur.clone(), prev.clone()),
            );
            let tie = Expr::binary(BinOp::And, Expr::binary(BinOp::Eq, cur, prev), otherwise);
            Ok(Expr::binary(BinOp::Or, strict, tie))
        }
        // vstd collection operations, mapped onto the named prelude
        // conventions (`Vermilion.Seq/Set/Map/Multiset.*`). Anything else
        // fails closed. `map_lib` hosts Map's derived spec fns
        // (`contains_key`), hence the module alternatives.
        // Verus's internal exec-closure contract predicates, applied at
        // (closure value, argument tuple[, result]): applications of the
        // per-closure-type fresh predicate symbols (allocated by the
        // statement walker before any statement mentioning them lowers).
        ExpX::Call(
            vir::sst::CallFun::InternalFun(
                internal @ (vir::sst::InternalFun::ClosureReq | vir::sst::InternalFun::ClosureEns),
            ),
            typs,
            raw_args,
        ) => {
            if matches!(internal, vir::sst::InternalFun::ClosureEns) {
                if let Some(lowered) = lower_slice_range_ensures(ctx, env, typs, raw_args) {
                    return lowered;
                }
            }
            let Some(closure_path) = closure_type_path(ctx, typs) else {
                return Err(
                    "unsupported closure contract predicate: the closure type argument is not \
                     an anonymous closure datatype or a supported slice-range function item"
                        .to_owned(),
                );
            };
            let is_ens = matches!(internal, vir::sst::InternalFun::ClosureEns);
            let preds = ctx.registry.closure_preds.borrow();
            let Some(name) = preds.get(&(closure_path.clone(), is_ens)).cloned() else {
                return Err(format!(
                    "closure contract predicate for {closure_path:?} mentioned \
                     before its allocation"
                ));
            };
            drop(preds);
            let args = raw_args
                .iter()
                .map(|argument| lower_exp(ctx, env, argument))
                .collect::<Result<Vec<_>, _>>()?;
            Ok(Expr::CallFn(Box::new(Expr::Var(name)), args))
        }
        // Application of a spec-fn value (lambda literal or
        // `spec_fn`-typed variable): plain Lean application.
        ExpX::CallLambda(callee, raw_args) => {
            let callee = lower_exp(ctx, env, callee)?;
            let args = raw_args
                .iter()
                .map(|argument| lower_exp(ctx, env, argument))
                .collect::<Result<Vec<_>, _>>()?;
            Ok(Expr::CallFn(Box::new(callee), args))
        }
        ExpX::Call(
            call_fun @ (vir::sst::CallFun::Fun(..) | vir::sst::CallFun::Recursive(..)),
            typs,
            raw_args,
        ) => {
            let (fun, resolved) = match call_fun {
                vir::sst::CallFun::Fun(fun, resolved) => (fun, resolved.as_ref()),
                vir::sst::CallFun::Recursive(fun) => (fun, None),
                _ => unreachable!(),
            };
            // The `Recursive` variant is the self-application inside a
            // recursive spec fn's own body; Verus threads an explicit
            // trailing `fuel%` argument (type Air) which our fuel-free
            // embedding drops.
            let args: Vec<&Exp> = raw_args
                .iter()
                .filter(|argument| !matches!(undecorate(&argument.typ), TypX::Air(_)))
                .collect();
            let segments: Vec<&str> = fun.path.segments.iter().map(|s| s.as_str()).collect();
            // `View::view` (`v@`): we model a `Vec` as its `Seq` view, so
            // the view of an already-lowered value is the value itself.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments.first() == Some(&"view")
                && segments.last() == Some(&"view")
                && args.len() == 1
                && (matches!(
                    undecorate(&resolve_typ(ctx, &args[0].typ)),
                    TypX::Datatype(vir::ast::Dt::Path(path), _, _)
                        if is_alloc_vec(path)
                ) || matches!(
                    undecorate(&resolve_typ(ctx, &args[0].typ)),
                    TypX::Primitive(vir::ast::Primitive::Array | vir::ast::Primitive::Slice, _)
                ))
            {
                // `v@` on a Vec, `[T; N]`, or `[T]` IS its Seq model —
                // identity.
                // User `View` impls fall through to ordinary trait
                // dispatch (their impl spec fn is applied).
                return lower_exp(ctx, env, args[0]);
            }
            // The array view (`a@` / vstd `array` impl `view`): an array
            // IS its Seq model, so the view is the identity — same as Vec.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments.first() == Some(&"array")
                && segments.last() == Some(&"view")
                && args.len() == 1
            {
                return lower_exp(ctx, env, args[0]);
            }
            // vstd's exact array-to-slice coercion model is pinned by
            // `axiom_spec_array_as_slice`: its slice view equals the array
            // view. Arrays and slices are both Seq in this embedding, so the
            // coercion is the identity. This also appears inside the generic
            // `[T; N]` range-index delegation contract.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments == ["array", "spec_array_as_slice"]
                && args.len() == 1
            {
                return lower_exp(ctx, env, args[0]);
            }
            // The array-repeat literal `[t; N]`: the exec expression
            // desugars through vstd's `array_fill_for_copy_types`, whose
            // contract names the generic uninterpreted
            // `spec_array_fill_for_copy_type::<T, N>(t)`; vstd's broadcast
            // axiom pins every element to `t`, so in the Seq model the
            // value is the constant sequence. Route the application through
            // the vstd-mirror registry with the const-generic length as a
            // leading Int argument (the same convention const-generic
            // spec-fn instantiations use).
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments.first() == Some(&"array")
                && segments.last() == Some(&"spec_array_fill_for_copy_type")
                && args.len() == 1
            {
                // Select the CONST type argument (`N`) by the callee's
                // declared const-generic parameter names — the element
                // type `T` may itself be a type parameter.
                let callee = ctx
                    .declarations
                    .get(fun)
                    .ok_or_else(|| "array repeat without a vstd declaration".to_owned())?;
                let const_names: Vec<String> = callee
                    .x
                    .typ_bounds
                    .iter()
                    .filter_map(|bound| match &**bound {
                        vir::ast::GenericBoundX::ConstTyp(param, _) => {
                            match undecorate(param) {
                                TypX::TypParam(name) => Some(name.to_string()),
                                _ => None,
                            }
                        }
                        _ => None,
                    })
                    .collect();
                let mut length = None;
                for (param, typ) in callee.x.typ_params.iter().zip(typs.iter()) {
                    if !const_names.contains(&param.to_string()) {
                        continue;
                    }
                    match undecorate(&resolve_typ(ctx, typ)) {
                        TypX::ConstInt(value) => {
                            length = Some(Expr::Int(value.to_string()))
                        }
                        TypX::TypParam(name) => {
                            // A const-generic length in scope travels as
                            // the Int binder the enclosing function already
                            // carries for it.
                            length = Some(Expr::Var(name.to_string()))
                        }
                        other => {
                            return Err(format!(
                                "unsupported array-repeat length {other:?}"
                            ))
                        }
                    }
                }
                let length = length.ok_or_else(|| {
                    "array repeat without a const-generic length".to_owned()
                })?;
                return Ok(Expr::VstdApply(
                    "vstd::array::spec_array_fill_for_copy_type".to_owned(),
                    vec![length, lower_exp(ctx, env, args[0])?],
                ));
            }
            // `spec_{vec,slice}_len(v)`: vstd's uninterpreted exec-len
            // symbols, axiomatized as `v@.len()` by their always-broadcast
            // groups. Identifying either with view length is sound and also
            // keeps `slice.len()` in while-condition setup a pure
            // substitution even though the vstd symbol is type-generic.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && matches!(
                    segments.last().copied(),
                    Some("spec_vec_len" | "spec_slice_len")
                )
                && args.len() == 1
            {
                return Ok(Expr::SeqLen(Box::new(lower_exp(ctx, env, args[0])?)));
            }
            // vstd's unsigned `wrapping_{add,sub,mul}` and `rotate_left`
            // spec fns route
            // through the mirror registry (`Vermilion.Vstd.Wrapping.*`,
            // the `(x op y) % 2^w` models) instead of per-module
            // re-emission. The middle segment names the width impl
            // (`u32_specs`), so it IS the registry key here. Signed
            // variants and the wrapping-shift family fall through to the
            // generic spec-fn emission until their models are registered.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments.len() == 3
                && segments[0] == "wrapping"
                && segments[1].starts_with('u')
                && matches!(
                    segments[2],
                    "wrapping_add" | "wrapping_sub" | "wrapping_mul" | "rotate_left"
                )
            {
                let lowered = args
                    .iter()
                    .map(|argument| lower_exp(ctx, env, argument))
                    .collect::<Result<Vec<_>, _>>()?;
                return Ok(Expr::VstdApply(
                    format!("vstd::wrapping::{}::{}", segments[1], segments[2]),
                    lowered,
                ));
            }
            // Native `u64::{to_le_bytes,from_le_bytes}` calls use the
            // contracts in `vstd::bytes`. Route those two spec functions to
            // the checked little-endian mirror rather than emitting opaque
            // per-case declarations: SHA-3 needs their byte-level meaning,
            // not merely call/postcondition congruence.
            if matches!(&fun.path.krate, CrateId::Vstd)
                && segments.first() == Some(&"bytes")
                && matches!(
                    segments.last().copied(),
                    Some("spec_u64_to_le_bytes" | "spec_u64_from_le_bytes")
                )
            {
                let lowered = args
                    .iter()
                    .map(|argument| lower_exp(ctx, env, argument))
                    .collect::<Result<Vec<_>, _>>()?;
                return Ok(Expr::VstdApply(
                    format!("vstd::bytes::{}", segments.last().unwrap()),
                    lowered,
                ));
            }
            // The defining module names the collection; the middle segment
            // is the type name for module-level fns but `impl&%N` for
            // inline impl methods, so it carries no information.
            let type_name = match (&fun.path.krate, &segments[..]) {
                (CrateId::Vstd, ["seq", _, _]) => "Seq",
                // `Seq` methods living in `seq_lib` (`to_multiset`,
                // `drop_last`, `drop_first`, `remove`, `contains`, …) route
                // through the vstd-mirror registry like the core `seq`
                // ones: the Lean side resolves them to `Vermilion.Seq.*`
                // model definitions with a proved lemma surface. Emitting
                // them as generic user spec fns instead is both redundant
                // with the mirror AND ill-formed for the ones whose element
                // type survives only in a monomorphized argument position
                // (`remove i`, `contains needle`): the emitted `{A : Type}`
                // binder is then unconstrained. Unregistered `seq_lib` Seq
                // methods fail closed (add them to the registry).
                (CrateId::Vstd, ["seq_lib", _, _]) => "Seq",
                (CrateId::Vstd, ["set", _, _]) => "Set",
                (CrateId::Vstd, ["iset", _, _]) => "ISet",
                (CrateId::Vstd, ["map" | "map_lib", _, _]) => "Map",
                (CrateId::Vstd, ["multiset", _, _]) => "Multiset",
                _ => {
                    // A user spec function: keep the application as an
                    // application and register its definition for emission
                    // (no inlining, no fuel — see plans/execution-plan.md).
                    // A trait spec fn dispatches statically: the call
                    // carries its resolved concrete impl, whose definition
                    // is the one emitted and applied.
                    let static_impl;
                    let target = match resolved {
                        Some((impl_fun, _)) if ctx.declarations.contains_key(impl_fun) => impl_fun,
                        _ => match resolve_trait_method(ctx, fun, typs) {
                            Some(impl_fun) => {
                                static_impl = impl_fun;
                                &static_impl
                            }
                            None => fun,
                        },
                    };
                    if let Some(callee) = ctx.declarations.get(target) {
                        if let Some(spec) = &callee.x.axioms.spec_axioms {
                            let id = register_spec_fn(ctx, target, spec)?;
                            // Const-generic instantiations travel as
                            // leading explicit Int arguments, in the
                            // callee's typ_params order.
                            let const_names: Vec<String> = callee
                                .x
                                .typ_bounds
                                .iter()
                                .filter_map(|bound| match &**bound {
                                    vir::ast::GenericBoundX::ConstTyp(param, _) => {
                                        match undecorate(param) {
                                            TypX::TypParam(name) => Some(name.to_string()),
                                            _ => None,
                                        }
                                    }
                                    _ => None,
                                })
                                .collect();
                            let mut lowered = Vec::new();
                            for (param, typ) in callee.x.typ_params.iter().zip(typs.iter()) {
                                if !const_names.contains(&param.to_string()) {
                                    continue;
                                }
                                match undecorate(&resolve_typ(ctx, typ)) {
                                    TypX::ConstInt(value) => {
                                        lowered.push(Expr::Int(value.to_string()))
                                    }
                                    TypX::TypParam(name) => {
                                        lowered.push(Expr::Var(name.to_string()))
                                    }
                                    other => {
                                        return Err(format!(
                                            "unsupported const-generic argument \
                                             {other:?}"
                                        ))
                                    }
                                }
                            }
                            for argument in args.iter() {
                                lowered.push(lower_exp(ctx, env, argument)?);
                            }
                            return Ok(Expr::Apply(id, Vec::new(), lowered));
                        }
                        // A trait spec fn at an abstract `Self`: apply the
                        // per-(fn, type-args) symbol, a universal binder of
                        // the enclosing function (sound for every
                        // interpretation — Verus's dictionary semantics).
                        if matches!(
                            callee.x.kind,
                            vir::ast::FunctionKind::TraitMethodDecl { .. }
                        ) {
                            let resolved_typs: Vec<Typ> =
                                typs.iter().map(|t| resolve_typ(ctx, t)).collect();
                            let key = (target.clone(), format!("{resolved_typs:?}"));
                            let existing = ctx
                                .registry
                                .trait_fn_symbols
                                .borrow()
                                .iter()
                                .find(|(seen, _)| *seen == key)
                                .map(|(_, (name, _))| name.clone());
                            let name = match existing {
                                Some(name) => name,
                                None => {
                                    let mut param_tys = Vec::new();
                                    for argument in args.iter() {
                                        param_tys.push(binder_type(ctx, &argument.typ)?);
                                    }
                                    let ret = binder_type(ctx, &exp.typ)?;
                                    let count = ctx.registry.trait_fn_symbols.borrow().len();
                                    let leaf: String = segments
                                        .last()
                                        .map(|s| s.to_string())
                                        .unwrap_or_else(|| "trait_fn".to_owned());
                                    let name = format!("{leaf}_at_{count}");
                                    ctx.registry.trait_fn_symbols.borrow_mut().push((
                                        key,
                                        (name.clone(), Ty::Fn(param_tys, Box::new(ret))),
                                    ));
                                    name
                                }
                            };
                            let lowered = args
                                .iter()
                                .map(|argument| lower_exp(ctx, env, argument))
                                .collect::<Result<Vec<_>, _>>()?;
                            return Ok(Expr::CallFn(Box::new(Expr::Var(name)), lowered));
                        }
                        // A bodyless spec-mode function is uninterpreted (an
                        // `uninterp spec fn` or abstract declaration): a fixed
                        // unknown total function, reasoned about purely by
                        // congruence. Emit it once as an opaque Lean symbol
                        // and keep every occurrence an application of it.
                        if matches!(callee.x.mode, vir::ast::Mode::Spec) {
                            let id = register_uninterp_spec_fn(ctx, target)?;
                            // Const-generic instantiations travel as leading
                            // explicit Int arguments; type-parameter
                            // instantiations travel as explicit named type
                            // arguments (issue #19 — Lean cannot infer a
                            // parameter that appears only in the return
                            // type of an opaque symbol).
                            let const_names = const_generic_params(callee);
                            let mut type_args = Vec::new();
                            let mut lowered = Vec::new();
                            for (param, typ) in
                                callee.x.typ_params.iter().zip(typs.iter())
                            {
                                let name = param.to_string();
                                let resolved = resolve_typ(ctx, typ);
                                if const_names.contains(&name) {
                                    match undecorate(&resolved) {
                                        TypX::ConstInt(value) => {
                                            lowered.push(Expr::Int(value.to_string()))
                                        }
                                        TypX::TypParam(other) => {
                                            lowered.push(Expr::Var(other.to_string()))
                                        }
                                        other => {
                                            return Err(format!(
                                                "unsupported const-generic argument \
                                                 {other:?}"
                                            ))
                                        }
                                    }
                                } else {
                                    type_args
                                        .push((name, binder_type(ctx, &resolved)?));
                                }
                            }
                            let value_args = args
                                .iter()
                                .map(|argument| lower_exp(ctx, env, argument))
                                .collect::<Result<Vec<_>, _>>()?;
                            lowered.extend(value_args);
                            return Ok(Expr::Apply(id, type_args, lowered));
                        }
                    }
                    return Err(format!(
                        "unsupported SST spec call to {:?}::{} (declared: {}, \
                         kind: {:?})",
                        fun.path.krate,
                        segments.join("::"),
                        ctx.declarations.contains_key(target),
                        ctx.declarations.get(target).map(|d| &d.x.kind),
                    ));
                }
            };
            let arg = |index: usize| lower_exp(ctx, env, args[index]);
            let type_arg = |index: usize, what: &str| -> Result<Ty, String> {
                let typ = typs
                    .get(index)
                    .ok_or_else(|| format!("vstd {what} without its type argument(s)"))?;
                binder_type(ctx, typ)
            };
            // The STRUCTURAL CORE stays first-class: `len`/`index` are
            // fabricated by the generator itself (type facts, loop
            // machinery), the `empty` constructors carry type arguments the
            // registry rendering cannot ascribe, and `to_iset` is a
            // collapse, not a function. Everything else on these modules
            // falls through to the registry-resolved `(vstdapply …)` arm —
            // vstd fragment growth without Rust changes (V2 Phase B).
            match (type_name, segments[2], args.len()) {
                ("Seq", "len", 1) => Ok(Expr::SeqLen(Box::new(arg(0)?))),
                ("Seq", "index" | "spec_index", 2) => {
                    Ok(Expr::SeqIndex(Box::new(arg(0)?), Box::new(arg(1)?)))
                }
                ("Seq", "empty", 0) => Ok(Expr::SeqEmpty(type_arg(0, "Seq::empty")?)),
                // The finite `Set` is an ISet view: `s.contains(a)` is
                // `#[verifier::inline]` for `s.to_iset().contains(a)`.
                // `to_iset` collapses to its operand (a standalone infinite
                // ISet value would fail closed at its own constructor).
                ("Set", "to_iset", 1) => arg(0),
                ("Set", "empty", 0) => Ok(Expr::SetEmpty(type_arg(0, "Set::empty")?)),
                ("Map", "empty", 0) => Ok(Expr::MapEmpty(
                    type_arg(0, "Map::empty")?,
                    type_arg(1, "Map::empty")?,
                )),
                ("Multiset", "empty", 0) => {
                    Ok(Expr::MultisetEmpty(type_arg(0, "Multiset::empty")?))
                }
                // Anything else on a recognized vstd collection travels as
                // a name-resolved application: the canonical vstd path is
                // serialized verbatim and the GENERATOR resolves it against
                // the shipped mirror registry (Vermilion.Vstd.Registry),
                // failing closed on unregistered paths. Growing this part
                // of the fragment is a Lean-library-only change.
                (_, _, _) => {
                    let lowered = (0..args.len()).map(arg).collect::<Result<Vec<_>, _>>()?;
                    // Canonical path from module + recognized TYPE + method:
                    // the middle raw segment is a rustc impl-block name
                    // (`impl&%0`), useless as a registry key.
                    Ok(Expr::VstdApply(
                        format!("vstd::{}::{type_name}::{}", segments[0], segments[2]),
                        lowered,
                    ))
                }
            }
        }
        // Datatype constructor: fields are re-ordered into declaration
        // order (struct syntax may name them in any order).
        ExpX::Ctor(dt, variant_name, field_binders) => {
            let id = register_datatype(ctx, dt)?;
            let declaration = ctx
                .datatype_decls
                .get(dt)
                .ok_or_else(|| format!("no declaration for datatype {}", id.name))?;
            let variant = declaration
                .x
                .variants
                .iter()
                .find(|candidate| candidate.name == *variant_name)
                .ok_or_else(|| format!("datatype {} has no variant {variant_name}", id.name))?;
            let mut fields = Vec::new();
            for field in variant.fields.iter() {
                let value = field_binders
                    .iter()
                    .find(|binder| binder.name == field.name)
                    .ok_or_else(|| {
                        format!(
                            "constructor {}::{variant_name} misses field {}",
                            id.name, field.name
                        )
                    })?;
                fields.push(lower_exp(ctx, env, &value.a)?);
            }
            let type_args = ctor_type_args(ctx, declaration, variant, &exp.typ)?;
            Ok(Expr::Ctor(id, variant_name.to_string(), type_args, fields))
        }
        ExpX::UnaryOpr(operator, operand) => {
            let operand_lowered = lower_exp(ctx, env, operand)?;
            match operator {
                UnaryOpr::HasType(typ) => {
                    let facts = type_range_facts(ctx, typ, &operand_lowered)?;
                    Ok(facts
                        .into_iter()
                        .reduce(|lhs, rhs| Expr::binary(BinOp::And, lhs, rhs))
                        .unwrap_or(Expr::True))
                }
                UnaryOpr::Field(field_opr) => {
                    let id = register_datatype(ctx, &field_opr.datatype)?;
                    Ok(Expr::FieldOf(
                        id,
                        field_opr.variant.to_string(),
                        field_opr.field.to_string(),
                        Box::new(operand_lowered),
                    ))
                }
                UnaryOpr::IsVariant { datatype, variant } => {
                    let id = register_datatype(ctx, datatype)?;
                    Ok(Expr::IsVariant(
                        id,
                        variant.to_string(),
                        Box::new(operand_lowered),
                    ))
                }
                // Resolution markers are meaningful only as whole assumed
                // statements (the walker snapshots the prophecy there);
                // anywhere else the fragment fails closed.
                UnaryOpr::HasResolved(_) => {
                    Err("unsupported SST resolution marker outside an assume".to_owned())
                }
                // Explicit identities: boxing coercions are no-ops in the
                // natively-typed embedding, and diagnostic/marker wrappers
                // carry no semantics.
                UnaryOpr::Box(_)
                | UnaryOpr::Unbox(_)
                | UnaryOpr::CustomErr(_)
                | UnaryOpr::ProofNote(_) => Ok(operand_lowered),
                // Everything else fails closed — never treat an unknown
                // operator as the identity (e.g. `IntegerTypeBound`
                // computes a value).
                other => Err(format!("unsupported SST unary operator {other:?}")),
            }
        }
        // An array literal is its Seq view: empty extended by pushes.
        ExpX::ArrayLiteral(elements) => {
            let elem_ty = match undecorate(&resolve_typ(ctx, &exp.typ)) {
                TypX::Primitive(vir::ast::Primitive::Array, typs) if typs.len() == 2 => {
                    binder_type(ctx, &typs[0])?
                }
                other => return Err(format!("array literal of unsupported type {other:?}")),
            };
            let mut seq = Expr::SeqEmpty(elem_ty);
            for element in elements.iter() {
                seq = Expr::SeqPush(Box::new(seq), Box::new(lower_exp(ctx, env, element)?));
            }
            Ok(seq)
        }
        other => Err(format!("unsupported SST expression {other:?}")),
    }
}

/// Variable behind an assignment destination, unwrapping `Loc` like vir's
/// own `get_loc_var`.
fn destination_var(exp: &Exp) -> Result<&VarIdent, String> {
    Ok(destination_path(exp)?.0)
}

/// One projection step of an assignment destination.
enum DestProj<'a> {
    /// `.field` — rebuild the record value with this field replaced.
    Field(&'a vir::ast::FieldOpr),
    /// `[index]` — rebuild the Seq view with this position updated
    /// (the same functional update `Vec::set` lowers to).
    Index(&'a Exp),
}

/// The root variable of an assignment destination plus the projections
/// applied to it, outermost first (`a.b[i] = e` yields
/// `(a, [Field b, Index i])`).
fn destination_path(exp: &Exp) -> Result<(&VarIdent, Vec<DestProj<'_>>), String> {
    match &exp.x {
        ExpX::VarLoc(ident) => Ok((ident, Vec::new())),
        ExpX::Loc(inner) => destination_path(inner),
        // `*x = e` through a mutable reference: the assigned variable is
        // the reference; its tracked (current) value changes.
        ExpX::Unary(UnaryOp::MutRefCurrent, inner) => destination_path(inner),
        // A field write updates the record: the root variable's value is
        // rebuilt with this field replaced.
        ExpX::UnaryOpr(UnaryOpr::Field(opr), inner) => {
            let (root, mut path) = destination_path(inner)?;
            path.push(DestProj::Field(opr));
            Ok((root, path))
        }
        // An indexed write `a[i] = e` (a local array or through
        // `&mut [T; N]`): the root's Seq view is rebuilt with position
        // `i` updated. Verus's SST carries the bounds check as its own
        // assertion, so the update itself is total (the Seq model's
        // out-of-range update is the identity, same as `Vec::set`).
        ExpX::Binary(BinaryOp::Index(_, _), base, index) => {
            let (root, mut path) = destination_path(base)?;
            path.push(DestProj::Index(index));
            Ok((root, path))
        }
        other => Err(format!("unsupported SST assignment destination {other:?}")),
    }
}

/// `current` rebuilt with the field at `path` (outermost first) replaced
/// by `rhs` — every other field keeps its projected value.
fn field_update(
    ctx: ExpCtx<'_>,
    env: &Env,
    current: &Expr,
    path: &[DestProj<'_>],
    rhs: Expr,
) -> Result<Expr, String> {
    let Some(step) = path.first() else {
        return Ok(rhs);
    };
    let opr = match step {
        DestProj::Field(opr) => opr,
        DestProj::Index(index) => {
            // `…[i] = e`: functional sequence update at the lowered
            // index; deeper projections update the projected element.
            let index = lower_exp(ctx, env, index)?;
            charge_expr_copies(ctx.registry, current, 2)?;
            charge_expr_copies(ctx.registry, &index, 1)?;
            let projected =
                Expr::SeqIndex(Box::new(current.clone()), Box::new(index.clone()));
            let inner = field_update(ctx, env, &projected, &path[1..], rhs)?;
            return Ok(Expr::SeqUpdate(
                Box::new(current.clone()),
                Box::new(index),
                Box::new(inner),
            ));
        }
    };
    let id = register_datatype(ctx, &opr.datatype)?;
    let Some(declaration) = ctx.datatype_decls.get(&opr.datatype) else {
        return Err(format!("no declaration for datatype {}", id.name));
    };
    let Some(variant) = declaration
        .x
        .variants
        .iter()
        .find(|variant| variant.name == opr.variant)
    else {
        return Err(format!("no variant {} in {}", opr.variant, id.name));
    };
    // The rebuilt record restates the current value once per field.
    charge_expr_copies(ctx.registry, current, variant.fields.len() as u64)?;
    let mut fields = Vec::new();
    for field in variant.fields.iter() {
        let projected = Expr::FieldOf(
            id.clone(),
            opr.variant.to_string(),
            field.name.to_string(),
            Box::new(current.clone()),
        );
        if field.name == opr.field {
            fields.push(field_update(ctx, env, &projected, &path[1..], rhs.clone())?);
        } else {
            fields.push(projected);
        }
    }
    Ok(Expr::Ctor(id, opr.variant.to_string(), Vec::new(), fields))
}

/// Collect the root variables a statement tree may assign, in deterministic
/// first-assignment order. This is the loop havoc set; the exported SST
/// predates vir's own `compute_assign_info`, so the `Loop` nodes'
/// `modified_vars` are still unset and we recompute the information. The
/// root's type is deliberately recovered from `Lowering::var_types` later:
/// an indexed/field destination carries the projected element type, not the
/// type of the root value that the loop must havoc.
fn collect_assigned(stm: &Stm, out: &mut Vec<VarIdent>) {
    let mut record = |exp: &Exp| {
        if let Ok(ident) = destination_var(exp) {
            if !out.iter().any(|seen| seen == ident) {
                out.push(ident.clone());
            }
        }
    };
    match &stm.x {
        StmX::Assign { lhs, .. } => record(&lhs.dest),
        StmX::Call { dest, .. } => {
            if let Some(dest) = dest {
                record(&dest.dest);
            }
        }
        StmX::Block(stms) => {
            for child in stms.iter() {
                collect_assigned(child, out);
            }
        }
        StmX::DeadEnd(inner) | StmX::OpenInvariant(inner) => collect_assigned(inner, out),
        StmX::If(_, then_stm, else_stm) => {
            collect_assigned(then_stm, out);
            if let Some(else_stm) = else_stm {
                collect_assigned(else_stm, out);
            }
        }
        StmX::Loop { cond, body, .. } => {
            if let Some((cond_stm, _)) = cond {
                collect_assigned(cond_stm, out);
            }
            collect_assigned(body, out);
        }
        StmX::AssertQuery { body, .. } | StmX::ClosureInner { body, .. } => {
            collect_assigned(body, out);
        }
        _ => {}
    }
}

/// The (lexicographic) termination check for a loop back edge or a
/// `continue` site — `(0 ≤ cur ∧ cur < entry) ∨ (cur = entry ∧ rest)`,
/// exactly the prelude meaning of Verus's check_decrease on Int. `env` is
/// the state at the check site; `measures_at_entry` were lowered in the
/// havoc state at the start of the iteration.
fn decrease_check(
    ctx: ExpCtx<'_>,
    env: &Env,
    decrease: &[Exp],
    measures_at_entry: &[Expr],
) -> Result<Expr, String> {
    let mut check = Expr::False;
    for (measure, entry) in decrease.iter().zip(measures_at_entry).rev() {
        let cur = lower_exp(ctx, env, measure)?;
        let strict = Expr::binary(
            BinOp::And,
            Expr::binary(BinOp::Le, Expr::Int("0".to_owned()), cur.clone()),
            Expr::binary(BinOp::Lt, cur.clone(), entry.clone()),
        );
        let tie = Expr::binary(
            BinOp::And,
            Expr::binary(BinOp::Eq, cur, entry.clone()),
            check,
        );
        check = Expr::binary(BinOp::Or, strict, tie);
    }
    Ok(check)
}

// ===== Range `for` loops =====================================================
//
// `for i in lo..hi { body }` desugars (builtin_macros/src/syntax.rs) into a
// break-shaped loop driving a ghost
// `vstd::std_specs::iter::VerusForLoopWrapper<Range<_>>` whose specifications
// (prophetic spec fns, `call_ensures` existentials, broadcast groups) sit far
// outside the sequential fragment. vstd pins the wrapper's meaning for
// ranges, which is what makes a sound *specialization* possible:
//
//   peek(lo..hi, k)  =  if 0 ≤ k ≤ hi−lo { Some(lo+k) } else { None }
//   remaining(lo..hi)=  [lo, lo+1, …, hi−1]
//   arbitrary()      =  ONE fixed unknown value per type
//
// The user's invariants are macro-wrapped as
// `{ let i = peek(snapshot, index).unwrap_or(arbitrary()); INV }`, so with
// index = #iterations done:
//
//   entry (index 0):    INV[i := ite(lo ≤ hi, lo, arb)]
//   body runs (Some):   lo ≤ i < hi        (and INV[i])
//   back edge:          INV[i := i+1]; measure hi−i decreases
//   exit (index = len): INV[i := ite(lo ≤ hi, hi, arb)]
//                       (peek's guard is INCLUSIVE — the exit instance sits
//                        at hi, which is what makes for-loop postconditions
//                        work at all)
//
// `arb` is one fresh symbol per loop carrying the loop variable's type
// facts: Verus's `arbitrary()` is a single fixed unknown, and *sharing* the
// symbol between the entry check and the exit assumption is exactly what
// keeps the empty-range case (hi < lo) sound — we assume at exit only what
// was proven at entry.
//
// The recognizer accepts EXACTLY the canonical desugaring and fails closed
// on everything else: non-range iterators, the named-iterator form
// (`for x in y: e`, whose invariants may inspect the wrapper), user
// break/continue (stock Verus rejects them via the auto loop-ensures), user
// loop-ensures, and bodies that assign variables occurring in the bounds.
// Dropped wrapper facts are exactly Verus's auto-generated invariants about
// the ghost iterator; every user-written fact either survives or aborts the
// translation. See docs/trust.md.

/// Recursively inline nested `Block`s: SST blocks are pure sequencing (all
/// locals are function-wide), so recognition over the flattened child list
/// is behavior-preserving.
fn flatten_block<'a>(stms: &'a [Stm], out: &mut Vec<&'a Stm>) {
    for stm in stms {
        match &stm.x {
            StmX::Block(children) => flatten_block(children, out),
            _ => out.push(stm),
        }
    }
}

/// Walk every variable occurrence in an expression (reads, locs, `old`
/// snapshots, binder initializers). Exhaustive over `ExpX` on purpose: a
/// pin bump that grows the enum must fail compilation here, not silently
/// under-approximate the ghost-reference scan.
fn exp_visit_vars(exp: &Exp, visit: &mut dyn FnMut(&VarIdent)) {
    match &exp.x {
        ExpX::Var(ident) | ExpX::VarLoc(ident) | ExpX::VarAt(ident, _) => visit(ident),
        ExpX::Old(_, ident) => visit(ident),
        ExpX::Const(_)
        | ExpX::StaticVar(_)
        | ExpX::NullaryOpr(_)
        | ExpX::ExecFnByName(_)
        | ExpX::FuelConst(_) => {}
        ExpX::Loc(inner)
        | ExpX::Unary(_, inner)
        | ExpX::UnaryOpr(_, inner)
        | ExpX::WithTriggers(_, inner) => exp_visit_vars(inner, visit),
        ExpX::Binary(_, lhs, rhs) | ExpX::BinaryOpr(_, lhs, rhs) => {
            exp_visit_vars(lhs, visit);
            exp_visit_vars(rhs, visit);
        }
        ExpX::If(cond, then_exp, else_exp) => {
            exp_visit_vars(cond, visit);
            exp_visit_vars(then_exp, visit);
            exp_visit_vars(else_exp, visit);
        }
        ExpX::Call(_, _, args) => {
            for arg in args.iter() {
                exp_visit_vars(arg, visit);
            }
        }
        ExpX::CallLambda(callee, args) => {
            exp_visit_vars(callee, visit);
            for arg in args.iter() {
                exp_visit_vars(arg, visit);
            }
        }
        ExpX::Ctor(_, _, fields) => {
            for field in fields.iter() {
                exp_visit_vars(&field.a, visit);
            }
        }
        ExpX::ArrayLiteral(elements) => {
            for element in elements.iter() {
                exp_visit_vars(element, visit);
            }
        }
        ExpX::Bind(bnd, body) => {
            match &bnd.x {
                vir::sst::BndX::Let(binders) => {
                    for binder in binders.iter() {
                        exp_visit_vars(&binder.a, visit);
                    }
                }
                vir::sst::BndX::Quant(..) | vir::sst::BndX::Lambda(..) => {}
                vir::sst::BndX::Choose(_, _, cond) => exp_visit_vars(cond, visit),
            }
            exp_visit_vars(body, visit);
        }
        ExpX::Interp(_) => {}
    }
}

fn exp_references(exp: &Exp, ghosts: &std::collections::HashSet<VarIdent>) -> bool {
    let mut found = false;
    exp_visit_vars(exp, &mut |ident| {
        if ghosts.contains(ident) {
            found = true;
        }
    });
    found
}

fn exp_references_var(exp: &Exp, var: &VarIdent) -> bool {
    let mut found = false;
    exp_visit_vars(exp, &mut |ident| {
        if ident == var {
            found = true;
        }
    });
    found
}

/// Does the expression contain the given extended unary marker anywhere?
fn exp_contains_marker(exp: &Exp, want: fn(&UnaryOpr) -> bool) -> bool {
    let mut found = false;
    fn walk(exp: &Exp, want: fn(&UnaryOpr) -> bool, found: &mut bool) {
        if let ExpX::UnaryOpr(opr, _) = &exp.x {
            if want(opr) {
                *found = true;
            }
        }
        exp_visit_subexps(exp, &mut |inner| walk(inner, want, found));
    }
    walk(exp, want, &mut found);
    found
}

/// Visit the direct sub-expressions of a node (used by the marker scan).
fn exp_visit_subexps(exp: &Exp, visit: &mut dyn FnMut(&Exp)) {
    match &exp.x {
        ExpX::Var(_)
        | ExpX::VarLoc(_)
        | ExpX::VarAt(..)
        | ExpX::Old(..)
        | ExpX::Const(_)
        | ExpX::StaticVar(_)
        | ExpX::NullaryOpr(_)
        | ExpX::ExecFnByName(_)
        | ExpX::FuelConst(_)
        | ExpX::Interp(_) => {}
        ExpX::Loc(inner)
        | ExpX::Unary(_, inner)
        | ExpX::UnaryOpr(_, inner)
        | ExpX::WithTriggers(_, inner) => visit(inner),
        ExpX::Binary(_, lhs, rhs) | ExpX::BinaryOpr(_, lhs, rhs) => {
            visit(lhs);
            visit(rhs);
        }
        ExpX::If(cond, then_exp, else_exp) => {
            visit(cond);
            visit(then_exp);
            visit(else_exp);
        }
        ExpX::Call(_, _, args) => {
            for arg in args.iter() {
                visit(arg);
            }
        }
        ExpX::CallLambda(callee, args) => {
            visit(callee);
            for arg in args.iter() {
                visit(arg);
            }
        }
        ExpX::Ctor(_, _, fields) => {
            for field in fields.iter() {
                visit(&field.a);
            }
        }
        ExpX::ArrayLiteral(elements) => {
            for element in elements.iter() {
                visit(element);
            }
        }
        ExpX::Bind(bnd, body) => {
            match &bnd.x {
                vir::sst::BndX::Let(binders) => {
                    for binder in binders.iter() {
                        visit(&binder.a);
                    }
                }
                vir::sst::BndX::Quant(..) | vir::sst::BndX::Lambda(..) => {}
                vir::sst::BndX::Choose(_, _, cond) => visit(cond),
            }
            visit(body);
        }
    }
}

/// Last path segment of a callee, for shape matching.
fn fun_last_segment(fun: &vir::ast::Fun) -> &str {
    fun.path
        .segments
        .last()
        .map(|segment| segment.as_str())
        .unwrap_or("")
}

/// Is this the vstd iterator-support module (`vstd::std_specs::iter`)?
fn fun_in_vstd_iter(fun: &vir::ast::Fun) -> bool {
    matches!(fun.path.krate, vir::ast::CrateId::Vstd)
        && fun.path.segments.first().map(|s| s.as_str()) == Some("std_specs")
        && fun.path.segments.get(1).map(|s| s.as_str()) == Some("iter")
}

/// One extracted user invariant (or user decreases measure): the macro wraps
/// each as `{ let PAT = peek(…).unwrap_or(arbitrary()); INNER }`.
struct ForRangeUserInv<'a> {
    original_index: usize,
    pat: VarIdent,
    inner: &'a Exp,
    span: vir::messages::Span,
    at_entry: bool,
    at_exit: bool,
}

/// Everything the specialized lowering needs, extracted fail-closed from the
/// canonical desugaring.
struct ForRangePlan<'a> {
    loop_id: u64,
    loop_span: vir::messages::Span,
    item_typ: Typ,
    lo: &'a Exp,
    hi: &'a Exp,
    loop_var: VarIdent,
    user_invs: Vec<ForRangeUserInv<'a>>,
    /// Peek-wrapped user decreases measures; empty means the auto measure
    /// (synthesized as `hi − i`).
    user_decreases: Vec<(VarIdent, &'a Exp)>,
    body: Vec<&'a Stm>,
    /// `assume has_resolved(x)` statements from the exhausted-iterator break
    /// arm: the borrow-expiry points, re-lowered after the loop in the
    /// continuation state.
    exit_resolutions: Vec<&'a Stm>,
}

/// Does the expression apply a function whose last path segment is `name`?
fn exp_contains_fun_suffix(exp: &Exp, name: &str) -> bool {
    let mut found = false;
    fn walk(exp: &Exp, name: &str, found: &mut bool) {
        if let ExpX::Call(call_fun, _, _) = &exp.x {
            let fun = match call_fun {
                vir::sst::CallFun::Fun(fun, _) | vir::sst::CallFun::Recursive(fun) => Some(fun),
                vir::sst::CallFun::InternalFun(_) => None,
            };
            if fun.is_some_and(|fun| fun_last_segment(fun) == name) {
                *found = true;
            }
        }
        exp_visit_subexps(exp, &mut |inner| walk(inner, name, found));
    }
    walk(exp, name, &mut found);
    found
}

/// Match the macro's user-invariant/measure wrapper
/// `{ let PAT = peek(snapshot, index).unwrap_or(arbitrary()); INNER }`:
/// a single-binder spec `let` whose initializer peeks the loop iterator.
fn peek_wrapped<'x>(
    exp: &'x Exp,
    ghosts: &std::collections::HashSet<VarIdent>,
) -> Option<(VarIdent, &'x Exp)> {
    let ExpX::Bind(bnd, body) = &exp.x else {
        return None;
    };
    let vir::sst::BndX::Let(binders) = &bnd.x else {
        return None;
    };
    if binders.len() != 1 {
        return None;
    }
    let binder = &binders[0];
    if !exp_references(&binder.a, ghosts) || !exp_contains_fun_suffix(&binder.a, "peek") {
        return None;
    }
    Some((binder.name.clone(), body))
}

/// The trigger-context spec call the macro inserts after the loop-variable
/// bind (`trigger_peek_implications(peek(…)) == true` by definition).
fn is_trigger_call(exp: &Exp) -> bool {
    match &exp.x {
        ExpX::Call(vir::sst::CallFun::Fun(fun, _), _, _) => {
            fun_last_segment(fun) == "trigger_peek_implications"
        }
        _ => false,
    }
}

/// Does the type reach `VerusForLoopWrapper` anywhere?
fn typ_mentions_wrapper(typ: &Typ) -> bool {
    match undecorate(typ) {
        TypX::MutRef(inner) => typ_mentions_wrapper(inner),
        TypX::Datatype(dt, typ_args, _) => {
            let is_wrapper = matches!(dt, vir::ast::Dt::Path(path)
                if matches!(path.krate, CrateId::Vstd)
                    && path.segments.iter().map(|s| s.as_str()).collect::<Vec<_>>()
                        == ["std_specs", "iter", "VerusForLoopWrapper"]);
            is_wrapper || typ_args.iter().any(typ_mentions_wrapper)
        }
        _ => false,
    }
}

/// Detect wrapper-typed subterms, enrolling any wrapper-typed variables into
/// the ghost set (the `&mut` temporaries of the `next()` dance surface here
/// before any assignment names them).
fn exp_mentions_wrapper(exp: &Exp, ghosts: &mut std::collections::HashSet<VarIdent>) -> bool {
    let mut found = false;
    fn enroll(exp: &Exp, ghosts: &mut std::collections::HashSet<VarIdent>) {
        if let ExpX::Var(ident) | ExpX::VarLoc(ident) | ExpX::VarAt(ident, _) = &exp.x {
            ghosts.insert(ident.clone());
        }
    }
    fn walk(exp: &Exp, ghosts: &mut std::collections::HashSet<VarIdent>, found: &mut bool) {
        if typ_mentions_wrapper(&exp.typ) {
            *found = true;
            enroll(exp, ghosts);
        }
        // `has_type`/`has_resolved` assumes carry the wrapper type in the
        // OPERATOR payload while the value node is typed Bool; enroll the
        // packaged variable through the payload.
        if let ExpX::UnaryOpr(UnaryOpr::HasType(typ) | UnaryOpr::HasResolved(typ), inner) = &exp.x {
            if typ_mentions_wrapper(typ) {
                *found = true;
                enroll(inner, ghosts);
            }
        }
        exp_visit_subexps(exp, &mut |inner| walk(inner, ghosts, found));
    }
    walk(exp, ghosts, &mut found);
    found
}

/// Does the lowered expression stay within `budget` nodes? The cheap
/// detector for pathological expression duplication: sequential ghost
/// assignments whose values embed prior values grow multiplicatively under
/// our substitution-based lowering, and a single oversized env value then
/// gets deep-cloned per scope until memory dies (measured: dalek-lite DL8,
/// `FieldElement51::from_bytes`). Fail closed instead.
fn expr_within_budget(expr: &Expr, budget: i64) -> bool {
    expr_size_capped(expr, budget) < budget
}

/// Node count of `expr`, capped at `cap`: the walk stops as soon as the cap
/// is reached, so the traversal cost is bounded by the cap, never by the
/// tree. Iterative (substitution-produced trees can be deep).
fn expr_size_capped(expr: &Expr, cap: i64) -> i64 {
    let mut count: i64 = 0;
    let mut stack: Vec<&Expr> = vec![expr];
    while let Some(e) = stack.pop() {
        count += 1;
        if count >= cap {
            return cap;
        }
        match e {
            Expr::Var(_)
            | Expr::Int(_)
            | Expr::StrLit(_)
            | Expr::True
            | Expr::False
            | Expr::SeqEmpty(_)
            | Expr::SetEmpty(_)
            | Expr::MapEmpty(_, _)
            | Expr::MultisetEmpty(_) => {}
            Expr::Not(a)
            | Expr::URange(_, a)
            | Expr::SRange(_, a)
            | Expr::NatClip(a)
            | Expr::SignedClip(_, a)
            | Expr::SeqLen(a)
            | Expr::SeqToMultiset(a)
            | Expr::FieldOf(_, _, _, a)
            | Expr::IsVariant(_, _, a) => stack.push(a),
            Expr::Binary(_, a, b)
            | Expr::SeqPush(a, b)
            | Expr::SeqIndex(a, b)
            | Expr::SeqAdd(a, b)
            | Expr::SeqNew(a, b)
            | Expr::BitOp(_, _, _, a, b) => {
                stack.push(a);
                stack.push(b);
            }
            Expr::Ite(a, b, c) | Expr::SeqUpdate(a, b, c) | Expr::SeqSubrange(a, b, c) => {
                stack.push(a);
                stack.push(b);
                stack.push(c);
            }
            Expr::VstdApply(_, args)
            | Expr::Coll(_, args)
            | Expr::Apply(_, _, args)
            | Expr::Ctor(_, _, _, args) => stack.extend(args.iter()),
            Expr::Quant(_, _, _, body) => stack.push(body),
            Expr::Lambda(_, body) => stack.push(body),
            Expr::Choose(_, _, body) => stack.push(body),
            Expr::CallFn(callee, args) => {
                stack.push(callee);
                stack.extend(args.iter());
            }
        }
    }
    count
}

/// The per-value cap `expr_within_budget` enforces at substitution sites.
const EXPR_SUBSTITUTION_BUDGET: i64 = 200_000;

/// Any `break`/`continue` anywhere below `stm`, nested loops included —
/// deliberately conservative for the non-isolated recognizer (a labeled
/// break inside a nested loop could target the outer one; fail closed
/// rather than reason about label binding).
fn stm_has_break(stm: &Stm) -> bool {
    match &stm.x {
        StmX::BreakOrContinue { .. } => true,
        StmX::Block(children) => children.iter().any(stm_has_break),
        StmX::If(_, then_stm, else_stm) => {
            stm_has_break(then_stm)
                || else_stm.as_ref().map(stm_has_break).unwrap_or(false)
        }
        StmX::Loop { body, .. } => stm_has_break(body),
        StmX::DeadEnd(inner) | StmX::OpenInvariant(inner) => stm_has_break(inner),
        StmX::ClosureInner { body, .. } => stm_has_break(body),
        StmX::AssertQuery { body, .. } => stm_has_break(body),
        _ => false,
    }
}

/// Every expression embedded in a statement tree, for the ghost-reference
/// scan over trimmed `for` bodies. Exhaustive over `StmX` on purpose — a
/// pin bump that grows the enum must fail compilation here rather than
/// silently skip references.
fn stm_visit_exps(stm: &Stm, visit: &mut dyn FnMut(&Exp)) {
    match &stm.x {
        StmX::Call {
            args, dest, split, ..
        } => {
            for arg in args.iter() {
                visit(arg);
            }
            if let Some(dest) = dest {
                visit(&dest.dest);
            }
            let _ = split;
        }
        StmX::Assert(_, _, exp) | StmX::AssertCompute(_, exp, _) | StmX::Assume(exp) => visit(exp),
        StmX::AssertBitVector { requires, ensures } => {
            for exp in requires.iter().chain(ensures.iter()) {
                visit(exp);
            }
        }
        StmX::AssertQuery {
            typ_inv_exps, body, ..
        } => {
            for exp in typ_inv_exps.iter() {
                visit(exp);
            }
            stm_visit_exps(body, visit);
        }
        StmX::Assign { lhs, rhs } => {
            visit(&lhs.dest);
            visit(rhs);
        }
        StmX::Fuel(..) | StmX::RevealString(_) | StmX::Air(_) => {}
        StmX::DeadEnd(inner) | StmX::OpenInvariant(inner) => stm_visit_exps(inner, visit),
        StmX::Return { ret_exp, .. } => {
            if let Some(exp) = ret_exp {
                visit(exp);
            }
        }
        StmX::BreakOrContinue { .. } => {}
        StmX::If(cond, then_stm, else_stm) => {
            visit(cond);
            stm_visit_exps(then_stm, visit);
            if let Some(else_stm) = else_stm {
                stm_visit_exps(else_stm, visit);
            }
        }
        StmX::Loop {
            cond,
            body,
            invs,
            decrease,
            ..
        } => {
            if let Some((cond_stm, cond_exp)) = cond {
                stm_visit_exps(cond_stm, visit);
                visit(cond_exp);
            }
            stm_visit_exps(body, visit);
            for inv in invs.iter() {
                visit(&inv.inv);
            }
            for measure in decrease.iter() {
                visit(measure);
            }
        }
        StmX::ClosureInner { body, typ_inv_vars } => {
            stm_visit_exps(body, visit);
            let _ = typ_inv_vars;
        }
        StmX::Block(children) => {
            for child in children.iter() {
                stm_visit_exps(child, visit);
            }
        }
    }
}

fn stm_references(stm: &Stm, ghosts: &std::collections::HashSet<VarIdent>) -> bool {
    let mut found = false;
    stm_visit_exps(stm, &mut |exp| {
        if exp_references(exp, ghosts) {
            found = true;
        }
    });
    found
}

/// A `break`/`continue` anywhere in the statement tree that would target the
/// enclosing `for` loop (nested real loops consume their own).
fn stm_contains_break(stm: &Stm) -> bool {
    fn walk(stm: &Stm, loop_depth: usize, found: &mut bool) {
        match &stm.x {
            StmX::BreakOrContinue { label, .. } => {
                // Unlabeled: targets the innermost loop — ours only when not
                // nested. Labeled: could target the for loop; reject.
                if loop_depth == 0 || label.is_some() {
                    *found = true;
                }
            }
            StmX::Loop { body, cond, .. } => {
                if let Some((cond_stm, _)) = cond {
                    walk(cond_stm, loop_depth + 1, found);
                }
                walk(body, loop_depth + 1, found);
            }
            StmX::Block(children) => {
                for child in children.iter() {
                    walk(child, loop_depth, found);
                }
            }
            StmX::DeadEnd(inner) | StmX::OpenInvariant(inner) => walk(inner, loop_depth, found),
            StmX::If(_, then_stm, else_stm) => {
                walk(then_stm, loop_depth, found);
                if let Some(else_stm) = else_stm {
                    walk(else_stm, loop_depth, found);
                }
            }
            StmX::AssertQuery { body, .. } | StmX::ClosureInner { body, .. } => {
                walk(body, loop_depth, found);
            }
            _ => {}
        }
    }
    let mut found = false;
    walk(stm, 0, &mut found);
    found
}

/// When a `while` loop holds a live `&mut` borrow, Verus's condition setup is
/// not a bare temp assignment but a branch on the real condition that resolves
/// the borrow on the exit path:
///
/// ```text
///   tmp := if <cond> then { tmp := true }
///          else { assume has_resolved(x); …; tmp := false }
///   ;  cond_exp = tmp
/// ```
///
/// Split it into the real condition `<cond>` and the exit-path resolution
/// assumes (replayed in the loop continuation, so `final(x)` sees the
/// post-loop value). Returns `None` for any other setup shape — the caller
/// then falls back to the "setup must emit nothing" path, so anything
/// unrecognized still fails closed.
fn split_cond_setup<'x>(
    cond_stm: &'x Stm,
    cond_exp: &'x Exp,
) -> Option<(Vec<&'x Stm>, &'x Exp, Vec<&'x Stm>)> {
    let ExpX::Var(tmp) = &cond_exp.x else {
        return None;
    };
    let mut flat = Vec::new();
    flatten_block(std::slice::from_ref(cond_stm), &mut flat);
    let branch = flat.pop()?;
    let StmX::If(guard, then_stm, Some(else_stm)) = &branch.x else {
        return None;
    };
    // The guard must not itself mention the result temp.
    if exp_references_var(guard, tmp) {
        return None;
    }
    // `then`: only assigns the temp a boolean constant.
    let assigns_temp_const = |stm: &Stm, expected: bool| -> bool {
        matches!(&stm.x, StmX::Assign { lhs, rhs }
            if destination_var(&lhs.dest).ok() == Some(tmp)
                && matches!(&rhs.x, ExpX::Const(Constant::Bool(value)) if *value == expected))
    };
    let mut then_flat = Vec::new();
    flatten_block(std::slice::from_ref(then_stm), &mut then_flat);
    if then_flat.len() != 1 || !assigns_temp_const(then_flat[0], true) {
        return None;
    }
    // `else`: `assume has_resolved(_)` statements (collected) plus the temp
    // assignment; nothing else.
    let mut else_flat = Vec::new();
    flatten_block(std::slice::from_ref(else_stm), &mut else_flat);
    let mut resolutions = Vec::new();
    let mut assigns_false = 0;
    for stm in else_flat {
        if assigns_temp_const(stm, false) {
            assigns_false += 1;
            continue;
        }
        if matches!(&stm.x, StmX::Assume(exp)
            if matches!(&exp.x, ExpX::UnaryOpr(UnaryOpr::HasResolved(_), _)))
        {
            resolutions.push(stm);
            continue;
        }
        return None;
    }
    if assigns_false != 1 || resolutions.is_empty() {
        return None;
    }
    Some((flat, guard, resolutions))
}

fn assert_id_string(assert_id: &Option<vir::sst::AssertId>, default: &str) -> String {
    assert_id
        .as_ref()
        .and_then(|id| id.first())
        .map(|part| part.to_string())
        .unwrap_or_else(|| default.to_owned())
}

fn fun_display_name(fun: &vir::ast::Fun) -> String {
    fun.path
        .segments
        .last()
        .map(|segment| segment.to_string())
        .unwrap_or_else(|| "anonymous".to_owned())
}

struct Lowering<'a> {
    env: Env,
    ctx: ExpCtx<'a>,
    statements: Vec<Statement>,
    post_dest: Option<VarIdent>,
    post_exps: Vec<Exp>,
    last_assertion: Option<Expr>,
    used_binder_names: Vec<String>,
    /// Verus types of variables seen so far, for branch-join and loop-havoc
    /// binders. Joining a variable with no recorded (or unrepresentable)
    /// type fails closed.
    var_types: HashMap<VarIdent, Typ>,
    /// Range facts of every binder introduced so far — the analog of
    /// Verus's `typ_invs`, which isolated loop bodies assume even though
    /// they drop the rest of the enclosing context.
    type_facts: Vec<Expr>,
    /// Ordinal for asserts that carry no Verus `AssertId`.
    anonymous_ordinal: usize,
    /// Enclosing loops, innermost last, for `break`/`continue` targets.
    loop_frames: Vec<LoopFrame>,
}

/// What a `break`/`continue` site needs to know about an enclosing loop:
/// which invariants to re-check and the termination measure captured at the
/// start of the iteration.
struct LoopFrame {
    loop_id: u64,
    label: Option<String>,
    is_for_loop: bool,
    invs: vir::sst::LoopInvs,
    /// The raw measure expressions, re-lowered in the site's environment.
    decrease: Vec<Exp>,
    /// The measures' values at the start of the iteration (havoc state).
    measures_at_entry: Vec<Expr>,
    /// Per-frame site ordinals keeping break/continue assert ids unique.
    break_sites: usize,
    continue_sites: usize,
}

impl Lowering<'_> {
    /// Pick a fresh Lean binder name for a call result, keeping the Rust
    /// variable name when it is free.
    fn fresh_binder_name(&mut self, base: &str) -> String {
        let base: String = base
            .chars()
            .map(|c| {
                if c.is_ascii_alphanumeric() || c == '_' {
                    c
                } else {
                    '_'
                }
            })
            .collect();
        let mut candidate = base.clone();
        let mut suffix = 1;
        while self.used_binder_names.iter().any(|used| used == &candidate) {
            suffix += 1;
            candidate = format!("{base}_{suffix}");
        }
        self.used_binder_names.push(candidate.clone());
        candidate
    }

    /// The fresh post-state symbol standing for the resolved prophecy of the
    /// borrow rooted at `ident`, allocated on first demand. Verus emits the
    /// caller-side writeback (`y = mut_ref_future(tmp)`) BEFORE the call
    /// that constrains the future, so whichever site mentions the future
    /// first creates the symbol and the later call contract substitution
    /// finds the same one. The callee guarantees the final value is
    /// well-typed, so its range facts are sound assumptions.
    fn future_of(&mut self, ident: &VarIdent, referent: &Typ) -> Result<Expr, String> {
        let root = resolve_mut_root(&self.ctx.registry, ident);
        if let Some(existing) = self.ctx.registry.mut_futures.borrow().get(&root) {
            return Ok(existing.clone());
        }
        let name = self.fresh_binder_name(&format!("{}_post", root.0));
        let binder = Binder::new(name.clone(), binder_type(self.ctx, referent)?);
        self.statements.push(Statement::Fresh(binder));
        let future = Expr::Var(name);
        for fact in type_range_facts(self.ctx, referent, &future)? {
            self.type_facts.push(fact.clone());
            self.statements.push(Statement::Assume(fact));
        }
        self.ctx
            .registry
            .call_futures
            .borrow_mut()
            .insert(root.clone());
        self.ctx
            .registry
            .mut_futures
            .borrow_mut()
            .insert(root, future.clone());
        Ok(future)
    }

    /// Allocate the future symbol for every `mut_ref_future(..)` the
    /// expression mentions, before the expression is lowered. A shape this
    /// scan misses is safe: `lower_exp` fails closed on an unallocated
    /// future.
    fn ensure_futures(&mut self, exp: &Exp) -> Result<(), String> {
        match &exp.x {
            ExpX::Unary(UnaryOp::MutRefFuture(_), operand) => {
                let root = match &operand.x {
                    ExpX::Var(ident) | ExpX::VarLoc(ident) => Some(ident.clone()),
                    ExpX::VarAt(ident, vir::ast::VarAt::Pre) => Some(ident.clone()),
                    _ => None,
                };
                if let Some(ident) = root {
                    if let TypX::MutRef(inner) = undecorate(&operand.typ) {
                        self.future_of(&ident, inner)?;
                    }
                }
                Ok(())
            }
            // An SST temporary read before any definition is an
            // implicitly havocked fresh symbol (Verus declares all locals
            // as constants; the exec-closure value arrives this way):
            // introduce a sanitized fresh binder with its type facts.
            // Quantifier-bound and parameter idents are not VirTemp, so
            // this never captures them.
            ExpX::Var(ident) | ExpX::VarLoc(ident)
                if matches!(ident.1, vir::ast::VarIdentDisambiguate::VirTemp(_))
                    && !self.env.contains_key(ident) =>
            {
                let name = self.fresh_binder_name(&ident.0.to_string());
                let binder = Binder::new(name.clone(), binder_type(self.ctx, &exp.typ)?);
                self.statements.push(Statement::Fresh(binder));
                let subject = Expr::Var(name);
                for fact in type_range_facts(self.ctx, &exp.typ, &subject)? {
                    self.type_facts.push(fact.clone());
                    self.statements.push(Statement::Assume(fact));
                }
                self.env.insert(ident.clone(), subject);
                self.var_types.insert(ident.clone(), exp.typ.clone());
                Ok(())
            }
            ExpX::Call(
                vir::sst::CallFun::InternalFun(
                    internal @ (vir::sst::InternalFun::ClosureReq
                    | vir::sst::InternalFun::ClosureEns),
                ),
                typs,
                args,
            ) => {
                for arg in args.iter() {
                    self.ensure_futures(arg)?;
                }
                let Some(path) = closure_type_path(self.ctx, typs) else {
                    return Ok(()); // lower_exp fails closed on this shape
                };
                let is_ens = matches!(internal, vir::sst::InternalFun::ClosureEns);
                if self
                    .ctx
                    .registry
                    .closure_preds
                    .borrow()
                    .contains_key(&(path.clone(), is_ens))
                {
                    return Ok(());
                }
                // The predicate's Lean type comes from this application's
                // actual argument types (closure value, argument tuple, and
                // for `ens` the result).
                let mut params = Vec::new();
                for arg in args.iter() {
                    params.push(binder_type(self.ctx, &arg.typ)?);
                }
                let leaf: String = path
                    .segments
                    .last()
                    .map(|segment| segment.to_string())
                    .unwrap_or_else(|| "closure".to_owned());
                let suffix = if is_ens { "ens" } else { "req" };
                let name = self.fresh_binder_name(&format!("{leaf}_{suffix}"));
                self.statements.push(Statement::Fresh(Binder::new(
                    name.clone(),
                    Ty::Fn(params, Box::new(Ty::Prop)),
                )));
                self.ctx
                    .registry
                    .closure_preds
                    .borrow_mut()
                    .insert((path, is_ens), name);
                Ok(())
            }
            ExpX::Unary(_, operand)
            | ExpX::UnaryOpr(_, operand)
            | ExpX::Loc(operand)
            | ExpX::Bind(_, operand) => self.ensure_futures(operand),
            ExpX::Binary(_, lhs, rhs) | ExpX::BinaryOpr(_, lhs, rhs) => {
                self.ensure_futures(lhs)?;
                self.ensure_futures(rhs)
            }
            ExpX::If(cond, then_value, else_value) => {
                self.ensure_futures(cond)?;
                self.ensure_futures(then_value)?;
                self.ensure_futures(else_value)
            }
            ExpX::Call(_, _, args) | ExpX::CallLambda(_, args) => {
                for arg in args.iter() {
                    self.ensure_futures(arg)?;
                }
                Ok(())
            }
            ExpX::Ctor(_, _, binders) => {
                for binder in binders.iter() {
                    self.ensure_futures(&binder.a)?;
                }
                Ok(())
            }
            _ => Ok(()),
        }
    }

    /// Symbolically evaluate a while-condition setup into pure env
    /// bindings: temporary `Assign`s substitute,
    /// requires-free calls whose entire contract is `result == e`
    /// (functional views like `Vec::len`) substitute their meaning, and
    /// short-circuit `if`s (both arms binding the same temporaries) merge
    /// into `ite` values. Checked-arithmetic/user assertions are collected as
    /// guarded head checks; the loop lowering proves them from the invariants
    /// before branching on the condition. Anything else fails closed — the
    /// loop condition must remain a single expression of the pre-iteration
    /// state.
    fn eval_pure_setup(
        &mut self,
        stm: &Stm,
        guard: &Expr,
        assertions: &mut Vec<Clause>,
        last_assertion: &mut Option<Expr>,
    ) -> Result<(), String> {
        match &stm.x {
            StmX::Block(stms) => {
                for inner in stms.iter() {
                    self.eval_pure_setup(inner, guard, assertions, last_assertion)?;
                }
                Ok(())
            }
            StmX::Assign { lhs, rhs } => {
                if matches!(undecorate(&lhs.dest.typ), TypX::MutRef(_)) {
                    return Err("a mutable-reference bind in the setup".to_owned());
                }
                let destination = destination_var(&lhs.dest)?.clone();
                let value = lower_exp(self.ctx, &self.env, rhs)?;
                if !expr_within_budget(&value, EXPR_SUBSTITUTION_BUDGET) {
                    return Err(format!(
                        "setup bind of `{}` exceeded the expression \
                         substitution budget",
                        destination.0
                    ));
                }
                self.var_types
                    .insert(destination.clone(), lhs.dest.typ.clone());
                self.env.insert(destination, value);
                *last_assertion = None;
                Ok(())
            }
            StmX::Assert(assert_id, message, exp) => {
                let id = match assert_id {
                    Some(_) => assert_id_string(assert_id, "condition_setup"),
                    None => {
                        let ordinal = self.anonymous_ordinal;
                        self.anonymous_ordinal += 1;
                        format!("condition_setup_{ordinal}")
                    }
                };
                let expression = lower_exp(self.ctx, &self.env, exp)?;
                *last_assertion = Some(expression.clone());
                let proposition = if *guard == Expr::True {
                    expression
                } else {
                    Expr::binary(BinOp::Implies, guard.clone(), expression)
                };
                let description = message
                    .as_ref()
                    .map(|message| message.note.clone())
                    .unwrap_or_else(|| "assertion while evaluating the loop condition".to_owned());
                assertions
                    .push(Clause::new(id, span(&stm.span), proposition).described(description));
                Ok(())
            }
            StmX::Assume(exp) => {
                let expression = lower_exp(self.ctx, &self.env, exp)?;
                if last_assertion.as_ref() == Some(&expression) {
                    *last_assertion = None;
                    Ok(())
                } else {
                    Err(format!(
                        "an assumption not established by the immediately preceding setup \
                         assertion: {:?}",
                        exp.x
                    ))
                }
            }
            StmX::Call {
                fun: CallTarget::Fun(fun),
                resolved_method,
                typ_args,
                args,
                dest: Some(dest),
                ..
            } => {
                let (target, typ_args) = match resolved_method {
                    Some((impl_fun, impl_typs)) if self.ctx.declarations.contains_key(impl_fun) => {
                        (impl_fun, &impl_typs[..])
                    }
                    _ => (fun, &typ_args[..]),
                };
                let value = self.functional_call_value(target, typ_args, args)?;
                let destination = destination_var(&dest.dest)?.clone();
                self.var_types
                    .insert(destination.clone(), dest.dest.typ.clone());
                self.env.insert(destination, value);
                *last_assertion = None;
                Ok(())
            }
            StmX::If(cond, then_stm, else_stm) => {
                let condition = lower_exp(self.ctx, &self.env, cond)?;
                let then_guard = Expr::binary(BinOp::And, guard.clone(), condition.clone());
                let else_guard = Expr::binary(
                    BinOp::And,
                    guard.clone(),
                    Expr::Not(Box::new(condition.clone())),
                );
                charge_env_copy(self.ctx.registry, &self.env)?;
                let saved = self.env.clone();
                let mut then_last_assertion = None;
                self.eval_pure_setup(then_stm, &then_guard, assertions, &mut then_last_assertion)?;
                let then_env = std::mem::replace(&mut self.env, saved.clone());
                if let Some(else_stm) = else_stm {
                    let mut else_last_assertion = None;
                    self.eval_pure_setup(
                        else_stm,
                        &else_guard,
                        assertions,
                        &mut else_last_assertion,
                    )?;
                }
                let else_env = std::mem::replace(&mut self.env, saved.clone());
                // Merge: every binding either arm changed becomes an `ite`
                // over the branch condition (a temporary bound in only one
                // arm must already exist outside — otherwise it would be
                // conditionally initialized, which the setup shape never
                // produces).
                let mut changed: Vec<VarIdent> = Vec::new();
                for (ident, value) in then_env.iter() {
                    if saved.get(ident) != Some(value) {
                        changed.push(ident.clone());
                    }
                }
                for (ident, value) in else_env.iter() {
                    if saved.get(ident) != Some(value) && !changed.contains(ident) {
                        changed.push(ident.clone());
                    }
                }
                for ident in changed {
                    let fallback = saved.get(&ident).cloned();
                    let then_value = then_env.get(&ident).cloned().or_else(|| fallback.clone());
                    let else_value = else_env.get(&ident).cloned().or(fallback);
                    match (then_value, else_value) {
                        (Some(then_value), Some(else_value)) => {
                            self.env.insert(
                                ident,
                                Expr::Ite(
                                    Box::new(condition.clone()),
                                    Box::new(then_value),
                                    Box::new(else_value),
                                ),
                            );
                        }
                        // Bound in one arm only and absent outside: an
                        // arm-local temporary, already substituted into the
                        // values that used it — dead after the merge.
                        _ => {}
                    }
                }
                *last_assertion = None;
                Ok(())
            }
            other => Err(format!("a non-pure setup statement {other:?}")),
        }
    }

    /// The substituted value of a requires-free call whose usable ensures
    /// determines the result model as `result == e` or
    /// `transparent(result) == e`. The latter admits model-transparent
    /// projections such as the array/slice view in `out@ == self@`, while
    /// still rejecting a genuine computation over, or dependency on, the
    /// result. Such a functional view is safe to fold into an expression.
    fn functional_call_value(
        &mut self,
        fun: &vir::ast::Fun,
        typ_args: &[Typ],
        args: &[Exp],
    ) -> Result<Expr, String> {
        let callee = self
            .ctx
            .declarations
            .get(fun)
            .ok_or_else(|| format!("a call to undeclared `{}`", fun_display_name(fun)))?;
        let callee_name = fun_display_name(fun);
        let declaration = &callee.x.decl;
        if !declaration.reqs.is_empty() {
            return Err(format!("a call to `{callee_name}`, which has requires"));
        }
        let fun_segments: Vec<&str> = fun
            .path
            .segments
            .iter()
            .map(|segment| segment.as_str())
            .collect();
        let is_array_as_slice_model = (matches!(fun.path.krate, CrateId::Vstd)
            && fun_segments == ["array", "spec_array_as_slice"])
            || fun_last_segment(fun) == "array_as_slice";
        // Trait impl declarations use the implementing crate's path rather
        // than the core trait path in SST, so identify the immutable Deref
        // method by its reserved terminal method name.
        let is_deref_model = fun_last_segment(fun) == "deref";
        if declaration.enss.0.is_empty()
            || (declaration.enss.0.len() != 1 && !is_array_as_slice_model)
            || !declaration.enss.1.is_empty()
        {
            return Err(format!(
                "a call to `{callee_name}`, whose contract has no usable ordinary ensures"
            ));
        }
        // A `&mut` parameter means the call mutates state the substituted
        // expression cannot express — never a pure functional view.
        for parameter in declaration.req_inv_pars.iter() {
            if matches!(
                undecorate(&resolve_typ(self.ctx, &parameter.x.typ)),
                TypX::MutRef(_)
            ) {
                return Err(format!(
                    "a call to `{callee_name}`, which takes `&mut` arguments"
                ));
            }
        }
        let typ_substs: HashMap<vir::ast::Ident, Typ> = callee
            .x
            .typ_params
            .iter()
            .cloned()
            .zip(typ_args.iter().cloned())
            .collect();
        let callee_ctx = ExpCtx {
            typ_substs: Some(&typ_substs),
            ..self.ctx
        };
        let mut callee_env = Env::new();
        for (parameter, argument) in declaration.req_inv_pars.iter().zip(args.iter()) {
            callee_env.insert(
                parameter.x.name.clone(),
                lower_exp(self.ctx, &self.env, argument)?,
            );
        }
        let ret = declaration
            .ens_pars
            .iter()
            .skip(args.len())
            .next()
            .ok_or_else(|| format!("a call to `{callee_name}` without a result binder"))?;
        let is_ret = |exp: &Exp| {
            matches!(&exp.x, ExpX::Var(ident) | ExpX::VarLoc(ident)
                if *ident == ret.x.name)
        };
        if declaration.enss.0.len() == 1 {
            match &declaration.enss.0[0].x {
                ExpX::Binary(vir::ast::BinaryOp::Eq(_), lhs, rhs) if is_ret(lhs) => {
                    return lower_exp(callee_ctx, &callee_env, rhs);
                }
                ExpX::Binary(vir::ast::BinaryOp::Eq(_), lhs, rhs) if is_ret(rhs) => {
                    return lower_exp(callee_ctx, &callee_env, lhs);
                }
                _ => {}
            }
        }
        if !is_deref_model && !is_array_as_slice_model {
            return Err(format!(
                "a call to `{callee_name}`, whose ensures is not `result == …`"
            ));
        }
        // Lower the result side through a private marker. Only operations
        // which `lower_exp` proves model-transparent (notably array/slice
        // `View::view`) disappear and leave the marker itself. This is more
        // precise than matching the raw VIR syntax: `out@` is a call in SST,
        // even though arrays and slices are already their Seq model here.
        let result_marker = Expr::Var(self.fresh_binder_name("functional_result"));
        callee_env.insert(ret.x.name.clone(), result_marker.clone());
        // The array-to-slice coercion is the sole multi-ensures exception: it
        // exposes both its uninterpreted spec result and `ar@ == out@`. Any
        // one guaranteed equality which determines that transparent result
        // model is sufficient for sound substitution. Other contracts retain
        // the previous single-ensures restriction so that folding cannot
        // silently discard semantically relevant postconditions.
        for ensures in declaration.enss.0.iter() {
            let ExpX::Binary(vir::ast::BinaryOp::Eq(_), lhs, rhs) = &ensures.x else {
                continue;
            };
            if exp_references_var(lhs, &ret.x.name) && !exp_references_var(rhs, &ret.x.name) {
                if let (Ok(result_side), Ok(value)) = (
                    lower_exp(callee_ctx, &callee_env, lhs),
                    lower_exp(callee_ctx, &callee_env, rhs),
                ) {
                    if result_side == result_marker {
                        return Ok(value);
                    }
                }
            }
            if exp_references_var(rhs, &ret.x.name) && !exp_references_var(lhs, &ret.x.name) {
                if let (Ok(result_side), Ok(value)) = (
                    lower_exp(callee_ctx, &callee_env, rhs),
                    lower_exp(callee_ctx, &callee_env, lhs),
                ) {
                    if result_side == result_marker {
                        return Ok(value);
                    }
                }
            }
        }
        Err(format!(
            "a call to `{callee_name}`, whose ensures do not determine a transparent result model"
        ))
    }

    fn call(
        &mut self,
        stm: &Stm,
        fun: &vir::ast::Fun,
        typ_args: &[Typ],
        args: &[Exp],
        dest: &Option<vir::sst::Dest>,
        assert_id: &Option<vir::sst::AssertId>,
    ) -> Result<(), String> {
        // `<Vec<T> as Clone>::clone` for machine-integer/bool elements:
        // vstd's external spec relates elements through `cloned::<T>`, a
        // predicate defined via the higher-order `call_ensures` FnDef
        // encoding (an SMT-facing artifact this lowering does not model),
        // plus a trigger-only predicate and an extensionality bridge. For
        // element types whose own vstd clone spec `returns` the value
        // (machine ints, bool), `cloned` collapses to equality, so the
        // contract's entire semantic content is `result@ == vec@` — which
        // is what we synthesize here. Other element types keep failing
        // closed (at the `cloned` predicate their contract reaches).
        let clone_of_primitive_vec = fun.path.krate == CrateId::Alloc
            && fun.path.segments.first().map(|s| s.as_str()) == Some("vec")
            && fun_last_segment(fun) == "clone"
            && args.len() == 1
            && typ_args.first().is_some_and(|t| {
                let resolved = resolve_typ(self.ctx, t);
                matches!(undecorate(&resolved), TypX::Int(_) | TypX::Bool)
            });
        if clone_of_primitive_vec {
            let source = lower_exp(self.ctx, &self.env, &args[0])?;
            let mut ensures = Vec::new();
            let mut result = None;
            if let Some(dest) = dest {
                let dest_ident = destination_var(&dest.dest)?;
                let name = self.fresh_binder_name(&dest_ident.0.to_string());
                let binder = Binder::new(name.clone(), binder_type(self.ctx, &dest.dest.typ)?);
                self.var_types
                    .insert(dest_ident.clone(), dest.dest.typ.clone());
                self.env.insert(dest_ident.clone(), Expr::Var(name.clone()));
                for fact in type_range_facts(self.ctx, &dest.dest.typ, &Expr::Var(name.clone()))? {
                    self.type_facts.push(fact.clone());
                    ensures.push(fact);
                }
                ensures.push(Expr::Binary(
                    BinOp::Eq,
                    Box::new(Expr::Var(name.clone())),
                    Box::new(source),
                ));
                result = Some(binder);
            }
            self.statements.push(Statement::Call(CallContract {
                callee: "Vec::clone".to_owned(),
                requires: Vec::new(),
                result,
                ensures,
            }));
            self.last_assertion = None;
            return Ok(());
        }

        let callee =
            self.ctx.declarations.get(fun).ok_or_else(|| {
                format!("no SST declaration for callee {}", fun_display_name(fun))
            })?;
        let callee_name = fun_display_name(fun);

        // The contract source. A trait method impl whose declaration
        // carries no contract inherits the TRAIT method's declaration
        // (Verus checks the trait conditions at every call site; impls
        // cannot add requires). An impl that redeclares its contract
        // materializes the inherited clauses into its own declaration, so
        // the target's declaration is complete in that case.
        let mut contract = callee;
        let mut contract_typ_args: Vec<Typ> = typ_args.to_vec();
        if let vir::ast::FunctionKind::TraitMethodImpl {
            method,
            trait_typ_args,
            ..
        } = &callee.x.kind
        {
            let own = &callee.x.decl;
            if own.reqs.is_empty() && own.enss.0.is_empty() && own.enss.1.is_empty() {
                if let Some(trait_fn) = self.ctx.declarations.get(method) {
                    let impl_substs: HashMap<vir::ast::Ident, Typ> = callee
                        .x
                        .typ_params
                        .iter()
                        .cloned()
                        .zip(typ_args.iter().cloned())
                        .collect();
                    contract = trait_fn;
                    contract_typ_args = trait_typ_args
                        .iter()
                        .map(|typ| vir::sst_util::subst_typ(&impl_substs, typ))
                        .collect();
                }
            }
        }
        let declaration = &contract.x.decl;
        if !declaration.enss.1.is_empty() {
            return Err(format!(
                "unsupported default-body ensures on call to `{callee_name}`"
            ));
        }

        // Contract expressions carry the contract declaration's own type
        // parameters; resolve them with the (instantiated) type arguments
        // while lowering.
        let typ_substs: HashMap<vir::ast::Ident, Typ> = contract
            .x
            .typ_params
            .iter()
            .cloned()
            .zip(contract_typ_args.iter().cloned())
            .collect();
        if typ_substs.len() != contract_typ_args.len() {
            return Err(format!(
                "call to `{callee_name}` supplies {} type arguments for {} \
                 type parameters",
                contract_typ_args.len(),
                typ_substs.len()
            ));
        }
        let callee_ctx = ExpCtx {
            typ_substs: Some(&typ_substs),
            ..self.ctx
        };

        // Callee preconditions, substituted with the actual arguments, become
        // obligations located at the call site.
        let mut callee_env = Env::new();
        for (parameter, argument) in declaration.req_inv_pars.iter().zip(args.iter()) {
            callee_env.insert(
                parameter.x.name.clone(),
                lower_exp(self.ctx, &self.env, argument)?,
            );
        }
        let base_id = assert_id_string(assert_id, "call");
        let mut requires = Vec::new();
        for (index, requirement) in declaration.reqs.iter().enumerate() {
            let id = if declaration.reqs.len() > 1 {
                format!("{base_id}_{index}")
            } else {
                base_id.clone()
            };
            requires.push(
                Clause::new(
                    id,
                    span(&stm.span),
                    lower_exp(callee_ctx, &callee_env, requirement)?,
                )
                .described(format!("precondition of call to `{callee_name}`")),
            );
        }

        // vstd splits slice indexing across two trusted layers: the generic
        // `<[T] as Index<I>>::index` and `IndexMut<I>::index_mut` assume-specs
        // carry delegated postconditions, while their trait declarations
        // carry the inherited `index_req` precondition. The implementation
        // SST used at this call site contains only the former, so materialize
        // the exact concrete bounds obligation for the two range kinds whose
        // delegated postconditions we lower above. If a later vstd already
        // materializes a requirement, use that declaration instead of
        // duplicating it.
        if requires.is_empty() && is_core_slice_index(fun) {
            if let Some(range_kind) = typ_args.get(1).and_then(|typ| slice_range_kind(self.ctx, typ))
            {
                if args.len() != 2 {
                    return Err(format!(
                        "slice range index call has {} arguments, expected 2",
                        args.len()
                    ));
                }
                let slice = lower_exp(self.ctx, &self.env, &args[0])?;
                let (start, explicit_end) =
                    lower_slice_range_bounds(self.ctx, &self.env, &args[1], range_kind)?;
                let end = explicit_end
                    .clone()
                    .unwrap_or_else(|| Expr::SeqLen(Box::new(slice.clone())));
                let condition = match explicit_end {
                    Some(_) => Expr::binary(
                        BinOp::And,
                        Expr::binary(BinOp::Le, start, end.clone()),
                        Expr::binary(BinOp::Le, end, Expr::SeqLen(Box::new(slice))),
                    ),
                    None => Expr::binary(BinOp::Le, start, end),
                };
                requires.push(
                    Clause::new(base_id.clone(), span(&stm.span), condition)
                        .described("precondition of slice range indexing"),
                );
            }
        }

        // The call result becomes a fresh universally quantified symbol,
        // constrained by the callee's postconditions and its type range.
        let mut result = None;
        let mut ensures = Vec::new();
        let mut ens_env = callee_env;

        // Each `&mut` argument's post-state is the demand-allocated future
        // of the borrow (the caller's prophecy writeback may already have
        // created it): the callee's `final(param)` resolves to that symbol
        // while the contract is substituted below.
        let mut future_scope = Vec::new();
        for (parameter, argument) in declaration.req_inv_pars.iter().zip(args.iter()) {
            let parameter_typ = resolve_typ(callee_ctx, &parameter.x.typ);
            let TypX::MutRef(inner) = undecorate(&parameter_typ) else {
                continue;
            };
            let root = match &argument.x {
                ExpX::Var(ident) | ExpX::VarLoc(ident) => ident.clone(),
                other => {
                    return Err(format!(
                        "unsupported `&mut` argument shape {other:?} in call \
                         to `{callee_name}`"
                    ));
                }
            };
            let future = self.future_of(&root, inner)?;
            let mut futures = self.ctx.registry.mut_futures.borrow_mut();
            let previous = futures.insert(parameter.x.name.clone(), future);
            future_scope.push((parameter.x.name.clone(), previous));
        }
        let ret_parameter = declaration.ens_pars.iter().skip(args.len()).next();
        if let Some(dest) = dest {
            let dest_ident = destination_var(&dest.dest)?;
            let name = self.fresh_binder_name(&dest_ident.0.to_string());
            let binder = Binder::new(name.clone(), binder_type(self.ctx, &dest.dest.typ)?);
            self.var_types
                .insert(dest_ident.clone(), dest.dest.typ.clone());
            self.env.insert(dest_ident.clone(), Expr::Var(name.clone()));
            if let Some(ret) = ret_parameter {
                ens_env.insert(ret.x.name.clone(), Expr::Var(name.clone()));
                let ret_typ = resolve_typ(callee_ctx, &ret.x.typ);
                if let TypX::MutRef(inner) = undecorate(&ret_typ) {
                    // A returned `&mut` carries its own prophecy.  The
                    // concrete destination is the caller-side root, while
                    // the callee contract names that same future through its
                    // result parameter (`final(result)`).
                    let future = self.future_of(dest_ident, inner)?;
                    let root = resolve_mut_root(&self.ctx.registry, dest_ident);
                    self.ctx
                        .registry
                        .returned_mut_futures
                        .borrow_mut()
                        .insert(root);
                    let mut futures = self.ctx.registry.mut_futures.borrow_mut();
                    let previous = futures.insert(ret.x.name.clone(), future);
                    future_scope.push((ret.x.name.clone(), previous));
                }
            }
            for fact in type_range_facts(self.ctx, &dest.dest.typ, &Expr::Var(name))? {
                self.type_facts.push(fact.clone());
                ensures.push(fact);
            }
            result = Some(binder);
        } else if let Some(ret) = ret_parameter {
            let name = self.fresh_binder_name(&format!("{callee_name}_result"));
            let binder = Binder::new(name.clone(), binder_type(callee_ctx, &ret.x.typ)?);
            for fact in type_range_facts(callee_ctx, &ret.x.typ, &Expr::Var(name.clone()))? {
                self.type_facts.push(fact.clone());
                ensures.push(fact);
            }
            ens_env.insert(ret.x.name.clone(), Expr::Var(name));
            result = Some(binder);
        }
        let mut lowered_enss = Vec::new();
        for postcondition in declaration.enss.0.iter() {
            lowered_enss.push(
                lower_exp(callee_ctx, &ens_env, postcondition)
                    .map_err(|error| format!("in postcondition of `{callee_name}`: {error}")),
            );
        }
        // The callee-param future entries live only for the substitution
        // above; borrow-temporary entries persist for phase 2.
        {
            let mut futures = self.ctx.registry.mut_futures.borrow_mut();
            for (ident, previous) in future_scope {
                match previous {
                    Some(previous) => futures.insert(ident, previous),
                    None => futures.remove(&ident),
                };
            }
        }
        for lowered in lowered_enss {
            ensures.push(lowered?);
        }

        self.statements.push(Statement::Call(CallContract {
            callee: callee_name,
            requires,
            result,
            ensures,
        }));
        self.last_assertion = None;
        Ok(())
    }

    /// Lower `if cond { then } else { els }`.
    ///
    /// Each arm is lowered with its own copy of the substitution
    /// environment. Variables whose value differs between the arms are
    /// joined: a fresh universally quantified symbol is introduced before
    /// the branch and each arm ends by assuming the join equation, so the
    /// continuation sees `cond → join = v_then` and `¬cond → join = v_else`
    /// once the generator guards arm-local context.
    fn branch(&mut self, cond: &Exp, then_stm: &Stm, else_stm: Option<&Stm>) -> Result<(), String> {
        let condition = lower_exp(self.ctx, &self.env, cond)?;
        charge_env_copy(self.ctx.registry, &self.env)?;
        let saved_env = self.env.clone();
        let outer_statements = std::mem::take(&mut self.statements);

        self.statement(then_stm)?;
        let mut then_statements = std::mem::take(&mut self.statements);
        let then_env = std::mem::replace(&mut self.env, saved_env.clone());

        if let Some(else_stm) = else_stm {
            self.statement(else_stm)?;
        }
        let mut else_statements = std::mem::take(&mut self.statements);
        let else_env = std::mem::replace(&mut self.env, saved_env);
        self.statements = outer_statements;

        // Deterministic join order: sort candidate variables by debug key.
        let mut keys: Vec<VarIdent> = then_env
            .keys()
            .chain(else_env.keys())
            .cloned()
            .collect::<std::collections::BTreeSet<_>>()
            .into_iter()
            .collect();
        keys.sort_by_key(|key| format!("{key:?}"));

        let mut joins = Vec::new();
        for key in keys {
            let then_value = then_env.get(&key);
            let else_value = else_env.get(&key);
            if then_value == else_value {
                // Same value on both paths (possibly both freshly assigned).
                if let Some(value) = then_value {
                    if self.env.get(&key) != Some(value) {
                        self.env.insert(key.clone(), value.clone());
                    }
                }
                continue;
            }
            let (Some(then_value), Some(else_value)) = (then_value, else_value) else {
                // Assigned on one path only: branch-local, invisible after.
                continue;
            };
            let typ = self
                .var_types
                .get(&key)
                .ok_or_else(|| format!("cannot join branch variable {key:?}: unknown type"))?
                .clone();
            let ty = binder_type(self.ctx, &typ)?;
            let name = self.fresh_binder_name(&key.0.to_string());
            let join = Expr::Var(name.clone());
            let equation = |value: &Expr| match ty {
                Ty::Prop => Expr::binary(BinOp::Iff, join.clone(), value.clone()),
                _ => Expr::binary(BinOp::Eq, join.clone(), value.clone()),
            };
            then_statements.push(Statement::Assume(equation(then_value)));
            else_statements.push(Statement::Assume(equation(else_value)));
            self.env.insert(key, join.clone());
            joins.push((
                Binder::new(name, ty),
                type_range_facts(self.ctx, &typ, &join)?,
            ));
        }

        for (binder, _) in &joins {
            self.statements.push(Statement::Fresh(binder.clone()));
        }
        self.statements.push(Statement::Branch {
            condition,
            then_branch: then_statements,
            else_branch: else_statements,
        });
        // Join symbols inherit their variable's type facts, like Verus's
        // `typ_invs` over mutable variables.
        for (_, facts) in joins {
            for fact in facts {
                self.type_facts.push(fact.clone());
                self.statements.push(Statement::Assume(fact));
            }
        }
        self.last_assertion = None;
        Ok(())
    }

    /// Lower a loop, mirroring Verus's loop-isolation discharge:
    ///
    /// - each at-entry invariant is checked on entry under the current
    ///   context;
    /// - the body is verified for an arbitrary iteration — modified
    ///   variables are replaced by fresh havoc symbols, the at-entry
    ///   invariants (and, for simple `while` loops, the condition) are
    ///   assumed, and each at-entry invariant is re-checked at the back
    ///   edge;
    /// - the continuation sees the havoc symbols with the at-exit
    ///   invariants (and, for simple `while` loops, the negated condition)
    ///   assumed.
    ///
    /// Verus rewrites any loop containing a `break` into the `cond = None`
    /// shape (the condition becomes `if !cond { break }` inside the body),
    /// so for that shape no condition fact exists on either side; `break`
    /// and `continue` sites are handled in `statement` against the
    /// `loop_frames` stack.
    fn lower_loop(
        &mut self,
        loop_id: u64,
        label: &Option<String>,
        is_for_loop: bool,
        cond: &Option<(Stm, Exp)>,
        body: &Stm,
        invs: &vir::sst::LoopInvs,
        decrease: &[Exp],
        isolated: bool,
    ) -> Result<(), String> {
        // Entry: every at-entry invariant holds under the current context.
        for (index, inv) in invs.iter().enumerate() {
            if inv.at_entry {
                self.statements.push(Statement::Invariant {
                    phase: InvariantPhase::Entry,
                    clause: Clause::new(
                        format!("{loop_id}_{index}"),
                        span(&inv.inv.span),
                        lower_exp(self.ctx, &self.env, &inv.inv)?,
                    )
                    .described("loop invariant on entry"),
                });
            }
        }

        // Havoc every variable the loop may modify that is visible outside.
        let mut assigned = Vec::new();
        if let Some((cond_stm, _)) = cond {
            collect_assigned(cond_stm, &mut assigned);
        }
        collect_assigned(body, &mut assigned);
        let mut havoc = Vec::new();
        // The isolated body drops the enclosing context; like Verus's
        // `typ_invs`, the binder range facts survive into it.
        let mut iteration = self.type_facts.clone();
        let mut havoc_facts = Vec::new();
        for ident in assigned {
            if !self.env.contains_key(&ident) {
                continue; // Declared inside the body: not visible outside.
            }
            let typ = self.var_types.get(&ident).cloned().ok_or_else(|| {
                format!(
                    "loop assigns `{}` before its root type was recorded",
                    ident.0
                )
            })?;
            let ty = binder_type(self.ctx, &typ)?;
            let name = self.fresh_binder_name(&ident.0.to_string());
            for fact in type_range_facts(self.ctx, &typ, &Expr::Var(name.clone()))? {
                iteration.push(fact.clone());
                havoc_facts.push(fact);
            }
            self.env.insert(ident.clone(), Expr::Var(name.clone()));
            self.var_types.insert(ident, typ);
            havoc.push(Binder::new(name, ty));
        }
        let loop_env = self.env.clone();

        // The condition setup may only bind temporaries (pure substitution).
        // The one structured exception is a `&mut`-resolving setup (a live
        // borrow that resolves when the loop exits): recognized and split
        // into the real condition plus the exit-path resolutions, which are
        // replayed in the continuation below.
        let saved_statements = std::mem::take(&mut self.statements);
        let mut exit_resolutions: Vec<&Stm> = Vec::new();
        let mut condition_assertions: Vec<Clause> = Vec::new();
        let mut condition_last_assertion = None;
        let condition = match cond {
            Some((cond_stm, cond_exp)) => {
                if let Some((prefix, real_cond, resolutions)) =
                    split_cond_setup(cond_stm, cond_exp)
                {
                    // Evaluate the ordinary temporary/call prefix exactly as
                    // for any pure condition setup. Only the false-arm
                    // prophecy resolutions are relocated to the loop exit.
                    for setup in prefix {
                        self.eval_pure_setup(
                            setup,
                            &Expr::True,
                            &mut condition_assertions,
                            &mut condition_last_assertion,
                        )
                        .map_err(|error| {
                            format!(
                                "unsupported SST loop: the while condition's setup prefix is \
                                 not a pure computation ({error})"
                            )
                        })?;
                    }
                    exit_resolutions = resolutions;
                    Some(lower_exp(self.ctx, &self.env, real_cond)?)
                } else {
                    // A pure setup (temporary binds, functional-view calls
                    // like `Vec::len`, short-circuit `if`s) folds into env
                    // substitution; the condition stays one expression.
                    self.eval_pure_setup(
                        cond_stm,
                        &Expr::True,
                        &mut condition_assertions,
                        &mut condition_last_assertion,
                    )
                    .map_err(|error| {
                        format!(
                            "unsupported SST loop: the while condition's setup is \
                             not a pure computation ({error})"
                        )
                    })?;
                    Some(lower_exp(self.ctx, &self.env, cond_exp)?)
                }
            }
            None => None,
        };
        let condition_env = self.env.clone();

        // Iteration facts: invariants and (for simple `while` loops) the
        // condition, in the havoc state.
        for inv in invs.iter() {
            if inv.at_entry {
                iteration.push(lower_exp(self.ctx, &loop_env, &inv.inv)?);
            }
        }
        // Without condition-setup checks, the ordinary isolated body can
        // assume the condition directly. With checks, the arbitrary-head
        // query must prove them from type facts + invariants BEFORE learning
        // whether the condition is true; the condition becomes a branch in
        // the isolated body below.
        if condition_assertions.is_empty() {
            if let Some(condition) = &condition {
                iteration.push(condition.clone());
            }
        }

        // The termination measure's value at the start of the iteration, as
        // substitution values (`decrease%at_entry` analog).
        let mut measures_at_entry = Vec::new();
        for measure in decrease {
            if !matches!(undecorate(&measure.typ), TypX::Int(_)) {
                return Err(format!(
                    "unsupported loop decreases measure type {:?} (only integers are lowered)",
                    measure.typ
                ));
            }
            measures_at_entry.push(lower_exp(self.ctx, &loop_env, measure)?);
        }

        // Body, then the back-edge invariant checks under the post-body env.
        // The frame lets `break`/`continue` sites inside the body find this
        // loop's invariants and measure.
        self.loop_frames.push(LoopFrame {
            loop_id,
            label: label.clone(),
            is_for_loop,
            invs: invs.clone(),
            decrease: decrease.to_vec(),
            measures_at_entry: measures_at_entry.clone(),
            break_sites: 0,
            continue_sites: 0,
        });
        let body_result = self.statement(body);
        self.loop_frames.pop();
        body_result?;
        for (index, inv) in invs.iter().enumerate() {
            if inv.at_entry {
                self.statements.push(Statement::Invariant {
                    phase: InvariantPhase::Preserve,
                    clause: Clause::new(
                        format!("{loop_id}_{index}"),
                        span(&inv.inv.span),
                        lower_exp(self.ctx, &self.env, &inv.inv)?,
                    )
                    .described("loop invariant preserved by the body"),
                });
            }
        }
        // Termination: the (lexicographic) measure decreases across the
        // iteration.
        if !decrease.is_empty() {
            let check = decrease_check(self.ctx, &self.env, decrease, &measures_at_entry)?;
            let measure_span = span(&decrease[0].span);
            self.statements.push(Statement::Assert(
                Clause::new(format!("{loop_id}_decreases"), measure_span, check)
                    .described("loop termination measure must decrease"),
            ));
        }
        let mut body_statements = std::mem::replace(&mut self.statements, saved_statements);
        if !condition_assertions.is_empty() {
            let condition = condition.clone().ok_or_else(|| {
                "condition-setup assertions on a loop without a condition".to_owned()
            })?;
            let mut head = condition_assertions
                .iter()
                .cloned()
                .map(Statement::Assert)
                .collect::<Vec<_>>();
            head.push(Statement::Branch {
                condition,
                then_branch: body_statements,
                else_branch: Vec::new(),
            });
            body_statements = head;
        }

        // Exit facts: the havoc ranges, at-exit invariants, and — only for
        // simple `while` loops — the negated condition, again in the havoc
        // state. Break-capable loops (`cond = None`) get no condition fact:
        // control may leave through a `break`, where only the at-exit
        // invariants were checked.
        self.type_facts.extend(havoc_facts.iter().cloned());
        let mut exit = havoc_facts;
        for inv in invs.iter() {
            if inv.at_exit {
                exit.push(lower_exp(self.ctx, &loop_env, &inv.inv)?);
            }
        }
        // A successfully evaluated final condition has established every
        // setup assertion. Their isolated head obligations justify retaining
        // those facts in the loop continuation, exactly as a proved ordinary
        // `assert` remains available after its program point.
        exit.extend(
            condition_assertions
                .iter()
                .map(|clause| clause.proposition.clone()),
        );
        if let Some(condition) = condition {
            exit.push(Expr::Not(Box::new(condition)));
        }

        self.env = condition_env;
        for binder in havoc {
            self.statements.push(Statement::Fresh(binder));
        }
        self.statements.push(Statement::Loop {
            iteration,
            body: body_statements,
            exit,
            isolated,
        });
        // A `&mut` borrow that resolves on loop exit: replay the resolution
        // in the continuation (the loop havoc state), so `final(x)` sees the
        // post-loop value — the same relocation the `for` lowering does.
        for stm in exit_resolutions {
            self.statement(stm)?;
        }
        self.last_assertion = None;
        Ok(())
    }

    /// Lower a `break`/`continue` site, mirroring Verus's sst_to_air
    /// discharge for isolated loops: a `continue` must re-establish the
    /// at-entry invariants (`invariant` + `invariant_except_break`) and the
    /// termination measure; a `break` must establish the at-exit invariants
    /// (`invariant` + loop `ensures`) with no measure check. Either way the
    /// path is then closed with `assume false` — inside a branch arm the
    /// guarded contribution to the continuation becomes exactly the negated
    /// path condition.
    fn break_or_continue(
        &mut self,
        stm: &Stm,
        label: &Option<String>,
        is_break: bool,
    ) -> Result<(), String> {
        let frame_index = match label {
            Some(label) => self
                .loop_frames
                .iter()
                .rposition(|frame| frame.label.as_deref() == Some(label)),
            None => self.loop_frames.len().checked_sub(1),
        };
        let Some(frame_index) = frame_index else {
            return Err(format!(
                "unsupported SST break/continue: no enclosing loop{}",
                label
                    .as_ref()
                    .map(|l| format!(" labeled {l:?}"))
                    .unwrap_or_default()
            ));
        };
        if frame_index + 1 != self.loop_frames.len() {
            // Verus rejects breaks across an isolated loop boundary; a
            // labeled target that is not the innermost frame crosses one.
            return Err(
                "unsupported SST break/continue: crosses an isolated loop boundary".to_owned(),
            );
        }
        let frame = &mut self.loop_frames[frame_index];
        if !is_break && frame.is_for_loop {
            return Err("unsupported SST continue in a `for` loop".to_owned());
        }
        let loop_id = frame.loop_id;
        let site = if is_break {
            frame.break_sites += 1;
            format!("b{}", frame.break_sites - 1)
        } else {
            frame.continue_sites += 1;
            format!("c{}", frame.continue_sites - 1)
        };
        let invs = frame.invs.clone();
        let decrease = frame.decrease.clone();
        let measures_at_entry = frame.measures_at_entry.clone();

        for (index, inv) in invs.iter().enumerate() {
            let (relevant, phase, description) = if is_break {
                (
                    inv.at_exit,
                    InvariantPhase::Break,
                    "loop invariant at this break",
                )
            } else {
                (
                    inv.at_entry,
                    InvariantPhase::Preserve,
                    "loop invariant at this continue",
                )
            };
            if relevant {
                self.statements.push(Statement::Invariant {
                    phase,
                    clause: Clause::new(
                        format!("{loop_id}_{index}_{site}"),
                        span(&inv.inv.span),
                        lower_exp(self.ctx, &self.env, &inv.inv)?,
                    )
                    .described(description),
                });
            }
        }
        if !is_break && !decrease.is_empty() {
            let check = decrease_check(self.ctx, &self.env, &decrease, &measures_at_entry)?;
            self.statements.push(Statement::Assert(
                Clause::new(
                    format!("{loop_id}_decreases_{site}"),
                    span(&stm.span),
                    check,
                )
                .described("loop termination measure must decrease at this continue"),
            ));
        }
        // Close the path: nothing after a break/continue is reachable.
        self.statements.push(Statement::Assume(Expr::False));
        self.last_assertion = None;
        Ok(())
    }

    /// Recognize the canonical range-`for` desugaring starting at `flat[0]`
    /// (see the module comment above `flatten_block`). Returns the number of
    /// consumed statements, the extraction, and the ghost-variable set —
    /// or an error if the shape is for-loop-like but not the supported one.
    /// `Ok(None)` means "not a for-loop preamble at all".
    fn recognize_for_range<'x>(
        &self,
        flat: &[&'x Stm],
    ) -> Result<Option<(usize, ForRangePlan<'x>, std::collections::HashSet<VarIdent>)>, String>
    {
        use std::collections::HashSet;

        let assign_of = |stm: &'x Stm| -> Option<(&'x Exp, &'x Exp)> {
            match &stm.x {
                StmX::Assign { lhs, rhs } => Some((&lhs.dest, rhs)),
                _ => None,
            }
        };
        let is_core_range = |dt: &vir::ast::Dt| -> bool {
            matches!(dt, vir::ast::Dt::Path(path)
                if matches!(path.krate, CrateId::Core)
                    && path.segments.iter().map(|s| s.as_str()).collect::<Vec<_>>()
                        == ["ops", "range", "Range"])
        };

        // f0: `VERUS_iter_init := Range { start: lo, end: hi }`. Anything
        // else is not a for-loop preamble (the plain Range ctor then fails
        // closed on its own later).
        let Some((f0_dest, f0_rhs)) = assign_of(flat[0]) else {
            return Ok(None);
        };
        let ExpX::Ctor(range_dt, _, range_fields) = &f0_rhs.x else {
            return Ok(None);
        };
        if !is_core_range(range_dt) {
            return Ok(None);
        }
        let init_var = destination_var(f0_dest).ok();
        let Some(init_var) = init_var else {
            return Ok(None);
        };
        if !init_var.0.starts_with("VERUS_iter_init") {
            // A user-built Range value: not the for-loop desugaring; the
            // generic path will fail closed on the ctor itself.
            return Ok(None);
        }
        let fail = |what: &str| -> String {
            format!(
                "unsupported `for` loop: the desugaring does not match the \
                 canonical range shape ({what}); only plain `for x in lo..hi` \
                 loops are lowered"
            )
        };
        let lo = range_fields
            .iter()
            .find(|field| field.name.as_str() == "start")
            .map(|field| &field.a)
            .ok_or_else(|| fail("range without start"))?;
        let hi = range_fields
            .iter()
            .find(|field| field.name.as_str() == "end")
            .map(|field| &field.a)
            .ok_or_else(|| fail("range without end"))?;
        let item_typ = match undecorate(&f0_rhs.typ) {
            TypX::Datatype(_, typ_args, _) if typ_args.len() == 1 => typ_args[0].clone(),
            _ => return Err(fail("range item type")),
        };
        if !matches!(undecorate(&item_typ), TypX::Int(_)) {
            return Err(fail("non-integer range item"));
        }
        if flat.len() < 8 {
            return Err(fail("truncated preamble"));
        }

        let mut ghosts: HashSet<VarIdent> = HashSet::new();
        ghosts.insert(init_var.clone());

        // f1: `tmp := into_iter(VERUS_iter_init)` — identity on ranges.
        let (next_dest, args) = match &flat[1].x {
            StmX::Call {
                fun: CallTarget::Fun(fun),
                args,
                dest: Some(dest),
                ..
            } if fun_last_segment(fun) == "into_iter" => (&dest.dest, args),
            _ => return Err(fail("into_iter")),
        };
        if !(args.len() == 1 && exp_references(&args[0], &ghosts)) {
            return Err(fail("into_iter argument"));
        }
        ghosts.insert(destination_var(next_dest).map_err(|e| fail(&e))?.clone());

        // f2: `VERUS_iter := tmp`.
        let Some((f2_dest, f2_rhs)) = assign_of(flat[2]) else {
            return Err(fail("iterator bind"));
        };
        if !exp_references(f2_rhs, &ghosts) {
            return Err(fail("iterator bind source"));
        }
        ghosts.insert(destination_var(f2_dest).map_err(|e| fail(&e))?.clone());

        // f3: `tmp2 := Some(VERUS_iter)` (the ghost init snapshot argument).
        let Some((f3_dest, f3_rhs)) = assign_of(flat[3]) else {
            return Err(fail("init snapshot"));
        };
        if !(matches!(&f3_rhs.x, ExpX::Ctor(_, variant, _) if variant.as_str() == "Some")
            && exp_references(f3_rhs, &ghosts))
        {
            return Err(fail("init snapshot shape"));
        }
        ghosts.insert(destination_var(f3_dest).map_err(|e| fail(&e))?.clone());

        // f4: `W := VerusForLoopWrapper::new(VERUS_iter, tmp2)`.
        let wrapper_var = match &flat[4].x {
            StmX::Call {
                fun: CallTarget::Fun(fun),
                args,
                dest: Some(dest),
                ..
            } if fun_in_vstd_iter(fun) && fun_last_segment(fun) == "new" => {
                if !(args.len() == 2
                    && exp_references(&args[0], &ghosts)
                    && exp_references(&args[1], &ghosts))
                {
                    return Err(fail("wrapper::new arguments"));
                }
                destination_var(&dest.dest).map_err(|e| fail(&e))?.clone()
            }
            _ => return Err(fail("wrapper::new")),
        };
        ghosts.insert(wrapper_var);

        // f5: `VERUS_old_snap := W.snapshot`.
        let Some((f5_dest, f5_rhs)) = assign_of(flat[5]) else {
            return Err(fail("snapshot bind"));
        };
        if !exp_references(f5_rhs, &ghosts) {
            return Err(fail("snapshot bind source"));
        }
        ghosts.insert(destination_var(f5_dest).map_err(|e| fail(&e))?.clone());

        // f6: `VERUS_ghost_iter := W`. Any other name is the
        // `for x in y: e` named-iterator form, whose invariants may inspect
        // the wrapper — out of the specialized fragment.
        let Some((f6_dest, f6_rhs)) = assign_of(flat[6]) else {
            return Err(fail("ghost iterator bind"));
        };
        if !exp_references(f6_rhs, &ghosts) {
            return Err(fail("ghost iterator bind source"));
        }
        let ghost_iter = destination_var(f6_dest).map_err(|e| fail(&e))?.clone();
        if ghost_iter.0.as_str() != "VERUS_ghost_iter" {
            return Err(format!(
                "unsupported `for` loop: the named-iterator form \
                 (`for x in y: e`) exposes the loop iterator `{}` to \
                 specifications and is not lowered",
                ghost_iter.0
            ));
        }
        ghosts.insert(ghost_iter);

        // f7: the loop itself.
        let (loop_id, loop_span, invs, decrease, body) = match &flat[7].x {
            StmX::Loop {
                loop_isolation: true,
                is_for_loop: true,
                id,
                cond: None,
                invs,
                decrease,
                body,
                ..
            } => (*id, flat[7].span.clone(), invs, decrease, body),
            _ => return Err(fail("loop head")),
        };

        // Classify the invariants: markers and wrapper bookkeeping are
        // dropped (their content is re-derived by the specialization), the
        // peek-wrapped user invariants are extracted, anything else aborts.
        let mut user_invs = Vec::new();
        for (original_index, inv) in invs.iter().enumerate() {
            if exp_contains_marker(&inv.inv, |opr| {
                matches!(opr, UnaryOpr::AutoDecreases | UnaryOpr::AutoLoopEnsures)
            }) {
                continue;
            }
            // The macro closes its auto loop-ensures with a bare `true`.
            if matches!(&inv.inv.x, ExpX::Const(Constant::Bool(true))) {
                continue;
            }
            if let Some((pat, inner)) = peek_wrapped(&inv.inv, &ghosts) {
                if exp_references(inner, &ghosts) {
                    return Err("unsupported `for` loop: an invariant references the \
                         loop iterator itself"
                        .to_owned());
                }
                user_invs.push(ForRangeUserInv {
                    original_index,
                    pat,
                    inner,
                    span: inv.inv.span.clone(),
                    at_entry: inv.at_entry,
                    at_exit: inv.at_exit,
                });
                continue;
            }
            if exp_contains_marker(&inv.inv, |opr| matches!(opr, UnaryOpr::ProofNote(_)))
                && exp_references(&inv.inv, &ghosts)
            {
                // The wf / snapshot-unchanged / init-tracking trio.
                continue;
            }
            return Err(fail("unrecognized loop invariant"));
        }

        // Decreases: either the single auto measure over the wrapper, or the
        // peek-wrapped user measures.
        let mut user_decreases = Vec::new();
        let mut auto_measure = false;
        for measure in decrease.iter() {
            if let Some((pat, inner)) = peek_wrapped(measure, &ghosts) {
                if exp_references(inner, &ghosts) {
                    return Err("unsupported `for` loop: a decreases measure references \
                         the loop iterator itself"
                        .to_owned());
                }
                user_decreases.push((pat, inner));
            } else if exp_references(measure, &ghosts) {
                auto_measure = true;
            } else {
                return Err(fail("unrecognized decreases measure"));
            }
        }
        if auto_measure && !user_decreases.is_empty() {
            return Err(fail("mixed decreases measures"));
        }

        // Trim the body: consume the canonical prefix (ghost snapshot, the
        // `&mut` next() dance, the Some/None split with its break, the loop
        // variable bind, the trigger dance, the ghost restore); the rest is
        // the user body.
        let mut body_flat = Vec::new();
        match &body.x {
            StmX::Block(children) => flatten_block(children, &mut body_flat),
            _ => body_flat.push(body),
        }
        let mut loop_var: Option<(VarIdent, Typ)> = None;
        let mut loop_next: Option<VarIdent> = None;
        let mut next_seen = false;
        let mut split_seen = false;
        let mut exit_resolutions: Vec<&'x Stm> = Vec::new();
        let mut user_body: Vec<&'x Stm> = Vec::new();
        let mut in_prefix = true;
        for stm in body_flat {
            if !in_prefix {
                user_body.push(stm);
                continue;
            }
            match &stm.x {
                StmX::Assign { lhs, rhs } => {
                    let dest = destination_var(&lhs.dest).map_err(|e| fail(&e))?;
                    // The loop variable: `pat := VERUS_loop_next`, the only
                    // ghost-sourced assign to a non-VERUS name.
                    if let (true, ExpX::Var(source)) = (loop_next.is_some(), &rhs.x) {
                        if Some(source) == loop_next.as_ref() && !dest.0.starts_with("VERUS_") {
                            if loop_var.is_some() {
                                return Err(fail("second loop-variable bind"));
                            }
                            loop_var = Some((dest.clone(), lhs.dest.typ.clone()));
                            continue;
                        }
                    }
                    // Iterator bookkeeping: any assign touching the ghost
                    // set, the wrapper type, or the trigger spec-call. The
                    // destination joins the ghost set — a genuinely-user
                    // value could never be assigned here in the canonical
                    // desugaring, and the post-trim scans fail closed if one
                    // somehow were.
                    let dest_clone = dest.clone();
                    if dest_clone.0.starts_with("VERUS_")
                        || ghosts.contains(&dest_clone)
                        || exp_references(rhs, &ghosts)
                        || typ_mentions_wrapper(&lhs.dest.typ)
                        || exp_mentions_wrapper(rhs, &mut ghosts)
                        || is_trigger_call(rhs)
                    {
                        if dest_clone.0.as_str() == "VERUS_loop_next" {
                            loop_next = Some(dest_clone.clone());
                        }
                        ghosts.insert(dest_clone);
                        continue;
                    }
                    // First genuinely-user statement: the prefix has ended.
                    in_prefix = false;
                    user_body.push(stm);
                }
                StmX::Assume(exp) => {
                    if exp_references(exp, &ghosts) || exp_mentions_wrapper(exp, &mut ghosts) {
                        continue;
                    }
                    in_prefix = false;
                    user_body.push(stm);
                }
                StmX::Assert(_, _, exp) => {
                    // The trigger-dance assert of a ghost temporary is
                    // `trigger_peek_implications(…) == true` by definition;
                    // both verifiers always pass it.
                    if matches!(&exp.x, ExpX::Var(ident) if ghosts.contains(ident)) {
                        continue;
                    }
                    in_prefix = false;
                    user_body.push(stm);
                }
                StmX::Call {
                    fun: CallTarget::Fun(fun),
                    args,
                    dest,
                    ..
                } if fun_in_vstd_iter(fun) && fun_last_segment(fun) == "next" => {
                    if !(args.len() == 1 && exp_references(&args[0], &ghosts)) {
                        return Err(fail("next() argument"));
                    }
                    let Some(dest) = dest else {
                        return Err(fail("next() without destination"));
                    };
                    ghosts.insert(destination_var(&dest.dest).map_err(|e| fail(&e))?.clone());
                    next_seen = true;
                }
                StmX::If(cond, then_stm, else_stm) if exp_references(cond, &ghosts) => {
                    // The Some/None split on the next() result.
                    let Some(else_stm) = else_stm else {
                        return Err(fail("next() split without exhausted arm"));
                    };
                    let mut then_flat = Vec::new();
                    flatten_block(std::slice::from_ref(then_stm), &mut then_flat);
                    for inner in then_flat {
                        let Some((dest_exp, rhs)) = assign_of(inner) else {
                            return Err(fail("statement in the Some arm"));
                        };
                        if !exp_references(rhs, &ghosts) {
                            return Err(fail("Some-arm assign source"));
                        }
                        let dest = destination_var(dest_exp).map_err(|e| fail(&e))?;
                        if !dest.0.starts_with("VERUS_") {
                            return Err(fail("Some-arm assign target"));
                        }
                        if dest.0.as_str() == "VERUS_loop_next" {
                            loop_next = Some(dest.clone());
                        }
                        ghosts.insert(dest.clone());
                    }
                    let mut else_flat = Vec::new();
                    flatten_block(std::slice::from_ref(else_stm), &mut else_flat);
                    let mut break_seen = false;
                    for inner in else_flat {
                        match &inner.x {
                            StmX::Assume(exp) => {
                                if matches!(&exp.x, ExpX::UnaryOpr(UnaryOpr::HasResolved(_), _)) {
                                    exit_resolutions.push(inner);
                                } else if !matches!(&exp.x, ExpX::Const(Constant::Bool(false))) {
                                    return Err(fail("exhausted-arm assumption"));
                                }
                            }
                            StmX::BreakOrContinue {
                                label: None,
                                is_break: true,
                            } => break_seen = true,
                            _ => return Err(fail("statement in the exhausted arm")),
                        }
                    }
                    if !break_seen {
                        return Err(fail("exhausted arm without break"));
                    }
                    split_seen = true;
                }
                _ => {
                    in_prefix = false;
                    user_body.push(stm);
                }
            }
        }
        if !(next_seen && split_seen) {
            return Err(fail("missing next()/split prefix"));
        }
        let Some((loop_var, loop_var_typ)) = loop_var else {
            return Err(fail("missing loop-variable bind"));
        };
        if !matches!(undecorate(&loop_var_typ), TypX::Int(_)) {
            return Err(fail("non-integer loop variable"));
        }

        // The user body must be entirely iterator-free: any surviving ghost
        // reference means we would silently drop a fact.
        for stm in &user_body {
            if stm_references(stm, &ghosts) {
                return Err("unsupported `for` loop: the body references the loop \
                     iterator machinery"
                    .to_owned());
            }
            if stm_contains_break(stm) {
                return Err("unsupported `for` loop: `break`/`continue` inside a \
                     `for` body is not lowered (stock Verus rejects it too, \
                     via the automatic loop ensures)"
                    .to_owned());
            }
        }

        Ok(Some((
            8,
            ForRangePlan {
                loop_id,
                loop_span,
                item_typ,
                lo,
                hi,
                loop_var,
                user_invs,
                user_decreases,
                body: user_body,
                exit_resolutions,
            },
            ghosts,
        )))
    }

    /// Lower a recognized range `for` as its integer-loop equivalent.
    fn lower_for_range(
        &mut self,
        plan: ForRangePlan<'_>,
        ghosts: &std::collections::HashSet<VarIdent>,
    ) -> Result<(), String> {
        let loop_id = plan.loop_id;
        // The bounds, in the pre-loop state. The Range value snapshots them
        // at creation; if the body assigned a variable they mention, our
        // re-reading would drift — fail closed on that (rare) shape.
        let lo = lower_exp(self.ctx, &self.env, plan.lo)?;
        let hi = lower_exp(self.ctx, &self.env, plan.hi)?;
        let mut assigned = Vec::new();
        for stm in &plan.body {
            collect_assigned(stm, &mut assigned);
        }
        for ident in &assigned {
            if exp_references_var(plan.lo, ident) || exp_references_var(plan.hi, ident) {
                return Err(format!(
                    "unsupported `for` loop: the body assigns `{}`, which \
                     occurs in the loop bounds",
                    ident.0
                ));
            }
            if *ident == plan.loop_var {
                return Err("unsupported `for` loop: the body assigns the loop variable".to_owned());
            }
        }

        // Fresh symbols: the havoc loop variable, and ONE `arbitrary()`
        // stand-in shared by the entry and exit instances (vstd's
        // `arbitrary()` is a single fixed unknown; sharing is what keeps the
        // empty-range case sound — the exit assumption is the entry check).
        let ty = binder_type(self.ctx, &plan.item_typ)?;
        let i_name = self.fresh_binder_name(&plan.loop_var.0);
        let arb_name = self.fresh_binder_name("vrml_for_arb");
        let i = Expr::Var(i_name.clone());
        let arb = Expr::Var(arb_name.clone());
        let lo_le_hi = Expr::binary(BinOp::Le, lo.clone(), hi.clone());
        let entry_i = Expr::Ite(
            Box::new(lo_le_hi.clone()),
            Box::new(lo.clone()),
            Box::new(arb.clone()),
        );
        let exit_i = Expr::Ite(
            Box::new(lo_le_hi),
            Box::new(hi.clone()),
            Box::new(arb.clone()),
        );

        // `arbitrary::<usize>()` carries its type's invariant in Verus; so
        // does our stand-in. It only materializes when some invariant or
        // measure actually mentions its loop-variable binding.
        let needs_arb = plan
            .user_invs
            .iter()
            .map(|inv| (&inv.pat, inv.inner))
            .chain(plan.user_decreases.iter().map(|(pat, inner)| (pat, *inner)))
            .any(|(pat, inner)| exp_references_var(inner, pat));
        if needs_arb {
            self.statements
                .push(Statement::Fresh(Binder::new(arb_name, ty.clone())));
            for fact in type_range_facts(self.ctx, &plan.item_typ, &arb)? {
                self.type_facts.push(fact.clone());
                self.statements.push(Statement::Assume(fact));
            }
        }

        // Entry: each user invariant at the first peek value.
        for inv in &plan.user_invs {
            if !inv.at_entry {
                continue;
            }
            let mut env = self.env.clone();
            env.insert(inv.pat.clone(), entry_i.clone());
            self.statements.push(Statement::Invariant {
                phase: InvariantPhase::Entry,
                clause: Clause::new(
                    format!("{loop_id}_{}", inv.original_index),
                    span(&inv.span),
                    lower_exp(self.ctx, &env, inv.inner)?,
                )
                .described("loop invariant on entry"),
            });
        }

        // Havoc the body-modified variables (mirrors `lower_loop`), plus the
        // loop variable itself.
        let mut havoc = Vec::new();
        let mut iteration = self.type_facts.clone();
        let mut havoc_facts = Vec::new();
        for ident in assigned {
            if !self.env.contains_key(&ident) {
                continue;
            }
            let typ = self.var_types.get(&ident).cloned().ok_or_else(|| {
                format!(
                    "`for` loop assigns `{}` before its root type was recorded",
                    ident.0
                )
            })?;
            let havoc_ty = binder_type(self.ctx, &typ)?;
            let name = self.fresh_binder_name(&ident.0.to_string());
            for fact in type_range_facts(self.ctx, &typ, &Expr::Var(name.clone()))? {
                iteration.push(fact.clone());
                havoc_facts.push(fact);
            }
            self.env.insert(ident.clone(), Expr::Var(name.clone()));
            self.var_types.insert(ident, typ);
            havoc.push(Binder::new(name, havoc_ty));
        }
        for fact in type_range_facts(self.ctx, &plan.item_typ, &i)? {
            iteration.push(fact);
        }
        havoc.push(Binder::new(i_name, ty));
        self.env.insert(plan.loop_var.clone(), i.clone());
        self.var_types
            .insert(plan.loop_var.clone(), plan.item_typ.clone());
        let loop_env = self.env.clone();

        // Iteration facts: the body runs exactly when peek is Some at an
        // unconsumed index — lo ≤ i < hi — plus the user invariants at i.
        iteration.push(Expr::binary(BinOp::Le, lo.clone(), i.clone()));
        iteration.push(Expr::binary(BinOp::Lt, i.clone(), hi.clone()));
        for inv in &plan.user_invs {
            if !inv.at_entry {
                continue;
            }
            let mut env = loop_env.clone();
            env.insert(inv.pat.clone(), i.clone());
            iteration.push(lower_exp(self.ctx, &env, inv.inner)?);
        }

        // Measures at iteration start.
        let i_next = Expr::binary(BinOp::Add, i.clone(), Expr::Int("1".to_owned()));
        let auto_measure_entry = Expr::binary(BinOp::Sub, hi.clone(), i.clone());
        let mut measures_at_entry = Vec::new();
        for (pat, inner) in &plan.user_decreases {
            let mut env = loop_env.clone();
            env.insert(pat.clone(), i.clone());
            if !matches!(undecorate(&inner.typ), TypX::Int(_)) {
                return Err(format!(
                    "unsupported loop decreases measure type {:?} (only integers are lowered)",
                    inner.typ
                ));
            }
            measures_at_entry.push(lower_exp(self.ctx, &env, inner)?);
        }

        // The body, in a fresh statement buffer. No LoopFrame is pushed:
        // break/continue were rejected at recognition, so a stray one inside
        // fails closed on the empty frame stack.
        let saved_statements = std::mem::take(&mut self.statements);
        for stm in &plan.body {
            self.statement(stm)?;
        }

        // Back edge: the invariants at the advanced index i+1, in the
        // post-body state.
        for inv in &plan.user_invs {
            if !inv.at_entry {
                continue;
            }
            let mut env = self.env.clone();
            env.insert(inv.pat.clone(), i_next.clone());
            self.statements.push(Statement::Invariant {
                phase: InvariantPhase::Preserve,
                clause: Clause::new(
                    format!("{loop_id}_{}", inv.original_index),
                    span(&inv.span),
                    lower_exp(self.ctx, &env, inv.inner)?,
                )
                .described("loop invariant preserved by the body"),
            });
        }
        // Termination at the back edge: user measures at i+1, or the
        // synthesized remaining-count hi − i.
        let check = if plan.user_decreases.is_empty() {
            let current = Expr::binary(BinOp::Sub, hi.clone(), i_next.clone());
            Expr::binary(
                BinOp::And,
                Expr::binary(BinOp::Le, Expr::Int("0".to_owned()), current.clone()),
                Expr::binary(BinOp::Lt, current, auto_measure_entry),
            )
        } else {
            let mut check = Expr::False;
            for ((pat, inner), entry) in plan.user_decreases.iter().zip(&measures_at_entry).rev() {
                let mut env = self.env.clone();
                env.insert(pat.clone(), i_next.clone());
                let current = lower_exp(self.ctx, &env, inner)?;
                let strict = Expr::binary(
                    BinOp::And,
                    Expr::binary(BinOp::Le, Expr::Int("0".to_owned()), current.clone()),
                    Expr::binary(BinOp::Lt, current.clone(), entry.clone()),
                );
                let tie = Expr::binary(
                    BinOp::And,
                    Expr::binary(BinOp::Eq, current, entry.clone()),
                    check,
                );
                check = Expr::binary(BinOp::Or, strict, tie);
            }
            check
        };
        self.statements.push(Statement::Assert(
            Clause::new(format!("{loop_id}_decreases"), span(&plan.loop_span), check)
                .described("loop termination measure must decrease"),
        ));
        let body_statements = std::mem::replace(&mut self.statements, saved_statements);

        // Exit: the continuation sees the havoc symbols, the invariants at
        // the exit peek value, and the borrow resolutions from the
        // exhausted-iterator arm.
        self.type_facts.extend(havoc_facts.iter().cloned());
        let mut exit = havoc_facts;
        for inv in &plan.user_invs {
            if !inv.at_exit {
                continue;
            }
            let mut env = loop_env.clone();
            env.insert(inv.pat.clone(), exit_i.clone());
            exit.push(lower_exp(self.ctx, &env, inv.inner)?);
        }

        self.env = loop_env;
        self.env.remove(&plan.loop_var);
        for binder in havoc {
            self.statements.push(Statement::Fresh(binder));
        }
        self.statements.push(Statement::Loop {
            iteration,
            body: body_statements,
            exit,
            isolated: true,
        });
        // The exhausted arm's `assume has_resolved(x)` marks where borrows
        // expire: re-lower them here, in the continuation state, so
        // `final(x)` downstream sees the post-loop value.
        for stm in &plan.exit_resolutions {
            if stm_references(stm, ghosts) {
                return Err("unsupported `for` loop: a borrow resolution references \
                     the loop iterator"
                    .to_owned());
            }
            self.statement(stm)?;
        }
        self.last_assertion = None;
        Ok(())
    }

    fn statement(&mut self, stm: &Stm) -> Result<(), String> {
        self.statement_impl(stm)
            .map_err(|error| annotate_span(error, &stm.span))
    }

    fn statement_impl(&mut self, stm: &Stm) -> Result<(), String> {
        if std::env::var("VERMILION_DEBUG_SST").is_ok() {
            if !matches!(&stm.x, StmX::Block(_)) {
                eprintln!("SST-STM: {:?}", stm.x);
            }
        }
        match &stm.x {
            StmX::Block(stms) => {
                let mut flat = Vec::new();
                flatten_block(stms, &mut flat);
                let mut index = 0;
                while index < flat.len() {
                    if let Some((consumed, plan, ghosts)) =
                        self.recognize_for_range(&flat[index..])?
                    {
                        self.lower_for_range(plan, &ghosts)?;
                        index += consumed;
                    } else {
                        self.statement(flat[index])?;
                        index += 1;
                    }
                }
            }
            // Check-and-discard: the block proves in the enclosing
            // context, and nothing it introduces (assumes in proof
            // blocks!) escapes. Verus re-assumes an `assert_by`'s
            // conclusion after the DeadEnd itself.
            StmX::DeadEnd(inner) => {
                let saved_env = self.env.clone();
                let saved_types = self.var_types.clone();
                let mut inner_statements = Vec::new();
                std::mem::swap(&mut self.statements, &mut inner_statements);
                let result = self.statement(inner);
                std::mem::swap(&mut self.statements, &mut inner_statements);
                result?;
                self.statements.push(Statement::Scope(inner_statements));
                self.env = saved_env;
                self.var_types = saved_types;
                self.last_assertion = None;
            }
            StmX::Assign { lhs, rhs } => {
                let destination = destination_var(&lhs.dest)?.clone();
                // Copying a `&mut`-typed value is pure aliasing of the
                // borrow: no referent changes, the copy just names the same
                // root. (Verus inserts such copies around two-phase
                // borrows.)
                if matches!(undecorate(&lhs.dest.typ), TypX::MutRef(_)) {
                    match &rhs.x {
                        ExpX::Var(source) | ExpX::VarLoc(source) => {
                            let root = resolve_mut_root(&self.ctx.registry, source);
                            self.ctx
                                .registry
                                .mut_aliases
                                .borrow_mut()
                                .insert(destination, root);
                            return Ok(());
                        }
                        other => {
                            return Err(format!(
                                "unsupported assignment of a mutable-reference \
                                 value {other:?}"
                            ));
                        }
                    }
                }
                self.ensure_futures(rhs)?;
                let (root, path) = destination_path(&lhs.dest)?;
                let root = resolve_mut_root(&self.ctx.registry, root);
                let rhs = lower_exp(self.ctx, &self.env, rhs)?;
                let value = if path.is_empty() {
                    self.var_types.insert(root.clone(), lhs.dest.typ.clone());
                    rhs
                } else {
                    // Field write: rebuild the root's record value with
                    // this field replaced.
                    let current = self
                        .env
                        .get(&root)
                        .cloned()
                        .unwrap_or_else(|| Expr::Var(root.0.to_string()));
                    field_update(self.ctx, &self.env, &current, &path, rhs)?
                };
                if !expr_within_budget(&value, EXPR_SUBSTITUTION_BUDGET) {
                    return Err(format!(
                        "assignment to `{}` exceeded the expression \
                         substitution budget ({} nodes) — pathological \
                         duplication under the substitution-based lowering; \
                         the sharing fix is tracked in the issue \
                         'share substituted values instead of duplicating them'",
                        root.0, EXPR_SUBSTITUTION_BUDGET
                    ));
                }
                self.env.insert(root, value);
            }
            StmX::If(cond, then_stm, else_stm) => {
                self.branch(cond, then_stm, else_stm.as_ref())?;
            }
            StmX::Loop {
                loop_isolation,
                is_for_loop,
                id,
                label,
                cond,
                body,
                invs,
                decrease,
                ..
            } => {
                // A `for` loop reaching this arm escaped the range-`for`
                // recognizer (`recognize_for_range`): its iterator machinery
                // is outside the specialized fragment.
                if *is_for_loop {
                    return Err("unsupported `for` loop: only plain `for x in lo..hi` \
                         range loops are lowered"
                        .to_owned());
                }
                if !loop_isolation {
                    // #[verifier::loop_isolation(false)] (DL6, #46). A
                    // non-isolated `while` arrives as a `loop` whose
                    // condition ast_to_sst compiled to the canonical
                    // leading `cond_stm; if !cond { break }` prefix.
                    // Recognize exactly that shape, reconstruct the
                    // condition, and reuse the while machinery with
                    // `isolated = false` — the Lean (NLOOP) rule then keeps
                    // the enclosing hypotheses across the havoc, mirroring
                    // sst_to_air's non-isolated recipe. Any OTHER
                    // break/continue fails closed: Verus assumes nothing
                    // after a broken-out non-isolated loop, so our exit
                    // facts (at-exit invariants + ¬cond) would be too
                    // strong for such exits.
                    if cond.is_some() {
                        return Err("unsupported SST loop: non-isolated loop \
                             carries an explicit condition (unexpected SST shape)"
                            .to_owned());
                    }
                    let StmX::Block(children) = &body.x else {
                        return Err("unsupported SST loop: loop_isolation(false) \
                             body is not the canonical block shape"
                            .to_owned());
                    };
                    let recognized = (|| {
                        if children.len() < 2 {
                            return None;
                        }
                        let cond_stm = children[0].clone();
                        let StmX::If(not_c, then_stm, None) = &children[1].x else {
                            return None;
                        };
                        let ExpX::Unary(UnaryOp::Not, c_exp) = &not_c.x else {
                            return None;
                        };
                        let StmX::BreakOrContinue { label: None, is_break: true } =
                            &then_stm.x
                        else {
                            return None;
                        };
                        Some((cond_stm, c_exp.clone()))
                    })();
                    let Some((cond_stm, c_exp)) = recognized else {
                        return Err("unsupported SST loop: loop_isolation(false) \
                             without the canonical while shape (leading \
                             `if !cond break`) is not lowered"
                            .to_owned());
                    };
                    let rest: Vec<Stm> = children[2..].to_vec();
                    let trimmed = vir::def::Spanned::new(
                        body.span.clone(),
                        StmX::Block(std::sync::Arc::new(rest)),
                    );
                    if stm_has_break(&trimmed) {
                        return Err("unsupported SST loop: user break/continue \
                             inside a loop_isolation(false) loop is not lowered"
                            .to_owned());
                    }
                    self.lower_loop(
                        *id,
                        label,
                        false,
                        &Some((cond_stm, c_exp)),
                        &trimmed,
                        invs,
                        decrease,
                        false,
                    )?;
                } else {
                    self.lower_loop(
                        *id, label, *is_for_loop, cond, body, invs, decrease, true,
                    )?;
                }
            }
            StmX::BreakOrContinue { label, is_break } => {
                self.break_or_continue(stm, label, *is_break)?;
            }
            // reveal(f) / hide(f) / reveal_with_fuel(f, n): per-point
            // definition visibility (never fuel — the equations are simp
            // hints, see .claude/memory/spec-fns-no-inlining-no-fuel.md).
            StmX::Fuel(fun, amount) => {
                // Canonical path for the registry: `vstd::<segments>` for a
                // vstd target (a broadcast GROUP like
                // `vstd::seq_lib::group_seq_properties`, or a lemma), else a
                // best-effort user path (won't be in the vstd registry, so
                // the generator drops it — fail open).
                let segments: Vec<&str> = fun.path.segments.iter().map(|s| s.as_str()).collect();
                let broadcast_path = if matches!(fun.path.krate, CrateId::Vstd) {
                    format!("vstd::{}", segments.join("::"))
                } else {
                    segments.join("::")
                };
                // A broadcast GROUP is not a declared function: resolve it
                // as a ladder-hint set via the registry instead of erroring.
                let Some(callee) = self.ctx.declarations.get(fun) else {
                    self.statements.push(Statement::Broadcast(broadcast_path));
                    self.last_assertion = None;
                    return Ok(());
                };
                // `broadcast use lemma`: the lemma's quantified fact (its
                // requires → ensures closure over its parameters) becomes
                // a hypothesis at this program point. The lemma is PROVEN
                // — Verus checks its body and so do we — so this assumes a
                // theorem, not an axiom; it scopes like any other fact
                // (arm-/scope-local uses die with their scope).
                if callee.x.axioms.spec_axioms.is_none() {
                    if let Some((pars, exp, _trigs)) = &callee.x.axioms.proof_exec_axioms {
                        let mut quantified_env = Env::new();
                        let mut bound = Vec::new();
                        let mut guards = Vec::new();
                        for par in pars.iter() {
                            let base = par.x.name.0.to_string();
                            quantified_env.insert(par.x.name.clone(), Expr::Var(base.clone()));
                            for fact in
                                type_range_facts(self.ctx, &par.x.typ, &Expr::Var(base.clone()))?
                            {
                                guards.push(fact);
                            }
                            bound.push(Binder::new(base, binder_type(self.ctx, &par.x.typ)?));
                        }
                        let body = lower_exp(self.ctx, &quantified_env, exp)?;
                        let guard = guards
                            .into_iter()
                            .reduce(|lhs, rhs| Expr::binary(BinOp::And, lhs, rhs));
                        let full = match guard {
                            None => body,
                            Some(guard) => Expr::binary(BinOp::Implies, guard, body),
                        };
                        let fact = if bound.is_empty() {
                            full
                        } else {
                            Expr::Quant(true, bound, Vec::new(), Box::new(full))
                        };
                        self.statements.push(Statement::Assume(fact));
                        self.last_assertion = None;
                        return Ok(());
                    }
                }
                let Some(spec) = &callee.x.axioms.spec_axioms else {
                    // A declared broadcast lemma with no single extractable
                    // fact (e.g. a proof fn whose ensures we cannot close
                    // into one quantified formula): route it through the
                    // registry-hint path rather than failing.
                    self.statements.push(Statement::Broadcast(broadcast_path));
                    self.last_assertion = None;
                    return Ok(());
                };
                let id = register_spec_fn(self.ctx, fun, spec)?;
                self.statements.push(Statement::Reveal {
                    id,
                    rounds: *amount,
                });
            }
            StmX::Assert(assert_id, message, exp) => {
                // Id-less asserts (e.g. termination checks) get a stable
                // per-function ordinal so their obligation names are unique.
                let id = match assert_id {
                    Some(_) => assert_id_string(assert_id, "anonymous"),
                    None => {
                        let ordinal = self.anonymous_ordinal;
                        self.anonymous_ordinal += 1;
                        format!("anonymous_{ordinal}")
                    }
                };
                let expression = lower_exp(self.ctx, &self.env, exp)?;
                let description = message
                    .as_ref()
                    .map(|message| message.note.clone())
                    .unwrap_or_else(|| "Rust source assertion".to_owned());
                self.last_assertion = Some(expression.clone());
                self.statements.push(Statement::Assert(
                    Clause::new(id, span(&stm.span), expression).described(description),
                ));
            }
            StmX::Assume(exp) => {
                // Phase 1 of Verus's two-phase mutable borrow binds a
                // fresh mut-ref temporary via
                // `assume mut_ref_current(temp) == <value>`. For an
                // otherwise-unbound temporary that assumption is a pure
                // definition in the substitution environment.
                if let ExpX::Binary(BinaryOp::Eq(_), lhs, rhs) = &exp.x {
                    if let ExpX::Unary(UnaryOp::MutRefCurrent, target) = &lhs.x {
                        if let ExpX::Var(ident) | ExpX::VarLoc(ident) = &target.x {
                            if !self.env.contains_key(ident) {
                                let value = lower_exp(self.ctx, &self.env, rhs)?;
                                self.env.insert(ident.clone(), value);
                                self.var_types.insert(ident.clone(), target.typ.clone());
                                return Ok(());
                            }
                        }
                    }
                }
                // `assume has_resolved(x)` marks where the borrow `x`
                // expires: the prophecy resolves, i.e. the future projection
                // becomes the current referent value. Snapshot it so
                // `final(x)` downstream (asserts, postconditions) sees the
                // value at resolution.
                if let ExpX::UnaryOpr(UnaryOpr::HasResolved(typ), target) = &exp.x {
                    if matches!(undecorate(typ), TypX::MutRef(_)) {
                        if let ExpX::Var(ident) | ExpX::VarLoc(ident) = &target.x {
                            let root = resolve_mut_root(&self.ctx.registry, ident);
                            let current = self
                                .env
                                .get(&root)
                                .cloned()
                                .unwrap_or_else(|| Expr::Var(root.0.to_string()));
                            let returned_future = self
                                .ctx
                                .registry
                                .returned_mut_futures
                                .borrow()
                                .contains(&root);
                            if returned_future {
                                let future = self
                                    .ctx
                                    .registry
                                    .mut_futures
                                    .borrow()
                                    .get(&root)
                                    .cloned()
                                    .ok_or_else(|| {
                                        "returned `&mut` resolved without an allocated future"
                                            .to_owned()
                                    })?;
                                // A returned `&mut` is constrained by the
                                // callee contract through its prophecy
                                // symbol, then written and resolved by the
                                // caller.  Record that resolution explicitly;
                                // otherwise the contract's `final(result)`
                                // remains unrelated to the value written
                                // through the returned reference.
                                self.statements.push(Statement::Assume(Expr::binary(
                                    BinOp::Eq,
                                    future,
                                    current.clone(),
                                )));
                            }
                            // Keep a call-created prophecy as the named
                            // symbol used by the callee contract; the equation
                            // above resolves it without invalidating those
                            // earlier contract facts. A non-call return-site
                            // snapshot, however, is per-path: re-snapshot on
                            // every `has_resolved` so an early-return arm's
                            // stale value cannot shadow the fall-through path.
                            if !self.ctx.registry.call_futures.borrow().contains(&root) {
                                self.ctx
                                    .registry
                                    .mut_futures
                                    .borrow_mut()
                                    .insert(root, current);
                            }
                            return Ok(());
                        }
                    }
                }
                // Resolution of a non-reference value (Verus resolves
                // type-recursively) is vacuous in the sequential fragment:
                // `&mut` cannot occur inside data here, so a plain value
                // carries no prophecy to resolve.
                if let ExpX::UnaryOpr(UnaryOpr::HasResolved(typ), _) = &exp.x {
                    if !matches!(undecorate(typ), TypX::MutRef(_)) {
                        return Ok(());
                    }
                }
                // The well-typedness of a reference-typed temporary is
                // re-established piecewise (phase-1 definition equates it
                // with an already-constrained value; future symbols get
                // their range facts at allocation), so the packaged
                // has-type assume for the reference itself is dropped.
                if let ExpX::UnaryOpr(UnaryOpr::HasType(typ), _) = &exp.x {
                    if matches!(undecorate(typ), TypX::MutRef(_)) {
                        return Ok(());
                    }
                }
                self.ensure_futures(exp)?;
                let expression = lower_exp(self.ctx, &self.env, exp)?;
                if self.last_assertion.as_ref() != Some(&expression) {
                    self.statements.push(Statement::Assume(expression));
                }
                self.last_assertion = None;
            }
            StmX::Call {
                fun: CallTarget::Fun(fun),
                resolved_method,
                typ_args,
                args,
                dest,
                assert_id,
                body: None,
                ..
            } => {
                // A trait method call dispatches statically: verify against
                // the resolved concrete impl's contract (what Verus itself
                // does for statically-resolved calls). Calls that arrive
                // unresolved (contract positions) resolve through the
                // TraitMethodImpl declarations.
                let static_impl;
                let (fun, typ_args) = match resolved_method {
                    Some((impl_fun, impl_typs)) if self.ctx.declarations.contains_key(impl_fun) => {
                        (impl_fun, &impl_typs[..])
                    }
                    _ => match resolve_trait_method(self.ctx, fun, typ_args) {
                        Some(impl_fun) => {
                            static_impl = impl_fun;
                            (&static_impl, &typ_args[..])
                        }
                        None => (fun, &typ_args[..]),
                    },
                };
                // A requires-free contract whose single ensures is
                // `result == e` is DETERMINISTIC (a functional view such as
                // vstd's `Vec::len`): substitute `e` for the destination
                // instead of binding a contracted fresh symbol. The
                // difference matters under loop isolation: a for-range
                // bound `v.len()` stays `Vermilion.Seq.len v` inside the
                // isolated iteration, where a havocked temporary would have
                // lost its identity. The result type's range facts are kept
                // as an assumption on the substituted value.
                if let Some(dest_inner) = dest {
                    if let Ok(value) = self.functional_call_value(fun, typ_args, args) {
                        let destination = destination_var(&dest_inner.dest)?.clone();
                        for fact in type_range_facts(self.ctx, &dest_inner.dest.typ, &value)? {
                            self.type_facts.push(fact.clone());
                            self.statements.push(Statement::Assume(fact));
                        }
                        self.var_types
                            .insert(destination.clone(), dest_inner.dest.typ.clone());
                        self.env.insert(destination, value);
                        self.last_assertion = None;
                        return Ok(());
                    }
                }
                self.call(stm, fun, typ_args, args, dest, assert_id)?
            }
            StmX::Return {
                assert_id,
                ret_exp,
                inside_body,
                ..
            } => {
                if let (Some(ret_exp), Some(destination)) = (ret_exp, self.post_dest.clone()) {
                    if matches!(undecorate(&ret_exp.typ), TypX::MutRef(_)) {
                        let returned = match &ret_exp.x {
                            ExpX::Var(ident) | ExpX::VarLoc(ident) => {
                                resolve_mut_root(&self.ctx.registry, ident)
                            }
                            other => {
                                return Err(format!(
                                    "unsupported returned `&mut` expression shape {other:?}"
                                ))
                            }
                        };
                        // The named result and the returned borrow temporary
                        // are the same reference: both current and future
                        // projections must resolve through the temporary.
                        self.ctx
                            .registry
                            .mut_aliases
                            .borrow_mut()
                            .insert(destination.clone(), returned);
                    }
                    let ret_exp = lower_exp(self.ctx, &self.env, ret_exp)?;
                    self.env.insert(destination, ret_exp);
                }
                let base_id = assert_id_string(assert_id, "post");
                let posts = self.post_exps.clone();
                // Within the postconditions the prophecy resolves:
                // `final(x)` is the value at this return site.
                self.ctx.registry.in_postcondition.set(true);
                let mut lowered_posts = Vec::new();
                for post in posts.iter() {
                    let lowered = lower_exp(self.ctx, &self.env, post);
                    if lowered.is_err() {
                        self.ctx.registry.in_postcondition.set(false);
                    }
                    lowered_posts.push((post, lowered?));
                }
                self.ctx.registry.in_postcondition.set(false);
                for (index, (post, lowered)) in lowered_posts.into_iter().enumerate() {
                    let id = if posts.len() > 1 {
                        format!("{base_id}_{index}")
                    } else {
                        base_id.clone()
                    };
                    self.statements.push(Statement::Ensures(
                        Clause::new(id, span(&post.span), lowered)
                            .described("function postcondition (`ensures`)"),
                    ));
                }
                // Early returns need no extra handling here: Verus's
                // ast_to_sst already closes the path with `assume false`.
                let _ = inside_body;
                self.last_assertion = None;
            }
            // The closure body check: an inline sub-verification. The
            // closure's parameters become fresh binders with their type
            // facts; the body's own assumes (its `requires`) and asserts
            // (its `ensures`, overflow checks) run in the enclosing
            // context but die with the scope.
            StmX::ClosureInner { body, typ_inv_vars } => {
                let saved_env = self.env.clone();
                let saved_types = self.var_types.clone();
                let mut inner = Vec::new();
                std::mem::swap(&mut self.statements, &mut inner);
                let result = (|| -> Result<(), String> {
                    for (ident, typ) in typ_inv_vars.iter() {
                        let name = self.fresh_binder_name(&ident.0.to_string());
                        let binder = Binder::new(name.clone(), binder_type(self.ctx, typ)?);
                        self.statements.push(Statement::Fresh(binder));
                        let subject = Expr::Var(name.clone());
                        for fact in type_range_facts(self.ctx, typ, &subject)? {
                            self.type_facts.push(fact.clone());
                            self.statements.push(Statement::Assume(fact));
                        }
                        self.env.insert(ident.clone(), subject);
                        self.var_types.insert(ident.clone(), typ.clone());
                    }
                    self.statement(body)
                })();
                std::mem::swap(&mut self.statements, &mut inner);
                result?;
                self.statements.push(Statement::Scope(inner));
                self.env = saved_env;
                self.var_types = saved_types;
                self.last_assertion = None;
            }
            // `assert ... by (nonlinear_arith)` is a separate Verus query:
            // only type invariants, its explicit `requires`, and statements
            // in its proof block may establish its `ensures`. In particular,
            // ast_to_sst emits the ensured fact as an outer assumption before
            // this node; sharing the outer context would therefore prove the
            // assertion circularly. Reuse the neutral loop's isolated-body
            // semantics, just as the bit-vector query below does.
            StmX::AssertQuery {
                mode,
                typ_inv_exps: _,
                typ_inv_vars,
                body,
            } => {
                if *mode != AssertQueryMode::NonLinear {
                    return Err(format!("unsupported assertion-query mode {mode:?}"));
                }
                let saved_env = self.env.clone();
                let saved_types = self.var_types.clone();
                let saved_type_facts = self.type_facts.clone();
                let iteration = self.type_facts.clone();
                let mut inner = Vec::new();
                std::mem::swap(&mut self.statements, &mut inner);
                let result = (|| -> Result<(), String> {
                    for (ident, typ) in typ_inv_vars.iter() {
                        let name = self.fresh_binder_name(&ident.0.to_string());
                        let binder = Binder::new(name.clone(), binder_type(self.ctx, typ)?);
                        self.statements.push(Statement::Fresh(binder));
                        let subject = Expr::Var(name.clone());
                        for fact in type_range_facts(self.ctx, typ, &subject)? {
                            self.type_facts.push(fact.clone());
                            self.statements.push(Statement::Assume(fact));
                        }
                        self.env.insert(ident.clone(), subject);
                        self.var_types.insert(ident.clone(), typ.clone());
                    }
                    self.statement(body)
                })();
                std::mem::swap(&mut self.statements, &mut inner);
                result?;
                self.statements.push(Statement::Loop {
                    iteration,
                    body: inner,
                    exit: Vec::new(),
                    isolated: true,
                });
                self.env = saved_env;
                self.var_types = saved_types;
                self.type_facts = saved_type_facts;
                self.last_assertion = None;
            }
            // `assert(P) by (bit_vector)` (with optional `requires`):
            // Verus proves requires ⊢ ensures in an ISOLATED spun-off
            // query — isolated matters, because the outer block Verus
            // also emits ASSUMES the conclusions for downstream use, and
            // a context-sharing lowering would prove the goal from its
            // own circular assumption (differential-caught). The loop
            // rule is exactly that isolation: the body sees only the
            // iteration facts. Type facts are invariants, never assumed
            // conclusions, so including them is sound and supplies the
            // variable ranges Verus's bitvector sorts carry intrinsically.
            StmX::AssertBitVector { requires, ensures } => {
                let mut iteration = self.type_facts.clone();
                for requirement in requires.iter() {
                    iteration.push(lower_exp(self.ctx, &self.env, requirement)?);
                }
                let mut body = Vec::new();
                for (index, conclusion) in ensures.iter().enumerate() {
                    let lowered = lower_exp(self.ctx, &self.env, conclusion)?;
                    let ordinal = self.statements.len();
                    body.push(Statement::Assert(
                        Clause::new(
                            format!("bv_{ordinal}_{index}"),
                            span(&conclusion.span),
                            lowered,
                        )
                        .described("bit-vector assertion (`by (bit_vector)`)"),
                    ));
                }
                self.statements.push(Statement::Loop {
                    iteration,
                    body,
                    exit: Vec::new(),
                    isolated: true,
                });
                self.last_assertion = None;
            }
            other => return Err(format!("unsupported SST statement {other:?}")),
        }
        Ok(())
    }
}

/// Lower one function's pre-poly SST into the neutral view. Spec functions
/// referenced by the obligations accumulate in `registry` across the whole
/// translation run.
pub fn function_view(
    function: &FunctionSst,
    declarations: &HashMap<vir::ast::Fun, FunctionSst>,
    datatype_decls: &HashMap<vir::ast::Dt, vir::ast::Datatype>,
    assoc_type_impls: &[vir::ast::AssocTypeImpl],
    registry: &SpecRegistry,
) -> Result<FunctionView, String> {
    // Fresh work fuse per function (see `SpecRegistry::work`).
    registry.work.set(0);
    // Refusals from outside the expression/statement lowerers (binder
    // types, contract plumbing) fall back to the function's own span.
    function_view_impl(
        function,
        declarations,
        datatype_decls,
        assoc_type_impls,
        registry,
    )
    .map_err(|error| annotate_span(error, &function.span))
}

fn function_view_impl(
    function: &FunctionSst,
    declarations: &HashMap<vir::ast::Fun, FunctionSst>,
    datatype_decls: &HashMap<vir::ast::Dt, vir::ast::Datatype>,
    assoc_type_impls: &[vir::ast::AssocTypeImpl],
    registry: &SpecRegistry,
) -> Result<FunctionView, String> {
    let ctx = ExpCtx {
        declarations,
        datatype_decls,
        assoc_type_impls,
        registry,
        typ_substs: None,
    };
    // Mut-ref prophecy state is per checked function.
    registry.mut_futures.borrow_mut().clear();
    registry.returned_mut_futures.borrow_mut().clear();
    registry.mut_aliases.borrow_mut().clear();
    registry.closure_preds.borrow_mut().clear();
    registry.trait_fn_symbols.borrow_mut().clear();
    registry.in_postcondition.set(false);
    *registry.current_params.borrow_mut() = function
        .x
        .pars
        .iter()
        .map(|parameter| parameter.x.name.clone())
        .collect();
    let path = &function.x.name.path;
    let id = function_id_of(path)?;

    let check = function.x.exec_proof_check.as_ref().ok_or_else(|| {
        let segments: Vec<&str> = path.segments.iter().map(|s| s.as_str()).collect();
        format!("function {} has no exec proof check", segments.join("::"))
    })?;

    let mut lowering = Lowering {
        env: Env::new(),
        ctx,
        statements: Vec::new(),
        post_dest: check.post_condition.dest.clone(),
        post_exps: check.post_condition.ens_exps.iter().cloned().collect(),
        last_assertion: None,
        used_binder_names: Vec::new(),
        var_types: HashMap::new(),
        type_facts: Vec::new(),
        anonymous_ordinal: 0,
        loop_frames: Vec::new(),
    };
    let mut binders = Vec::new();
    let mut requires = Vec::new();
    for parameter in function.x.pars.iter() {
        let base = parameter.x.name.0.to_string();
        lowering
            .env
            .insert(parameter.x.name.clone(), Expr::Var(base.clone()));
        lowering.used_binder_names.push(base.clone());
        lowering
            .var_types
            .insert(parameter.x.name.clone(), parameter.x.typ.clone());
        binders.push(Binder::new(
            base.clone(),
            binder_type(ctx, &parameter.x.typ)?,
        ));
        for fact in type_range_facts(ctx, &parameter.x.typ, &Expr::Var(base))? {
            lowering.type_facts.push(fact.clone());
            requires.push(fact);
        }
    }
    // The named result is assigned by `Return` nodes rather than ordinary
    // SST assignments. Enrol its declared type up front so returns in both
    // arms of a branch can create a typed SSA join symbol.
    if let Some(destination) = &check.post_condition.dest {
        lowering
            .var_types
            .insert(destination.clone(), function.x.ret.x.typ.clone());
    }
    for requirement in check.reqs.iter() {
        requires.push(lower_exp(ctx, &lowering.env, requirement)?);
    }
    // Recursion: bind the `decrease%init` locals (the measure's value at
    // entry) before the body; the body's CheckDecreaseHeight asserts compare
    // against them at each recursive call site.
    for statement in check.local_decls_decreases_init.iter() {
        lowering.statement(statement)?;
    }
    lowering.statement(&check.body)?;

    // Const generics (`const N: usize`) are value parameters: they leave
    // the type-parameter list and join the binders as `Int`s, with the
    // range facts of their declared Rust type as extra hypotheses.
    let const_params: HashMap<String, Typ> = function
        .x
        .typ_bounds
        .iter()
        .filter_map(|bound| match &**bound {
            vir::ast::GenericBoundX::ConstTyp(param, typ) => match undecorate(param) {
                TypX::TypParam(name) => Some((name.to_string(), typ.clone())),
                _ => None,
            },
            _ => None,
        })
        .collect();
    let mut binders = binders;
    let mut requires = requires;
    let mut type_params = Vec::new();
    for param in function.x.typ_params.iter() {
        let name = param.to_string();
        if let Some(typ) = const_params.get(&name) {
            binders.push(Binder::new(name.clone(), Ty::Int));
            for fact in type_range_facts(ctx, typ, &Expr::Var(name.clone()))? {
                requires.push(fact);
            }
        } else {
            type_params.push(name);
        }
    }
    for (_, (name, ty)) in ctx.registry.trait_fn_symbols.borrow().iter() {
        binders.push(Binder::new(name.clone(), ty.clone()));
    }
    Ok(FunctionView {
        id,
        type_params,
        binders,
        requires,
        body: lowering.statements,
    })
}
