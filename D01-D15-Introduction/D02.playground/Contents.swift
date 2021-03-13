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

