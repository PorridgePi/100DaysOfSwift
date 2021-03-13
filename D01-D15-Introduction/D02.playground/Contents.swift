import UIKit

/* Day 2 */

// 1. Arrays
let ltt = "Linus Tech Tips"
let tq = "Techquickie"
let tl = "TechLinked"

let lmg = [ltt, tq, tl]

lmg[1]


// 2. Sets
// Items are not stored in any order - unordered
// All items are unique

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "red", "green", "blue", "blue"]) // will only include one "red" and one "blue"


// 3. Tuples
// Fixed in size, fixed type
// Items can be accessed using numerical positions or by naming

var name = (first: "Tim", last:"Cook")
name.0      // items accessed using numerical positions
name.first  // items accessed by naming

name = ("Steve", "Jobs") // values can be changed, but not the type (e.g. last:1 will throw an error)
name.0
name.first


// 4. Arrays vs sets vs tuples

// Arrays - duplicates allowed, order matters
let tallest = ["John", "Gabriel", "Eric", "Terry", "John"]
// Sets - unique values, need to check for presence of value quickly
let keys = Set(["A001", "A002", "A003"])
// Tuples - specific, fixed collection of related values, with each value having a precise location or name
let address = (block: 381, street: "Clementi Avenue 5", postal: 120381)

