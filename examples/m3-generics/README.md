# m3-generics — type parameters (generics)

Run `./run.sh`. `generics.rs` exercises the generics slice:

- a generic struct `Pair<A, B>` becomes a **parameterized Lean
  `inductive`** (`inductive generics.Pair (A : Type) (B : Type)`); its
  field accessors and variant predicate carry the type parameters
  (accessors also take `[Inhabited …]` for the wrong-variant `default`);
- a generic `spec fn id_spec<T>` becomes a Lean `def` with **implicit**
  `{T : Type}` binders, so applications `id_spec x` infer the type;
- a generic `fn swap<A, B>` is verified **once, generically**: each type
  parameter is an abstract, inhabited Lean type (`(T : Type) [Inhabited
  T]` binders on every obligation theorem — inhabitedness is the one
  semantic content of Verus's `as_type` axiom, which a natively-typed
  embedding otherwise gets for free).

Generic trait bounds are supported separately by
`examples/m3-trait-bounds`, and const parameters/spec fns by
`examples/m3-const-generics` and `examples/m3-arrays`. Dynamic trait
dispatch, const-generic datatype declarations, and unsupported recursive
datatype shapes still fail closed.
