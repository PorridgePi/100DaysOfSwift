// import UIKit

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


// 4. Force unwrapping

// Sometimes you are sure that a value isn’t nil.
// In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.

// E.g. When a string is converted into an Int, Swift will make it an optional Int because you might have tried to convert a string like “Fish” rather than “5”

let str = "5"
let num = Int(str)

// Even though Swift isn’t sure the conversion will work, you can see the code is safe so you can force unwrap the result by writing ! after Int(str)

let num1 = Int(str)!

// Swift will immediately unwrap the optional and make num a regular Int rather than an Int?

// But if you’re wrong, your code will crash. Therefore, force unwrap should only be used when it’s definitely safe.


// 5. Implicitly unwrapped optionals
// Like regular optionals, they might contain a value or they might be nil
// Unlike regular optionals, you don't need to unwrap them in order to use them
// You can use them as if they weren't optionals at all

// Created by adding an exclamation mark after type
let age1: Int! = nil

// Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals.
// However, if you try to use them and they have no value – if they are nil – your code crashes.

// They exist because sometimes a variable will start life as nil, but will always have a value before you need to use it, so it’s helpful not having to write if let all the time.
// However, using regular optionals is a better idea.


// 6. Nil coalescing

// Nil coalescing operator unwraps an optional and returns the value inside if there is one.
// If there isn’t a value – if the optional was nil – then a default value is used instead
// Either way, the result won’t be optional: it will either by the value from inside the optional or the default value used as a back up.

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

var user = username(for: 15) // returns nil
user = username(for: 15) ?? "Anonymous" // returns default value of "Anonymous"


// 7. Optional chaining
// Normal chaining - a.b.c
// Optional chaining - a.b?.c (add a ?)
// The question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set person to nil immediately

var names = ["John", "Charles", "Jack"]
// Below, .first will be used, which will return the first name if there is one or nil if the array is empty. .uppercased() can be then called on the result to make it an uppercase string:
var person = names.first?.uppercased()
print(person)

names = []
person = names.first?.uppercased()
print(person)


// 8. Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// 2 Alternatives to try - try? and try!
// try? changes throwing functions into functions that return an optional
// If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// try! can be used when you know for sure that the function will not fail.
// If the function does throw an error, your code will crash.

try! checkPassword("test") // will test if "password" was used instead
print("OK!")
