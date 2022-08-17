import Foundation

// Closures, Lamda

// Closure is like assiging a function to a variable so that we can pass that
// varibale anywhere in the code and use it
// Basically it is like a fucntion without func keyword
// Functions are first class citizen, so we can assign it to any variable
// while defining closure, we first give a varibale name, then define parameters
// the its return type then we start the block then we give variable name to our parameters
// we use in keyword to tell that after in keyword we will write logic

var myvar: ((Int, Int) -> (Bool)) = { x, y in
    if x>3 {
        return true
    }
    return false
}

// Another way to use closure usin $ sign basically it indexes our parameters

var addnumbers: ((Int, Int) -> (Int)) = {
    return $0 + $1
}

let ans = myvar(4,5)
print(ans)

func sample(a: Int) -> Bool {
    if a>5 {
        return true
    }
    return false
}

var num = sample
var res = num(5)
print(res)

// Strings

    // Concatination

    var first = "Chirag"
    var last = "Sinha"
    var age = 21
    var full = "full name is \(first) \(last) and my age is \(age)"
    print(full)

    // Arrays and Dictionaries

    var arr: [Int] = [1,2,3,4,5]
    var arr: [Any] = [1,2,"hfh", true]

    // dictinaries is a key, value pair
    // Here key is string, value is Int

    var cars: [String: Int] = ["bmw": 3, "abc": 5]

    for (key, value) in cars {
        print(value)
    }

    // Tyepalias

    // It is like typdef in C++

    typealias code = String
    var add: code = ""

    typealias Address = [String: String]
    var address: Address = ["Patna" : "Bihar"]

    var validate: ((String) -> (Bool))?

    // or

    typealias ValidateCode = ((String) -> (Bool))?

    var Validate_code: ValidateCode

    // ternary operator

    var CheckIfGreater: ((Int) -> (Bool)) = { 
        x in
        return x > 5 ? true : false
    }

