//! Synchronize a `proofs/` twin with its regenerated `generated/` module.
//!
//! The twin holds the same obligation blocks (statements, metadata, and
//! default-automation proofs) and is where humans edit proofs. Per block,
//! keyed by the `-- vrml:begin <name> <hash>` markers:
//!
//! - unchanged statement hash and an existing block -> the existing block is
//!   kept verbatim (user edits survive regeneration);
//! - new or changed statement -> the freshly generated block is used; if the
//!   default automation failed for it (per `vrml_check` diagnostics), the
//!   proof body is replaced by `sorry` and a warning asks for a manual proof;
//! - blocks whose obligation no longer exists are dropped with a warning.
//!
//! When automation proves everything and the user edited nothing, the twin
//! is byte-identical to the generated module (modulo, in per-function mode,
//! the one rewritten `import` line — see below).
//!
//! Emission modes (`vrml_gen --mode`): in per-file mode the twin is the
//! single `proofs/<stem>.lean`. In per-function mode each unit module gets
//! its own twin `proofs/<stem>/<function>.lean`, and the shared definitions
//! module is mirrored to `proofs/<stem>/Specs.lean` (machine-owned; your
//! `-- vrml:user:begin/end` helper sections are preserved at its end and are
//! visible to every unit twin). Unit twins import `<stem>.Specs` — the
//! `import generated.<stem>.Specs` line is rewritten on sync, and each
//! example's Lake lib roots its twin modules at the unique file stem — so
//! Lake builds them like any other twin. Proof blocks migrate across mode
//! switches by their statement hash: switching modes never loses a
//! hand-written proof whose obligation is unchanged.
//!
//! TODO(vermilion): think of a better way to co-evolve the program and
//! user-provided proofs than hash-keyed block reconciliation — e.g. tracking
//! statement diffs to migrate proofs across benign VC changes, or the M2.5
//! manager arbitrating between automation and human proofs per obligation.
//!
//! Usage: vrml_sync <generated-manifest.json> [--failures <vrml_check.json>]
//!                  [--fail-on-sorry] [--probe]

use std::collections::{BTreeMap, BTreeSet};
use std::path::{Path, PathBuf};

use vermilion_backend::project::{
    rewrite_specs_import, twin_of, ModuleManifest, ObligationRecord,
};

/// Yellow warning to stderr (colored on a terminal or under FORCE_COLOR),
/// preceded by a blank separator line before the first one.
struct Warner {
    yellow: &'static str,
    reset: &'static str,
    first: bool,
}

impl Warner {
    fn new() -> Self {
        use std::io::IsTerminal;
        let colored =
            std::io::stderr().is_terminal() || std::env::var_os("FORCE_COLOR").is_some();
        Self {
            yellow: if colored { "\x1b[1;33m" } else { "" },
            reset: if colored { "\x1b[0m" } else { "" },
            first: true,
        }
    }

    fn warn(&mut self, message: &str) {
        if self.first {
            eprintln!();
            self.first = false;
        }
        eprintln!("{}warning{}: {message}", self.yellow, self.reset);
    }
}

struct Block {
    hash: String,
    text: String,
}

/// Split marker-delimited module text into interstitial text and blocks.
fn parse_blocks(source: &str) -> (Vec<(String, Option<(String, Block)>)>, BTreeMap<String, Block>) {
    let mut segments: Vec<(String, Option<(String, Block)>)> = Vec::new();
    let mut blocks = BTreeMap::new();
    let mut outside = String::new();
    let mut current: Option<(String, String, String)> = None; // name, hash, text
    for line in source.lines() {
        if let Some(rest) = line.strip_prefix("-- vrml:begin ") {
            let mut parts = rest.split_whitespace();
            let name = parts.next().unwrap_or_default().to_owned();
            let hash = parts.next().unwrap_or_default().to_owned();
            current = Some((name, hash, format!("{line}\n")));
        } else if let Some(rest) = line.strip_prefix("-- vrml:end ") {
            if let Some((name, hash, mut text)) = current.take() {
                debug_assert_eq!(rest.trim(), name);
                text.push_str(line);
                text.push('\n');
                let block = Block {
                    hash: hash.clone(),
                    text: text.clone(),
                };
                segments.push((std::mem::take(&mut outside), Some((name.clone(), block))));
                blocks.insert(name, Block { hash, text });
            }
        } else if let Some((_, _, text)) = current.as_mut() {
            text.push_str(line);
            text.push('\n');
        } else {
            outside.push_str(line);
            outside.push('\n');
        }
    }
    segments.push((outside, None));
    (segments, blocks)
}

/// User-owned sections of a twin: everything between `-- vrml:user:begin`
/// and `-- vrml:user:end` lines. Preserved verbatim across reconciliation
/// and re-emitted at the end of the machine header (after the generated
/// imports/definitions, before the first obligation block), so helper
/// lemmas for interactive proofs live IN the twin and survive regeneration.
fn user_sections(source: &str) -> Vec<String> {
    let mut sections = Vec::new();
    let mut current: Option<String> = None;
    for line in source.lines() {
        if line.trim_end() == "-- vrml:user:begin" {
            current = Some(format!("{line}\n"));
        } else if line.trim_end() == "-- vrml:user:end" {
            if let Some(mut text) = current.take() {
                text.push_str(line);
                text.push('\n');
                sections.push(text);
            }
        } else if let Some(text) = current.as_mut() {
            text.push_str(line);
            text.push('\n');
        }
    }
    sections
}

/// Replace the automation body of a generated block with `sorry`. The
/// theorem signature spans several lines (one assumption per line) and ends
/// with `:= by`; everything after that line up to the end marker is the
/// generated tactic body.
fn sorry_block(text: &str) -> String {
    let mut output = String::new();
    let mut in_proof = false;
    let evidence = text.contains("@[vrml_evidence]");
    for line in text.lines() {
        if !in_proof && line.trim_end().ends_with(":= by") {
            in_proof = true;
            output.push_str(line);
            output.push('\n');
            if evidence {
                output.push_str(
                    "  -- TODO(vermilion): provide this class dictionary interactively.\n",
                );
            } else {
                output
                    .push_str("  -- TODO(vermilion): automation failed; prove this obligation.\n");
            }
            output.push_str("  sorry\n");
        } else if in_proof && !line.starts_with("-- vrml:end ") {
            // drop the generated tactic body
        } else {
            output.push_str(line);
            output.push('\n');
        }
    }
    output
}

/// Align a kept evidence block's declaration keyword with the current
/// layout's generated form: per-file evidence is a `local instance` (scoped
/// by the module's section), per-function evidence a plain `instance`
/// (importing units must see it). A proof body written for one layout is
/// valid verbatim in the other — only the keyword differs.
fn align_evidence_keyword(kept: &str, generated: &str) -> String {
    if !generated.contains("@[vrml_evidence]") {
        return kept.to_owned();
    }
    if generated.contains(" noncomputable local instance ") {
        kept.replace(
            " noncomputable instance ",
            " noncomputable local instance ",
        )
    } else {
        kept.replace(
            " noncomputable local instance ",
            " noncomputable instance ",
        )
    }
}

/// One generated Lean file's obligations: the whole module in per-file
/// mode, one function's unit module in per-function mode.
struct Unit {
    lean_file: String,
    records: Vec<ObligationRecord>,
}

fn units_of(manifest: &ModuleManifest) -> Vec<Unit> {
    let mut units: Vec<Unit> = Vec::new();
    for record in &manifest.obligations {
        let lean_file = manifest.lean_file_of(record).to_owned();
        if units.last().map(|unit| &unit.lean_file) != Some(&lean_file) {
            units.push(Unit {
                lean_file,
                records: Vec::new(),
            });
        }
        units
            .last_mut()
            .expect("just pushed")
            .records
            .push(record.clone());
    }
    units
}

/// Is this twin file already a complete, up-to-date proof of exactly these
/// obligations? True iff the twin exists and its obligation blocks are, as a
/// set, exactly the given obligations, every block's statement hash matches,
/// and no block holds a `sorry`.
fn twin_file_current(twin_path: &Path, records: &[ObligationRecord]) -> bool {
    let Ok(twin) = std::fs::read_to_string(twin_path) else {
        return false;
    };
    let (_, blocks) = parse_blocks(&twin);
    if blocks.len() != records.len() {
        return false;
    }
    for record in records {
        match blocks.get(&record.name) {
            Some(block)
                if block.hash == record.statement_hash && !block.text.contains("sorry") => {}
            _ => return false,
        }
    }
    true
}

/// Is the whole twin side current for this manifest? Per-file: the single
/// twin. Per-function: every unit twin, plus the shared `Specs` twin still
/// carrying the current generated definitions (its machine part is the
/// generated content; user sections follow it).
fn twin_is_current(manifest: &ModuleManifest) -> bool {
    if twin_of(&manifest.lean_file) == manifest.lean_file {
        return false;
    }
    if manifest.is_per_function() {
        if let Some(specs_lean) = &manifest.specs_lean {
            let Ok(generated_specs) = std::fs::read_to_string(specs_lean) else {
                return false;
            };
            let Ok(proofs_specs) = std::fs::read_to_string(twin_of(specs_lean)) else {
                return false;
            };
            if !proofs_specs.starts_with(&generated_specs) {
                return false;
            }
        }
        let units = units_of(manifest);
        units
            .iter()
            .all(|unit| twin_file_current(Path::new(&twin_of(&unit.lean_file)), &unit.records))
    } else {
        twin_file_current(
            Path::new(&twin_of(&manifest.lean_file)),
            &manifest.obligations,
        )
    }
}

struct SyncOutcome {
    changed: bool,
    sorries: usize,
}

/// Reconcile one generated module (or unit module) with its twin file.
/// `fallback_blocks` seeds proof blocks when the twin file itself does not
/// exist yet — the cross-mode migration source (the other layout's twin);
/// `fallback_sections` likewise seeds user sections. `rewrite_import`
/// rewrites the generated `import generated.…Specs` header line for the
/// proofs side (per-function units).
#[allow(clippy::too_many_arguments)]
fn reconcile_module(
    generated: &str,
    proofs_path: &Path,
    fallback_blocks: &BTreeMap<String, Block>,
    fallback_sections: &[String],
    failing: &BTreeSet<String>,
    rewrite_import: bool,
    ensure_imports: &[String],
    warner: &mut Warner,
) -> Result<SyncOutcome, Box<dyn std::error::Error>> {
    let existing = std::fs::read_to_string(proofs_path).ok();
    let migrating = existing.is_none() && !fallback_blocks.is_empty();
    let (segments, _) = parse_blocks(generated);
    let (_, mut existing_blocks) = existing
        .as_deref()
        .map(parse_blocks)
        .map(|(_, blocks)| ((), blocks))
        .unwrap_or(((), BTreeMap::new()));
    // The twin's user sections (helper lemmas for interactive proofs) are
    // re-emitted at the end of the machine header, before the first block.
    let preserved = match existing.as_deref() {
        Some(source) => user_sections(source),
        None => fallback_sections.to_vec(),
    };
    let mut preserved_emitted = false;

    let mut output = String::new();
    let mut sorries = 0usize;
    let mut migrated = 0usize;
    let mut header_done = false;
    for (outside, block) in segments {
        let mut outside = if rewrite_import {
            rewrite_specs_import(&outside)
        } else {
            outside
        };
        // The twin header always imports the shared twin modules even when
        // the generated unit's reference analysis skipped them: user proof
        // bodies may use any helper from the Specs/Evidence twins.
        if !header_done {
            header_done = true;
            for module in ensure_imports {
                let line = format!("import {module}\n");
                if !outside.contains(&line) {
                    let insert_at = outside
                        .lines()
                        .scan(0usize, |offset, l| {
                            let start = *offset;
                            *offset += l.len() + 1;
                            Some((start + l.len() + 1, l))
                        })
                        .filter(|(_, l)| l.starts_with("import "))
                        .map(|(end, _)| end)
                        .last()
                        .unwrap_or(0);
                    outside.insert_str(insert_at, &line);
                }
            }
        }
        if !preserved_emitted && block.is_some() && !preserved.is_empty() {
            preserved_emitted = true;
            // Insert before the header's trailing `namespace` opener (the
            // first function's namespace), so user helper namespaces do not
            // nest inside it.
            let insert_at = outside
                .lines()
                .scan(0usize, |offset, line| {
                    let start = *offset;
                    *offset += line.len() + 1;
                    Some((start, line))
                })
                .filter(|(_, line)| line.starts_with("namespace "))
                .map(|(start, _)| start)
                .last()
                .unwrap_or(outside.len());
            output.push_str(&outside[..insert_at]);
            for section in &preserved {
                output.push_str(section);
                output.push('\n');
            }
            output.push_str(&outside[insert_at..]);
        } else {
            output.push_str(&outside);
        }
        let Some((name, generated_block)) = block else {
            continue;
        };
        // A missing twin block may still have a proof to migrate from the
        // other emission mode's twin (matched by statement hash).
        let previous = existing_blocks.remove(&name).or_else(|| {
            fallback_blocks
                .get(&name)
                .filter(|block| block.hash == generated_block.hash)
                .map(|block| {
                    migrated += 1;
                    Block {
                        hash: block.hash.clone(),
                        text: block.text.clone(),
                    }
                })
        });
        match previous {
            Some(previous) if previous.hash == generated_block.hash => {
                if previous.text.contains("sorry") && !failing.contains(&name) {
                    // The twin held an automation-failure placeholder, not a
                    // user proof — and automation has since caught up (e.g.
                    // the ladder or the emitted definitions improved).
                    // Reclaim the block.
                    warner.warn(&format!(
                        "`{name}` is now proven automatically; its `sorry` placeholder was replaced"
                    ));
                    output.push_str(&generated_block.text);
                } else if previous.text.contains("sorry") {
                    sorries += 1;
                    if previous.text.contains("@[vrml_evidence]") {
                        warner.warn(&format!(
                            "typeclass evidence `{name}` in {} is unresolved — provide the instance manually",
                            proofs_path.display()
                        ));
                    } else {
                        warner.warn(&format!(
                            "`{name}` in {} still contains `sorry` — prove it manually",
                            proofs_path.display()
                        ));
                    }
                    output.push_str(&align_evidence_keyword(
                        &previous.text,
                        &generated_block.text,
                    ));
                } else {
                    output.push_str(&align_evidence_keyword(
                        &previous.text,
                        &generated_block.text,
                    ));
                }
            }
            previous => {
                if previous.is_some() {
                    warner.warn(&format!(
                        "statement of `{name}` changed; its previous proof was stale and has been replaced"
                    ));
                }
                if failing.contains(&name) {
                    sorries += 1;
                    warner.warn(&format!(
                        "automation could not prove `{name}`; left as `sorry` in {} — prove it manually",
                        proofs_path.display()
                    ));
                    output.push_str(&sorry_block(&generated_block.text));
                } else {
                    output.push_str(&generated_block.text);
                }
            }
        }
    }
    for (name, _) in existing_blocks {
        warner.warn(&format!(
            "dropped proof block `{name}`; its obligation no longer exists"
        ));
    }
    if migrating && migrated > 0 {
        warner.warn(&format!(
            "migrated {migrated} proof block(s) from the other emission mode's twin into {}",
            proofs_path.display()
        ));
    }

    if let Some(parent) = proofs_path.parent() {
        std::fs::create_dir_all(parent)?;
    }
    let changed = std::fs::read_to_string(proofs_path).ok().as_deref() != Some(&output);
    if changed {
        std::fs::write(proofs_path, &output)?;
    }
    Ok(SyncOutcome { changed, sorries })
}

/// Mirror the generated `Specs` module to its machine-owned proofs twin,
/// preserving (and, on migration, seeding) the user's helper sections at
/// its end — shared helpers there are visible to every unit twin through
/// the `proofs.<stem>.Specs` import.
fn sync_specs_twin(
    generated_specs: &str,
    proofs_specs_path: &Path,
    extra_sections: &[String],
) -> Result<bool, Box<dyn std::error::Error>> {
    let existing = std::fs::read_to_string(proofs_specs_path).ok();
    let mut sections = existing.as_deref().map(user_sections).unwrap_or_default();
    for section in extra_sections {
        // Helper sections migrating here come from a single-module twin
        // where `private` still let sibling proofs see them; across the
        // shared-module boundary it would hide them from every unit twin.
        let section = section.replace("\nprivate ", "\n");
        let section = if let Some(rest) = section.strip_prefix("private ") {
            rest.to_owned()
        } else {
            section
        };
        if !sections.contains(&section) {
            sections.push(section);
        }
    }
    let mut output = generated_specs.to_owned();
    for section in &sections {
        output.push('\n');
        output.push_str(section);
    }
    if let Some(parent) = proofs_specs_path.parent() {
        std::fs::create_dir_all(parent)?;
    }
    let changed = existing.as_deref() != Some(&output);
    if changed {
        std::fs::write(proofs_specs_path, &output)?;
    }
    Ok(changed)
}

/// Proof blocks and user sections gathered from the OTHER emission mode's
/// twin(s) — plus, in per-function mode, from machine-managed unit twins
/// whose file name is no longer emitted (a renamed unit) — used to seed
/// twins that do not exist yet and to migrate proofs across layout changes.
/// `expected` are the unit-twin file names the current manifest emits.
fn cross_mode_fallback(
    manifest: &ModuleManifest,
    expected: &[std::ffi::OsString],
) -> (BTreeMap<String, Block>, Vec<String>, Option<String>) {
    let mut blocks = BTreeMap::new();
    let mut sections = Vec::new();
    let mut origin = None;
    if manifest.is_per_function() {
        // The legacy per-file twin sits next to the unit directory:
        // proofs/<stem>.lean for the unit dir proofs/<stem>/.
        let legacy = format!("{}.lean", twin_of(&manifest.lean_file));
        if let Ok(source) = std::fs::read_to_string(&legacy) {
            let (_, parsed) = parse_blocks(&source);
            blocks.extend(parsed);
            sections.extend(user_sections(&source));
            origin = Some(legacy);
        }
        // Old-named unit twins (renamed functions / older naming schemes):
        // their blocks migrate into the currently-named units, their user
        // sections into the shared Specs twin.
        let twin_dir = PathBuf::from(twin_of(&manifest.lean_file));
        if twin_dir.is_dir() {
            if let Ok(entries) = std::fs::read_dir(&twin_dir) {
                let mut paths: Vec<PathBuf> =
                    entries.filter_map(|e| e.ok()).map(|e| e.path()).collect();
                paths.sort();
                for path in paths {
                    if path.extension().and_then(|e| e.to_str()) != Some("lean") {
                        continue;
                    }
                    let Some(name) = path.file_name() else { continue };
                    if expected.iter().any(|expected| expected.as_os_str() == name) {
                        continue;
                    }
                    if let Ok(source) = std::fs::read_to_string(&path) {
                        let (_, parsed) = parse_blocks(&source);
                        if parsed.is_empty() {
                            continue; // a user helper file, not machine-managed
                        }
                        blocks.extend(parsed);
                        sections.extend(user_sections(&source));
                    }
                }
            }
        }
    } else {
        // A per-function twin directory from an earlier per-function run:
        // proofs/<stem>/ for the per-file twin proofs/<stem>.lean.
        let twin = twin_of(&manifest.lean_file);
        let directory = PathBuf::from(twin.strip_suffix(".lean").unwrap_or(&twin));
        if directory.is_dir() {
            if let Ok(entries) = std::fs::read_dir(&directory) {
                let mut names: Vec<PathBuf> =
                    entries.filter_map(|e| e.ok()).map(|e| e.path()).collect();
                names.sort();
                for path in names {
                    if path.extension().and_then(|e| e.to_str()) != Some("lean") {
                        continue;
                    }
                    if let Ok(source) = std::fs::read_to_string(&path) {
                        let (_, parsed) = parse_blocks(&source);
                        blocks.extend(parsed);
                        sections.extend(user_sections(&source));
                    }
                }
                origin = Some(format!("{}/", directory.display()));
            }
        }
    }
    if blocks.is_empty() && sections.is_empty() {
        origin = None;
    }
    (blocks, sections, origin)
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut arguments = std::env::args().skip(1);
    let mut manifest_path: Option<PathBuf> = None;
    let mut failures_path: Option<PathBuf> = None;
    let mut fail_on_sorry = false;
    let mut probe = false;
    while let Some(argument) = arguments.next() {
        match argument.as_str() {
            "--failures" => {
                failures_path = Some(PathBuf::from(
                    arguments.next().ok_or("--failures requires a path")?,
                ));
            }
            "--fail-on-sorry" => fail_on_sorry = true,
            // Report (without writing) whether the twin is already current &
            // complete for this manifest, so the driver can skip the redundant
            // generated-module check and let the twin kernel-check be the sole
            // arbiter. Exit 0 = current, 1 = stale/incomplete/missing.
            "--probe" => probe = true,
            _ => manifest_path = Some(PathBuf::from(argument)),
        }
    }
    let manifest_path = manifest_path.ok_or(
        "usage: vrml_sync <manifest.json> [--failures <check.json>] [--fail-on-sorry] [--probe]",
    )?;
    let manifest: ModuleManifest =
        serde_json::from_str(&std::fs::read_to_string(&manifest_path)?)?;

    if probe {
        std::process::exit(if twin_is_current(&manifest) { 0 } else { 1 });
    }

    let mut failing: BTreeSet<String> = BTreeSet::new();
    if let Some(path) = failures_path {
        for line in std::fs::read_to_string(&path)?.lines() {
            let Ok(value) = serde_json::from_str::<serde_json::Value>(line) else {
                continue;
            };
            // Twin-covered info diagnostics are not failures.
            if value
                .get("vermilion")
                .and_then(|v| v.get("covered_by_twin"))
                .and_then(|v| v.as_bool())
                == Some(true)
            {
                continue;
            }
            if let Some(name) = value
                .get("vermilion")
                .and_then(|v| v.get("obligation"))
                .and_then(|v| v.as_str())
            {
                failing.insert(name.to_owned());
            }
        }
    }

    let mut warner = Warner::new();
    let proofs_root = twin_of(&manifest.lean_file);
    if proofs_root == manifest.lean_file {
        return Err(format!("cannot derive proofs path from {}", manifest.lean_file).into());
    }

    let mut total_sorries = 0usize;
    let mut any_changed = false;

    if manifest.is_per_function() {
        let units = units_of(&manifest);
        let mut expected: Vec<std::ffi::OsString> = vec!["Specs.lean".into()];
        for unit in &units {
            if let Some(name) = PathBuf::from(twin_of(&unit.lean_file)).file_name() {
                expected.push(name.to_owned());
            }
        }
        let (fallback_blocks, fallback_sections, fallback_origin) =
            cross_mode_fallback(&manifest, &expected);
        // The shared definitions twin first: unit twins import it. Helper
        // sections from a migrating per-file twin (or from renamed unit
        // twins) move here — visible to every unit twin through the import.
        let mut have_specs_twin = false;
        if let Some(specs_lean) = &manifest.specs_lean {
            let generated_specs = std::fs::read_to_string(specs_lean)?;
            let proofs_specs = twin_of(specs_lean);
            let changed = sync_specs_twin(
                &generated_specs,
                Path::new(&proofs_specs),
                &fallback_sections,
            )?;
            any_changed = any_changed || changed;
            have_specs_twin = true;
        }
        // The twin modules every unit twin should import (user proof bodies
        // may use any helper defined there): `<stem>.Specs`, and
        // `<stem>.Evidence` when evidence exists. The stem is the twin
        // directory's name.
        let stem = Path::new(&proofs_root)
            .file_name()
            .and_then(|name| name.to_str())
            .unwrap_or_default()
            .to_owned();
        let mut ensure_imports: Vec<String> = Vec::new();
        if manifest.specs_lean.is_some() {
            ensure_imports.push(format!("{stem}.Specs"));
        }
        if manifest
            .obligations
            .iter()
            .any(|record| record.kind == "typeclass_evidence")
        {
            ensure_imports.push(format!("{stem}.Evidence"));
        }
        for unit in &units {
            let proofs_path = PathBuf::from(twin_of(&unit.lean_file));
            let generated = std::fs::read_to_string(&unit.lean_file)?;
            // The Evidence unit itself must not import itself.
            let unit_is_evidence = proofs_path
                .file_name()
                .map(|name| name == "Evidence.lean")
                .unwrap_or(false);
            let unit_ensure: Vec<String> = ensure_imports
                .iter()
                .filter(|module| !(unit_is_evidence && module.ends_with(".Evidence")))
                .cloned()
                .collect();
            let outcome = reconcile_module(
                &generated,
                &proofs_path,
                &fallback_blocks,
                &[],
                &failing,
                true,
                &unit_ensure,
                &mut warner,
            )?;
            any_changed = any_changed || outcome.changed;
            total_sorries += outcome.sorries;
        }
        // Machine-managed twin files that are no longer emitted — a removed
        // function, or a renamed unit — would still be built by Lake and
        // duplicate the reconciled proofs. Their surviving blocks were just
        // migrated into the expected units (hash-matched) and their user
        // sections into the Specs twin, so drop them. Files without vrml
        // blocks are user helpers and are never touched.
        let twin_dir = PathBuf::from(&proofs_root);
        if twin_dir.is_dir() {
            if let Ok(entries) = std::fs::read_dir(&twin_dir) {
                for entry in entries.filter_map(|e| e.ok()) {
                    let path = entry.path();
                    if path.extension().and_then(|e| e.to_str()) != Some("lean") {
                        continue;
                    }
                    let Some(name) = path.file_name() else { continue };
                    if expected.iter().any(|expected| expected.as_os_str() == name) {
                        continue;
                    }
                    let Ok(source) = std::fs::read_to_string(&path) else {
                        continue;
                    };
                    let (_, blocks) = parse_blocks(&source);
                    if blocks.is_empty() {
                        continue;
                    }
                    if !user_sections(&source).is_empty() && !have_specs_twin {
                        warner.warn(&format!(
                            "{} is no longer emitted but carries user sections and there is \
                             no Specs twin to migrate them into — move them, then delete it",
                            path.display()
                        ));
                        continue;
                    }
                    warner.warn(&format!(
                        "dropped twin {} — its unit is no longer emitted under that name \
                         (surviving proofs were migrated)",
                        path.display()
                    ));
                    let _ = std::fs::remove_file(&path);
                    any_changed = true;
                }
            }
        }
        // A leftover per-file twin would double-build under Lake and shadow
        // the migrated proofs; the user removes it once satisfied.
        if let Some(origin) = &fallback_origin {
            if origin.ends_with(".lean") {
                warner.warn(&format!(
                    "legacy twin {origin} still exists; its matching proofs were migrated to \
                     {proofs_root}/ — remove it once you are satisfied with the migration"
                ));
            }
        }
        println!(
            "proofs twins {} {}/ ({} unit twins, {} obligations, {} sorry)",
            if any_changed { "updated" } else { "unchanged" },
            proofs_root,
            units.len(),
            manifest.obligations.len(),
            total_sorries
        );
    } else {
        let (fallback_blocks, fallback_sections, fallback_origin) =
            cross_mode_fallback(&manifest, &[]);
        let generated = std::fs::read_to_string(&manifest.lean_file)?;
        let outcome = reconcile_module(
            &generated,
            Path::new(&proofs_root),
            &fallback_blocks,
            &fallback_sections,
            &failing,
            false,
            &[],
            &mut warner,
        )?;
        any_changed = outcome.changed;
        total_sorries = outcome.sorries;
        if let Some(origin) = &fallback_origin {
            warner.warn(&format!(
                "legacy per-function twins {origin} still exist; matching proofs were migrated \
                 to {proofs_root} — remove the directory once you are satisfied"
            ));
        }
        println!(
            "proofs twin {} {} ({} obligations, {} sorry)",
            if any_changed { "updated" } else { "unchanged" },
            proofs_root,
            manifest.obligations.len(),
            total_sorries
        );
    }
    if fail_on_sorry && total_sorries > 0 {
        return Err(format!(
            "{total_sorries} obligation(s) in {proofs_root} still need manual proofs"
        )
        .into());
    }
    Ok(())
}
