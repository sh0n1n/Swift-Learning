import Foundation

// Example of enum case
enum Animals {
    case lion
    case lynx
    case puma
    case hedgehog
}
let lion = Animals.lion
lion


if lion == Animals.lion {
    "This is lion"
} else if lion == Animals.lynx {
    "This is lynx"
} else  {
    "This is something else"
}

// Switch
switch lion {
    
case .lion:
    "This is lion"
    break
case .lynx:
    "This is lynx"
    break
case .puma:
    "This is puma"
    break
case .hedgehog:
    "This is hedgehog"
    break
}

// Enum Case
enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}
let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

// Variant 1
switch wwwApple {
case .fileOrFolder(
    path: let path,
    name: let name
):
    path
    break
case .wwwUrl(
    path: let path
):
    path
    break
case .song(
    artist: let artist,
    songName: let songName
):
    artist
    songName
}
// Variant 2
switch wwwApple {
case .fileOrFolder(
    let path,
    let name
):
    path
    break
case .wwwUrl(let path):
    path
    break
case .song(
    let artist,
    let songName
):
    artist
    songName
}

// Variant 3
switch wwwApple {
case let .fileOrFolder(
     path,
     name
):
    path
    break
case let .wwwUrl(path):
    path
    break
case let .song(
     artist,
     songName
):
    artist
    songName
}

// if case let
if case let .wwwUrl(path) = wwwApple {
    path
}

let Americaproblem = Shortcut.song(
    artist: "Beyonce feat. Kendrick lamar",
    songName: "AMERICA HAS A PROBLEM"
)

// We ignore artist
if case let .song(_, songName) = Americaproblem {
    songName
}

// Case and Switch with similar DataTypes
enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    func getManufacturer() -> String {
        switch self {
        case let .car(manufacturer, _):
            return manufacturer
        case let .bike(manufacturer, _):
            return manufacturer
        }
    }
    /*
    // var
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
         let .bike(manufacturer, _):
            return manufacturer
     */
     
}

let car = Vehicle.car(
    manufacturer: "Ford",
    model: "Mustang"
)
car.getManufacturer()
        
let bike = Vehicle.bike(
    manufacturer: "Triumph",
    yearMade: 2004
)
bike.getManufacturer()

enum FamilyMember: String {
    case Father = "Dad"
    case Mother = "Mom"
    case Brother = "Bro"
}
FamilyMember.Father.rawValue
FamilyMember.Brother.rawValue

enum favoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}
favoriteEmoji.allCases
favoriteEmoji.allCases.map(\.rawValue)

favoriteEmoji.blush.rawValue
"😊"

if let blush = favoriteEmoji(rawValue: "😊") {
    "Found the blush emoji"
    blush
} else {
    "Emoji doesn't exist"
}

// EXAMPLE
if let snow = favoriteEmoji(rawValue: "❄️") {
"Snow exist"
    snow
} else {
    "Emoji doesn't exist"
}

// Mutating members of enumerations
enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}
var myHeight = Height.medium
myHeight.makeLong()
myHeight

/*
// RECURSIVE ENUMERATION & INDIRECT ITTERATION
indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation?  = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResult(of: operation)
        }
    }
}
let freehand = IntOperation.freehand(.add(2, 5))
freehand.calculateResult()
*/

