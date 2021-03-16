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


// 5. Omitting parameter labels
// e.g. print("Hello") instead of print(message: "Hello")
// It is achieved with an underscore for the name that is used when the function is called externally

func sayHi(_ name: String) {
    print("Hi, \(name)")
}

sayHi("Swift")


// 6. Default parameters
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


// 7. Variadic functions
// Make function by writing ... after its type

func square2(numbers: Int...) {
    for number in numbers {
        print(number * number)
    }
}

square2(numbers: 1, 2, 3, 4)


// 8. Writing throwing functions
// Define an enum that is based on the Error type

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// checkPassword("password") will throw an error


// 9. Running throwing functions
// do starts a section of code that might cause problems; try is used before every function that might throw an error; catch allows you to handle errors gracefully

do {
    let pw = "password"
    try checkPassword(pw)
    print("Acceptable password!") // will never be reached as an error is thrown
} catch {
    print("You should not use that password!")
}


// 10. inout parameters
// All parameters passed into functions are constants, so it cannot be changed
// Pass variables as inout allows them to be changed inside the function, and the changes will be reflected in the original variables outside the functions

func doubleThePrice(number: inout Int) {
    number *= 2
}

// To use that, a variable must be made, and an ampersand (&) must be added before the variable's name when it is passed into the function

var num = 6
doubleThePrice(number: &num)


// 10. Functions summary
/*
 1. Write functions with func, and functions let us re-use code without repeating themselves
 2. Accepting parameters with func Name(parameterName: Type) {
 3. Returning values with return, and stating the type of the value returned at the end (like this: func Name(parameterName: Type) -> returnedType { )
 4. Parameter lables which allow different labels for the variable when used internally or passed into the function externally (used like this: func Name(externalName internalName: Type) { )
 5. Omit parameter lables by using an underscore _ as the "externalName" as seen above in 4.
 6. Default parameters with the value added behind the type (like this: func Name(parameterName: Type = defaultValue) { )
 7. Variadic values which allows multiple values to be passed into a function (used by adding ... after the type, like this: func Name(parameterName: Type...) { )
 8. Writing throwing functions by first creating a enum (of Error type) with the errors as the cases, then adding "throws -> Bool" saying that it will return true or false, and finally throw an error by: throw EnumName.caseName
 9. Using throwing functions, by using do (which include the problematic code), try (before the function), and catch (where the error is handled gracefully)
 10. inout parameters, which allows parameters passed in to beb changed (use like this: add inout before the type, and a variable must be passed in, with a & before the variable)
 */
