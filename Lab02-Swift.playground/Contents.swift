import UIKit

// Problem #1
let c1: Float = 43.88
let c2: Float = 108.99
let c3: Float = 14.22
let total = c1+c2+c3
print(total)

// Problem #2
let isNegative = false
print("\(isNegative ? "It is less than 0" : "It is not negative")")

// Problem #3
let codeNames = ["Swift", "Objective-C", "HTML", "CSS", "JavaScript"]
for codeName in codeNames {
    print(codeName)
}

// Problem #4: Explain what an optional value is
/*
 An optional value assigned to a variable means that the variable
 may not be assigned a value at all.
 
 The optional variable will contain either a value of its specified type or nil
 
 Declaring an optional variable is done by appending a ? to the type name.  An example is below.
 
 var myOptionalFloat: Float?
 */

// Problem #5: Explain what nil is in Swift
/*
 nil is the value of an optional variable when the variable is not assigned a value of its specified type.
 
 nil appears to be the same as a null value in other languages.
 C# allows for nullable variable declarations with the same ? appended to the type.
 
 nil and null values both require programmers to check that these variables do contain a value of the
 specified type prior to using them in other code.
 */

// Problem #6: Explain the danger of forcibly unwrapping optionals.  How does the following code safegaurd this?
var reading1: Float?
var reading2: Float?
var reading3: Float?
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
        let avgReading = (r1+r2+r3) / 3
        print(avgReading)
}
else {
    let error = "Instrument reported a reading that was nil"
    print(error)
}
/*
 Forcibly unwrapping optionals expects that all optional variables are assigned a value of the specified type.
 If an optional is forcibly unwrapped and contains a nil value, the code will not compile and throw an error.
 
 The code above is using optional binding to prevent nil errors.
 Each optional variable is assigned a constant of the specified type using an if-let statement.
 The non-optional constants are used to validate and protect against any nil values.
 The else case handles the logic when one of the optionals contains a nil value.
 */

// Problem 7
for i in 1...5 {
    print(i)
}

// Problem 8
let ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for(i, s) in ints.enumerated() {
    if (i >= 4) {
        print(s)
    }
}

// Problem 9
let name = "John"
let noun = "the Swift programming language"
print("\(name) is mastering \(noun)")
print("The total is \(total)")

// Problem 10
func multiply(i: Int, j: Int) -> Int {
    return i*j
}
print(multiply(i: 7, j: 9))

// Problem 11
class Dog {
    var breed: String
    var name: String
    init(breed: String, name: String) {
        self.breed = breed
        self.name = name
    }
    func display() {
        print("Breed: \(breed), Names: \(name)")
    }
    func bark() {
        print("\(name) is barking")
    }
}
var myDog = Dog(breed: "Chocolate Lab", name: "Gordon")
myDog.display()
myDog.bark()
