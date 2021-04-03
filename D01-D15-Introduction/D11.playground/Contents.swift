import UIKit

/*
 Day 11 - protocols and extensions
 */

// Some truly Swifty functionality: protocols and protocol-oriented programming (POP)

// 1. Protocols
// A way of describing what properties and methods something must have

protocol Identifiable {
    var id: String { get set } // require all conforming types to have an id string that can be read ("get") or writter ("set")
}

// Cannot create instances of protocol - it's a description
// We can create a stuct that conforms to it
struct User: Identifiable {
    var id: String
}

// A function that accepts any Identifiable object
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var user = User(id: "ID")
displayID(thing: user)


// 2. Protocol inheritance
// Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days:Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


// 3. Extensions
// Allow us to add methods to existing types

// e.g. Add an extension to the Int type
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

// Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead.
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven


// 4. Protocol extensions
// Protocols let you describe what methods something should have, but don’t provide the code inside.
// Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.

// Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Swift's arrays and sets both conform to a protocol called Collection
extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


// 5. Protocol-oriented programming
// “Protocol-oriented programming” – crafting your code around protocols and protocol extensions.

// First, here’s a protocol called Identifiable that requires any conforming type to have an id property and an identify() method:
protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

// We could make every conforming type write their own identify() method, but protocol extensions allow us to provide a default:
extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

// Now when we create a type that conforms to Identifiable it gets identify() automatically:
struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()


// 6. Protocols and extensions summary
/*
 1. Write protocols - a way of describing what properties and methods something must have
 2. Protocol inheritance - can inherit from multiple protocols unlike classes
 3. Extensions - add methods to existing types
 4. Protocol extensions - extend a whole protocol so all conforming types will receive changes
 5. Protocol-oriented programming
 */
