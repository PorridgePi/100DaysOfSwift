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


