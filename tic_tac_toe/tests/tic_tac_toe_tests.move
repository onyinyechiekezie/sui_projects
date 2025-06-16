
#[test_only]
module tic_tac_toe::tic_tac_toe_tests;
use tic_tac_toe::tic_tac_toe;
use sui::tx_context::TxContext;
use sui::object;

const ENotImplemented: u64 = 0;

#[test]
fun test_tic_tac_toe() {
    // pass
}

#[test, expected_failure(abort_code = ::tic_tac_toe::tic_tac_toe_tests::ENotImplemented)]
fun test_tic_tac_toe_fail() {
    abort ENotImplemented
}
*/
