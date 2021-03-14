import UIKit

/*
 Day 3 – operators and conditions
 */

// 1. Arithmetic operators

let score1 = 12
let score2 = 4

let total = score1 + score2
let difference = score1 - score2
let multiply = score1 * score2
let divide = score1 / score2

let remainder = score1 % score2


// 2. Operator overloading
// What an operator does depends on the values used

let num = 42
let num2 = 42 + 42 // + sums integers

let people = "Clowns"
let action = people + "joke" // + joins strings

let firstHalf = [1, 2, 3]
let secondHalf = [4, 5, 6]
let altogether = firstHalf + secondHalf // + joins arrays

// Note: Swift is a type-safe language, meaning that types cannot be mixed
// e.g. You cannot 1 + "One"


// 3. Compound assignment operators
// e.g. +=, -=, *=, /=, %=, etc.

var score = 95
score -= 5 // score = score minus 5

var quote = "May the force be with "
quote += "you" // add one string to another


// 4. Comparison operators

let score3 = 6
let score4 = 4

score3 == score4 // checks if two values are the same
score3 != score4 // checks if two values are not the sanme

score1 < score2 // less than
score1 >= score2 // greater than or equal to
// These also works with strings, since strings have a natural alphabetical order
"A" < "B"
"Z" > "a" // in ASCII, capital letters come before non-capital letters, e.g. "Z" = 90 while "a" = 97


// 5. Conditions

var card1 = 10
var card2 = 9
let numToGuess = 69

if card1 + card2 == numToGuess { // conditions in curly braces will be run if condition is true
    print("Noice!")
} else if card1 + card2 >= numToGuess { // use else if to chain conditions together
    print("Too big!")
} else if card1 + card2 <= numToGuess {
    print("Too small!")
} else { // use else to run alternative code
    print("If you see this, something is really wrong!")
}


// 6. Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18.") // will only run if all conditions met
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18") // will run if at least one condition met
}


// 7. The ternary operator
// A rarely used operator
// Works with 3 values at once, which is where its name comes from
// Checks a condition specified in the 1st value; if it's true, return 2nd value; else if it's false, return the 3rd value

let card3 = 11
let card4 = 10
print(card1 == card2 ? "Cards are the same" : "Cards are different")

// It is basically this:
if card1 == card2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// 8. Switch statements
// If you have several conditions using if and else if, it's often clearer to use a different construct known as switch case
// Write condition once, list all possible outcomes and what should happen for each outcome

var weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "windy":
    print("Wear a jacket")
case "sunny":
    print("Wear sunscreen")
default: // default is required because Swift requires all possible cases to be covered
    print("Enjoy your day!")
}

// Swift will only run the code inside each case, so if you want execution to continue onto the next case, use the fallthrough keyword
weather = "windy"
switch weather {
case "rain":
    print("Bring an umbrella")
case "windy":
    print("Wear a jacket")
    fallthrough // result in "Wear a jacket" and "Wear sunscreen"
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}


// 9. Range operators
// Two ways of making ranges: ..< (half-open range operator, ranges up to but excluding final value) and ... (closed range operator, ranges up to and including the final value)
// Ranges are helpful with switch blocks

let score5 = 85

switch score5 {
case 0..<50:
    print("You failed!")
case 50..<80:
    print("You did alright.")
case 80...100:
    print("You got 4.0!")
default:
    print("How on earth did you get above 100?")
}

// Acutally, there is another type of range operator - one-sided ranges
// E.g. (with X be an integer) X... or ...X or ..<X

var numTest = 10
switch numTest {
case ...20:
    print("Less than or equals to 20")
default:
    print("Hi!")
}

numTest = 40
switch numTest {
case ..<40:
    print("Less than 40")
default:
    print("Hi!")
}

// 10. Operators and conditions summary

/*
 1. Arithmetic operators (+, -, *, /, %)
 2. Operator overloading, where what an operator does depends on the values given
 3. Compound variants of operators that modify their variables in place (+=, -=, etc.)
 4. Comparison operators (==, !=, <, <=, >, >=)
 5. Conditions (if, else, else if)
 6. Combining conditions (||, &&)
 7. Ternary operator that combines a check with true or false codes, but it is not recommended by author of course
 8. Use switch, if you have multiple conditions using the same value, as it is often clearer to do so
 9. Create ranges with ... and ..<, depending on whether the last number should be included or exluded
    One-sided ranges with ...X or X... or ..<X
 */
