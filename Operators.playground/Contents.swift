import Foundation

let myAge = 19
let yourAge = 21

if myAge < yourAge {
    "I'm younger"
} else if myAge > yourAge {
    "i'm older than you"
}else {
    "We are the same age"
}

let myAnotherAge = myAge + 10
let doubleMyAge = myAge * 2

// 1.Unary Prefix (Works with only one value)
let foo = !true

// 2.Unary Postfix
let name = Optional("Sidious")
type(of: name)
let unaryPostfix = name!
type(of: unaryPostfix)

// 3.Binary Infix
let result = 1+2
let names = "Foo" + " " + "Sith"

// Ternar Operator
let age = 22
let message = age >= 18 //CONDITION
    ? "You are an adult" //VALUE IF CONDITON IS MET
    :"You arem't an adult yet" // VALUE IF CONDITION IS NOT MET

