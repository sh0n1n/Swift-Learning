import Foundation

class Person {
    var name: String
    var age: Int
    
    // Initialiser
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    // Mutating
    func increaseAge () {
        self.age += 1
    }
}

let foo = Person(name: "Ronin", age: 19)
foo.age
foo.increaseAge()
foo.age


foo.age
let bar = foo
bar.increaseAge()
foo.age
bar.age

if foo === bar {
    "Foo & bar point to the same memory"
} else {
    "They don't point"
}

// Inheritance

class Vehicle {
    func goVroom() {
        "Voom-Vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

// Setter private

class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge() {
        self.age += 1
    }
}
let baz = Person2(age: 19)
baz.age
baz.increaseAge()
baz.age

// Designited Initializer

class Ford {
    let manufacturer = "Ford"
    let model: String
    let year: Int
    
    init() {
        self.model =  "Mustang"
        self.year = 2002
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year: 2002
        )
    }
}

class FordModelFocus: Ford {
    override init() {
        super.init(
            model: "Focus",
            year: 2002
        )
    }
}
let modelFocus = FordModelFocus()
modelFocus.model
modelFocus.year
modelFocus.manufacturer

let fooBar = Person2(age: 19)
fooBar.age
func doSmthng(with person: Person2) {
    person.increaseAge()
}
doSmthng(with: fooBar)
fooBar.age

// DeInitializers
class MyClass {
    init() {
        "Initialized"
    }
    func doSmthng() {
        "Do something"
    }
    deinit {
        "Deinitialized"
    }
}
let myClosure = {
    let myClass = MyClass()
    myClass.doSmthng()
}
myClosure()
