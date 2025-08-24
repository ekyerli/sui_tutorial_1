module hello_world_1::hello_sui;

use sui::event;
use std::string::String;

public struct HelloEvent has copy, drop{
    message: String

}

public fun hello(){
    let hello_event = HelloEvent{
        message: b"Hello World".to_string()
    };
    event::emit(hello_event);
}