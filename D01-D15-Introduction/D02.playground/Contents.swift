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


// 5. Dictionaries
// When using type annotations, use this: [String: Double], [String: String] etc.

let heights = [
    "John": 1.65,
    "Sean": 1.71
]
heights["John"]


// 6. Dictionary default values
// If value for key does not exist, Swift will return nil.

let favouriteIceCream = [
    "John": "Chocolate"
]
favouriteIceCream["Paul"] // will return nil
favouriteIceCream["Paul", default: "Unknown"]


// 7. Creating empty collections
// Collections include all of the above

var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

// Alternatively for arrays and dictionaries:

var teams1 = Dictionary<String, String>()
var results1 = Array<Int>()


// 8. Enumerations
// a.k.a. enums - a way of defining groups of related values in a way that makes them easier to use

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

// Stops us from accidentally using different strings each time

let result4 = Result.failure


// 9. Enum associated values
// Makes it more nuanced

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Swift") // can be more precise now


// 10. Enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2) // numerical order

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
} // Swift will assign mecury to 1, and then count upwards from there

let earth2 = Planet2(rawValue: 3)


// 11. Summary
// complex data types - all of the data types above store a group of items under a single value
// array - stores items in order added - access via numerical positions
// set - stores items in no order - cannot access via numerical positions
// tuple - fixed in size, name can be assigned to items - items can be accessed via numerical positions or names
// dictionary - stores item according to a key - items can be read using the key
// enums - a way of grouping related values so we can use it without mistakes
// a raw value can be attached to enums, and associated values can be added to store additional information about each case
