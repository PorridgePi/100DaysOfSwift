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



