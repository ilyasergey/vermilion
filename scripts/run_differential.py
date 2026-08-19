#!/usr/bin/env python3
"""Differential verdict measurement: Verus vs Vermilion's Lean backend.

For every case in tests/differential/, run the pinned Verus and the direct
Vermilion pipeline, compare the accept/reject verdict, and for rejections
compare the primary error line. Writes a markdown summary to
docs/reports/generated/differential-m1-results.md and exits nonzero if
verdict parity drops below the formal M1 gate (95%).

`--emit-mode per-file` (or per-function, the default) selects the emission
layout `vrml_gen` uses; verdicts must be identical across modes, so running
the corpus in both is the modes' consistency test.
"""

import concurrent.futures
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import threading
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CASES = ROOT / "tests" / "differential"
OUT = ROOT / "docs" / "reports" / "generated"
GATE = 0.95


def sh(command, **kwargs):
    return subprocess.run(command, capture_output=True, text=True, cwd=ROOT, **kwargs)


class Progress:
    """Self-replacing one-line progress bar on stderr, in the same
    `[vermilion]` live-status style as run_example.sh. TTY-only (piped and
    captured runs stay clean) and thread-safe: cases run on a worker pool,
    so the line shows the completion count plus the latest event."""

    WIDTH = 22

    def __init__(self, total):
        self.total = total
        self.done = 0
        self.tty = sys.stderr.isatty()
        self.lock = threading.Lock()

    def _render(self, event):
        if not self.tty:
            return
        filled = self.WIDTH * self.done // max(1, self.total)
        bar = "▓" * filled + "░" * (self.WIDTH - filled)
        sys.stderr.write(
            f"\r\x1b[2K\x1b[36m[vermilion]\x1b[0m differential {bar} "
            f"{self.done}/{self.total} {event}")
        sys.stderr.flush()

    def show(self, name, phase):
        with self.lock:
            self._render(f"{name}: {phase}")

    def advance(self, name):
        with self.lock:
            self.done += 1
            self._render(f"{name}: done")

    def finish(self):
        if self.tty:
            sys.stderr.write("\r\x1b[2K")
            sys.stderr.flush()


def lean_generator_stale():
    """Skip the ~30s Lake workspace re-materialization when no Lean source
    changed since the last successful build (same stamp discipline as
    scripts/lean_env.sh)."""
    stamp = ROOT / ".vermilion" / "lake-build-stamp"
    generator = ROOT / ".lake/build/bin/vrml_gen"
    if not stamp.exists() or not generator.exists():
        return True
    threshold = stamp.stat().st_mtime_ns
    lean_sources = [ROOT / "lakefile.lean", *(ROOT / "lean").rglob("*.lean")]
    return any(path.stat().st_mtime_ns > threshold for path in lean_sources
               if path.exists())


def main() -> int:
    emit_mode = "per-function"
    arguments = sys.argv[1:]
    while arguments:
        argument = arguments.pop(0)
        if argument == "--emit-mode" and arguments:
            emit_mode = arguments.pop(0)
        else:
            print(f"unknown argument {argument} "
                  "(usage: run_differential.py [--emit-mode per-file|per-function])")
            return 2
    if emit_mode not in ("per-file", "per-function"):
        print(f"unknown emission mode {emit_mode}")
        return 2
    subprocess.run([str(ROOT / "scripts/setup_verus.sh")], cwd=ROOT, check=True,
                   capture_output=True)
    checkout = (ROOT / ".verus-checkout").resolve()
    verus = checkout / "source/target-verus/release/rust_verify"
    toolchain = re.search(r'channel = "(.*)"',
                          (checkout / "rust-toolchain.toml").read_text()).group(1)
    sysroot = sh(["rustup", "run", toolchain, "rustc", "--print", "sysroot"]).stdout.strip()
    env = os.environ | {
        "VERUS_ROOT": str(checkout / "source/target-verus/release"),
        "VERUS_Z3_PATH": str(checkout / "source/z3"),
        "DYLD_LIBRARY_PATH": f"{sysroot}/lib",
        "LD_LIBRARY_PATH": f"{sysroot}/lib",
    }

    subprocess.run(
        ["rustup", "run", toolchain, "cargo", "build", "--release", "--quiet"],
        cwd=ROOT / "crates/vermilion_direct", check=True)
    subprocess.run(
        ["cargo", "build", "--quiet", "-p", "vermilion_backend", "--bin", "vrml_check"],
        cwd=ROOT, check=True)
    if lean_generator_stale():
        # Both targets: vrml_gen emits the obligations, but the generated
        # modules import Vermilion.Obligations at judge time — building only
        # the generator leaves the library the obligations elaborate against
        # stale.
        subprocess.run(["lake", "build", "vrml_gen", "Vermilion"], cwd=ROOT,
                       check=True, capture_output=True)
        (ROOT / ".vermilion" / "lake-build-stamp").touch()
    direct = ROOT / "crates/vermilion_direct/target/release/vermilion_direct"
    vrml_gen = ROOT / ".lake/build/bin/vrml_gen"
    check = ROOT / "target/debug/vrml_check"

    (CASES / "generated").mkdir(exist_ok=True)
    (ROOT / ".vermilion").mkdir(exist_ok=True)

    # Whole-case verdict cache: when neither the case nor the environment
    # (Verus binary, Vermilion tools, Lean library) changed AND the generated
    # editor artifacts still exist, both verdicts are replayed from the
    # previous run — no Verus, no Lean.
    def stamp(path):
        try:
            return str(Path(path).stat().st_mtime_ns)
        except OSError:
            return "?"
    # The Lean side is stamped by SOURCE content, not build-artifact mtime:
    # Lake does not necessarily rewrite a given .olean when the library
    # changes (and may rewrite content while preserving mtimes), so an
    # artifact stamp can silently replay verdicts from a superseded library.
    lean_digest = hashlib.sha256()
    for source in sorted([ROOT / "lakefile.lean",
                          *(ROOT / "lean").rglob("*.lean")]):
        lean_digest.update(str(source.relative_to(ROOT)).encode())
        lean_digest.update(source.read_bytes())
    environment = "|".join([
        stamp(verus), stamp(direct), stamp(vrml_gen), stamp(check),
        lean_digest.hexdigest(), emit_mode,
    ])
    cache_path = ROOT / ".vermilion" / "differential-cache.json"
    try:
        cache = json.loads(cache_path.read_text())
    except (OSError, ValueError):
        cache = {}
    if cache.get("environment") != environment:
        cache = {"environment": environment, "cases": {}}
    replayed = 0

    def generated_artifacts_ready(stem):
        """A cached verdict may be replayed only with its editor artifacts.

        The generated tree is intentionally untracked.  Treating a verdict as
        a complete cache hit after that tree was removed made a cached suite
        pass verification and then fail its Lake/editor-resolution guard.
        """
        manifest = CASES / "generated" / f"{stem}.json"
        try:
            description = json.loads(manifest.read_text())
        except (OSError, ValueError):
            return False
        generated_root = ROOT / description.get("lean_file", "")
        if description.get("mode") != "per-function" and not generated_root.is_file():
            return False
        try:
            units = {
                ROOT / obligation["lean_file"]
                for obligation in description.get("obligations", [])
            }
            unit_sources = [unit.read_text() for unit in units]
        except (KeyError, OSError):
            return False
        # The generator omits Specs.lean for cases with no shared definitions.
        # Require it exactly when a materialized unit actually imports it.
        imports_specs = any(
            re.search(r"(?m)^import\s+\S+\.Specs\s*$", source)
            for source in unit_sources
        )
        return not imports_specs or (generated_root / "Specs.lean").is_file()

    rows, verdict_hits, span_hits, span_total = [], 0, 0, 0
    cases = sorted(CASES.glob("*.rs"))
    progress = Progress(len(cases))

    def measure(case, rel, source):
        """One cold case, end to end. Cases are fully independent (per-stem
        artifact names), so a pool of these runs concurrently. Wall times
        feed the M2 gate's median-slowdown measurement (Verus's full
        verify run vs our whole verify pipeline)."""
        # A cold measurement owns only this case's generated artifacts.  Clear
        # them so removed functions cannot survive a regeneration while other
        # cached cases (and their editor modules) remain materialized.
        shutil.rmtree(CASES / "generated" / case.stem, ignore_errors=True)
        (CASES / "generated" / f"{case.stem}.json").unlink(missing_ok=True)
        export = ROOT / ".vermilion" / f"diff-{case.stem}.bin"
        vstd_flags = [] if "use vstd::" in source else [
            "--no-vstd", "--cfg", "verus_no_vstd"]
        progress.show(case.stem, "verus front end + SMT oracle")
        started = time.monotonic()
        verus_run = subprocess.run(
            [str(verus), str(rel), "--crate-type=lib", *vstd_flags],
            capture_output=True, text=True, cwd=ROOT,
            env=env | {"VERUS_VIR_EXPORT": str(export)})
        verus_seconds = time.monotonic() - started
        verus_pass = verus_run.returncode == 0
        verus_lines = [int(line) for line in re.findall(
            rf"--> {re.escape(str(rel))}:(\d+):", verus_run.stderr)]

        # Our verify pipeline (the front end re-runs under --no-verify in
        # real usage; the export above already produced the VIR, so the
        # Vermilion-specific cost is lowering + generation + Lean).
        ir = ROOT / ".vermilion" / f"diff-{case.stem}-ir.sexp"
        started = time.monotonic()
        emit = sh([str(direct), str(export), "--out", str(ir)])
        if emit.returncode == 0:
            emit = sh([str(vrml_gen), "--mode", emit_mode, str(ir)])
        if emit.returncode != 0:
            progress.advance(case.stem)
            return {"verus_pass": verus_pass, "translation_failed": True}
        manifest = CASES / "generated" / f"{case.stem}.json"
        progress.show(case.stem, "lean judging obligations")
        check_run = sh([str(check), str(manifest)])
        vermilion_seconds = time.monotonic() - started
        lean_lines = sorted({
            span["line_start"]
            for line in check_run.stdout.splitlines()
            if line.startswith("{")
            for span in json.loads(line).get("spans", [])})
        progress.advance(case.stem)
        return {
            "verus_pass": verus_pass, "verus_lines": verus_lines,
            "lean_pass": check_run.returncode == 0, "lean_lines": lean_lines,
            "verus_seconds": round(verus_seconds, 3),
            "vermilion_seconds": round(vermilion_seconds, 3),
        }

    # Partition into cached replays and cold measurements; the cold ones run
    # on a worker pool (Z3 and Lean are memory-hungry — cap the width).
    prepared, results, futures = [], {}, {}
    pool = concurrent.futures.ThreadPoolExecutor(
        max_workers=min(6, os.cpu_count() or 4))
    for case in cases:
        rel = case.relative_to(ROOT)
        source = case.read_text()
        header = source.splitlines()[0]
        match = re.match(r"// expect: (pass|fail)(?: @ (\d+))?", header)
        assert match, f"{case} lacks an expectation header"
        expect_pass = match.group(1) == "pass"
        expect_line = int(match.group(2)) if match.group(2) else None
        key = hashlib.sha256(source.encode()).hexdigest()
        prepared.append((case, expect_pass, expect_line, key))
        cached = cache["cases"].get(case.stem)
        if (cached and cached.get("key") == key
                and generated_artifacts_ready(case.stem)):
            replayed += 1
            results[case.stem] = cached
            progress.advance(case.stem)
        else:
            futures[case.stem] = pool.submit(measure, case, rel, source)
    for stem, future in futures.items():
        results[stem] = future.result()
    pool.shutdown()

    # Verdicts, in deterministic case order.
    for case, expect_pass, expect_line, key in prepared:
        result = results[case.stem]
        if result.get("translation_failed"):
            rows.append((case.stem, result["verus_pass"], None,
                         "translation failed", False, ""))
            continue
        verus_pass = result["verus_pass"]
        verus_lines = result["verus_lines"]
        lean_pass = result["lean_pass"]
        lean_lines = result["lean_lines"]
        cache["cases"][case.stem] = {
            "key": key, "verus_pass": verus_pass, "verus_lines": verus_lines,
            "lean_pass": lean_pass, "lean_lines": lean_lines,
            "verus_seconds": result.get("verus_seconds"),
            "vermilion_seconds": result.get("vermilion_seconds"),
        }

        verdict_ok = verus_pass == lean_pass and verus_pass == expect_pass
        verdict_hits += verdict_ok
        span_note = ""
        if not expect_pass:
            span_total += 1
            span_ok = bool(lean_lines) and (
                lean_lines[0] in verus_lines or lean_lines[0] == expect_line)
            span_hits += span_ok
            span_note = f"verus {verus_lines} / lean {lean_lines}" + (
                "" if span_ok else "  <-- MISMATCH")
        rows.append((case.stem, verus_pass, lean_pass, "ok" if verdict_ok else "MISMATCH",
                     verdict_ok, span_note))

    progress.finish()
    cache_path.write_text(json.dumps(cache))
    if replayed:
        print(f"(replayed {replayed}/{len(cases)} unchanged cases from the "
              f"verdict cache)")

    # M2 gate: median slowdown of the Vermilion verify pipeline vs Verus's
    # own full run, over every case with timings (cold measurements).
    ratios = sorted(
        entry["vermilion_seconds"] / entry["verus_seconds"]
        for entry in cache["cases"].values()
        if entry.get("verus_seconds") and entry.get("vermilion_seconds"))
    if ratios:
        median = ratios[len(ratios) // 2]
        print(f"median slowdown vs Verus over {len(ratios)} timed cases: "
              f"{median:.2f}x (M2 gate: <= 10x)")

    parity = verdict_hits / len(cases)
    OUT.mkdir(parents=True, exist_ok=True)
    lines = [
        "# Differential results: straight-line M1 corpus",
        "",
        "Generated by `scripts/run_differential.py`. Do not edit.",
        "",
        "| Case | Verus | Lean | Verdict | Failure lines |",
        "|---|---|---|---|---|",
    ]
    for stem, verus_ok, lean_ok, note, _, span_note in rows:
        show = lambda value: "-" if value is None else ("pass" if value else "fail")
        lines.append(f"| {stem} | {show(verus_ok)} | {show(lean_ok)} | {note} | {span_note} |")
    lines += [
        "",
        f"Verdict parity: **{verdict_hits}/{len(cases)}** ({parity:.0%}); "
        f"failure-span agreement: **{span_hits}/{span_total}**.",
        "",
    ]
    (OUT / "differential-m1-results.md").write_text("\n".join(lines))
    print("\n".join(lines))
    return 0 if parity >= GATE else 1


if __name__ == "__main__":
    sys.exit(main())
