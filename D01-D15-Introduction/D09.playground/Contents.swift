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

