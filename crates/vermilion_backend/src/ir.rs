//! Serialize the neutral `FunctionView` model into the textual S-expression
//! IR consumed by the Lean library `Vermilion.Ir` (see `docs/ir.md`).
//!
//! Rust never renders Lean syntax; this writer is the entire output surface
//! of the Rust half of the pipeline.

use std::fmt::Write;

use crate::model::{Clause, DatatypeView, Expr, FunctionId, FunctionView, RefusedView, Span, SpecFnView, Statement};

pub const IR_VERSION: u32 = 1;

fn quoted(raw: &str) -> String {
    let mut text = String::with_capacity(raw.len() + 2);
    text.push('"');
    for ch in raw.chars() {
        match ch {
            '\\' => text.push_str("\\\\"),
            '"' => text.push_str("\\\""),
            '\n' => text.push_str("\\n"),
            other => text.push(other),
        }
    }
    text.push('"');
    text
}

fn write_expr(out: &mut String, expr: &Expr) {
    match expr {
        Expr::Var(name) => write!(out, "(var {})", quoted(name)).unwrap(),
        Expr::Int(digits) => write!(out, "(int {digits})").unwrap(),
        Expr::True => out.push_str("true"),
        Expr::False => out.push_str("false"),
        Expr::Binary(op, lhs, rhs) => {
            write!(out, "({} ", op.ir_symbol()).unwrap();
            write_expr(out, lhs);
            out.push(' ');
            write_expr(out, rhs);
            out.push(')');
        }
        Expr::Not(inner) => {
            out.push_str("(not ");
            write_expr(out, inner);
            out.push(')');
        }
        Expr::Ite(cond, then_value, else_value) => {
            out.push_str("(ite ");
            write_expr(out, cond);
            out.push(' ');
            write_expr(out, then_value);
            out.push(' ');
            write_expr(out, else_value);
            out.push(')');
        }
        Expr::URange(bits, inner) => {
            write!(out, "(urange {bits} ").unwrap();
            write_expr(out, inner);
            out.push(')');
        }
        Expr::SRange(bits, inner) => {
            write!(out, "(srange {bits} ").unwrap();
            write_expr(out, inner);
            out.push(')');
        }
        Expr::NatClip(inner) => {
            out.push_str("(natclip ");
            write_expr(out, inner);
            out.push(')');
        }
        Expr::SignedClip(bits, inner) => {
            write!(out, "(sclip {bits} ").unwrap();
            write_expr(out, inner);
            out.push(')');
        }
        Expr::SeqLen(sequence) => {
            out.push_str("(seqlen ");
            write_expr(out, sequence);
            out.push(')');
        }
        Expr::SeqPush(sequence, element) => {
            out.push_str("(seqpush ");
            write_expr(out, sequence);
            out.push(' ');
            write_expr(out, element);
            out.push(')');
        }
        Expr::SeqIndex(sequence, index) => {
            out.push_str("(seqindex ");
            write_expr(out, sequence);
            out.push(' ');
            write_expr(out, index);
            out.push(')');
        }
        Expr::SeqUpdate(sequence, index, element) => {
            out.push_str("(sequpdate ");
            write_expr(out, sequence);
            out.push(' ');
            write_expr(out, index);
            out.push(' ');
            write_expr(out, element);
            out.push(')');
        }
        Expr::SeqSubrange(sequence, from, to) => {
            out.push_str("(seqsubrange ");
            write_expr(out, sequence);
            out.push(' ');
            write_expr(out, from);
            out.push(' ');
            write_expr(out, to);
            out.push(')');
        }
        Expr::SeqAdd(left, right) => {
            out.push_str("(seqadd ");
            write_expr(out, left);
            out.push(' ');
            write_expr(out, right);
            out.push(')');
        }
        Expr::SeqToMultiset(operand) => {
            out.push_str("(seqtomultiset ");
            write_expr(out, operand);
            out.push(')');
        }
        Expr::VstdApply(path, args) => {
            write!(out, "(vstdapply {}", quoted(path)).unwrap();
            for arg in args {
                out.push(' ');
                write_expr(out, arg);
            }
            out.push(')');
        }
        Expr::SeqEmpty(elem) => write!(out, "(seqempty {})", elem.ir_form()).unwrap(),
        Expr::Apply(id, type_args, args) => {
            out.push_str("(apply ");
            write_function_id(out, id);
            // Explicit type-argument instantiations (generic uninterp spec
            // fns, issue #19). Omitted when empty: the node form is then
            // byte-identical to the pre-generic grammar.
            if !type_args.is_empty() {
                out.push_str(" (typs");
                for (param, ty) in type_args {
                    write!(out, " ({} {})", quoted(param), ty.ir_form()).unwrap();
                }
                out.push(')');
            }
            for arg in args {
                out.push(' ');
                write_expr(out, arg);
            }
            out.push(')');
        }
        Expr::Coll(op, args) => {
            write!(out, "({}", op.ir_symbol()).unwrap();
            for arg in args {
                out.push(' ');
                write_expr(out, arg);
            }
            out.push(')');
        }
        Expr::SetEmpty(elem) => write!(out, "(setempty {})", elem.ir_form()).unwrap(),
        Expr::StrLit(value) => write!(out, "(strlit {})", quoted(value)).unwrap(),
        Expr::MapEmpty(key, value) => {
            write!(out, "(mapempty {} {})", key.ir_form(), value.ir_form()).unwrap()
        }
        Expr::MultisetEmpty(elem) => {
            write!(out, "(msempty {})", elem.ir_form()).unwrap()
        }
        Expr::Ctor(id, variant, type_args, fields) => {
            write!(out, "(ctor {} {}", id.ir_form(), quoted(variant)).unwrap();
            // Underdetermined type-parameter instantiations (issue #18).
            // Omitted when empty: the node form is then byte-identical to
            // the pre-annotation grammar.
            if !type_args.is_empty() {
                out.push_str(" (typs");
                for (param, ty) in type_args {
                    write!(out, " ({} {})", quoted(param), ty.ir_form()).unwrap();
                }
                out.push(')');
            }
            for field in fields {
                out.push(' ');
                write_expr(out, field);
            }
            out.push(')');
        }
        Expr::FieldOf(id, variant, field, operand) => {
            write!(
                out,
                "(fieldof {} {} {} ",
                id.ir_form(),
                quoted(variant),
                quoted(field)
            )
            .unwrap();
            write_expr(out, operand);
            out.push(')');
        }
        Expr::IsVariant(id, variant, operand) => {
            write!(out, "(isvariant {} {} ", id.ir_form(), quoted(variant)).unwrap();
            write_expr(out, operand);
            out.push(')');
        }
        Expr::BitOp(kind, signed, bits, lhs, rhs) => {
            let sign = if *signed { "s" } else { "u" };
            write!(out, "(bitop {} {sign} {bits} ", kind.ir_form()).unwrap();
            write_expr(out, lhs);
            out.push(' ');
            write_expr(out, rhs);
            out.push(')');
        }
        Expr::SeqNew(len, f) => {
            out.push_str("(seqnew ");
            write_expr(out, len);
            out.push(' ');
            write_expr(out, f);
            out.push(')');
        }
        Expr::Lambda(binders, body) => {
            out.push_str("(lambda (");
            for (index, binder) in binders.iter().enumerate() {
                if index > 0 {
                    out.push(' ');
                }
                write!(out, "({} {})", quoted(&binder.name), binder.ty.ir_form()).unwrap();
            }
            out.push_str(") ");
            write_expr(out, body);
            out.push(')');
        }
        Expr::CallFn(callee, args) => {
            out.push_str("(applyfn ");
            write_expr(out, callee);
            for argument in args {
                out.push(' ');
                write_expr(out, argument);
            }
            out.push(')');
        }
        Expr::Quant(forall, binders, triggers, body) => {
            let head = if *forall { "forall" } else { "exists" };
            write!(out, "({head} (").unwrap();
            for (index, binder) in binders.iter().enumerate() {
                if index > 0 {
                    out.push(' ');
                }
                write!(out, "({} {})", quoted(&binder.name), binder.ty.ir_form()).unwrap();
            }
            out.push_str(") (triggers");
            for group in triggers {
                out.push_str(" (trigger");
                for expression in group {
                    out.push(' ');
                    write_expr(out, expression);
                }
                out.push(')');
            }
            out.push_str(") ");
            write_expr(out, body);
            out.push(')');
        }
        Expr::Choose(binder, triggers, body) => {
            write!(out, "(choose (({} {})) (triggers", quoted(&binder.name), binder.ty.ir_form())
                .unwrap();
            for group in triggers {
                out.push_str(" (trigger");
                for expression in group {
                    out.push(' ');
                    write_expr(out, expression);
                }
                out.push(')');
            }
            out.push_str(") ");
            write_expr(out, body);
            out.push(')');
        }
    }
}

fn write_span(out: &mut String, span: &Span) {
    write!(
        out,
        "(span {} {} {} {} {})",
        quoted(&span.file),
        span.start_line,
        span.start_column,
        span.end_line,
        span.end_column
    )
    .unwrap();
}

fn write_clause(out: &mut String, clause: &Clause) {
    write!(out, "(clause {} ", quoted(&clause.assert_id)).unwrap();
    write_span(out, &clause.span);
    out.push(' ');
    write_expr(out, &clause.proposition);
    if let Some(description) = &clause.description {
        out.push(' ');
        out.push_str(&quoted(description));
    }
    out.push(')');
}

fn write_statement(out: &mut String, indent: usize, statement: &Statement) {
    let pad = " ".repeat(indent);
    match statement {
        Statement::Assume(expression) => {
            write!(out, "{pad}(assume ").unwrap();
            write_expr(out, expression);
            out.push_str(")\n");
        }
        Statement::Assert(clause) => {
            write!(out, "{pad}(assert ").unwrap();
            write_clause(out, clause);
            out.push_str(")\n");
        }
        Statement::Ensures(clause) => {
            write!(out, "{pad}(ensures ").unwrap();
            write_clause(out, clause);
            out.push_str(")\n");
        }
        Statement::Fresh(binder) => {
            writeln!(
                out,
                "{pad}(fresh ({} {}))",
                quoted(&binder.name),
                binder.ty.ir_form()
            )
            .unwrap();
        }
        Statement::Reveal { id, rounds } => {
            write!(out, "{pad}(reveal ").unwrap();
            write_function_id(out, id);
            writeln!(out, " {rounds})").unwrap();
        }
        Statement::Broadcast(path) => {
            writeln!(out, "{pad}(broadcast {})", quoted(path)).unwrap();
        }
        Statement::Invariant { phase, clause } => {
            write!(out, "{pad}(invariant {} ", phase.ir_symbol()).unwrap();
            write_clause(out, clause);
            out.push_str(")\n");
        }
        Statement::Loop {
            iteration,
            body,
            exit,
            isolated,
        } => {
            // Non-isolated loops carry a `noniso` marker; the isolated
            // form is byte-identical to the pre-DL6 grammar.
            if *isolated {
                writeln!(out, "{pad}(loop").unwrap();
            } else {
                writeln!(out, "{pad}(loop noniso").unwrap();
            }
            write!(out, "{pad}  (iteration").unwrap();
            for expression in iteration {
                out.push(' ');
                write_expr(out, expression);
            }
            out.push_str(")\n");
            writeln!(out, "{pad}  (body").unwrap();
            for statement in body {
                write_statement(out, indent + 4, statement);
            }
            writeln!(out, "{pad}  )").unwrap();
            write!(out, "{pad}  (exit").unwrap();
            for expression in exit {
                out.push(' ');
                write_expr(out, expression);
            }
            out.push_str("))\n");
        }
        Statement::Scope(children) => {
            writeln!(out, "{pad}(scope").unwrap();
            for statement in children {
                write_statement(out, indent + 2, statement);
            }
            writeln!(out, "{pad})").unwrap();
        }
        Statement::Branch {
            condition,
            then_branch,
            else_branch,
        } => {
            write!(out, "{pad}(branch ").unwrap();
            write_expr(out, condition);
            out.push('\n');
            writeln!(out, "{pad}  (then").unwrap();
            for statement in then_branch {
                write_statement(out, indent + 4, statement);
            }
            writeln!(out, "{pad}  )").unwrap();
            writeln!(out, "{pad}  (else").unwrap();
            for statement in else_branch {
                write_statement(out, indent + 4, statement);
            }
            writeln!(out, "{pad}  ))").unwrap();
        }
        Statement::Call(call) => {
            writeln!(out, "{pad}(call {}", quoted(&call.callee)).unwrap();
            write!(out, "{pad}  (requires").unwrap();
            for clause in &call.requires {
                out.push(' ');
                write_clause(out, clause);
            }
            out.push_str(")\n");
            if let Some(result) = &call.result {
                writeln!(
                    out,
                    "{pad}  (result ({} {}))",
                    quoted(&result.name),
                    result.ty.ir_form()
                )
                .unwrap();
            }
            write!(out, "{pad}  (ensures").unwrap();
            for expression in &call.ensures {
                out.push(' ');
                write_expr(out, expression);
            }
            out.push_str("))\n");
        }
    }
}

fn write_type_params(out: &mut String, params: &[String]) {
    out.push_str("(typarams");
    for param in params {
        out.push(' ');
        out.push_str(&quoted(param));
    }
    out.push(')');
}

fn write_function_id(out: &mut String, id: &FunctionId) {
    write!(out, "(id {} (", quoted(&id.crate_name)).unwrap();
    for (index, module) in id.modules.iter().enumerate() {
        if index > 0 {
            out.push(' ');
        }
        out.push_str(&quoted(module));
    }
    write!(out, ") {})", quoted(&id.name)).unwrap();
}

/// Serialize a whole translation run: the datatype and spec-function
/// definitions the obligations reference, then every checked function, in
/// the deterministic order the middle end produced, then a `(refused …)`
/// record for every checked function the adapter could not lower — the
/// Lean side turns those into source-mapped per-function dispositions
/// (docs/ir.md), so one out-of-fragment function no longer suppresses its
/// lowered siblings.
pub fn write_ir(
    datatypes: &[DatatypeView],
    spec_fns: &[SpecFnView],
    views: &[FunctionView],
    refused: &[RefusedView],
) -> String {
    let mut out = String::new();
    writeln!(out, "(vrml-ir {IR_VERSION}").unwrap();
    for datatype in datatypes {
        write!(out, "  (datatype {}\n    ", datatype.id.ir_form()).unwrap();
        write_type_params(&mut out, &datatype.type_params);
        out.push('\n');
        for variant in &datatype.variants {
            write!(out, "    (variant {}", quoted(&variant.name)).unwrap();
            for field in &variant.fields {
                write!(out, " (field {} {})", quoted(&field.name), field.ty.ir_form())
                    .unwrap();
            }
            out.push_str(")\n");
        }
        out.push_str("    )\n");
    }
    for spec_fn in spec_fns {
        // An uninterpreted spec fn has no body/decreases/visibility: a
        // distinct, smaller node keeps both parsers honest (docs/ir.md).
        if spec_fn.uninterpreted {
            out.push_str("  (specfn-opaque ");
            write_function_id(&mut out, &spec_fn.id);
            out.push_str("\n    ");
            write_type_params(&mut out, &spec_fn.type_params);
            out.push('\n');
            out.push_str("    ");
            write_span(&mut out, &spec_fn.span);
            out.push('\n');
            write!(out, "    (binders").unwrap();
            for binder in &spec_fn.binders {
                write!(out, " ({} {})", quoted(&binder.name), binder.ty.ir_form()).unwrap();
            }
            out.push_str(")\n");
            writeln!(out, "    (ret {}))", spec_fn.ret.ir_form()).unwrap();
            continue;
        }
        out.push_str("  (specfn ");
        write_function_id(&mut out, &spec_fn.id);
        out.push_str("\n    ");
        write_type_params(&mut out, &spec_fn.type_params);
        out.push('\n');
        out.push_str("    ");
        write_span(&mut out, &spec_fn.span);
        out.push('\n');
        write!(out, "    (binders").unwrap();
        for binder in &spec_fn.binders {
            write!(out, " ({} {})", quoted(&binder.name), binder.ty.ir_form()).unwrap();
        }
        out.push_str(")\n");
        writeln!(out, "    (ret {})", spec_fn.ret.ir_form()).unwrap();
        writeln!(out, "    (visible {})", u32::from(spec_fn.visible)).unwrap();
        write!(out, "    (decreases").unwrap();
        for measure in &spec_fn.decreases {
            out.push(' ');
            write_expr(&mut out, measure);
        }
        out.push_str(")\n");
        write!(out, "    (ranges").unwrap();
        for fact in &spec_fn.param_ranges {
            out.push(' ');
            write_expr(&mut out, fact);
        }
        out.push_str(")\n    (body ");
        write_expr(&mut out, &spec_fn.body);
        out.push_str("))\n");
    }
    for view in views {
        out.push_str("  (function ");
        write_function_id(&mut out, &view.id);
        out.push_str("\n    ");
        write_type_params(&mut out, &view.type_params);
        out.push('\n');
        write!(out, "    (binders").unwrap();
        for binder in &view.binders {
            write!(out, " ({} {})", quoted(&binder.name), binder.ty.ir_form()).unwrap();
        }
        out.push_str(")\n");
        write!(out, "    (requires").unwrap();
        for requirement in &view.requires {
            out.push(' ');
            write_expr(&mut out, requirement);
        }
        out.push_str(")\n");
        writeln!(out, "    (body").unwrap();
        for statement in &view.body {
            write_statement(&mut out, 6, statement);
        }
        out.push_str("    ))\n");
    }
    for refusal in refused {
        // One line per refusal keeps the form trivially greppable; the
        // message is pre-sanitized to a single line by the adapter.
        out.push_str("  (refused ");
        write_function_id(&mut out, &refusal.id);
        out.push(' ');
        write_span(&mut out, &refusal.span);
        write!(out, " {})", quoted(&refusal.message)).unwrap();
        out.push('\n');
    }
    out.push_str(")\n");
    out
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::model::*;

    #[test]
    fn serializes_structured_trees() {
        let view = FunctionView {
            id: FunctionId::new("demo", ["math"], "inc"),
            type_params: vec![],
            binders: vec![Binder::new("x", Ty::Int)],
            requires: vec![Expr::binary(
                BinOp::Le,
                Expr::Int("0".to_owned()),
                Expr::Var("x".to_owned()),
            )],
            body: vec![
                Statement::Assert(
                    Clause::new(
                        "a1",
                        Span::new("src/demo.rs", 10, 5),
                        Expr::binary(
                            BinOp::Gt,
                            Expr::binary(
                                BinOp::Add,
                                Expr::Var("x".to_owned()),
                                Expr::Int("1".to_owned()),
                            ),
                            Expr::Int("0".to_owned()),
                        ),
                    )
                    .described("Rust source assertion"),
                ),
                Statement::Call(CallContract {
                    callee: "bounded".to_owned(),
                    requires: vec![],
                    result: Some(Binder::new("r", Ty::Int)),
                    ensures: vec![Expr::binary(
                        BinOp::Le,
                        Expr::Var("r".to_owned()),
                        Expr::Int("10".to_owned()),
                    )],
                }),
            ],
        };
        let ir = write_ir(&[], &[], &[view], &[]);
        assert!(ir.starts_with("(vrml-ir 1\n"));
        assert!(ir.contains("(function (id \"demo\" (\"math\") \"inc\")"));
        assert!(ir.contains("(binders (\"x\" Int))"));
        assert!(ir.contains("(requires (le (int 0) (var \"x\")))"));
        assert!(ir.contains(
            "(assert (clause \"a1\" (span \"src/demo.rs\" 10 5 10 5) \
             (gt (add (var \"x\") (int 1)) (int 0)) \"Rust source assertion\"))"
        ));
        assert!(ir.contains("(result (\"r\" Int))"));
        assert!(ir.contains("(ensures (le (var \"r\") (int 10))))"));
        assert!(ir.ends_with(")\n"));
    }

    #[test]
    fn escapes_strings() {
        assert_eq!(quoted("a\"b\\c\nd"), "\"a\\\"b\\\\c\\nd\"");
    }
}
