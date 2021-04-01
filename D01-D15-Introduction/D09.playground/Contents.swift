import UIKit

/*
 Day 9 - structs part two
 */

// 1. Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twoset"


// 2. Referring to the current instance

struct User2 {
    var username: String
    
    init(_ username: String) {
        print("Creating a new user!")
        self.username = username // self.name is the property, while name refers to the parameter
    }
}

let user2 = User2("twoset")


// 3. Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

let ed = Person(name: "Ed")
// familyTree is created immediately

// What if it is not always needed?
// Use lazy var - will only be created when it is first accessed

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var john = Person2(name: "John")
// familyTree not immediately created

print("This is a line break.")

john.familyTree
// familyTree is now created since it is accessed


// 4. Static properties and methods
// Ask Swift to share specific properties and methods across all instances of the struct
// By declaring them as static

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var charles = Student(name: "Charles")
print(Student.classSize)
// CANNOT be accessed by charles.classSize
// because classSize belongs to struct itself, not instances of the struct

var joe = Student(name: "Joe")
print(Student.classSize)


// 5. Access control
// Allows you to restrict which code can use properties and methods
// Important because you might want to stop people reading a property directly (e.g. NRIC of someone)

struct Person3 {
    private var id: String // makes id private - cannot be read outside the struct

    init(id: String) {
        self.id = id
    }
}

let brett = Person3(id: "12345")

// Now, only methods inside Person3 can read 'id'
struct Person4 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let tom = Person4(id: "246810")
// print(tom.id) // this will fail
print(tom.identify())


// 6.1 Structs part one summary (from D08)
/*
 1. Create structs
 2. Computed properties in structs
 3. Property observers - runs when property changes
 4. Methods - func
 5. Mutating methods
 6. Properties and methods of strings
 7. Properties and methods of arrays
 */

// 6.2 Structs part two summary
/*
 1. Initializers
 2. Referring to current instance with self
 3. Lazy properties by adding 'lazy' in front
 4. Static properties and methods by adding 'static' in front
 5. Access control with private
 */
