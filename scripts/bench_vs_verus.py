#!/usr/bin/env python3
"""Vermilion vs Verus timing + capability benchmark (docs/reports/vermilion-vs-verus-timing.md).

Best-of-3 wall time, end-to-end to verdict, on example .rs files. Verus runs
full SMT verify; Vermilion runs front-end(--no-verify) -> lower -> gen ->
vrml_check. Splits clean timing (both pass) from capability divergences
(Verus's default prover rejects; Vermilion proves). Run from the repo root.
"""
import subprocess, time, pathlib, os, statistics
ROOT=pathlib.Path.cwd()
# Resolve the real env once (toolchain bin on PATH + DYLD from verus_env), no per-call bash wrapper.
info=subprocess.run(["bash","-c",'repository="$PWD"; source scripts/verus_env.sh; source scripts/lean_env.sh; '
  'echo "$verus"; echo "$verus_toolchain"; echo "$DYLD_LIBRARY_PATH"; echo "$LEAN_PATH"; rustup which --toolchain "$verus_toolchain" rustc'],
  cwd=ROOT,capture_output=True,text=True).stdout.splitlines()
verus,tk,dyld,leanpath,rustc=info[0],info[1],info[2],info[3],info[4]
tkbin=str(pathlib.Path(rustc).parent)
env=os.environ.copy()
env["PATH"]=tkbin+":"+env["PATH"]; env["DYLD_LIBRARY_PATH"]=dyld; env["LD_LIBRARY_PATH"]=dyld; env["LEAN_PATH"]=leanpath
env["VERUS_ROOT"]=str(pathlib.Path(verus).parent); env["VERUS_Z3_PATH"]=str(pathlib.Path(verus).parent/"z3")
def run(args,extra=None):
    e=dict(env); 
    if extra:e.update(extra)
    return subprocess.run(args,cwd=ROOT,capture_output=True,text=True,env=e)
def best(fn,n=3):
    m=1e9;rc=0
    for _ in range(n):
        t=time.monotonic(); rc=fn(); m=min(m,time.monotonic()-t)
    return m,rc
D="./crates/vermilion_direct/target/release/vermilion_direct"; G="./.lake/build/bin/vrml_gen"; C="./target/debug/vrml_check"
cands=[("m1-pipeline","simple.rs","straight-line + calls"),
       ("m2-branches","branching.rs","if/else, SSA joins"),
       ("m2-recursion","recursing.rs","recursion + decreases"),
       ("m2-collections","sequences.rs","Seq/Set/Map/Multiset"),
       ("m3-datatypes","shapes.rs","structs/enums"),
       ("m3-generics","generics.rs","type parameters"),
       ("m3-vec","vecs.rs","Vec via Seq view"),
       ("m3-mutref","mutrefs.rs","&mut prophecy"),
       ("m2-loops","looping.rs","while+invariants (nonlinear)"),
       ("m3-quantifiers","quantified.rs","exists (trigger)")]
clean=[]; diverge=[]
for d,f,kind in cands:
    rel=f"examples/{d}/{f}"; 
    if not (ROOT/rel).exists(): continue
    stem=f[:-3]; man=f"examples/{d}/generated/{stem}.json"
    exp=f".vermilion/bench-{stem}.bin"; ir=f".vermilion/bench-{stem}-ir.sexp"
    src=(ROOT/rel).read_text(); vstd=[] if "use vstd::" in src else ["--no-vstd","--cfg","verus_no_vstd"]
    v,vrc=best(lambda: run([verus,rel,"--crate-type=lib",*vstd]).returncode)
    def vrml():
        if run([verus,rel,"--no-verify","--crate-type=lib",*vstd],{"VERUS_VIR_EXPORT":exp}).returncode: return 99
        if run([D,exp,"--out",ir]).returncode: return 99
        if run([G,ir]).returncode: return 99
        return run([C,man]).returncode
    m,mrc=best(vrml)
    row=(d,kind,v,m,vrc,mrc)
    (clean if (vrc==0 and mrc==0) else diverge).append(row)
print("== TIMING (both verify; best-of-3 wall seconds, end-to-end to verdict) ==")
print(f"{'example':<16}{'what':<26}{'Verus':>7}{'Vrml':>7}{'ratio':>7}")
for d,k,v,m,_,_ in clean[:5]:
    print(f"{d:<16}{k:<26}{v:>7.2f}{m:>7.2f}{m/v:>6.1f}x")
if clean[:5]:
    r=[m/v for *_,v,m,_,_ in [(x[0],x[1],x[2],x[3],x[4],x[5]) for x in clean[:5]]]
    print(f"{'median':<42}{'':>7}{'':>7}{statistics.median(r):>6.1f}x")
print("\n== CAPABILITY (Verus's default prover rejects; Vermilion proves — kernel-checked) ==")
for d,k,v,m,vrc,mrc in diverge:
    print(f"{d:<16}{k:<26} Verus={'pass' if vrc==0 else 'FAIL'}  Vermilion={'pass' if mrc==0 else 'FAIL'}")

print("\n== BREAKDOWN of Vermilion time (shared front end vs Lean back end) ==")
print(f"{'example':<16}{'front-end':>11}{'lean-BE':>9}{'  (Verus total incl. its own front end + Z3)'}")
for d,f,kind in cands[:5]:
    rel=f"examples/{d}/{f}"; stem=f[:-3]; man=f"examples/{d}/generated/{stem}.json"
    exp=f".vermilion/bench-{stem}.bin"; ir=f".vermilion/bench-{stem}-ir.sexp"
    src=(ROOT/rel).read_text(); vstd=[] if "use vstd::" in src else ["--no-vstd","--cfg","verus_no_vstd"]
    fe,_=best(lambda: run([verus,rel,"--no-verify","--crate-type=lib",*vstd],{"VERUS_VIR_EXPORT":exp}).returncode)
    def be():
        run([D,exp,"--out",ir]); run([G,ir]); return run([C,man]).returncode
    b,_=best(be)
    print(f"{d:<16}{fe:>11.2f}{b:>9.2f}")
