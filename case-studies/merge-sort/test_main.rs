// Executable smoke test for the VERIFIED merge sort: includes
// mergesort_clean.rs verbatim, adds a `main` that sorts a concrete vector
// and checks the result. Compiled (not verified) by test.sh with the pinned
// Verus toolchain under --no-verify; the verification itself is run.sh's
// job. The vec![...] macro lives here, outside the verified sources, so the
// verifier never sees its Box-allocation desugaring.
include!("mergesort_clean.rs");

fn main() {
    let input: Vec<u64> = vec![9, 10, 4, 5, 1, 3, 3, 0, u64::MAX];
    let expected: Vec<u64> = vec![0, 1, 3, 3, 4, 5, 9, 10, u64::MAX];
    let sorted = merge_sort(&input);
    println!("input:  {:?}", input);
    println!("sorted: {:?}", sorted);
    assert_eq!(sorted, expected, "merge_sort produced an unexpected result");
    println!("merge sort test PASSED ({} elements)", input.len());
}
