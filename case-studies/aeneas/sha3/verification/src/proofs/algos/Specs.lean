import Vermilion.Obligations

set_option linter.unusedVariables false
set_option linter.style.nameCheck false
set_option linter.dupNamespace false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

inductive algos.StateArray where
  | StateArray (_0 : (Vermilion.Seq Int))
deriving Inhabited

@[simp, grind] def algos.StateArray.is_StateArray : algos.StateArray → Prop
  | .StateArray _ => True
instance (x : algos.StateArray) : Decidable (algos.StateArray.is_StateArray x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def algos.StateArray.get_StateArray__0 : algos.StateArray → (Vermilion.Seq Int)
  | .StateArray _0 => _0

inductive vermilion.tuple_2 (T_0 : Type) (T_1 : Type) where
  | tuple_2 (_0 : T_0) (_1 : T_1)
deriving Inhabited

@[simp, grind] def vermilion.tuple_2.is_tuple_2 {T_0 : Type} {T_1 : Type} : (vermilion.tuple_2 T_0 T_1) → Prop
  | .tuple_2 _ _ => True
instance {T_0 : Type} {T_1 : Type} (x : (vermilion.tuple_2 T_0 T_1)) : Decidable (vermilion.tuple_2.is_tuple_2 x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def vermilion.tuple_2.get_tuple_2__0 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_0
  | .tuple_2 _0 _ => _0

@[simp, grind] def vermilion.tuple_2.get_tuple_2__1 {T_0 : Type} [Inhabited T_0] {T_1 : Type} [Inhabited T_1] : (vermilion.tuple_2 T_0 T_1) → T_1
  | .tuple_2 _ _1 => _1

inductive core.ops.range.Range (Idx : Type) where
  | Range (start : Idx) (end_ : Idx)
deriving Inhabited

@[simp, grind] def core.ops.range.Range.is_Range {Idx : Type} : (core.ops.range.Range Idx) → Prop
  | .Range _ _ => True
instance {Idx : Type} (x : (core.ops.range.Range Idx)) : Decidable (core.ops.range.Range.is_Range x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def core.ops.range.Range.get_Range_start {Idx : Type} [Inhabited Idx] : (core.ops.range.Range Idx) → Idx
  | .Range start _ => start

@[simp, grind] def core.ops.range.Range.get_Range_end_ {Idx : Type} [Inhabited Idx] : (core.ops.range.Range Idx) → Idx
  | .Range _ end_ => end_

inductive core.ops.range.RangeFrom (Idx : Type) where
  | RangeFrom (start : Idx)
deriving Inhabited

@[simp, grind] def core.ops.range.RangeFrom.is_RangeFrom {Idx : Type} : (core.ops.range.RangeFrom Idx) → Prop
  | .RangeFrom _ => True
instance {Idx : Type} (x : (core.ops.range.RangeFrom Idx)) : Decidable (core.ops.range.RangeFrom.is_RangeFrom x) := by
  cases x
  exact isTrue trivial

@[simp, grind] def core.ops.range.RangeFrom.get_RangeFrom_start {Idx : Type} [Inhabited Idx] : (core.ops.range.RangeFrom Idx) → Idx
  | .RangeFrom start => start

-- vrml:spec algos.impl__3.view case-studies/aeneas/sha3/verification/src/algos.rs:19:17
def algos.impl__3.view (self : algos.StateArray) : (Vermilion.Seq Int) :=
  algos.StateArray.get_StateArray__0 self

-- vrml:spec algos.zero_state_spec case-studies/aeneas/sha3/verification/src/algos.rs:24:1
def algos.zero_state_spec (no_param : Int) : (Vermilion.Seq Int) :=
  Vermilion.Seq.new 25 (fun (i : Int) => 0)

-- vrml:spec algos.impl__8.index_req case-studies/aeneas/sha3/verification/src/algos.rs:124:15
def algos.impl__8.index_req (self : algos.StateArray) (index : (vermilion.tuple_2 Int Int)) : Prop :=
  (vermilion.tuple_2.get_tuple_2__0 index < 5) ∧ (vermilion.tuple_2.get_tuple_2__1 index < 5)

-- vrml:spec algos.xor_byte_at_spec case-studies/aeneas/sha3/verification/src/algos.rs:163:1
def algos.xor_byte_at_spec (input : (Vermilion.Seq Int)) (byte : Int) (pos : Int) : (Vermilion.Seq Int) :=
  Vermilion.Seq.update input (pos / 8) (Vermilion.Vstd.Bytes.u64FromLeBytes (Vermilion.Seq.update (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index input (pos / 8))) (pos % 8) (Vermilion.Bits.bxor 8 (Vermilion.Seq.index (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index input (pos / 8))) (pos % 8)) byte)))

-- vrml:spec algos.xor_lane_bytes_spec case-studies/aeneas/sha3/verification/src/algos.rs:179:13
def algos.xor_lane_bytes_spec (buf : (Vermilion.Seq Int)) (src : (Vermilion.Seq Int)) (i : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (Vermilion.Seq.len src - i) then
    (if _h : (i < Vermilion.Seq.len src) then algos.xor_lane_bytes_spec (Vermilion.Seq.update buf i (Vermilion.Bits.bxor 8 (Vermilion.Seq.index buf i) (Vermilion.Seq.index src i))) src (i + 1) else buf)
  else default
termination_by ((Vermilion.Seq.len src - i)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.xor_lane_spec case-studies/aeneas/sha3/verification/src/algos.rs:197:13
def algos.xor_lane_spec (dst : Int) (src : (Vermilion.Seq Int)) : Int :=
  Vermilion.Vstd.Bytes.u64FromLeBytes (algos.xor_lane_bytes_spec (Vermilion.Vstd.Bytes.u64ToLeBytes dst) src 0)

-- vrml:spec algos.xor_spec_from case-studies/aeneas/sha3/verification/src/algos.rs:205:1
def algos.xor_spec_from (input : (Vermilion.Seq Int)) (other : (Vermilion.Seq Int)) (block_idx : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (Vermilion.Seq.len other - (8 * block_idx)) then
    (if _h : (((8 * block_idx) + 8) ≤ Vermilion.Seq.len other) then algos.xor_spec_from (Vermilion.Seq.update input block_idx (algos.xor_lane_spec (Vermilion.Seq.index input block_idx) (Vermilion.Seq.subrange other (8 * block_idx) (8 * (block_idx + 1))))) other (block_idx + 1) else (if _h : ((8 * block_idx) < Vermilion.Seq.len other) then Vermilion.Seq.update input block_idx (algos.xor_lane_spec (Vermilion.Seq.index input block_idx) (Vermilion.Seq.subrange other (8 * block_idx) (Vermilion.Seq.len other))) else input))
  else default
termination_by ((Vermilion.Seq.len other - (8 * block_idx))).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.impl__10.copy_to_spec_from case-studies/aeneas/sha3/verification/src/algos.rs:332:5
def algos.impl__10.copy_to_spec_from (src : (Vermilion.Seq Int)) (input : (Vermilion.Seq Int)) (i : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (25 - i) then
    (if _h : ((i < 25) ∧ ((8 * (i + 1)) < Vermilion.Seq.len input)) then algos.impl__10.copy_to_spec_from src (Vermilion.Seq.add (Vermilion.Seq.add (Vermilion.Seq.subrange input 0 (8 * i)) (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index src i))) (Vermilion.Seq.subrange input (8 * (i + 1)) (Vermilion.Seq.len input))) (i + 1) else (if _h : ((i < 25) ∧ ((8 * i) < Vermilion.Seq.len input)) then Vermilion.Seq.add (Vermilion.Seq.subrange input 0 (8 * i)) (Vermilion.Seq.subrange (Vermilion.Vstd.Bytes.u64ToLeBytes (Vermilion.Seq.index src i)) 0 (Vermilion.Seq.len input - (8 * i))) else input))
  else default
termination_by ((25 - i)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.theta_c_spec case-studies/aeneas/sha3/verification/src/algos.rs:423:13
def algos.theta_c_spec (input : (Vermilion.Seq Int)) (x : Int) : Int :=
  Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 (Vermilion.Bits.bxor 64 (Vermilion.Seq.index input x) (Vermilion.Seq.index input (5 + x))) (Vermilion.Seq.index input (10 + x))) (Vermilion.Seq.index input (15 + x))) (Vermilion.Seq.index input (20 + x))

-- vrml:spec algos.theta_d_spec case-studies/aeneas/sha3/verification/src/algos.rs:427:13
def algos.theta_d_spec (input : (Vermilion.Seq Int)) (x : Int) : Int :=
  Vermilion.Bits.bxor 64 (algos.theta_c_spec input ((x + 4) % 5)) (Vermilion.Vstd.Rotate.u64_rotate_left (algos.theta_c_spec input ((x + 1) % 5)) 1)

-- vrml:spec algos.theta_inner_spec case-studies/aeneas/sha3/verification/src/algos.rs:435:13
def algos.theta_inner_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) (y : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - y) then
    (if _h : (y < 5) then algos.theta_inner_spec input (Vermilion.Seq.update res ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index input ((5 * y) + x)) (algos.theta_d_spec input x))) x (y + 1) else res)
  else default
termination_by ((5 - y)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.theta_loop_spec case-studies/aeneas/sha3/verification/src/algos.rs:458:13
def algos.theta_loop_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - x) then
    (if _h : (x < 5) then algos.theta_loop_spec input (algos.theta_inner_spec input res x 0) (x + 1) else res)
  else default
termination_by ((5 - x)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.RHO_OFFSETS case-studies/aeneas/sha3/verification/src/algos.rs:584:1
def algos.RHO_OFFSETS : (Vermilion.Seq (Vermilion.Seq Int)) :=
  Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq (Vermilion.Seq Int)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 0) 36) 3) 41) 18)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 44) 10) 45) 2)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 62) 6) 43) 15) 61)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 28) 55) 25) 21) 56)) (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 27) 20) 39) 8) 14)

-- vrml:spec algos.rho_loop_spec case-studies/aeneas/sha3/verification/src/algos.rs:593:13
def algos.rho_loop_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (t : Int) (x : Int) (y : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (24 - t) then
    (if _h : (t < 24) then algos.rho_loop_spec input (Vermilion.Seq.update res ((5 * y) + x) (Vermilion.Vstd.Rotate.u64_rotate_left (Vermilion.Seq.index input ((5 * y) + x)) (Vermilion.Seq.index (Vermilion.Seq.index algos.RHO_OFFSETS x) y))) (t + 1) y (((2 * x) + (3 * y)) % 5) else res)
  else default
termination_by ((24 - t)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.pi_inner_spec case-studies/aeneas/sha3/verification/src/algos.rs:657:13
def algos.pi_inner_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) (y : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - y) then
    (if _h : (y < 5) then algos.pi_inner_spec input (Vermilion.Seq.update res ((5 * y) + x) (Vermilion.Seq.index input ((5 * x) + ((x + (3 * y)) % 5)))) x (y + 1) else res)
  else default
termination_by ((5 - y)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.pi_loop_spec case-studies/aeneas/sha3/verification/src/algos.rs:680:13
def algos.pi_loop_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - x) then
    (if _h : (x < 5) then algos.pi_loop_spec input (algos.pi_inner_spec input res x 0) (x + 1) else res)
  else default
termination_by ((5 - x)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.chi_inner_spec case-studies/aeneas/sha3/verification/src/algos.rs:755:13
def algos.chi_inner_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) (y : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - y) then
    (if _h : (y < 5) then algos.chi_inner_spec input (Vermilion.Seq.update res ((5 * y) + x) (Vermilion.Bits.bxor 64 (Vermilion.Seq.index input ((5 * y) + x)) (Vermilion.Bits.band 64 (Vermilion.Bits.bxor 64 (Vermilion.Seq.index input ((5 * y) + ((x + 1) % 5))) 18446744073709551615) (Vermilion.Seq.index input ((5 * y) + ((x + 2) % 5)))))) x (y + 1) else res)
  else default
termination_by ((5 - y)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.chi_loop_spec case-studies/aeneas/sha3/verification/src/algos.rs:781:13
def algos.chi_loop_spec (input : (Vermilion.Seq Int)) (res : (Vermilion.Seq Int)) (x : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (5 - x) then
    (if _h : (x < 5) then algos.chi_loop_spec input (algos.chi_inner_spec input res x 0) (x + 1) else res)
  else default
termination_by ((5 - x)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

-- vrml:spec algos.IOTA_RC case-studies/aeneas/sha3/verification/src/algos.rs:855:1
def algos.IOTA_RC : (Vermilion.Seq Int) :=
  Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.push (Vermilion.Seq.empty : Vermilion.Seq Int) 1) 32898) 9223372036854808714) 9223372039002292224) 32907) 2147483649) 9223372039002292353) 9223372036854808585) 138) 136) 2147516425) 2147483658) 2147516555) 9223372036854775947) 9223372036854808713) 9223372036854808579) 9223372036854808578) 9223372036854775936) 32778) 9223372039002259466) 9223372039002292353) 9223372036854808704) 2147483649) 9223372039002292232

-- vrml:spec algos.round_spec case-studies/aeneas/sha3/verification/src/algos.rs:878:13
def algos.round_spec (input : (Vermilion.Seq Int)) (ir : Int) : (Vermilion.Seq Int) :=
  Vermilion.Seq.update (algos.chi_loop_spec (algos.pi_loop_spec (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) 0) (algos.pi_loop_spec (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) 0) 0) 0 (Vermilion.Bits.bxor 64 (Vermilion.Seq.index (algos.chi_loop_spec (algos.pi_loop_spec (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) 0) (algos.pi_loop_spec (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) (algos.rho_loop_spec (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) (algos.theta_loop_spec input (algos.zero_state_spec 0) 0) 0 1 0) 0) 0) 0) (Vermilion.Seq.index algos.IOTA_RC ir))

-- vrml:spec algos.keccak_p_loop_spec case-studies/aeneas/sha3/verification/src/algos.rs:905:13
def algos.keccak_p_loop_spec (input : (Vermilion.Seq Int)) (ir : Int) : (Vermilion.Seq Int) :=
  if _h_range : 0 ≤ (24 - ir) then
    (if _h : (ir < 24) then algos.keccak_p_loop_spec (algos.round_spec input ir) (ir + 1) else input)
  else default
termination_by ((24 - ir)).toNat
decreasing_by all_goals first | omega | (simp_all; omega) | (simp_all; exact ⟨Int.emod_lt_of_pos _ (by omega), by omega⟩) | (simp_all [Vermilion.iteP]; split_ifs <;> omega) | simp_all

