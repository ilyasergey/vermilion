//! Check a generated Lean module and report failed obligations as
//! rustc/Verus-style JSON diagnostics keyed by the original Rust spans.
//!
//! Usage (from the repository root, after `lake build Vermilion`):
//!
//! ```console
//! vrml_check examples/m1-diagnostics/generated/broken.json
//! ```
//!
//! The manifest records its emission mode (`docs/vcgen.md`, `vrml_gen
//! --mode`): in per-file mode one generated module holds everything; in
//! per-function mode each function has its own unit module importing the
//! shared `Specs` module, and the units are judged by **parallel** Lean
//! processes. The verdict, diagnostics, and exit codes are identical across
//! modes.
//!
//! Flags:
//! - `--llm` adds a verbose self-contained report per failure;
//! - `--only <function>` (repeatable) restricts the check to the named
//!   functions' obligations (watch mode's incremental loop);
//! - `--twin-coverage-only` emits only the static twin-coverage diagnostics
//!   and exits (no Lean run);
//! - `--twin-check` kernel-checks the user-owned `proofs/` twin(s) of this
//!   manifest instead of the generated modules (per-function twins are
//!   checked in parallel).
//!
//! Exit code 0 means every obligation in the manifest was accepted by Lean;
//! 1 means at least one failed (diagnostics on stdout, human text on stderr);
//! 2 means the check itself could not run.

use std::collections::BTreeSet;
use std::path::{Path, PathBuf};
use std::process::Command;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Mutex;

use vermilion_backend::project::{
    rewrite_specs_import, twin_of, ModuleManifest, ObligationRecord,
};

#[derive(Debug, serde::Deserialize)]
struct LeanPosition {
    line: usize,
    column: usize,
}

#[derive(Debug, serde::Deserialize)]
struct LeanMessage {
    severity: String,
    pos: LeanPosition,
    #[serde(rename = "endPos")]
    end_pos: Option<LeanPosition>,
    data: String,
}

fn find_cvc5_plugin() -> Option<PathBuf> {
    let lib_dir = Path::new(".lake/packages/cvc5/.lake/build/lib");
    ["libcvc5_cvc5.dylib", "libcvc5_cvc5.so", "cvc5_cvc5.dll"]
        .into_iter()
        .map(|name| lib_dir.join(name))
        .find(|path| path.exists())
}

fn failure_message(kind: &str) -> &'static str {
    match kind {
        "assert" => "assertion failed",
        "ensures" => "postcondition not satisfied",
        "call_requires" => "precondition not satisfied",
        "invariant_entry" => "loop invariant not satisfied before the loop",
        "invariant_preserve" => "loop invariant not maintained by the loop body",
        "invariant_break" => "loop invariant (or loop ensures) not satisfied at this break",
        "typeclass_evidence" => "required Lean typeclass evidence is unresolved",
        _ => "verification condition failed",
    }
}

/// The workspace LEAN_PATH cached by scripts/lean_env.sh, if still fresh
/// (same staleness rule: invalid once the Lake configuration changed).
fn cached_lean_path() -> Option<String> {
    let cache = Path::new(".vermilion/lean-path");
    let cache_modified = std::fs::metadata(cache).ok()?.modified().ok()?;
    for config in ["lakefile.lean", "lake-manifest.json"] {
        if let Ok(metadata) = std::fs::metadata(config) {
            if metadata.modified().ok()? > cache_modified {
                return None;
            }
        }
    }
    let content = std::fs::read_to_string(cache).ok()?;
    let trimmed = content.trim();
    if trimmed.is_empty() {
        None
    } else {
        Some(trimmed.to_owned())
    }
}

/// The LEAN_PATH to hand to direct `lean` invocations, resolved once.
/// `None` means fall back to `lake env lean` (a ~30s workspace
/// re-materialization per call).
fn resolve_lean_path() -> Option<String> {
    std::env::var("LEAN_PATH")
        .ok()
        .filter(|path| !path.is_empty())
        .or_else(cached_lean_path)
}

/// A `lean` invocation (direct with the resolved LEAN_PATH, else through
/// lake) with the cvc5 plugin when present. `extra_root` is prepended to
/// LEAN_PATH — the shadow olean root holding the shared `Specs` modules our
/// checks import (never Lake's own build dir, which stays Lake-owned so the
/// editor's incremental builds see only artifacts with consistent traces).
fn lean_command(lean_path: &Option<String>, extra_root: Option<&str>) -> Command {
    let mut command = if let Some(lean_path) = lean_path {
        let mut direct = Command::new("lean");
        let path = match extra_root {
            Some(root) => format!("{root}:{lean_path}"),
            None => lean_path.clone(),
        };
        direct.env("LEAN_PATH", path);
        direct
    } else {
        let mut through_lake = Command::new("lake");
        through_lake.args(["env", "lean"]);
        if let Some(root) = extra_root {
            through_lake.env("LEAN_PATH", root);
        }
        through_lake
    };
    if let Some(plugin) = find_cvc5_plugin() {
        command.arg(format!("--plugin={}", plugin.display()));
    }
    // Ladder budget profile (sweep-scale runs): `--rung-budget` and
    // friends land here as env vars so every lean invocation — direct or
    // through lake — carries the `-D` options without threading values
    // through the call graph. Defaults (unset) leave the interactive
    // tuning untouched.
    for (variable, option) in [
        ("VRML_RUNG_BUDGET", "vermilion.rungBudget"),
        ("VRML_SATURATE_BUDGET", "vermilion.saturateBudget"),
        ("VRML_SMT_BUDGET", "vermilion.smtBudget"),
        ("VRML_SMT_TIMEOUT", "vermilion.smtTimeout"),
    ] {
        if let Ok(value) = std::env::var(variable) {
            if !value.is_empty() {
                command.arg(format!("-D{option}={value}"));
            }
        }
    }
    command
}

/// FNV-1a (64-bit) of a string, for the specs-olean freshness stamp.
fn fnv1a(text: &str) -> String {
    let mut hash: u64 = 0xcbf29ce484222325;
    for byte in text.as_bytes() {
        hash ^= u64::from(*byte);
        hash = hash.wrapping_mul(0x100000001b3);
    }
    format!("{hash:016x}")
}

/// Make sure the shadow olean of the shared `Specs` module is a fresh
/// compile of `source_lean` (repo-relative), returning the shadow root to
/// prepend to LEAN_PATH so `import <module>` resolves in our own Lean
/// invocations. The shadow lives under `.vermilion/olean/<example dir>` —
/// deliberately NOT Lake's build dir: Lake owns its artifacts (traces,
/// multi-part oleans) and the editor's Lean server rebuilds twin modules
/// through Lake itself (see editor/bin/lake). A sibling `.vrml-src` stamp
/// (source path + content hash) keys the freshness check, so a foreign
/// example claiming the same module name can never be picked up silently.
/// The shared `Evidence` unit of a per-function manifest, as (lean file,
/// module name). `side` is "generated" for the machine module; anything
/// else means the proofs twin, whose module root is the bare stem (each
/// example lib roots its twin modules there — see lakefile.lean).
fn evidence_module_of(manifest: &ModuleManifest, side: &str) -> Option<(String, String)> {
    if !manifest.is_per_function() {
        return None;
    }
    let record = manifest
        .obligations
        .iter()
        .find(|record| record.kind == "typeclass_evidence")?;
    let lean_file = manifest.lean_file_of(record);
    let stem = Path::new(lean_file)
        .parent()?
        .file_name()?
        .to_str()?
        .to_owned();
    if side == "generated" {
        Some((lean_file.to_owned(), format!("generated.{stem}.Evidence")))
    } else {
        Some((twin_of(lean_file), format!("{stem}.Evidence")))
    }
}

fn ensure_specs_olean(
    source_lean: &str,
    module: &str,
    lean_path: &Option<String>,
    extra_root: Option<&str>,
) -> Result<String, String> {
    let module_rel = format!("{}.lean", module.replace('.', "/"));
    // The example root is the prefix of the source path before the module
    // path; `--root` makes the compiled module name match the import path.
    let root = source_lean
        .strip_suffix(&module_rel)
        .map(|prefix| prefix.trim_end_matches('/').to_owned())
        .filter(|prefix| !prefix.is_empty())
        .unwrap_or_else(|| ".".to_owned());
    // Where the olean lives depends on who owns the namespace: generated
    // modules go into the workspace build dir — Lake has no targets under
    // `generated.*`, so nothing mixes with Lake-owned artifacts, and the
    // editor's Lean server resolves the import through the ordinary
    // LEAN_PATH. Proofs twins are Lake-owned modules and get a private
    // shadow root instead (the caller prepends it for its own invocations;
    // the editor reaches twin modules through Lake itself — see
    // editor/bin/lake).
    let shadow_root = if module.starts_with("generated.") {
        ".lake/build/lib/lean".to_owned()
    } else {
        format!(".vermilion/olean/{root}")
    };
    let olean = Path::new(&shadow_root)
        .join(module.replace('.', "/"))
        .with_extension("olean");
    let stamp = olean.with_extension("olean.vrml-src");
    let source = std::fs::read_to_string(source_lean)
        .map_err(|error| format!("cannot read {source_lean}: {error}"))?;
    let fingerprint = format!("{source_lean}\n{}\n", fnv1a(&source));
    if olean.exists() && std::fs::read_to_string(&stamp).ok().as_deref() == Some(&fingerprint) {
        return Ok(shadow_root);
    }
    if let Some(parent) = olean.parent() {
        std::fs::create_dir_all(parent).map_err(|error| error.to_string())?;
    }
    // Compile to a temporary sibling and rename, so concurrent checks never
    // observe a torn olean.
    let temp = olean.with_extension(format!("olean.tmp-{}", std::process::id()));
    let mut command = lean_command(lean_path, extra_root);
    command
        .arg(format!("--root={root}"))
        .arg("-o")
        .arg(&temp)
        .arg(source_lean);
    let output = command
        .output()
        .map_err(|error| format!("cannot run lean: {error}"))?;
    if !output.status.success() {
        let _ = std::fs::remove_file(&temp);
        return Err(format!(
            "the shared definitions module {source_lean} failed to compile:\n{}{}",
            String::from_utf8_lossy(&output.stdout),
            String::from_utf8_lossy(&output.stderr)
        ));
    }
    std::fs::rename(&temp, &olean).map_err(|error| error.to_string())?;
    std::fs::write(&stamp, fingerprint).map_err(|error| error.to_string())?;
    Ok(shadow_root)
}

/// A per-function lowering refusal (adapter disposition) as a rustc-style
/// diagnostic. Refusals have no obligations and no Lean module; they are
/// reported at the offending construct's span and keep the run non-green.
fn refusal_diagnostic_json(
    refusal: &vermilion_backend::project::RefusedRecord,
) -> serde_json::Value {
    let span = &refusal.rust_span;
    let rendered = format!(
        "error[vermilion]: outside the supported fragment: {}\n  --> {}:{}:{}\n",
        refusal.message, span.file, span.start_line, span.start_column,
    );
    serde_json::json!({
        "$message_type": "diagnostic",
        "vermilion": {
            "function": refusal.function,
            "refused": true,
        },
        "message": format!("outside the supported fragment: {}", refusal.message),
        "code": { "code": "vermilion::function_refused", "explanation": null },
        "level": "error",
        "spans": [{
            "file_name": span.file,
            "byte_start": 0,
            "byte_end": 0,
            "line_start": span.start_line,
            "line_end": span.end_line,
            "column_start": span.start_column,
            "column_end": span.end_column,
            "is_primary": true,
            "text": [],
            "label": "the adapter refused to lower this function",
            "suggested_replacement": null,
            "expansion": null
        }],
        "children": [{
            "message": format!(
                "function `{}` was not lowered; its siblings were verified independently \
                 — docs/ir.md documents the current fragment",
                refusal.function
            ),
            "code": null, "level": "note", "spans": [], "children": [], "rendered": null
        }],
        "rendered": rendered
    })
}

fn refusal_human(refusal: &vermilion_backend::project::RefusedRecord) -> String {
    let span = &refusal.rust_span;
    format!(
        "✗ `{}` is outside the supported fragment: {}\n  --> {}:{}:{}\n",
        refusal.function, refusal.message, span.file, span.start_line, span.start_column
    )
}

fn diagnostic_json(record: &ObligationRecord, twin: &str, lean_detail: &str) -> serde_json::Value {
    let span = &record.rust_span;
    let evidence = record.kind == "typeclass_evidence";
    let rendered = format!(
        "error[vermilion]: {}\n  --> {}:{}:{}\n   = note: {} `{}` (statement hash {})\n",
        failure_message(&record.kind),
        span.file,
        span.start_line,
        span.start_column,
        if evidence {
            "fill the generated evidence obligation"
        } else {
            "Lean rejected obligation"
        },
        record.name,
        record.statement_hash,
    );
    serde_json::json!({
        "$message_type": "diagnostic",
        "vermilion": {
            "obligation": record.name,
            "leaf": record.leaf,
            "namespace": record.namespace,
            "statement_hash": record.statement_hash,
            "twin_file": twin,
        },
        "message": failure_message(&record.kind),
        "code": { "code": if evidence {
            "vermilion::evidence_unresolved"
        } else {
            "vermilion::obligation_failed"
        }, "explanation": null },
        "level": "error",
        "spans": [{
            "file_name": span.file,
            "byte_start": 0,
            "byte_end": 0,
            "line_start": span.start_line,
            "line_end": span.end_line,
            "column_start": span.start_column,
            "column_end": span.end_column,
            "is_primary": true,
            "text": [],
            "label": if evidence {
                "provide this Lean class dictionary in the proofs twin"
            } else {
                "Lean could not prove this obligation"
            },
            "suggested_replacement": null,
            "expansion": null
        }],
        "children": [{
            "message": format!(
                "obligation `{}` (kind {}, AssertId {}); Lean reported: {}",
                record.name, record.kind, record.assert_id,
                lean_detail.lines().next().unwrap_or("proof failed")
            ),
            "code": null,
            "level": "note",
            "spans": [],
            "children": [],
            "rendered": null
        }],
        "rendered": rendered
    })
}

/// ANSI styling, enabled when stderr is a terminal (or FORCE_COLOR is set).
struct Style {
    red: &'static str,
    green: &'static str,
    bold: &'static str,
    cyan: &'static str,
    yellow: &'static str,
    reset: &'static str,
}

fn style() -> Style {
    use std::io::IsTerminal;
    let colored = std::io::stderr().is_terminal() || std::env::var_os("FORCE_COLOR").is_some();
    if colored {
        Style {
            red: "\x1b[1;31m",
            green: "\x1b[1;32m",
            bold: "\x1b[1m",
            cyan: "\x1b[36m",
            yellow: "\x1b[33m",
            reset: "\x1b[0m",
        }
    } else {
        Style {
            red: "",
            green: "",
            bold: "",
            cyan: "",
            yellow: "",
            reset: "",
        }
    }
}

/// 1-based line of the obligation's `vrml:begin` marker in a module.
fn marker_line(path: &str, name: &str) -> Option<usize> {
    let begin = format!("-- vrml:begin {name} ");
    std::fs::read_to_string(path)
        .ok()?
        .lines()
        .position(|line| line.starts_with(&begin))
        .map(|index| index + 1)
}

/// Extract one obligation's marker-delimited block from module text.
fn block_of(source: &str, name: &str) -> Option<String> {
    let begin = format!("-- vrml:begin {name} ");
    let end = format!("-- vrml:end {name}");
    let mut block = String::new();
    let mut inside = false;
    for line in source.lines() {
        if line.starts_with(&begin) {
            inside = true;
        }
        if inside {
            block.push_str(line);
            block.push('\n');
            if line.starts_with(&end) {
                return Some(block);
            }
        }
    }
    None
}

/// Split an obligation block at its `:= by`: (signature, proof body).
fn split_block(block: &str) -> Option<(String, String)> {
    let mut signature = String::new();
    let mut body = String::new();
    let mut in_body = false;
    for line in block.lines() {
        if in_body {
            body.push_str(line);
            body.push('\n');
        } else {
            signature.push_str(line);
            signature.push('\n');
            if line.trim_end().ends_with(":= by") {
                in_body = true;
            }
        }
    }
    in_body.then_some((signature, body))
}

/// Does the twin carry a hand-written proof for this obligation? True only
/// when the twin block has the same statement hash AND byte-identical
/// theorem signature as the current generated block, with a different,
/// `sorry`-free proof body. (The twin itself is kernel-checked by the
/// example driver, so this never accepts an unchecked proof.)
fn twin_covers(twin_source: &str, generated_source: &str, record: &ObligationRecord) -> bool {
    let marker = format!("-- vrml:begin {} {}", record.name, record.statement_hash);
    let Some(twin_block) = block_of(twin_source, &record.name) else {
        return false;
    };
    if !twin_block.starts_with(&marker) || twin_block.contains("sorry") {
        return false;
    }
    let Some(generated_block) = block_of(generated_source, &record.name) else {
        return false;
    };
    match (split_block(&twin_block), split_block(&generated_block)) {
        (Some((twin_signature, twin_body)), Some((generated_signature, generated_body))) => {
            // Compare from the theorem declaration onward: doc comments and
            // metadata above it may legitimately drift (e.g. new
            // documentation lines in regenerated modules) without changing
            // the obligation.
            // Evidence declarations differ across emission layouts only by
            // the `local` keyword (per-file: section-`local instance`;
            // per-function: plain `instance` visible to importing units) —
            // compare modulo it, so a proof migrating between layouts still
            // covers its obligation.
            let declaration_of = |signature: &str| {
                ["@[vrml_obligation]", "@[vrml_evidence]"]
                    .into_iter()
                    .filter_map(|marker| signature.find(marker))
                    .min()
                    .map(|start| {
                        signature[start..].replace(
                            " noncomputable local instance ",
                            " noncomputable instance ",
                        )
                    })
            };
            match (
                declaration_of(&twin_signature),
                declaration_of(&generated_signature),
            ) {
                (Some(twin_declaration), Some(generated_declaration)) => {
                    twin_declaration == generated_declaration && twin_body != generated_body
                }
                _ => false,
            }
        }
        _ => false,
    }
}

/// The human-facing failure report: colored, with clickable
/// `path:line:column` references, and concrete next steps.
fn human_report(record: &ObligationRecord, lean_detail: &str, twin: &str) -> String {
    let s = style();
    let span = &record.rust_span;
    let twin_location = match marker_line(twin, &record.name) {
        Some(line) => format!("{twin}:{line}"),
        None => twin.to_owned(),
    };
    if record.kind == "typeclass_evidence" {
        return format!(
            "{}error[vermilion]{}: {}{}{}\n  \
             {}-->{} {}{}:{}:{}{}\n   \
             = note: generated evidence `{}` is still a placeholder (statement hash {})\n        \
             Evidence says: {}\n   \
             {}= help:{} provide the Lean class dictionary in\n           \
             {}{}{} (the user-owned twin: replace the body after `:= by`;\n           \
             keep the signature and markers). Later VCs may be checked contingently\n           \
             using the generated placeholder, but the run cannot verify until this\n           \
             instance itself is kernel-checked.\n",
            s.red,
            s.reset,
            s.bold,
            failure_message(&record.kind),
            s.reset,
            s.cyan,
            s.reset,
            s.bold,
            span.file,
            span.start_line,
            span.start_column,
            s.reset,
            record.name,
            record.statement_hash,
            lean_detail
                .lines()
                .next()
                .unwrap_or("class dictionary missing"),
            s.yellow,
            s.reset,
            s.bold,
            twin_location,
            s.reset,
        );
    }
    format!(
        "{}error[vermilion]{}: {}{}{}\n  \
         {}-->{} {}{}:{}:{}{}\n   \
         = note: Lean rejected obligation `{}` (statement hash {})\n        \
         Lean says: {}\n   \
         {}= help:{} two ways forward:\n        \
         1. the Rust code or its specification is wrong — fix it at the span above;\n        \
         2. the code is right but automation is too weak — write the proof yourself in\n           \
         {}{}{} (the user-owned twin: replace the tactic body after `:= by`,\n           \
         keep the signature and markers; your proof survives regeneration while the\n           \
         statement hash is unchanged. Helper lemmas go between `-- vrml:user:begin`\n           \
         and `-- vrml:user:end` lines — such sections are preserved verbatim).\n",
        s.red, s.reset, s.bold, failure_message(&record.kind), s.reset,
        s.cyan, s.reset, s.bold, span.file, span.start_line, span.start_column, s.reset,
        record.name, record.statement_hash,
        lean_detail.lines().next().unwrap_or("proof failed"),
        s.yellow, s.reset,
        s.bold, twin_location, s.reset,
    )
}

/// Verbose, self-contained report of one failure for LLM (or human) triage.
fn llm_report(record: &ObligationRecord, lean_detail: &str, generated: &str, twin: &str) -> String {
    let span = &record.rust_span;
    let mut report = String::new();
    report.push_str("---- vermilion obligation failure ----\n");
    report.push_str(&format!("obligation: {}\n", record.name));
    report.push_str(&format!(
        "meaning: {} (kind `{}`, Verus AssertId `{}`)\n",
        failure_message(&record.kind),
        record.kind,
        record.assert_id
    ));
    report.push_str(&format!(
        "rust source: {}:{}:{} - {}:{}\n",
        span.file, span.start_line, span.start_column, span.end_line, span.end_column
    ));
    report.push_str(&format!(
        "lean statement: lines {}-{} of the generated module (statement hash {})\n",
        record.lean_line_start, record.lean_line_end, record.statement_hash
    ));
    report.push_str(&format!("lean reported: {lean_detail}\n"));
    if let Some(block) = block_of(generated, &record.name) {
        report.push_str("the failed obligation, as generated:\n");
        report.push_str(&block);
    }
    report.push_str(&format!(
        "what to do: if the Rust code/spec is wrong, fix it at the span above and rerun \
         the example script. If the code is correct and only automation failed, edit the \
         user-owned twin `{twin}`: locate the block `-- vrml:begin {} {}` and replace the \
         tactic body after `:= by` with a manual Lean proof (keep the theorem signature \
         and the markers). The twin is kernel-checked and your proof survives regeneration \
         while the statement hash is unchanged. A remaining `sorry` is a loud, warned hole.\n",
        record.name, record.statement_hash
    ));
    report.push_str("--------------------------------------\n");
    report
}

/// The verified-hash cache: statement hashes whose generated proof Lean has
/// already kernel-checked in an earlier run. Keyed to the built Vermilion
/// library so prelude/tactic changes invalidate it wholesale.
#[derive(Default, serde::Serialize, serde::Deserialize)]
struct VerifiedCache {
    stamp: String,
    hashes: BTreeSet<String>,
}

const CACHE_PATH: &str = ".vermilion/verified-hashes.json";

fn library_stamp() -> String {
    std::fs::metadata(".lake/build/lib/lean/Vermilion/Obligations.olean")
        .and_then(|meta| meta.modified())
        .map(|time| format!("{time:?}"))
        .unwrap_or_default()
}

/// Incremental skipping of unchanged goals is DISABLED until the workflow
/// is settled (it interacted confusingly with live editing). The plumbing
/// stays behind an explicit opt-in for experiments only.
fn cache_enabled() -> bool {
    std::env::var_os("VERMILION_CHECK_CACHE").is_some()
}

fn load_cache() -> VerifiedCache {
    if !cache_enabled() {
        return VerifiedCache {
            stamp: library_stamp(),
            hashes: BTreeSet::new(),
        };
    }
    let mut cache: VerifiedCache = std::fs::read_to_string(CACHE_PATH)
        .ok()
        .and_then(|text| serde_json::from_str(&text).ok())
        .unwrap_or_default();
    let stamp = library_stamp();
    if cache.stamp != stamp {
        cache = VerifiedCache {
            stamp,
            hashes: BTreeSet::new(),
        };
    }
    cache
}

fn save_cache(cache: &VerifiedCache) {
    if !cache_enabled() {
        return;
    }
    let _ = std::fs::create_dir_all(".vermilion");
    if let Ok(text) = serde_json::to_string(cache) {
        let _ = std::fs::write(CACHE_PATH, text);
    }
}

/// Assemble the blocks of `records` into a standalone module, returning the
/// source plus the records with line ranges remapped into it.
fn delta_module(
    generated: &str,
    records: &[&ObligationRecord],
) -> (String, Vec<ObligationRecord>) {
    // Reuse the generated module's preamble (imports — including the shared
    // `Specs` module in per-function mode — options, and any inline
    // definitions the obligations reference) rather than a hardcoded
    // header: everything before the first namespace.
    let preamble_end = generated
        .lines()
        .scan(0usize, |offset, line| {
            let start = *offset;
            *offset += line.len() + 1;
            Some((start, line))
        })
        .find(|(_, line)| line.starts_with("namespace "))
        .map(|(start, _)| start)
        .unwrap_or(generated.len());
    // Evidence blocks (per-file mode) sit before the first namespace, so
    // they are already part of this preamble — their loud `sorry`
    // placeholders let this *contingent* machine attempt elaborate; the
    // checker independently rejects every unresolved evidence record. The
    // preamble's `section` opener must then be re-closed at the end.
    let has_evidence_section = generated[..preamble_end]
        .lines()
        .any(|line| line == "section");
    let mut source = generated[..preamble_end].to_owned();
    let mut remapped = Vec::new();
    let mut index = 0;
    while index < records.len() {
        let namespace = &records[index].namespace;
        source.push_str(&format!("namespace {namespace}\n\n"));
        while index < records.len() && records[index].namespace == *namespace {
            let record = records[index];
            let block = block_of(generated, &record.name)
                .unwrap_or_else(|| format!("-- missing block {}\n", record.name));
            let start_line = source.matches('\n').count() + 1;
            let end_line = start_line + block.matches('\n').count().saturating_sub(1);
            remapped.push(ObligationRecord {
                lean_line_start: start_line,
                lean_line_end: end_line,
                ..record.clone()
            });
            source.push_str(&block);
            source.push('\n');
            index += 1;
        }
        source.push_str(&format!("end {namespace}\n\n"));
    }
    if has_evidence_section {
        source.push_str("end\n");
    }
    (source, remapped)
}

/// One generated Lean file's worth of obligations: the whole module in
/// per-file mode, one function's unit module in per-function mode.
struct Unit {
    lean_file: String,
    twin: String,
    generated_source: String,
    twin_source: String,
    records: Vec<ObligationRecord>,
}

/// The twin's source for coverage detection. When the expected twin file
/// does not exist yet — the first run after an emission-mode switch, before
/// `vrml_sync` has reshaped the twins — fall back to the OTHER mode's twin
/// (blocks are mode-independent), so hand-written proofs keep covering
/// their obligations across the migration and both modes report identical
/// diagnostics from the very first run.
fn twin_source_with_fallback(twin: &str, manifest: &ModuleManifest) -> String {
    if let Ok(source) = std::fs::read_to_string(twin) {
        return source;
    }
    if manifest.is_per_function() {
        // The legacy per-file twin sits next to the unit twin directory.
        let legacy = format!("{}.lean", twin_of(&manifest.lean_file));
        std::fs::read_to_string(legacy).unwrap_or_default()
    } else {
        // Per-function unit twins from an earlier run: concatenate them —
        // block extraction only needs the marker-delimited text.
        let directory = twin.strip_suffix(".lean").unwrap_or(twin);
        let mut source = String::new();
        if let Ok(entries) = std::fs::read_dir(directory) {
            let mut paths: Vec<PathBuf> = entries.filter_map(|e| e.ok()).map(|e| e.path()).collect();
            paths.sort();
            for path in paths {
                if path.extension().and_then(|e| e.to_str()) == Some("lean") {
                    source.push_str(&std::fs::read_to_string(&path).unwrap_or_default());
                }
            }
        }
        source
    }
}

/// Group the manifest's obligations by the generated file they live in,
/// preserving order (per-file mode yields exactly one unit).
fn units_of(manifest: &ModuleManifest, only: &[String]) -> Vec<Unit> {
    let mut units: Vec<Unit> = Vec::new();
    for record in &manifest.obligations {
        if !only.is_empty() && !only.iter().any(|name| *name == record.namespace) {
            continue;
        }
        let lean_file = manifest.lean_file_of(record).to_owned();
        if units.last().map(|unit| &unit.lean_file) != Some(&lean_file) {
            let twin = twin_of(&lean_file);
            units.push(Unit {
                generated_source: std::fs::read_to_string(&lean_file).unwrap_or_default(),
                twin_source: twin_source_with_fallback(&twin, manifest),
                lean_file,
                twin,
                records: Vec::new(),
            });
        }
        units
            .last_mut()
            .expect("just pushed")
            .records
            .push(record.clone());
    }
    if units.is_empty() && !manifest.is_per_function() {
        // A per-file module with no obligations still has a lean_file worth
        // reporting on; keep the empty unit for uniform summaries.
        let twin = twin_of(&manifest.lean_file);
        units.push(Unit {
            generated_source: std::fs::read_to_string(&manifest.lean_file).unwrap_or_default(),
            twin_source: twin_source_with_fallback(&twin, manifest),
            lean_file: manifest.lean_file.clone(),
            twin,
            records: Vec::new(),
        });
    }
    units
}

/// Kernel-check the user-owned proofs twin(s) of this manifest: the single
/// twin module in per-file mode; in per-function mode the shared
/// `proofs.<stem>.Specs` module is compiled first (so `import` resolves
/// without a Lake round trip) and the unit twins are checked in parallel.
///
/// With `skip_identical` (used after a green generated check), twins that
/// are byte-identical to what Lean just judged — the generated module, or a
/// unit module modulo the rewritten `Specs` import — prove nothing new and
/// are skipped. Lean's own output streams through; exit 0 = every twin
/// checked.
fn twin_check(
    manifest: &ModuleManifest,
    units: &[Unit],
    lean_path: &Option<String>,
    skip_identical: bool,
) -> i32 {
    let per_function = manifest.is_per_function();
    let matches_generated = |unit: &Unit| {
        if per_function {
            unit.twin_source == rewrite_specs_import(&unit.generated_source)
        } else {
            unit.twin_source == unit.generated_source
        }
    };
    let mut twins: Vec<String> = Vec::new();
    let mut skipped = 0usize;
    for unit in units {
        if !Path::new(&unit.twin).exists() {
            eprintln!("twin check: {} does not exist — run vrml_sync first", unit.twin);
            return 2;
        }
        if skip_identical && matches_generated(unit) {
            skipped += 1;
            continue;
        }
        if !twins.contains(&unit.twin) {
            twins.push(unit.twin.clone());
        }
    }
    let mut extra_root: Option<String> = None;
    if per_function {
        if let (Some(specs_lean), Some(specs_module)) =
            (&manifest.specs_lean, &manifest.specs_module)
        {
            let proofs_specs = twin_of(specs_lean);
            if !Path::new(&proofs_specs).exists() {
                eprintln!("twin check: {proofs_specs} does not exist — run vrml_sync first");
                return 2;
            }
            // The specs twin itself is machine-mirrored; if the user added
            // helper sections it differs from the generated module Lean
            // already elaborated and must be kernel-checked too.
            let generated_specs = std::fs::read_to_string(specs_lean).unwrap_or_default();
            let twin_specs = std::fs::read_to_string(&proofs_specs).unwrap_or_default();
            if !(skip_identical && twins.is_empty() && twin_specs == generated_specs) {
                let proofs_module = specs_module.replacen("generated.", "", 1);
                match ensure_specs_olean(&proofs_specs, &proofs_module, lean_path, None) {
                    Ok(root) => extra_root = Some(root),
                    Err(error) => {
                        eprintln!("twin check: {error}");
                        return 2;
                    }
                }
            }
        }
        // The Evidence twin is itself in the checked set; the other unit
        // twins import it, so its olean must be fresh first.
        if let Some((evidence_twin, evidence_module)) = evidence_module_of(manifest, "proofs") {
            if Path::new(&evidence_twin).exists() && !twins.is_empty() {
                match ensure_specs_olean(
                    &evidence_twin,
                    &evidence_module,
                    lean_path,
                    extra_root.as_deref(),
                ) {
                    Ok(root) => extra_root = Some(root),
                    Err(error) => {
                        eprintln!("twin check: {error}");
                        return 2;
                    }
                }
            }
        }
    }
    if twins.is_empty() {
        if skipped > 0 {
            eprintln!(
                "proofs twin{} identical to the generated module{}; skipping duplicate build",
                if skipped == 1 { "" } else { "s" },
                if skipped == 1 { "" } else { "s" }
            );
        }
        return 0;
    }
    let outputs = run_lean_parallel(&twins, lean_path, false, extra_root.as_deref());
    let mut failed = false;
    for (twin, output) in twins.iter().zip(outputs) {
        let Some(output) = output else {
            eprintln!("twin check: cannot run lean on {twin}");
            return 2;
        };
        eprint!("{}", String::from_utf8_lossy(&output.stdout));
        eprint!("{}", String::from_utf8_lossy(&output.stderr));
        if !output.status.success() {
            eprintln!("twin check failed: {twin}");
            failed = true;
        }
    }
    if skipped > 0 {
        eprintln!("({skipped} twin(s) identical to the generated modules were skipped)");
    }
    if failed {
        1
    } else {
        0
    }
}

/// Run `lean` over each file concurrently (bounded by the machine's
/// parallelism), returning per-file outputs in input order.
fn run_lean_parallel(
    files: &[String],
    lean_path: &Option<String>,
    json: bool,
    extra_root: Option<&str>,
) -> Vec<Option<std::process::Output>> {
    let results: Vec<Mutex<Option<std::process::Output>>> =
        files.iter().map(|_| Mutex::new(None)).collect();
    let next = AtomicUsize::new(0);
    let workers = std::thread::available_parallelism()
        .map(|n| n.get())
        .unwrap_or(1)
        .min(files.len())
        .max(1);
    std::thread::scope(|scope| {
        for _ in 0..workers {
            scope.spawn(|| loop {
                let index = next.fetch_add(1, Ordering::SeqCst);
                if index >= files.len() {
                    break;
                }
                let mut command = lean_command(lean_path, extra_root);
                if json {
                    command.arg("--json");
                }
                command.arg(&files[index]);
                let started = std::time::Instant::now();
                let output = command.output().ok();
                // Machine-readable per-unit timing (stderr): the sweep
                // reports feed on these lines to give per-Lean-file cost.
                eprintln!(
                    "[vrml-check] unit={} elapsed_ms={}",
                    files[index],
                    started.elapsed().as_millis()
                );
                *results[index].lock().expect("worker poisoned") = output;
            });
        }
    });
    results
        .into_iter()
        .map(|slot| slot.into_inner().expect("worker poisoned"))
        .collect()
}

fn main() {
    let mut llm_output = false;
    let mut coverage_only = false;
    let mut twin_check_only = false;
    let mut skip_identical = false;
    let mut only: Vec<String> = Vec::new();
    let mut manifest_path = None;
    let mut arguments = std::env::args().skip(1);
    while let Some(argument) = arguments.next() {
        match argument.as_str() {
            "--llm" => llm_output = true,
            // Emit only the static twin-coverage diagnostics (the
            // `covered_by_twin` info markers that draw the editor's blue
            // "discharged interactively" squiggles) and exit — no Lean run.
            // Used by the driver's twin fast path, where the twin kernel-check
            // is the arbiter but the editor still needs these markers.
            "--twin-coverage-only" => coverage_only = true,
            "--twin-check" => twin_check_only = true,
            "--skip-identical" => skip_identical = true,
            "--only" => match arguments.next() {
                Some(name) => only.push(name),
                None => {
                    eprintln!("--only requires a function name");
                    std::process::exit(2);
                }
            },
            // Ladder budget profile, forwarded to every lean invocation as
            // `-Dvermilion.*Budget=…` (see `lean_command`). Sweep-scale
            // verdict passes use a tight profile; unset keeps the
            // interactive defaults.
            "--rung-budget" | "--saturate-budget" | "--smt-budget"
            | "--smt-timeout" => {
                let variable = match argument.as_str() {
                    "--rung-budget" => "VRML_RUNG_BUDGET",
                    "--saturate-budget" => "VRML_SATURATE_BUDGET",
                    "--smt-timeout" => "VRML_SMT_TIMEOUT",
                    _ => "VRML_SMT_BUDGET",
                };
                match arguments.next() {
                    Some(value) if value.parse::<u64>().is_ok() => {
                        std::env::set_var(variable, value);
                    }
                    _ => {
                        eprintln!("{argument} requires a numeric value");
                        std::process::exit(2);
                    }
                }
            }
            other => manifest_path = Some(other.to_owned()),
        }
    }
    let Some(manifest_path) = manifest_path else {
        eprintln!(
            "usage: vrml_check <generated-manifest.json> [--llm] [--twin-coverage-only] \
             [--twin-check [--skip-identical]] [--only <function>]… \
             [--rung-budget N] [--saturate-budget N] [--smt-budget N] [--smt-timeout SECS]"
        );
        std::process::exit(2);
    };

    let manifest: ModuleManifest = match std::fs::read_to_string(&manifest_path)
        .map_err(|error| error.to_string())
        .and_then(|text| serde_json::from_str(&text).map_err(|error| error.to_string()))
    {
        Ok(manifest) => manifest,
        Err(error) => {
            eprintln!("cannot read manifest {manifest_path}: {error}");
            std::process::exit(2);
        }
    };

    let lean_path = resolve_lean_path();
    let units = units_of(&manifest, &only);

    // Per-function lowering refusals (adapter dispositions) are reported in
    // every mode and always keep the exit code non-green: a partially
    // lowered file must never read as fully verified.
    let refused_count = manifest.refused.len();
    for refusal in &manifest.refused {
        println!("{}", refusal_diagnostic_json(refusal));
        eprint!("{}", refusal_human(refusal));
    }

    if twin_check_only {
        let code = twin_check(&manifest, &units, &lean_path, skip_identical);
        std::process::exit(if refused_count > 0 { code.max(1) } else { code });
    }

    // Twin-coverage-only: emit the `covered_by_twin` info diagnostics for the
    // obligations the twin proves by hand, and nothing else. No Lean. The
    // driver's fast path uses this so the editor keeps its blue "discharged
    // interactively" squiggles even when the redundant generated check is
    // skipped; auto obligations produce no diagnostic (they are simply green).
    if coverage_only {
        // stdout only (the driver redirects it to the check file); the fast
        // path prints its own human summary, so emit no stderr here.
        for unit in &units {
            for record in &unit.records {
                if twin_covers(&unit.twin_source, &unit.generated_source, record) {
                    let mut diagnostic =
                        diagnostic_json(record, &unit.twin, "covered by a manual twin proof");
                    diagnostic["vermilion"]["covered_by_twin"] = serde_json::json!(true);
                    println!("{diagnostic}");
                }
            }
        }
        std::process::exit(if refused_count > 0 { 1 } else { 0 });
    }

    // Unchanged obligations are not re-verified: hashes Lean already
    // checked in an earlier run are skipped, and goals covered by a manual
    // twin proof are recognized statically (the driver kernel-checks the
    // twin itself). Only what remains is elaborated, as one delta module
    // per generated file — in parallel across per-function units.
    let mut cache = load_cache();
    let mut skipped = 0usize;
    let mut interactive: Vec<(String, String)> = Vec::new();
    // Evidence declarations are never goals for Lean: they count as failed
    // until the twin carries a kernel-checked dictionary. (unit twin, record)
    let mut pending_evidence: Vec<(&str, &ObligationRecord)> = Vec::new();
    // Per unit: the records to elaborate.
    let mut pending: Vec<(usize, Vec<&ObligationRecord>)> = Vec::new();
    for (unit_index, unit) in units.iter().enumerate() {
        let mut to_check: Vec<&ObligationRecord> = Vec::new();
        for record in &unit.records {
            if cache.hashes.contains(&record.statement_hash) {
                skipped += 1;
            } else if twin_covers(&unit.twin_source, &unit.generated_source, record) {
                let mut diagnostic =
                    diagnostic_json(record, &unit.twin, "covered by a manual twin proof");
                diagnostic["vermilion"]["covered_by_twin"] = serde_json::json!(true);
                println!("{diagnostic}");
                let location = marker_line(&unit.twin, &record.name)
                    .map(|line| format!("{}:{line}", unit.twin))
                    .unwrap_or_else(|| unit.twin.clone());
                interactive.push((record.name.clone(), location));
            } else if record.kind == "typeclass_evidence" {
                pending_evidence.push((&unit.twin, record));
            } else {
                to_check.push(record);
            }
        }
        if !to_check.is_empty() {
            pending.push((unit_index, to_check));
        }
    }

    let s = style();
    let total: usize = units.iter().map(|unit| unit.records.len()).sum();
    let elaborating: usize = pending.iter().map(|(_, records)| records.len()).sum();
    if pending.is_empty() {
        if !pending_evidence.is_empty() {
            for (twin, record) in &pending_evidence {
                let detail = "the generated class dictionary has no kernel-checked twin proof";
                let mut diagnostic = diagnostic_json(record, twin, detail);
                diagnostic["vermilion"]["covered_by_twin"] = serde_json::json!(false);
                println!("{diagnostic}");
                eprint!("{}", human_report(record, detail, twin));
            }
            std::process::exit(1);
        }
        report_summary(&s, &manifest, total, skipped, &interactive, 0);
        exit_with_refusals(&s, refused_count);
    }

    // Per-function units import the shared `Specs` module (and, when
    // typeclass evidence exists, the shared `Evidence` module); make sure
    // their shadow oleans are fresh before any unit elaborates (a
    // definition error there is a module-level failure, like a bad
    // preamble in per-file mode), and prepend the root to the units'
    // LEAN_PATH.
    let mut extra_root: Option<String> = None;
    if manifest.is_per_function() {
        if let (Some(specs_lean), Some(specs_module)) =
            (&manifest.specs_lean, &manifest.specs_module)
        {
            match ensure_specs_olean(specs_lean, specs_module, &lean_path, None) {
                Ok(root) => extra_root = Some(root),
                Err(error) => {
                    eprintln!("error outside any obligation: {error}");
                    std::process::exit(1);
                }
            }
        }
        if let Some((evidence_lean, evidence_module)) = evidence_module_of(&manifest, "generated")
        {
            match ensure_specs_olean(
                &evidence_lean,
                &evidence_module,
                &lean_path,
                extra_root.as_deref(),
            ) {
                Ok(root) => extra_root = Some(root),
                Err(error) => {
                    eprintln!("error outside any obligation: {error}");
                    std::process::exit(1);
                }
            }
        }
    }

    // Write one delta module per unit and elaborate them in parallel.
    let _ = std::fs::create_dir_all(".vermilion");
    let mut delta_files: Vec<String> = Vec::new();
    let mut remapped_by_unit: Vec<Vec<ObligationRecord>> = Vec::new();
    // Per-file deltas keep their historical name (`check-<stem>.lean`);
    // per-function unit deltas are prefixed with the manifest stem so two
    // Rust files with a same-named function cannot collide under
    // concurrent checks.
    let manifest_stem = Path::new(&manifest_path)
        .file_stem()
        .and_then(|stem| stem.to_str())
        .unwrap_or("manifest")
        .to_owned();
    for (unit_index, to_check) in &pending {
        let unit = &units[*unit_index];
        let (delta_source, remapped) = delta_module(&unit.generated_source, to_check);
        let unit_name = Path::new(&unit.lean_file)
            .file_name()
            .and_then(|name| name.to_str())
            .unwrap_or("delta.lean");
        let delta_name = if manifest.is_per_function() {
            format!("check-{manifest_stem}-{unit_name}")
        } else {
            format!("check-{unit_name}")
        };
        let delta_path = std::path::PathBuf::from(".vermilion").join(delta_name);
        if std::fs::write(&delta_path, &delta_source).is_err() {
            eprintln!("cannot write {}", delta_path.display());
            std::process::exit(2);
        }
        delta_files.push(delta_path.display().to_string());
        remapped_by_unit.push(remapped);
    }
    let outputs = run_lean_parallel(&delta_files, &lean_path, true, extra_root.as_deref());

    let mut failed_names: BTreeSet<String> = BTreeSet::new();
    let mut any_unattributed = false;
    for (((unit_index, to_check), remapped), (delta_file, output)) in pending
        .iter()
        .zip(&remapped_by_unit)
        .zip(delta_files.iter().zip(outputs))
    {
        let unit = &units[*unit_index];
        let Some(output) = output else {
            eprintln!("cannot run lean on {delta_file}");
            std::process::exit(2);
        };
        let stdout = String::from_utf8_lossy(&output.stdout);
        let mut unattributed = Vec::new();
        for line in stdout.lines() {
            let Ok(message) = serde_json::from_str::<LeanMessage>(line) else {
                continue;
            };
            if message.severity != "error" {
                continue;
            }
            let error_line = message.pos.line;
            let end_line = message.end_pos.as_ref().map_or(error_line, |pos| pos.line);
            let record = remapped.iter().find(|record| {
                record.lean_line_start <= error_line && error_line <= record.lean_line_end
                    || record.lean_line_start <= end_line && end_line <= record.lean_line_end
            });
            match record {
                Some(record) => {
                    failed_names.insert(record.name.clone());
                    let mut diagnostic = diagnostic_json(record, &unit.twin, &message.data);
                    diagnostic["vermilion"]["covered_by_twin"] = serde_json::json!(false);
                    println!("{diagnostic}");
                    eprint!("{}", human_report(record, &message.data, &unit.twin));
                    if llm_output {
                        print!(
                            "{}",
                            llm_report(record, &message.data, &unit.generated_source, &unit.twin)
                        );
                    }
                }
                None => unattributed.push((error_line, message.pos.column, message.data)),
            }
        }
        for (line, column, data) in &unattributed {
            eprintln!(
                "error outside any obligation at {delta_file}:{line}:{column}: {}",
                data.lines().next().unwrap_or("")
            );
        }
        let unit_failed = to_check
            .iter()
            .any(|record| failed_names.contains(&record.name));
        if !unit_failed && unattributed.is_empty() && !output.status.success() {
            // An empty message stream from a failed Lean run means the check
            // itself broke (bad plugin, missing oleans), not a verified module.
            eprintln!(
                "lean failed without reporting Lean errors:\n{}",
                String::from_utf8_lossy(&output.stderr)
            );
            std::process::exit(2);
        }
        // Everything elaborated and not failed is now known-verified — but
        // only when the unit elaborated at all: an error OUTSIDE every
        // obligation (e.g. a parse failure) means nothing after it was
        // checked, so nothing may enter the verified cache.
        if unattributed.is_empty() {
            for record in to_check {
                if !failed_names.contains(&record.name) {
                    cache.hashes.insert(record.statement_hash.clone());
                }
            }
        } else {
            any_unattributed = true;
        }
    }
    save_cache(&cache);

    // Unresolved evidence records count as failures regardless of what the
    // contingent machine attempts above proved.
    for (twin, record) in &pending_evidence {
        failed_names.insert(record.name.clone());
        let detail = "the generated class dictionary has no kernel-checked twin proof";
        let mut diagnostic = diagnostic_json(record, twin, detail);
        diagnostic["vermilion"]["covered_by_twin"] = serde_json::json!(false);
        println!("{diagnostic}");
        eprint!("{}", human_report(record, detail, twin));
    }

    if failed_names.is_empty() && !any_unattributed {
        report_summary(&s, &manifest, total, skipped, &interactive, elaborating);
        exit_with_refusals(&s, refused_count);
    }
    std::process::exit(1);
}

/// Exit an otherwise-green run: 0 with no refusals; 1 (with an explicit
/// count on stderr) when the manifest carries per-function lowering
/// refusals — obligations may all pass, the FILE is still not verified.
fn exit_with_refusals(s: &Style, refused_count: usize) -> ! {
    if refused_count == 0 {
        std::process::exit(0);
    }
    eprintln!(
        "{}✗ {refused_count} function{} outside the supported fragment (dispositions above) — \
         the file is only partially verified{}",
        s.red,
        if refused_count == 1 { "" } else { "s" },
        s.reset
    );
    std::process::exit(1);
}

/// The all-green closing report.
fn report_summary(
    s: &Style,
    manifest: &ModuleManifest,
    total: usize,
    skipped: usize,
    interactive: &[(String, String)],
    elaborated: usize,
) {
    let mut parts = Vec::new();
    if elaborated > 0 {
        parts.push(format!("{elaborated} newly checked"));
    }
    if skipped > 0 {
        parts.push(format!("{skipped} unchanged (skipped)"));
    }
    if !interactive.is_empty() {
        parts.push(format!("{} discharged interactively", interactive.len()));
    }
    let breakdown = if parts.is_empty() {
        String::new()
    } else {
        format!(" — {}", parts.join(", "))
    };
    let location = if manifest.is_per_function() {
        format!("{}/ (per-function units)", manifest.lean_file)
    } else {
        manifest.lean_file.clone()
    };
    eprintln!(
        "{}✓ all {} obligations in {} verified by Lean{}{}. 🎉",
        s.green, total, location, s.reset, breakdown
    );
    for (name, location) in interactive {
        eprintln!("  • `{name}` — {}{location}{}", s.bold, s.reset);
    }
}
