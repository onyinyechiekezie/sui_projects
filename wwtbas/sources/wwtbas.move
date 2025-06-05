module wwtbas::wwtbas{

    
    public struct Quiz has key, store{
        id:UID,

    }

    // public fun get_id(quiz:Quiz) : UID{
    //     quiz.id;
    // }

    public fun new_quiz(ctx : &mut TxContext):Quiz{
        let quiz = Quiz = Quiz{
            id:object::new(ctx),

        };
        (quiz)

}
    
    
    
    
    //player
    //Scoreboard
    //Quiz
    //-Questions
    //-Options
    //
}



