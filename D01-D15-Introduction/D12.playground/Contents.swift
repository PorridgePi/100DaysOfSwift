import UIKit

/*
 Day 12 - optionals
 */

// 1. Handling missing data
// Optionals can have no value at all - nil
// To make a type optional, add a question mark after it

var age: Int? = nil // age currently holds nothing
age = 38


// 2. Unwrapping optionals
// Considering an optional string, what happens .count on it? This is nil! Because of this, trying to read .count is unsafe and Swift won’t allow it.
// Instead, we must look inside the optional and see what’s there – a process known as unwrapping.

var name: String? = nil

// Common way of unwrapping optionals is with 'if let'
// If there is no value in the optional, the condition will fail
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}


// 3. Unwrapping with guard
// Alternative to 'if let' is 'guard let'
// guard let will unwrap an optional, but if it finds nil inside, it expects you to exit the function, loop, or condition you used it in.

// However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
// Using guard let lets you deal with problems at the start of your functions, then exit immediately.
// This means the rest of your function is the happy path – the path your code takes if everything is correct.
