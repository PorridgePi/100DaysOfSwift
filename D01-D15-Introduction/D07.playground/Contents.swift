import UIKit

/*
 Day 7 - closures, part two
 */

// 1. Using closures as parameters when they accept parameters
// Previously used () -> Void to mean “accepts no parameters and returns nothing”
// But you can fill the () with the types of any parameters that your closure should accept

func travel2(action: (String) -> Void) {
    print("I am ready to go!")
    action("London")
    print("I arrived!")
}

// closure code is required to accept a string now
travel2 { (place: String) in
    print("I'm going to \(place).")
}


// 2. Using closures as parameters when they return values
// Previously used () -> Void to mean “accepts no parameters and returns nothing”
// But you can replace that Void with any type of data to force the closure to return a value

func travel3(action: (String) -> String) {
    print("I am ready to go!")
    let desc = action("China")
    print(desc)
    print("I arrived!")
}

// closure code is required to accept and return a string now
travel3 { (place: String) in
    return "I'm going to \(place)."
}


// 3. Shorthand parameter names
// Using the travel3() function as an example,
// Swift knows the parameter to that closure must be a string, and that the closure must return a string
// So we can remove both of them

travel3 { place in
    return "I'm going to \(place)."
}

// The closure only has one line of code that must be the one that returns the value
// So Swift lets us remove the return keyword too

travel3 { place in
    "I'm going to \(place)."
}

// Swift has a shorthand syntax
// Rather than writing 'place in', we can let Swift provide automatic names for closure's parameters
// These are named with a dollar sign, then a number counting from 0

travel3 {
    "I'm going to \($0)."
}


// 4. Closures with multiple parameters
func travel4(action: (String, Int) -> String) {
    print("I am ready to go!")
    let desc = action("China", 5)
    print(desc)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) in \($1) hours."
}


// 5. Returning closures from functions
// -> is used twice
// Once to specify your function's return value, and a second time to specify your closure's return value

func travel5() -> (String) -> Void {
    return {
        print("I'm goinig to \($0).")
    }
}

let result = travel5()
result("Singapore")

// Technically allowable, but really not recommended, to call the return value from travel5() directly

travel5()("SG")


// 6. Capturing values
// If you use any external values inside your closure, Swift captures them - stores them alongside the closure
// So they can be modified even if they don’t exist any more

func countTravel() -> (String) -> Void {
    var counter = 1
    
    return {
        print("I have travelled \(counter) times. I am going to \($0).")
        counter += 1
    }
}

// Even though that counter variable was created inside travel(), it gets captured by the closure so it will still remain alive for that closure
// So, if we call result("London") multiple times, the counter will go up and up

let result1 = countTravel()
result1("London")
result1("London")
result1("London")

// 7.1 Closures part one summary (from D06)
/*
 1. Closures can be assigned to variables, and be called later on
 2. Closures can accept parameters, like regular functions
 3. Closures can return values, like regular functions
 4. Closures can be passed as parameters of a function
 5. Trailing closure syntax can be used if the alst parameter to a function is a closure
 */

// 7.2 Closures part two summary
/*
 1. Closures that accept parameters can be used as parameters, by changing () -> Void to (Type) -> Void
 2. Using closures as parameters when they return values, by changing () -> Void to () -> Type
 3. Swift automatically provides shorthand parameter names like $0 and $1
 4. Multiple parameters can be used with closures
 5. Closures can be returned from functions
 6. If external values are used inside closures, they will be captured so the closure can refer to them later
 */
