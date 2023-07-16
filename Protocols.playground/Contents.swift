import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal breathing..."
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person can breathing..."
    }
}

let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()

protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {
    
}

let whiskers = Cat()
whiskers.jump()


protocol HasName {
    var name: String {get} // has getter
    var age: Int {get set} // has setter
}

extension HasName {
    func describeMe() -> String {
        "Your name is \(name) and you're \(age) years old"
    }
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(
    name: "Woof",
    age: 10
)
woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()
woof.age

protocol Vehicle {
    var speed: Int {get set}
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 20)
bike.speed

func describe(obj: Any) {
    if obj is Vehicle {
        "obj conforms to the Vehicle protocol"
    } else {
        "obj doesn't conform to the Vehicle protocol"
    }
}
describe(obj: bike)

func increaseSpeedIfvehicle(
    obj: Any
) {
    if var vehicle = obj as? Vehicle{
        vehicle.speed
        vehicle.increaseSpeed(by: 20)
        vehicle.speed
    } else {
        "This wasn't a vehicle"
    }
}
increaseSpeedIfvehicle(obj: bike)
bike.speed
