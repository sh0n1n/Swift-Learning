import Foundation

let add: (Int, Int) -> Int
= { (lhs: Int, rhs: Int) -> Int in
  lhs + rhs
}
add(20, 31)


func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

customAdd(
    24,
    31
) { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

customAdd(
    24,
    31
) { (lhs, rhs) in
    lhs + rhs
}

customAdd(24,31) {$0 + $1}

let ages = [20, 15, 35, 30, 40]
ages.sorted(by: <)
ages.sorted(by: >)

func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs, rhs)
}


customAdd2(
    using: { $0 + $1 + 25 },
    24,
    31
)

func add30To(_  value: Int) -> Int {
    value + 30
}

func add40To(_  value: Int) -> Int {
    value + 40
}

func add50To(_  value: Int) -> Int {
    value + 50
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    return function(value)
}

doAddition(
    on: 24,
    using: add30To(_:)
)

doAddition(
    on: 24,
    using: add40To(_:)
)
