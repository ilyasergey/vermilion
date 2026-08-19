//! Check that a verification project differs from a pristine Rust project
//! only by explicitly marked, verification-only annotation regions.
//!
//! Rust source is compared as a `proc_macro2` token stream after erasing the
//! regions. This ignores whitespace/comments (so a brace may move to make room
//! for a contract) but rejects every changed executable token. Non-Rust files,
//! the Cargo metadata, and the complete relative upstream `src/` inventory
//! are exact. Verification-side `src/generated/` and `src/proofs/` are the
//! only excluded paths: colocated Lean artifacts, never Rust inputs.

use proc_macro2::TokenStream;
use std::collections::BTreeSet;
use std::env;
use std::fs;
use std::path::{Path, PathBuf};
use std::process::ExitCode;
use std::str::FromStr;

const BEGIN: &str = "// vermilion:annotation-begin ";
const END: &str = "// vermilion:annotation-end";
const METADATA: &[&str] = &["Cargo.toml", "Cargo.lock", "rust-toolchain"];

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
enum RegionKind {
    Wrapper,
    Import,
    Contract,
    Loop,
    Ghost,
    Attribute,
    SpecImpl,
    ResultPrefix,
    ResultSuffix,
}

impl RegionKind {
    fn parse(text: &str) -> Result<Self, String> {
        match text {
            "wrapper" => Ok(Self::Wrapper),
            "import" => Ok(Self::Import),
            "contract" => Ok(Self::Contract),
            "loop" => Ok(Self::Loop),
            "ghost" => Ok(Self::Ghost),
            "attribute" => Ok(Self::Attribute),
            "spec-impl" => Ok(Self::SpecImpl),
            "result-prefix" => Ok(Self::ResultPrefix),
            "result-suffix" => Ok(Self::ResultSuffix),
            other => Err(format!("unknown annotation region kind `{other}`")),
        }
    }
}

fn significant_lines(body: &str) -> Vec<&str> {
    body.lines()
        .map(str::trim)
        .filter(|line| !line.is_empty() && !line.starts_with("//"))
        .collect()
}

fn starts_with_any(text: &str, prefixes: &[&str]) -> bool {
    prefixes.iter().any(|prefix| {
        text == *prefix
            || text
                .strip_prefix(prefix)
                .is_some_and(|rest| rest.starts_with(char::is_whitespace))
    })
}

fn validate_region(kind: RegionKind, body: &str) -> Result<(), String> {
    let lines = significant_lines(body);
    if lines.is_empty() {
        return Err("empty annotation region".to_owned());
    }
    let first = lines[0];
    let valid = match kind {
        RegionKind::Wrapper => {
            (lines.len() == 1 && (first == "verus! {" || first == "}"))
                || first.starts_with("verus! {")
        }
        RegionKind::Import => lines.iter().all(|line| {
            line.starts_with("use vstd::")
                || line.starts_with("use builtin::")
                || line.starts_with("use builtin_macros::")
                || matches!(*line, "{" | "};")
        }),
        RegionKind::Contract => starts_with_any(
            first,
            &[
                "requires",
                "ensures",
                "recommends",
                "decreases",
                "returns",
                "opens_invariants",
                "no_unwind",
            ],
        ),
        RegionKind::Loop => starts_with_any(
            first,
            &[
                "invariant",
                "invariant_except_break",
                "invariant_ensures",
                "decreases",
            ],
        ),
        RegionKind::Ghost => {
            first.starts_with("assert(")
                || starts_with_any(
                    first,
                    &[
                        "spec",
                        "open spec",
                        "closed spec",
                        "uninterp spec",
                        "pub spec",
                        "pub open spec",
                        "pub closed spec",
                        "pub uninterp spec",
                        "proof",
                        "broadcast proof",
                        "ghost",
                        "let ghost",
                        "tracked",
                        "assert",
                        "assume",
                        "reveal",
                        "broadcast use",
                    ],
                )
        }
        RegionKind::Attribute => {
            first.starts_with("#[verifier::")
                || first.starts_with("#[trigger]")
                || first.starts_with("#[verus::")
        }
        RegionKind::SpecImpl => {
            let function_lines: Vec<_> = lines
                .iter()
                .filter(|line| line.split_whitespace().any(|word| word == "fn"))
                .collect();
            let expected_function = if first
                .starts_with("impl vstd::std_specs::core::IndexSpecImpl<")
                && first.contains("> for ")
            {
                Some("open spec fn index_req(")
            } else if first.starts_with("impl View for ") {
                Some("closed spec fn view(")
            } else {
                None
            };
            expected_function.is_some()
                && first.ends_with('{')
                && lines.last() == Some(&"}")
                && function_lines.len() == 1
                && function_lines[0].starts_with(expected_function.unwrap())
        }
        RegionKind::ResultPrefix => {
            if lines.len() != 1 {
                false
            } else {
                first
                    .strip_prefix('(')
                    .and_then(|text| text.strip_suffix(':'))
                    .is_some_and(|name| {
                        let name = name.trim().strip_prefix("r#").unwrap_or(name.trim());
                        let mut chars = name.chars();
                        chars
                            .next()
                            .is_some_and(|ch| ch == '_' || ch.is_ascii_alphabetic())
                            && chars.all(|ch| ch == '_' || ch.is_ascii_alphanumeric())
                    })
            }
        }
        RegionKind::ResultSuffix => lines.len() == 1 && first == ")",
    };
    if valid {
        Ok(())
    } else {
        Err(format!(
            "content is not valid for an annotation region of kind {kind:?}: `{first}`"
        ))
    }
}

fn erase_annotations(source: &str, label: &Path) -> Result<(String, usize), String> {
    let mut erased = String::new();
    let mut current: Option<(RegionKind, usize, String)> = None;
    let mut regions = 0;
    for (index, segment) in source.split_inclusive('\n').enumerate() {
        let line_number = index + 1;
        let line = segment.strip_suffix('\n').unwrap_or(segment);
        let trimmed = line.trim();
        if let Some(kind_text) = trimmed.strip_prefix(BEGIN) {
            if let Some((_, begin_line, _)) = &current {
                return Err(format!(
                    "{}:{line_number}: nested annotation region (outer region begins at line {begin_line})",
                    label.display()
                ));
            }
            let kind = RegionKind::parse(kind_text.trim())
                .map_err(|error| format!("{}:{line_number}: {error}", label.display()))?;
            current = Some((kind, line_number, String::new()));
        } else if trimmed == END {
            let Some((kind, begin_line, body)) = current.take() else {
                return Err(format!(
                    "{}:{line_number}: annotation end without a begin marker",
                    label.display()
                ));
            };
            validate_region(kind, &body).map_err(|error| {
                format!(
                    "{}:{begin_line}: invalid annotation region: {error}",
                    label.display()
                )
            })?;
            regions += 1;
        } else if let Some((_, _, body)) = &mut current {
            body.push_str(segment);
        } else {
            erased.push_str(segment);
        }
    }
    if let Some((_, begin_line, _)) = current {
        return Err(format!(
            "{}:{begin_line}: unclosed annotation region",
            label.display()
        ));
    }
    Ok((erased, regions))
}

fn normalized_tokens(source: &str, label: &Path) -> Result<String, String> {
    TokenStream::from_str(source)
        .map(|tokens| tokens.to_string())
        .map_err(|error| format!("{} is not tokenizable Rust: {error}", label.display()))
}

fn collect_files(
    root: &Path,
    directory: &Path,
    ignored_top_level: &[&str],
    files: &mut BTreeSet<PathBuf>,
) -> Result<(), String> {
    let entries = fs::read_dir(directory)
        .map_err(|error| format!("cannot read {}: {error}", directory.display()))?;
    for entry in entries {
        let entry = entry.map_err(|error| format!("cannot read directory entry: {error}"))?;
        let file_type = entry
            .file_type()
            .map_err(|error| format!("cannot inspect {}: {error}", entry.path().display()))?;
        if file_type.is_symlink() {
            return Err(format!(
                "source inventory contains a symlink: {}",
                entry.path().display()
            ));
        }
        if file_type.is_dir() {
            if directory == root
                && ignored_top_level
                    .iter()
                    .any(|name| entry.file_name() == std::ffi::OsStr::new(name))
            {
                continue;
            }
            collect_files(root, &entry.path(), ignored_top_level, files)?;
        } else if file_type.is_file() {
            let relative = entry
                .path()
                .strip_prefix(root)
                .map_err(|error| error.to_string())?
                .to_owned();
            files.insert(relative);
        }
    }
    Ok(())
}

fn source_inventory(
    project: &Path,
    ignored_top_level: &[&str],
) -> Result<BTreeSet<PathBuf>, String> {
    let root = project.join("src");
    if !root.is_dir() {
        return Err(format!("missing source directory: {}", root.display()));
    }
    let mut files = BTreeSet::new();
    collect_files(&root, &root, ignored_top_level, &mut files)?;
    Ok(files)
}

fn compare_projects(pristine: &Path, verification: &Path) -> Result<String, String> {
    for metadata in METADATA {
        let left = pristine.join(metadata);
        let right = verification.join(metadata);
        let expected = fs::read(&left)
            .map_err(|error| format!("cannot read required {}: {error}", left.display()))?;
        let actual = fs::read(&right)
            .map_err(|error| format!("cannot read required {}: {error}", right.display()))?;
        if expected != actual {
            return Err(format!(
                "verification metadata differs from pristine: {metadata}"
            ));
        }
    }

    let pristine_files = source_inventory(pristine, &[])?;
    let verification_files = source_inventory(verification, &["generated", "proofs"])?;
    if pristine_files != verification_files {
        let missing: Vec<_> = pristine_files.difference(&verification_files).collect();
        let extra: Vec<_> = verification_files.difference(&pristine_files).collect();
        return Err(format!(
            "source inventory differs (missing: {}; extra: {})",
            missing
                .iter()
                .map(|path| path.display().to_string())
                .collect::<Vec<_>>()
                .join(", "),
            extra
                .iter()
                .map(|path| path.display().to_string())
                .collect::<Vec<_>>()
                .join(", ")
        ));
    }

    let mut rust_files = 0;
    let mut exact_files = 0;
    let mut regions = 0;
    for relative in &pristine_files {
        let left = pristine.join("src").join(relative);
        let right = verification.join("src").join(relative);
        let expected =
            fs::read(&left).map_err(|error| format!("cannot read {}: {error}", left.display()))?;
        let actual = fs::read(&right)
            .map_err(|error| format!("cannot read {}: {error}", right.display()))?;
        if relative
            .extension()
            .and_then(|extension| extension.to_str())
            != Some("rs")
        {
            if expected != actual {
                return Err(format!(
                    "non-Rust source must remain byte-identical: {}",
                    relative.display()
                ));
            }
            exact_files += 1;
            continue;
        }
        let pristine_source = String::from_utf8(expected)
            .map_err(|error| format!("{} is not UTF-8: {error}", left.display()))?;
        if pristine_source.contains(BEGIN) || pristine_source.contains(END) {
            return Err(format!(
                "pristine source contains a reserved annotation marker: {}",
                relative.display()
            ));
        }
        let verification_source = String::from_utf8(actual)
            .map_err(|error| format!("{} is not UTF-8: {error}", right.display()))?;
        let (erased, file_regions) = erase_annotations(&verification_source, &right)?;
        let expected_tokens = normalized_tokens(&pristine_source, &left)?;
        let actual_tokens = normalized_tokens(&erased, &right)?;
        if expected_tokens != actual_tokens {
            return Err(format!(
                "executable Rust tokens differ after annotation erasure: {}",
                relative.display()
            ));
        }
        regions += file_regions;
        rust_files += 1;
    }

    Ok(format!(
        "{} Rust files preserve executable tokens after erasing {} annotation regions; {} non-Rust src files and {} metadata files are byte-identical",
        rust_files,
        regions,
        exact_files,
        METADATA.len()
    ))
}

fn main() -> ExitCode {
    let mut args = env::args_os().skip(1);
    let Some(pristine) = args.next() else {
        eprintln!("usage: vrml_source_guard PRISTINE_PROJECT VERIFICATION_PROJECT");
        return ExitCode::from(2);
    };
    let Some(verification) = args.next() else {
        eprintln!("usage: vrml_source_guard PRISTINE_PROJECT VERIFICATION_PROJECT");
        return ExitCode::from(2);
    };
    if args.next().is_some() {
        eprintln!("usage: vrml_source_guard PRISTINE_PROJECT VERIFICATION_PROJECT");
        return ExitCode::from(2);
    }
    match compare_projects(Path::new(&pristine), Path::new(&verification)) {
        Ok(summary) => {
            println!("source preservation passed: {summary}");
            ExitCode::SUCCESS
        }
        Err(error) => {
            eprintln!("source preservation failed: {error}");
            ExitCode::FAILURE
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::sync::atomic::{AtomicUsize, Ordering};

    static NEXT_TEMP: AtomicUsize = AtomicUsize::new(0);

    struct Fixture {
        root: PathBuf,
        pristine: PathBuf,
        verification: PathBuf,
    }

    impl Fixture {
        fn new() -> Self {
            let id = NEXT_TEMP.fetch_add(1, Ordering::Relaxed);
            let root = env::temp_dir().join(format!(
                "vermilion-source-guard-{}-{id}",
                std::process::id()
            ));
            let pristine = root.join("pristine");
            let verification = root.join("verification");
            for project in [&pristine, &verification] {
                fs::create_dir_all(project.join("src/nested")).unwrap();
                for metadata in METADATA {
                    fs::write(project.join(metadata), format!("{metadata}\n")).unwrap();
                }
                fs::write(project.join("src/lib.rs"), "fn f() -> u64 { 1 }\n").unwrap();
                fs::write(project.join("src/nested/mod.rs"), "pub fn g() {}\n").unwrap();
            }
            Self {
                root,
                pristine,
                verification,
            }
        }
    }

    impl Drop for Fixture {
        fn drop(&mut self) {
            let _ = fs::remove_dir_all(&self.root);
        }
    }

    #[test]
    fn erases_a_contract_without_changing_rust_tokens() {
        let pristine = "fn f(x: u64) -> u64 { x + 1 }\n";
        let annotated = "fn f(x: u64) -> u64\n// vermilion:annotation-begin contract\n    ensures result == x + 1,\n// vermilion:annotation-end\n{ x + 1 }\n";
        let (erased, regions) = erase_annotations(annotated, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);
        assert_eq!(
            normalized_tokens(pristine, Path::new("pristine.rs")).unwrap(),
            normalized_tokens(&erased, Path::new("annotated.rs")).unwrap()
        );
    }

    #[test]
    fn erases_a_named_result_around_the_original_return_type() {
        let pristine = "fn f() -> u64 { 1 }\n";
        let annotated = "fn f() ->\n// vermilion:annotation-begin result-prefix\n(result:\n// vermilion:annotation-end\nu64\n// vermilion:annotation-begin result-suffix\n)\n// vermilion:annotation-end\n// vermilion:annotation-begin contract\nensures result == 1,\n// vermilion:annotation-end\n{ 1 }\n";
        let (erased, regions) = erase_annotations(annotated, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 3);
        assert_eq!(
            normalized_tokens(pristine, Path::new("pristine.rs")).unwrap(),
            normalized_tokens(&erased, Path::new("annotated.rs")).unwrap()
        );
    }

    #[test]
    fn accepts_only_supported_spec_impl_shapes() {
        let annotated = "// vermilion:annotation-begin spec-impl\nimpl vstd::std_specs::core::IndexSpecImpl<(usize, usize)> for Grid {\n    open spec fn index_req(&self, index: &(usize, usize)) -> bool {\n        index.0 < 5 && index.1 < 5\n    }\n}\n// vermilion:annotation-end\n";
        let (_, regions) = erase_annotations(annotated, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);

        let view_impl = "// vermilion:annotation-begin spec-impl\nimpl View for Grid {\n    type V = Seq<u64>;\n    closed spec fn view(&self) -> Self::V { self.0@ }\n}\n// vermilion:annotation-end\n";
        let (_, regions) = erase_annotations(view_impl, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);

        let ordinary_impl = "// vermilion:annotation-begin spec-impl\nimpl core::ops::Index<usize> for Grid {\n    fn index(&self, index: usize) -> &u64 { &self.0[index] }\n}\n// vermilion:annotation-end\n";
        assert!(erase_annotations(ordinary_impl, Path::new("f.rs"))
            .unwrap_err()
            .contains("not valid for an annotation region"));

        let executable_method = "// vermilion:annotation-begin spec-impl\nimpl vstd::std_specs::core::IndexSpecImpl<(usize, usize)> for Grid {\n    open spec fn index_req(&self, index: &(usize, usize)) -> bool { true }\n    fn mutate(&mut self) { self.0[0] = 1; }\n}\n// vermilion:annotation-end\n";
        assert!(erase_annotations(executable_method, Path::new("f.rs"))
            .unwrap_err()
            .contains("not valid for an annotation region"));
    }

    #[test]
    fn accepts_public_spec_declarations_but_not_public_exec_functions() {
        let public_spec = "// vermilion:annotation-begin ghost\npub closed spec fn zeroes() -> Seq<u64> { Seq::new(25, |i| 0) }\n// vermilion:annotation-end\n";
        let (_, regions) = erase_annotations(public_spec, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);

        let public_exec = "// vermilion:annotation-begin ghost\npub fn zeroes() -> Vec<u64> { vec![0; 25] }\n// vermilion:annotation-end\n";
        assert!(erase_annotations(public_exec, Path::new("f.rs"))
            .unwrap_err()
            .contains("not valid for an annotation region"));
    }

    #[test]
    fn accepts_erased_ghost_statements_but_not_executable_let_bindings() {
        let ghost_let = "// vermilion:annotation-begin ghost\nlet ghost before = dst@;\n// vermilion:annotation-end\n";
        let (_, regions) = erase_annotations(ghost_let, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);

        let proof_assert = "// vermilion:annotation-begin ghost\nassert(dst@ == before);\n// vermilion:annotation-end\n";
        let (_, regions) = erase_annotations(proof_assert, Path::new("f.rs")).unwrap();
        assert_eq!(regions, 1);

        let executable_let = "// vermilion:annotation-begin ghost\nlet before = dst.len();\n// vermilion:annotation-end\n";
        assert!(erase_annotations(executable_let, Path::new("f.rs"))
            .unwrap_err()
            .contains("not valid for an annotation region"));
    }

    #[test]
    fn rejects_executable_content_disguised_as_a_contract() {
        let annotated =
            "// vermilion:annotation-begin contract\nx += 1;\n// vermilion:annotation-end\n";
        let error = erase_annotations(annotated, Path::new("f.rs")).unwrap_err();
        assert!(error.contains("not valid for an annotation region"));
    }

    #[test]
    fn rejects_nested_and_unclosed_regions() {
        let nested =
            "// vermilion:annotation-begin ghost\nproof { }\n// vermilion:annotation-begin proof\n";
        assert!(erase_annotations(nested, Path::new("f.rs"))
            .unwrap_err()
            .contains("nested annotation region"));
        let unclosed = "// vermilion:annotation-begin ghost\nproof { }\n";
        assert!(erase_annotations(unclosed, Path::new("f.rs"))
            .unwrap_err()
            .contains("unclosed annotation region"));
    }

    #[test]
    fn rejects_an_executable_rust_edit() {
        let fixture = Fixture::new();
        fs::write(
            fixture.verification.join("src/lib.rs"),
            "fn f() -> u64 { 2 }\n",
        )
        .unwrap();
        let error = compare_projects(&fixture.pristine, &fixture.verification).unwrap_err();
        assert!(error.contains("executable Rust tokens differ"));
    }

    #[test]
    fn rejects_missing_and_extra_source_files() {
        let fixture = Fixture::new();
        fs::remove_file(fixture.verification.join("src/nested/mod.rs")).unwrap();
        let error = compare_projects(&fixture.pristine, &fixture.verification).unwrap_err();
        assert!(error.contains("missing: nested/mod.rs"));

        fs::write(
            fixture.verification.join("src/nested/mod.rs"),
            "pub fn g() {}\n",
        )
        .unwrap();
        fs::write(
            fixture.verification.join("src/extra.rs"),
            "pub fn extra() {}\n",
        )
        .unwrap();
        let error = compare_projects(&fixture.pristine, &fixture.verification).unwrap_err();
        assert!(error.contains("extra: extra.rs"));
    }

    #[test]
    fn permits_only_colocated_lean_artifact_directories() {
        let fixture = Fixture::new();
        fs::create_dir_all(fixture.verification.join("src/generated/f")).unwrap();
        fs::create_dir_all(fixture.verification.join("src/proofs/f")).unwrap();
        fs::write(
            fixture.verification.join("src/generated/f/obligation.lean"),
            "theorem generated : True := by trivial\n",
        )
        .unwrap();
        fs::write(
            fixture.verification.join("src/proofs/f/obligation.lean"),
            "theorem proof : True := by trivial\n",
        )
        .unwrap();
        assert!(compare_projects(&fixture.pristine, &fixture.verification).is_ok());

        fs::create_dir_all(fixture.verification.join("src/other")).unwrap();
        fs::write(
            fixture.verification.join("src/other/extra.lean"),
            "theorem extra : True := by trivial\n",
        )
        .unwrap();
        let error = compare_projects(&fixture.pristine, &fixture.verification).unwrap_err();
        assert!(error.contains("extra: other/extra.lean"));
    }
}
