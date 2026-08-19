//! Manifest schema shared with the Lean generator.
//!
//! `lake exe vrml_gen` emits `generated/<stem>.json` next to each generated
//! module; `vrml_check` and `vrml_sync` consume it here. The field layout is
//! part of the Rust/Lean contract — change both sides together.

/// The emission mode a manifest was generated with. Version-1 manifests
/// (no `mode` field) predate per-function emission and are per-file.
pub const MODE_PER_FILE: &str = "per-file";
pub const MODE_PER_FUNCTION: &str = "per-function";

fn default_mode() -> String {
    MODE_PER_FILE.to_owned()
}

/// Module manifest: where each generated obligation lives in Rust and Lean.
///
/// In per-file mode `lean_file` is the single generated module. In
/// per-function mode `lean_file` is the unit *directory*
/// (`generated/<stem>`), `specs_lean`/`specs_module` name the shared
/// definitions module when one was emitted (imported by units, never
/// duplicated), and every obligation record carries the unit file it lives
/// in.
#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct ModuleManifest {
    pub version: u32,
    #[serde(default = "default_mode")]
    pub mode: String,
    pub rust_file: String,
    pub lean_file: String,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub specs_lean: Option<String>,
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub specs_module: Option<String>,
    #[serde(default)]
    pub functions: Vec<FunctionRecord>,
    pub obligations: Vec<ObligationRecord>,
    /// Per-function lowering refusals (adapter dispositions): functions the
    /// adapter could not lower. They have no obligations and no Lean module;
    /// `vrml_check` reports each at its span and keeps the run non-green
    /// while any exists. Absent in manifests predating isolation.
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub refused: Vec<RefusedRecord>,
}

/// One refused function's source-mapped disposition.
#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct RefusedRecord {
    pub function: String,
    pub message: String,
    pub rust_span: crate::model::Span,
}

/// The user-owned `proofs/` twin of a generated path (file or directory).
pub fn twin_of(generated: &str) -> String {
    generated.replace("/generated/", "/proofs/")
}

/// A generated module's `import generated.<stem>.Specs` line, rewritten for
/// the proofs side (`import <stem>.Specs`): each example's Lake library
/// roots its twin modules at the unique file stem (lakefile.lean), so the
/// import resolves to that lib workspace-wide.
pub fn rewrite_specs_import(source: &str) -> String {
    source
        .lines()
        .map(|line| match line.strip_prefix("import generated.") {
            Some(rest) => format!("import {rest}\n"),
            None => format!("{line}\n"),
        })
        .collect()
}

impl ModuleManifest {
    pub fn is_per_function(&self) -> bool {
        self.mode == MODE_PER_FUNCTION
    }

    /// The generated Lean file one obligation lives in: its own unit file
    /// in per-function mode, the module-level file in per-file mode.
    pub fn lean_file_of<'a>(&'a self, record: &'a ObligationRecord) -> &'a str {
        if record.lean_file.is_empty() {
            &self.lean_file
        } else {
            &record.lean_file
        }
    }
}

/// Per-function incremental fingerprints.
///
/// The semantic fingerprint hashes the canonical obligation statements, which
/// are span-insensitive; because callee contracts are substituted into caller
/// obligations, a callee contract change shows up in every caller's semantic
/// fingerprint while a callee body-only change does not — the dependency-DAG
/// invalidation of plans/incremental-computation.md falls out of the
/// statements themselves. The location fingerprint hashes only the spans, so
/// pure source movement refreshes diagnostics without touching proofs.
#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct FunctionRecord {
    pub function: String,
    pub semantic_fingerprint: String,
    pub location_fingerprint: String,
}

/// One generated obligation's identity and location, for `vrml_check` and
/// incremental tooling.
#[derive(Clone, Debug, PartialEq, Eq, serde::Serialize, serde::Deserialize)]
pub struct ObligationRecord {
    pub name: String,
    pub namespace: String,
    pub leaf: String,
    pub kind: String,
    pub assert_id: String,
    pub statement_hash: String,
    pub rust_span: crate::model::Span,
    /// 1-based inclusive line range of this obligation in the generated file.
    pub lean_line_start: usize,
    pub lean_line_end: usize,
    /// The emitted unit file this block lives in (per-function mode only);
    /// empty in per-file mode, where the manifest-level `lean_file` says it.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub lean_file: String,
}
