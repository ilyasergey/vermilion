//! Direct `FunctionSst` entry point: decode the exported finalized VIR crate,
//! run the pinned middle end in process, lower each function to the neutral
//! `FunctionView`, and serialize the textual IR consumed by the Lean side
//! (`lake exe vrml_gen`, see `docs/ir.md`).

mod lower;
mod middle;

use std::path::PathBuf;

/// Render a lowering refusal as a rustc-style diagnostic at the offending
/// construct's span (attached by `lower::annotate_span`), so both humans and
/// the editor can place it in the file. Never a bare panic/Debug dump: an
/// out-of-fragment function is an expected, legible outcome.
fn print_refusal(error: &str) {
    if let Some(rest) = error.strip_prefix(lower::SPAN_MARKER) {
        if let Some((location, message)) = rest.split_once('\n') {
            let fields: Vec<&str> = location.rsplitn(5, ':').collect();
            if fields.len() == 5 {
                // rsplitn yields the fields reversed: ec, el, sc, sl, file.
                let (file, sl, sc, el, ec) =
                    (fields[4], fields[3], fields[2], fields[1], fields[0]);
                eprintln!("error[vermilion]: outside the supported fragment: {message}");
                eprintln!("  --> {file}:{sl}:{sc}");
                eprintln!("   = note: span ends at {el}:{ec}");
                eprintln!(
                    "   = help: the construct is not lowered yet — docs/ir.md documents \
                     the current fragment; docs/reports/target-projects.md schedules its growth"
                );
                return;
            }
        }
    }
    eprintln!("error[vermilion]: outside the supported fragment: {error}");
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut arguments = std::env::args().skip(1);
    let mut export_path: Option<PathBuf> = None;
    let mut out_path: Option<PathBuf> = None;
    while let Some(argument) = arguments.next() {
        match argument.as_str() {
            "--out" => {
                let value = arguments.next().ok_or("--out requires a path argument")?;
                out_path = Some(PathBuf::from(value));
            }
            _ => export_path = Some(PathBuf::from(argument)),
        }
    }
    let export_path =
        export_path.ok_or("usage: vermilion_direct <vir-export.bin> [--out <ir.sexp>]")?;
    let out_path = out_path.unwrap_or_else(|| {
        // .vermilion/<stem>-vir.bin -> .vermilion/<stem>-ir.sexp
        let stem = export_path
            .file_stem()
            .and_then(|stem| stem.to_str())
            .unwrap_or("export");
        let name = match stem.strip_suffix("-vir") {
            Some(base) => format!("{base}-ir.sexp"),
            None => format!("{stem}-ir.sexp"),
        };
        export_path.with_file_name(name)
    });

    let export = middle::read_export(&export_path)?;
    let middle_output = middle::function_ssts(&export)?;
    let registry = lower::SpecRegistry::new();
    let mut views = Vec::new();
    let mut refused = Vec::new();
    for function in &middle_output.checked {
        if std::env::var("VERMILION_TRACE_FUNCTIONS").is_ok() {
            eprintln!("[vermilion-trace] lowering {:?}", function.x.name);
        }
        match lower::function_view(
            function,
            &middle_output.declarations,
            &middle_output.datatypes,
            &middle_output.assoc_type_impls,
            &registry,
        ) {
            Ok(view) => views.push(view),
            Err(error) => {
                // Per-function isolation: report the refusal at its span,
                // record a disposition in the IR, and keep lowering the
                // siblings. Soundness note: a refused SPEC FN fails every
                // function whose lowering references it (the registry only
                // caches successes), so no obligation is ever emitted with
                // a silently weakened statement.
                print_refusal(&error);
                refused.push(lower::refused_view(function, &error));
            }
        }
    }
    if views.is_empty() && !refused.is_empty() {
        // Nothing lowered: keep the historical whole-run refusal contract
        // (exit 1, diagnostics already printed) that --expect-unsupported
        // probes and fail-closed drivers pin.
        std::process::exit(1);
    }

    let (datatypes, spec_fns) = registry.into_views();
    let ir = vermilion_backend::ir::write_ir(&datatypes, &spec_fns, &views, &refused);
    let unchanged = std::fs::read_to_string(&out_path).ok().as_deref() == Some(&ir);
    if !unchanged {
        if let Some(parent) = out_path.parent() {
            std::fs::create_dir_all(parent)?;
        }
        std::fs::write(&out_path, &ir)?;
    }
    println!(
        "lowered {} functions into {} IR; {} {} ({} bytes)",
        views.len(),
        vermilion_backend::ir::IR_VERSION,
        if unchanged { "unchanged" } else { "updated" },
        out_path.display(),
        ir.len()
    );
    Ok(())
}
