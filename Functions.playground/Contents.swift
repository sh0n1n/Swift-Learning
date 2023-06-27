import Foundation

func noArgumentsAndNoReturnValue(){
    "I don't know what I want"
}
noArgumentsAndNoReturnValue()

func plusThree(value: Int) {
    let newValue = value + 3
}
plusThree(value: 33)

func newPlusThree(value: Int) -> Int {
    return value + 3
}
newPlusThree(value: 33)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}
let customAdded = customAdd(value1: 10, value2: 40)


func customMinus(
    lhs: Int,
    rhs: Int
) -> Int {
    lhs - rhs
}
let customSubstracted = customMinus(lhs: 10, rhs: 40)


func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 3
    }
    return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 40)

func getFullName(
    firstName: String = "Ronin",
    lastName: String  = "Asakura"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
