module wwtbas::wwtbas{

    use sui::string;
    use sui::string::String;
    use std::debug;
    use std::vector;

    
    public struct Quiz has key, store{
        id:UID,
        questions:vector<String>,

    }

    // public fun get_id(quiz:Quiz) : UID{
    //     quiz.id;
    // }

    public fun new_quiz(ctx : &mut TxContext){
        let quiz= Quiz{
            id:object::new(ctx),
            questions :vector[]

        };
        debug::print(&quiz);
        transfer::public_transfer(quiz, ctx.sender());
    }

    public fun add_questions(quiz: &mut Quiz, question:String){
        let questions = &mut quiz.questions;
        questions.push_back(question);
        debug::print(questions);
    }

    // public fun get_questions(quiz:Quiz) : vector<vector<u8>>{
    //     return quiz.questions;
    // }

}
    
    
    
    
    //player
    //Scoreboard
    //Quiz
    //-Questions
    //-Options
    //




