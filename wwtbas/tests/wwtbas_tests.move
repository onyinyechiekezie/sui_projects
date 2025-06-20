#[test_only]
module wwtbas::wwtbas_tests{

    use wwtbas::wwtbas;
    use sui::test_scenario;
    use std::string::utf8;
    

    const ENotImplemented: u64 = 0;

#[test]
    fun test_can_create_quiz() {
        let sender : address = @0x123;
        let mut scenario = test_scenario::begin(sender);
        let ctx = scenario.ctx();
        wwtbas::new_quiz(ctx);
        let effects = test_scenario::end(scenario);
        assert!(scenario.num_concluded_txes()!=0);
    }

    [test]
    fun test_can_add_questions_to_quiz(){
        let sender : address = @0x123;
        let mut scenario = test_scenario::begin(sender);
        let ctx = scenario.ctx();
        let quiz : Quiz = wwtbas::Quiz{
            id:object::new(ctx),
            question
        }
        let question = string::utf8(b"What is the capital of Malawi?");  
        quiz.add_question(question);
    }

    // #[test, expected_failure(abort_code = ::wwtbas::wwtbas_tests::ENotImplemented)]
    // fun test_wwtbas_fail() {
    //     abort ENotImplemented
    // }
}


