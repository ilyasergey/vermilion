//! The Rust half of Vermilion: the neutral function model, its textual IR
//! serialization (consumed by the Lean library `Vermilion.Ir`, which owns VC
//! generation and emission — see `docs/ir.md`), and the manifest schema used
//! by the `vrml_check` / `vrml_sync` binaries.

pub mod ir;
pub mod model;
pub mod project;

pub use ir::write_ir;
pub use model::*;
