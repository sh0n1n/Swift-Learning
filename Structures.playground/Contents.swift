import Foundation

struct Person {
    let name: String
    let age: Int
}
let foo = Person(
    name: "Ronin",
    age: 19
)
foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}
let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer


struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
       "\(firstName) \(lastName)"
    }
}
let fooBar =  Person2(
    firstName: "Ronin",
    lastName: "Asakura"
)
fooBar.firstName
fooBar.lastName
fooBar.fullName

// Mutable Structures
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Dribving..."
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 15)
//immutableCar.drive(speed: 25)

var mutableCar = Car(currentSpeed: 15)
let copy = mutableCar
mutableCar.drive(speed: 45)
mutableCar.currentSpeed
copy.currentSpeed


struct livingThing {
    init() {
        "I'm a living thing"
    }
}

//struct Animal: livingThing {
  //
//}


struct Bike {
    let manufracturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            manufracturer: self.manufracturer, currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    manufracturer: "Kawasaki",
    currentSpeed: 25
)

var bike2 = bike1.copy(currentSpeed: 45)
bike1.currentSpeed
bike2.currentSpeed
