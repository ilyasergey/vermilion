//! Reproduce the pinned Verus middle-end orchestration from the finalized VIR
//! crate to pre-poly `FunctionSst` values, using the pinned `vir` crate's own
//! passes (`simplify_krate`, `prune`, `ast_to_sst_krate`).
//!
//! The sequence mirrors `rust_verify::verifier::verify_crate_inner` and
//! `verify_bucket_outer` at commit `c569645bd37b0`; a pin bump must revisit
//! this module together with `verus-patches/0001-vermilion-vir-export.patch`.

use std::collections::{HashMap, HashSet};
use std::sync::{Arc, Mutex};

use air::context::SmtSolver;
use air::messages::{ArcDynMessage, Diagnostics, MessageLevel};
use vir::ast::{CrateId, Fun, Krate, Module, VirErr};
use vir::context::{Ctx, GlobalCtx, WarningConfig, WarningCtx};
use vir::sst::FunctionSst;

pub const EXPORT_MAGIC: &str = "vermilion-vir-export-v1";

pub struct Export {
    pub krate: Krate,
    pub crate_id: CrateId,
    pub no_span: vir::messages::Span,
    pub current_crate_modules: Vec<Module>,
}

pub fn read_export(path: &std::path::Path) -> Result<Export, String> {
    let file = std::fs::File::open(path)
        .map_err(|error| format!("cannot open VIR export {}: {error}", path.display()))?;
    let (magic, krate, crate_id, no_span, current_crate_modules): (
        String,
        Krate,
        CrateId,
        vir::messages::Span,
        Vec<Module>,
    ) = bincode::deserialize_from(std::io::BufReader::new(file))
        .map_err(|error| format!("cannot decode VIR export {}: {error}", path.display()))?;
    if magic != EXPORT_MAGIC {
        return Err(format!(
            "VIR export {} has magic `{magic}`, expected `{EXPORT_MAGIC}`; \
             regenerate it with the patched pinned Verus",
            path.display()
        ));
    }
    Ok(Export {
        krate,
        crate_id,
        no_span,
        current_crate_modules,
    })
}

/// The middle-end passes only report warnings on this path; verification
/// itself already happened inside Verus.
struct SilentDiagnostics;

impl Diagnostics for SilentDiagnostics {
    fn report(&self, _message: &ArcDynMessage) {}
    fn report_now(&self, _message: &ArcDynMessage) {}
    fn report_as(&self, _message: &ArcDynMessage, _level: MessageLevel) {}
    fn report_as_now(&self, _message: &ArcDynMessage, _level: MessageLevel) {}
}

fn vir_error(error: VirErr) -> String {
    format!("Verus middle end rejected the exported crate: {}", error.note)
}

pub struct MiddleOutput {
    /// Current-crate functions carrying an exec/proof check, in deterministic
    /// crate order.
    pub checked: Vec<FunctionSst>,
    /// Every translated function (callees included), for contract lookup.
    pub declarations: HashMap<Fun, FunctionSst>,
    /// Datatype declarations of the post-simplify crate (user structs and
    /// enums plus the tuple datatypes `ast_simplify` synthesizes), keyed by
    /// their `Dt`, for constructor/field/is-variant lowering.
    pub datatypes: HashMap<vir::ast::Dt, vir::ast::Datatype>,
    /// Associated-type equations retained by the post-simplify crate. The
    /// lowering uses monomorphic equations to turn projections such as
    /// `<StateArray as Index<(usize, usize)>>::Output` into their concrete
    /// binder type; generic or ambiguous projections remain unsupported.
    pub assoc_type_impls: Vec<vir::ast::AssocTypeImpl>,
}

/// Run the pinned middle end from the finalized VIR crate to pre-poly SST.
pub fn function_ssts(export: &Export) -> Result<MiddleOutput, String> {
    let mut fun_warn_configs = HashMap::new();
    for function in export.krate.functions.iter() {
        fun_warn_configs.insert(function.x.name.clone(), Some(WarningConfig(vec![])));
    }
    let mut global_ctx = GlobalCtx::new(
        &export.krate,
        export.crate_id.clone(),
        export.no_span.clone(),
        10.0,
        Arc::new(Mutex::new(None)),
        Arc::new(Mutex::new(None)),
        Arc::new(WarningCtx { fun_warn_configs }),
        SmtSolver::Z3,
        false,
        false,
        false,
        false,
        false,
    )
    .map_err(vir_error)?;
    vir::recursive_types::check_traits(&export.krate, &global_ctx).map_err(vir_error)?;
    let krate =
        vir::ast_simplify::simplify_krate(&mut global_ctx, &export.krate).map_err(vir_error)?;

    let diagnostics = SilentDiagnostics;
    let current_modules: HashSet<_> = export
        .current_crate_modules
        .iter()
        .map(|module| module.x.path.clone())
        .collect();

    let mut result = Vec::new();
    let mut declarations = HashMap::new();
    // One bucket per current-crate module, mirroring rust_verify's
    // `buckets::get_buckets` (spinoff_prover splitting can be added when the
    // fragment needs it).
    for module in krate.modules.iter() {
        if !current_modules.contains(&module.x.path) {
            continue;
        }
        let funs: HashSet<Fun> = krate
            .functions
            .iter()
            .filter(|function| function.x.owning_module.as_ref() == Some(&module.x.path))
            .map(|function| function.x.name.clone())
            .collect();
        if funs.is_empty() {
            continue;
        }
        let (pruned, prune_info) = vir::prune::prune_krate_for_module_or_krate(
            &krate,
            &export.crate_id,
            None,
            Some(module.x.path.clone()),
            None,
            true,
            true,
        );
        let vir::prune::PruneInfo {
            mono_abstract_datatypes,
            spec_fn_types,
            used_builtins,
            fndef_types,
            resolved_typs,
            dyn_traits,
        } = prune_info;
        let module_ast = pruned
            .modules
            .iter()
            .find(|candidate| candidate.x.path == module.x.path)
            .expect("verified module survives pruning")
            .clone();
        let mut ctx = Ctx::new(
            &pruned,
            global_ctx,
            module_ast,
            mono_abstract_datatypes.expect("prune collects monotypes"),
            spec_fn_types,
            dyn_traits,
            used_builtins,
            fndef_types,
            resolved_typs.expect("prune collects resolved types"),
            false,
        )
        .map_err(vir_error)?;
        let krate_sst = vir::ast_to_sst_crate::ast_to_sst_krate(
            &mut ctx,
            &diagnostics,
            &funs,
            &pruned,
        )
        .map_err(vir_error)?;
        for function in krate_sst.functions.iter() {
            if function.x.exec_proof_check.is_some() && funs.contains(&function.x.name) {
                result.push(function.clone());
            }
            declarations
                .entry(function.x.name.clone())
                .or_insert_with(|| function.clone());
        }
        global_ctx = ctx.free();
    }
    let datatypes = krate
        .datatypes
        .iter()
        .map(|datatype| (datatype.x.name.clone(), datatype.clone()))
        .collect();
    let assoc_type_impls = krate.assoc_type_impls.iter().cloned().collect();
    Ok(MiddleOutput {
        checked: result,
        declarations,
        datatypes,
        assoc_type_impls,
    })
}
