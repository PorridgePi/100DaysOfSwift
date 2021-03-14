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
