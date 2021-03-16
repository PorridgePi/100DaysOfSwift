import UIKit

/*
 Day 5 – functions, parameters, and errors
 */

// 1. Writing functions

func printHelp() { // starts with the func keyword, function name, and parentheses
    print("This is the help message.")
}

printHelp() // running a function is often referred to as "calling" a function


// 2. Accepting parameters

func square(number: Int) { // name, colon, data type
    print(number * number)
}

square(number: 8)


// 3. Returning values

func square2(number: Int) -> Int{ // must state the type of the data returned
    return number * number
}

print(square2(number: 8))


// 4. Parameter labels
// Swift allows us to provide two names for each parameter, one to be used externally when calling the function, one used inside the function internally

func sayHello(to name: String) {
    print("Hello there, \(name)")
}

sayHello(to: "Swift")


// 4. Omitting parameter labels
// e.g. print("Hello") instead of print(message: "Hello")
// It is achieved with an underscore for the name that is used when the function is called externally

func sayHi(_ name: String) {
    print("Hi, \(name)")
}

sayHi("Swift")


// 5. Default parameters
// Adding an = after the type, followed by the default value

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true { // if nicely { DOES NOT WORK!
        print("Hello, \(person)!")
    } else {
        print("Damn it, it is \(person) again!")
    }
}

greet("Swift")
greet("Java", nicely: false)


// 6. Variadic functions
// Make function by writing ... after its type

func square2(numbers: Int...) {
    for number in numbers {
        print(number * number)
    }
}

square2(numbers: 1, 2, 3, 4)
