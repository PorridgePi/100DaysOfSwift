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

var user2 = User2("twoset")


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

var ed = Person(name: "Ed")
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
