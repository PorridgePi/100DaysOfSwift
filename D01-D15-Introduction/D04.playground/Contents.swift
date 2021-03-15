import UIKit

/*
 Day 4 - loops
 */

// 1. For loops

let count = 1...10 // a range of numbers

for i in count {
    print("Number is \(i)")
}

let albums = ["One", "Two", "Three"] // works the same with arrays

for i in albums {
    print("\(i) is on Spotify!")
}

for _ in 1...5 { // if the constant from the for loop is not needed, use an underscore instead so that Swift doesn't created needless values
    print("Swift!")
}


// 2. While loops
// Give it a condition to check, and it will loop until the condition fails

var num = 1

while num <= 20 {
    print(num)
    num += 1
}
print("Let's go!")


// 3. Repeat loops
// Identical to while loops, just that the condition to check comes at the end

num = 1
repeat {
    print(num)
    num += 1
} while num <= 20
print("Let's go!")

// As the condition comes at the end of the repeat loop, the code will always be executed at least once, whereas the condition in a while loop is checked before their first run
// Compare this:

while false {
    print("Hi! This is in a while loop.") // Xcode will even warn us that the print() line will never be executed.
}

// with this:
repeat {
    print("Hi! This is in a repeat loop.")
} while false


// 4. Exiting loops
// Exit a loop anytime with the break keyword

var countdown = 10

while countdown >= 0 {
    print(countdown)
    countdown -= 1
}
print ("Blast off!")

countdown = 10

while countdown >= 0 {
    print(countdown)
    if countdown == 4 { // what if the astronaunts decide to take off halfway
        break // the rest of the loop is skipped
    }
    countdown -= 1
}
print("Blast off!")


// 5. Exiting multiple loops

for i in 1...10 {
    for j in 1...10 {
        print(i+j)
    }
}

// To exit part-way we need to 1. Give the outer loop label, and use break LOOP_LABEL in the inner loop
// With a normal break, only the inner loop will be exited, while the outer loop will continue where it left off

outerLoop: for i in 1...10 {
    for j in 1...10 {
        print(i+j)

        if i+j == 19 {
            print("The End!")
            break outerLoop
        }
    }
}


// 6. Skipping items
// break is used to exit the loop
// If you want to skip the current item and continue with the next one, continue should be used instead

for i in 1...10 {
    if i % 3 == 0 {
        continue
    }
    print(i) // is skipped if i % 3 == 0
}


// 7. Infinite loops
// Use while loops to make infinite loops by using true as the condition
// WARNING: Make sure that their is a check that exits the loop, otherwise it will never end

var counter = 0
while true {
    print(" ")
    counter += 1
    if counter == 69 {
        break
    }
}


// 8. Looping summary
/*
 0. Loops allow us to repeat code until a condition is false
 1. Most common loop is for, which assigns each item in the loop a temporary constant (Use a underscore _ if there is no need for the temporary constant)
 2. There are while loops, where an explicit condition must be given
 3. Despite being similar to while loops, repeat loops always run the the code in it at least once
 4. Exit a single loop with break
 5. Exit a nested loop by giving the outer loop a label and use break LOOP_LABEL
 6. Skip items in a loop using continue
 7. Infinite loop (usually made with while true) does not end until you ask it to, so make sure there is a check somewhere to end the loop
 */

