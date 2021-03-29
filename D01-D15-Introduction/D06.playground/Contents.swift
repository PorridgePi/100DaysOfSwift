import UIKit

/*
 Day 6 - closures part one
 */

// 1. Creating basic closures
// It is possible to create a function and assign it to a variable
// Functions used in this way are called closures, and are written a bit differently from functions

let driving = {
    print("I am driving a car.")
}

driving()


// 2. Accepting parameters in a closure
// Parameters are listed inside the curly braces

let driving1 = { (person: String) in
    print("\(person) is driving a car.")
}

driving1("Charles") // one difference between functions and closures is that parameter labels are not used when running closures


// 3. Returning values from a closure
let drivingWithReturn = { (person: String) -> String in // return a string, so add -> String before in
    return "\(person) is driving a car." // use return just like a normal function
}

let msg = drivingWithReturn("Charles")
print(msg)


// 4. Closures as parameters
// Since closures can be used just like strings and integers, you can pass them into functions

// let driving = { ... } // using this closure

// If we wanted to pass this closure into a function, we would specify the parameter as () -> Void
// That means "accepts no parameters, returns Void"

func travel(action: () -> Void) {
    print("I am ready to go!")
    action()
    print("I arrived!")
}

travel(action: driving)


// 5. Trailing closure syntax
// If the last parameter to a function is a closure, Swift let you special syntax called trailing closure syntax
// Rather than pass in your closure as a parameter, you pass it directly after the function inside braces

// func travel (...) {...} // using this function

// Since last parameter is a closure, we can call travel using trailing closure syntax like this:
travel() {
    print("I'm driving to a place.")
}

// Because there are no other parameters, we can eliminate the parentheses entirely
travel {
    print("I'm driving a car to a place.")
}

// 6. Closures part one summary
/*
 1. Closures can be assigned to variables, and be called later on
 2. Closures can accept parameters, like regular functions
 3. Closures can return values, like regular functions
 4. Closures can be passed as parameters of a function
 5. Trailing closure syntax can be used if the alst parameter to a function is a closure
 */
