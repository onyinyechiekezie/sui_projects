module wwtbas::wwtbas{

    use sui:: transfer:: public_transfer;
    use sui:: test_scenario:: sender;

    
    public struct Quiz has key, store{
        id:UID,

    }

    // public fun get_id(quiz:Quiz) : UID{
    //     quiz.id;
    // }

    public fun new_quiz(ctx : &mut TxContext):Quiz{
        let quiz= Quiz = Quiz{
            id:object::new(ctx),

        };
        transfer::public_transfer(quiz, ctx.sender());
        // (quiz)

}
    
    
    
    
    //player
    //Scoreboard
    //Quiz
    //-Questions
    //-Options
    //
}



