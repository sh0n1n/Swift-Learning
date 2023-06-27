import Foundation // includes all basics of Swift

// VARIABLES
let myName = "Ronin"
let yourName = "Sidious"

var names = [
    myName,
    yourName
]
names.append("Jedi")
names.append("Sith")


let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2

let moreNames = [
    "Foo",
    "Jedi"
]
var copy = moreNames
copy.append("Sith")
moreNames
copy


let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Jedi"
        ]
)
oldArray.add("Sith")
var newArray = oldArray
newArray.add("Clone")
oldArray
newArray

let someNames = NSMutableArray(
    array: [
        "Foo",
        "Jedi"
    ]
)
func changeTheArray(_ array: NSArray) {
  let copy = array as! NSMutableArray
    copy.add("Sith")
}
changeTheArray(someNames)
someNames
