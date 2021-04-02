import UIKit

/*
 Day 10 - classes and inheritance
 */

// There are 5 differences between classes and structs

// 1. Creating your own classes
// First difference is that classes never come with a memberwise initializer
// You must always create your own initializer if you have properties in your class

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


// 2. Class inheritance
// Second difference is that a class can be created based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top

class Poodle: Dog {
    init(name: String) {
        // The Poodle initializer can be made to call the Dog initializer directly so that all the same setup happens
        super.init(name: name, breed: "Poodle")
        
        // For safety reasons, Swift always makes you call super.init() from child classes – just in case the parent class does some important work when it’s created.
    }
}


// 3. Overriding methods

class Cat {
    func makeNoise () {
        print("Meow!")
    }
}

class Supurrvisor: Cat {
    override func makeNoise() {
         print("Purrr")
    }
}

let cat = Cat()
let supurrvisor = Supurrvisor()

cat.makeNoise()
supurrvisor.makeNoise()


// 4. Final classes
// Sometimes, you may want to disallow other developers from building their own class based on yours
// To do this, you declare a class as being final
// No other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class Pet {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


// 5. Copying objects
// Third difference is how they are copied
// When you copy a struct, both the original and the copy are different things – changing one won’t change the other.
// When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

class Singer {
    var name = "GEM"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "JJ Lin"

print(singer.name)

// Compare that with structs

struct Singer2 {
    var name = "GEM"
}

var singer2 = Singer2()
print(singer2.name)

var singer2Copy = singer2
singer2Copy.name = "JJ Lin"

print(singer2.name)
print(singer2Copy.name)


// 6. Deinitializers
// Fourth difference is that classes can have deinitializers – code that gets run when an instance of a class is destroyed

class Person {
    var name = "Jane"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit { // called when Person instance is being destroyed
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// 7. Mutability
// Fifth and final difference is the way they deal with constants
// If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
// However, if you have a constant class with a variable property, that property can be changed.
// Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

// Code below is alright
class Singer3 {
    var name = "Taylor Swift"
}

let taylor = Singer3()
taylor.name = "Ed Sheeran"
print(taylor.name)

// To stop that, the property must be made constant
class Singer4 {
    let name = "Taylor Swift"
}


// 8. Classes summary
/*
 1. Classes and structs are similar, in that they can both let you create your own types with properties and methods.
 2. Class inheritance
 3. Overiding methods allows child class to replace a method in parent class
 4. Mark a class with final keyword to stop other classes from inheriting it
 5. Two variables that point at the same class instance both points at the same piece of memory, so changing one changes the other
 6. Classes can have a deinitializer, which runs when an instance of a class is destroyed
 7. Classes do not enforce constants as strongly as structs - if a property is declared as a variable, it can be changed regardless of how the class instance was created
 */
