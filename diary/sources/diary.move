
//  Module: diary
module diary::diary{
    use std::string::String;

    public fun hello_world(): String{
        let greet = b"Hello, world!".to_string();
        greet
    }
}

//  For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


