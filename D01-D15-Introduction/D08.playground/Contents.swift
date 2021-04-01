import UIKit

/*
 Day 8 - structs, part one
 */

// 1. Creating structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


// 2. Computed properties
struct Sport2 {
    var name: String
    var isCCA: Bool
    
    var CCAStatus: String {
        if isCCA {
            return "\(name) is a CCA"
        } else {
            return "\(name) is not a CCA"
        }
    }
}

let football = Sport2(name: "football", isCCA: false)
print(football.CCAStatus)


// 3. Property observers
// Let you run code before or after any property changes

struct Progress {
    var task: String
    var amount: Int {
        didSet { // Use didSet property observer to run code when amount changes
            print("\(task) is now \(amount)% complete")
        }
    }
}

// Use willSet to take action before a property changes, but that is rarely used.

var progress = Progress(task: "Compiling program", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// 4. Methods
struct City {
    var population: Int
    var gdp: Int
    func calcGDPPerCapita() -> Double {
        return Double(gdp)/Double(population)
    }
}

var city = City(population: 12, gdp: -23)
print(city.calcGDPPerCapita())

// 5. Mutating methods

struct City2 {
    var population: Int
    var gdp: Double
    func calcGDPPerCapita() -> Double {
        return Double(gdp)/Double(population)
    }
    mutating func increaseGDP(percentage: Double = 1.1) {
        gdp *= percentage
    }
}

var city2 = City2(population: 12, gdp: 12.0)
print(city2.calcGDPPerCapita())
city2.increaseGDP()
print(city2.calcGDPPerCapita())


// 6. Properties and methods of strings

let string = "Do or do not, there is no try."

print(string.count) // count number of characters
print(string.hasPrefix("Do")) // true if string starts with specific letters
print(string.uppercased()) // UPPERCASE
print(string.sorted()) // sort the letters of string into array


// 7. Properties and methods of arrays

var toys = ["Woody"]

print(toys.count) // number of items
toys.append("Buzz") // add new item
toys.firstIndex(of: "Buzz") // locate item in array
print(toys.sorted()) // sort itmes of array
toys.remove(at: 0) // remove an item


// 8. Structs part one summary
/*
 1. Create structs
 2. Computed properties in structs
 3. Property observers - runs when property changes
 4. Methods - func
 5. Mutating methods
 6. Properties and methods of strings
 7. Properties and methods of arrays
 */
