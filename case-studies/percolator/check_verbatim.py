#!/usr/bin/env python3
"""Check that case-study executable bodies match the pinned upstream files."""

from __future__ import annotations

import re
import sys
from pathlib import Path


PINNED_COMMIT = "143e68c4917ed0400a27b952f036a5677047cd84"

SLICES: dict[str, tuple[str, str | None, tuple[str, ...]]] = {
    "policy_gates.rs": ("src/v16.rs", None, (
        "auto_crank_plan_requires_caller_observation",
        "encode_side",
        "opposite_side",
    )),
    "enum_codecs.rs": ("src/v16.rs", None, (
        "encode_side",
        "decode_side",
        "encode_side_mode",
        "decode_side_mode",
        "encode_asset_lifecycle",
        "decode_asset_lifecycle",
        "encode_market_mode",
        "decode_market_mode",
        "encode_backing_bucket_status",
        "decode_backing_bucket_status",
        "encode_recovery_reason",
        "decode_recovery_reason",
    )),
    "active_bitmap_get.rs": ("src/v16.rs", None, (
        "active_bitmap_is_empty",
        "active_bitmap_get",
    )),
    "active_bitmap_set.rs": ("src/v16.rs", None, ("active_bitmap_set",)),
    "active_bitmap_clear.rs": ("src/v16.rs", None, ("active_bitmap_clear",)),
    "encode_bool_decidable.rs": ("src/v16.rs", None, ("encode_bool",)),
    "result_gates.rs": ("src/v16.rs", None, ("trade_preflight_risk_gate",)),
    "bounded_arithmetic.rs": ("src/v16.rs", None, ("adjust_u128",)),
    "withdrawal_question_mark.rs": (
        "src/v16.rs",
        None,
        ("apply_backing_provider_earnings_withdraw",),
    ),
    "liquidation_fee_minmax.rs": (
        "src/v16.rs",
        None,
        ("liquidation_fee_from_raw_fee",),
    ),
    "wide_math_saturating_mul.rs": (
        "src/wide_math.rs",
        None,
        ("saturating_mul_u128_u64",),
    ),
    "wide_math_u256_basics.rs": (
        "src/wide_math.rs",
        "u256_bpf",
        (
            "new",
            "from_u128",
            "from_u64",
            "lo",
            "hi",
            "is_zero",
            "try_into_u128",
            "bitand",
            "bitor",
        ),
    ),
}


def matching_brace(text: str, opening: int) -> int:
    depth = 0
    for index in range(opening, len(text)):
        char = text[index]
        if char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return index
    raise ValueError("unclosed function body")


def body(text: str, name: str, annotated: bool) -> str:
    match = re.search(
        rf"(?m)^[ \t]*(?:pub\s+)?(?:const\s+)?fn\s+{re.escape(name)}\b", text
    )
    if match is None:
        raise ValueError(f"function {name!r} not found")
    if annotated:
        body_start = re.search(r"(?m)^[ \t]*\{\s*$", text[match.end() :])
        if body_start is None:
            raise ValueError(f"annotated body for {name!r} not found")
        opening = match.end() + body_start.start()
    else:
        opening = text.find("{", match.end())
        if opening < 0:
            raise ValueError(f"upstream body for {name!r} not found")
    return text[opening : matching_brace(text, opening) + 1]


def executable_tokens(function_body: str, name: str) -> str:
    if name == "active_bitmap_is_empty":
        function_body = re.sub(
            r"while\s+i\s*<\s*V16_ACTIVE_BITMAP_WORDS\s+"
            r"invariant\s+.*?decreases\s+V16_ACTIVE_BITMAP_WORDS\s*-\s*i\s*,\s*\{",
            "while i < V16_ACTIVE_BITMAP_WORDS {",
            function_body,
            flags=re.DOTALL,
        )
    return re.sub(r"\s+", "", function_body)


def source_section(text: str, section: str | None) -> str:
    if section is None:
        return text
    if section == "u256_bpf":
        start = text.index("// U256 -- BPF version")
        end = text.index("// I256 -- Kani version", start)
        return text[start:end]
    raise ValueError(f"unknown upstream section {section!r}")


def main() -> int:
    if len(sys.argv) != 2:
        print("usage: check_verbatim.py PATH_TO_PERCOLATOR_CHECKOUT", file=sys.stderr)
        return 2
    checkout = Path(sys.argv[1]).resolve()
    here = Path(__file__).resolve().parent
    upstream_cache: dict[tuple[str, str | None], str] = {}
    failures: list[str] = []
    checked = 0
    for relative, (upstream_relative, section, names) in SLICES.items():
        cache_key = (upstream_relative, section)
        if cache_key not in upstream_cache:
            upstream = checkout / upstream_relative
            if not upstream.is_file():
                print(f"missing upstream source: {upstream}", file=sys.stderr)
                return 2
            upstream_cache[cache_key] = source_section(upstream.read_text(), section)
        upstream_text = upstream_cache[cache_key]
        local_text = (here / relative).read_text()
        for name in names:
            checked += 1
            local_body = executable_tokens(body(local_text, name, annotated=True), name)
            upstream_body = executable_tokens(body(upstream_text, name, annotated=False), name)
            if local_body != upstream_body:
                failures.append(f"{relative}: executable body of {name} differs")
    if failures:
        print("\n".join(failures), file=sys.stderr)
        return 1
    print(f"checked {checked} copied bodies against Percolator {PINNED_COMMIT}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
